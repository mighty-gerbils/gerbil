(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_$stx47928_)
      (let* ((___stx5053050531_ _$stx47928_)
             (_g4793347952_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5053050531_))))
        (let ((___kont5053350534_
               (lambda ()
                 (let ((__tmp50826 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp50826 '()))))
              (___kont5053550536_
               (lambda (_L47979_ _L47981_ _L47982_)
                 (let ((__tmp50839 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp50827
                        (let ((__tmp50836
                               (let ((__tmp50837
                                      (let ((__tmp50838
                                             (let ()
                                               (declare (not safe))
                                               (cons _L47982_ _L47979_))))
                                        (declare (not safe))
                                        (cons __tmp50838 '()))))
                                 (declare (not safe))
                                 (cons _L47981_ __tmp50837)))
                              (__tmp50828
                               (let ((__tmp50829
                                      (let ((__tmp50835
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp50830
                                             (let ((__tmp50831
                                                    (let ((__tmp50834
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp50832
                                                           (let ((__tmp50833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L47981_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp50833))))
              (declare (not safe))
              (cons __tmp50834 __tmp50832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50831 '()))))
                                        (declare (not safe))
                                        (cons __tmp50835 __tmp50830))))
                                 (declare (not safe))
                                 (cons __tmp50829 '()))))
                          (declare (not safe))
                          (cons __tmp50836 __tmp50828))))
                   (declare (not safe))
                   (cons __tmp50839 __tmp50827)))))
          (if (gx#stx-pair? ___stx5053050531_)
              (let ((_e4793748004_ (gx#syntax-e ___stx5053050531_)))
                (let ((_tl4793548011_
                       (let () (declare (not safe)) (##cdr _e4793748004_)))
                      (_hd4793648008_
                       (let () (declare (not safe)) (##car _e4793748004_))))
                  (if (gx#stx-null? _tl4793548011_)
                      (___kont5053350534_)
                      (if (gx#stx-pair? _tl4793548011_)
                          (let ((_e4794647969_ (gx#syntax-e _tl4793548011_)))
                            (let ((_tl4794447976_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4794647969_)))
                                  (_hd4794547973_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4794647969_))))
                              (___kont5053550536_
                               _tl4794447976_
                               _hd4794547973_
                               _hd4793648008_)))
                          (let () (declare (not safe)) (_g4793347952_))))))
              (let () (declare (not safe)) (_g4793347952_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_$stx48022_)
      (let* ((___stx5056050561_ _$stx48022_)
             (_g4802748067_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5056050561_))))
        (let ((___kont5056350564_
               (lambda (_L48205_ _L48207_)
                 (let ((__tmp50845 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50840
                        (let ((__tmp50841
                               (let ((__tmp50842
                                      (let ((__tmp50844
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp50843
                                             (let ()
                                               (declare (not safe))
                                               (cons _L48205_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50844 __tmp50843))))
                                 (declare (not safe))
                                 (cons __tmp50842 '()))))
                          (declare (not safe))
                          (cons _L48207_ __tmp50841))))
                   (declare (not safe))
                   (cons __tmp50845 __tmp50840))))
              (___kont5056550566_
               (lambda (_L48134_ _L48136_ _L48137_ _L48138_)
                 (let ((__tmp50846
                        (let ((__tmp50847
                               (let ((__tmp50848
                                      (let ((__tmp50851
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50849
                                             (let ((__tmp50850
                                                    (foldr (lambda (_g4815948162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4816048165_)
                     (let ()
                       (declare (not safe))
                       (cons _g4815948162_ _g4816048165_)))
                   '()
                   _L48134_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48136_ __tmp50850))))
                                        (declare (not safe))
                                        (cons __tmp50851 __tmp50849))))
                                 (declare (not safe))
                                 (cons __tmp50848 '()))))
                          (declare (not safe))
                          (cons _L48137_ __tmp50847))))
                   (declare (not safe))
                   (cons _L48138_ __tmp50846)))))
          (let* ((___match5061550616_
                  (lambda (_e4804648074_
                           _hd4804548078_
                           _tl4804448081_
                           _e4804948084_
                           _hd4804848088_
                           _tl4804748091_
                           _e4805248094_
                           _hd4805148098_
                           _tl4805048101_
                           ___splice5056750568_
                           _target4805348104_
                           _tl4805548107_)
                    (letrec ((_loop4805648110_
                              (lambda (_hd4805448114_ _body4806048117_)
                                (if (gx#stx-pair? _hd4805448114_)
                                    (let ((_e4805748120_
                                           (gx#syntax-e _hd4805448114_)))
                                      (let ((_lp-tl4805948127_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4805748120_)))
                                            (_lp-hd4805848124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4805748120_))))
                                        (_loop4805648110_
                                         _lp-tl4805948127_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4805848124_
                                                 _body4806048117_)))))
                                    (let ((_body4806148130_
                                           (reverse _body4806048117_)))
                                      (let ((_L48134_ _body4806148130_)
                                            (_L48136_ _tl4805048101_)
                                            (_L48137_ _hd4805148098_)
                                            (_L48138_ _hd4804548078_))
                                        (if (gx#identifier? _L48137_)
                                            (___kont5056550566_
                                             _L48134_
                                             _L48136_
                                             _L48137_
                                             _L48138_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4802748067_)))))))))
                      (_loop4805648110_ _target4805348104_ '()))))
                 (___match5058950590_
                  (lambda (_e4803348175_
                           _hd4803248179_
                           _tl4803148182_
                           _e4803648185_
                           _hd4803548189_
                           _tl4803448192_
                           _e4803948195_
                           _hd4803848199_
                           _tl4803748202_)
                    (let ((_L48205_ _hd4803848199_) (_L48207_ _hd4803548189_))
                      (if (gx#identifier? _L48207_)
                          (___kont5056350564_ _L48205_ _L48207_)
                          (if (gx#stx-pair? _hd4803548189_)
                              (let ((_e4805248094_
                                     (gx#syntax-e _hd4803548189_)))
                                (let ((_tl4805048101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4805248094_)))
                                      (_hd4805148098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4805248094_))))
                                  (if (gx#stx-pair/null? _tl4803448192_)
                                      (let ((___splice5056750568_
                                             (gx#syntax-split-splice
                                              _tl4803448192_
                                              '0)))
                                        (let ((_tl4805548107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5056750568_
                                                  '1)))
                                              (_target4805348104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5056750568_
                                                  '0))))
                                          (if (gx#stx-null? _tl4805548107_)
                                              (___match5061550616_
                                               _e4803348175_
                                               _hd4803248179_
                                               _tl4803148182_
                                               _e4803648185_
                                               _hd4803548189_
                                               _tl4803448192_
                                               _e4805248094_
                                               _hd4805148098_
                                               _tl4805048101_
                                               ___splice5056750568_
                                               _target4805348104_
                                               _tl4805548107_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4802748067_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4802748067_)))))
                              (let ()
                                (declare (not safe))
                                (_g4802748067_))))))))
            (if (gx#stx-pair? ___stx5056050561_)
                (let ((_e4803348175_ (gx#syntax-e ___stx5056050561_)))
                  (let ((_tl4803148182_
                         (let () (declare (not safe)) (##cdr _e4803348175_)))
                        (_hd4803248179_
                         (let () (declare (not safe)) (##car _e4803348175_))))
                    (if (gx#stx-pair? _tl4803148182_)
                        (let ((_e4803648185_ (gx#syntax-e _tl4803148182_)))
                          (let ((_tl4803448192_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4803648185_)))
                                (_hd4803548189_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4803648185_))))
                            (if (gx#stx-pair? _tl4803448192_)
                                (let ((_e4803948195_
                                       (gx#syntax-e _tl4803448192_)))
                                  (let ((_tl4803748202_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4803948195_)))
                                        (_hd4803848199_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4803948195_))))
                                    (if (gx#stx-null? _tl4803748202_)
                                        (___match5058950590_
                                         _e4803348175_
                                         _hd4803248179_
                                         _tl4803148182_
                                         _e4803648185_
                                         _hd4803548189_
                                         _tl4803448192_
                                         _e4803948195_
                                         _hd4803848199_
                                         _tl4803748202_)
                                        (if (gx#stx-pair? _hd4803548189_)
                                            (let ((_e4805248094_
                                                   (gx#syntax-e
                                                    _hd4803548189_)))
                                              (let ((_tl4805048101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4805248094_)))
                                                    (_hd4805148098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4805248094_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4803448192_)
                                                    (let ((___splice5056750568_
                                                           (gx#syntax-split-splice
                                                            _tl4803448192_
                                                            '0)))
                                                      (let ((_tl4805548107_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5056750568_ '1)))
                    (_target4805348104_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5056750568_ '0))))
                (if (gx#stx-null? _tl4805548107_)
                    (___match5061550616_
                     _e4803348175_
                     _hd4803248179_
                     _tl4803148182_
                     _e4803648185_
                     _hd4803548189_
                     _tl4803448192_
                     _e4805248094_
                     _hd4805148098_
                     _tl4805048101_
                     ___splice5056750568_
                     _target4805348104_
                     _tl4805548107_)
                    (let () (declare (not safe)) (_g4802748067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4802748067_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4802748067_))))))
                                (if (gx#stx-pair? _hd4803548189_)
                                    (let ((_e4805248094_
                                           (gx#syntax-e _hd4803548189_)))
                                      (let ((_tl4805048101_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4805248094_)))
                                            (_hd4805148098_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4805248094_))))
                                        (if (gx#stx-pair/null? _tl4803448192_)
                                            (let ((___splice5056750568_
                                                   (gx#syntax-split-splice
                                                    _tl4803448192_
                                                    '0)))
                                              (let ((_tl4805548107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5056750568_
                                                        '1)))
                                                    (_target4805348104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5056750568_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4805548107_)
                                                    (___match5061550616_
                                                     _e4803348175_
                                                     _hd4803248179_
                                                     _tl4803148182_
                                                     _e4803648185_
                                                     _hd4803548189_
                                                     _tl4803448192_
                                                     _e4805248094_
                                                     _hd4805148098_
                                                     _tl4805048101_
                                                     ___splice5056750568_
                                                     _target4805348104_
                                                     _tl4805548107_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4802748067_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4802748067_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4802748067_))))))
                        (let () (declare (not safe)) (_g4802748067_)))))
                (let () (declare (not safe)) (_g4802748067_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_$stx48227_)
      (let* ((___stx5061850619_ _$stx48227_)
             (_g4823248272_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5061850619_))))
        (let ((___kont5062150622_
               (lambda (_L48410_ _L48412_)
                 (let ((__tmp50857 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50852
                        (let ((__tmp50853
                               (let ((__tmp50854
                                      (let ((__tmp50856
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp50855
                                             (let ()
                                               (declare (not safe))
                                               (cons _L48410_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50856 __tmp50855))))
                                 (declare (not safe))
                                 (cons __tmp50854 '()))))
                          (declare (not safe))
                          (cons _L48412_ __tmp50853))))
                   (declare (not safe))
                   (cons __tmp50857 __tmp50852))))
              (___kont5062350624_
               (lambda (_L48339_ _L48341_ _L48342_ _L48343_)
                 (let ((__tmp50858
                        (let ((__tmp50859
                               (let ((__tmp50860
                                      (let ((__tmp50863
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50861
                                             (let ((__tmp50862
                                                    (foldr (lambda (_g4836448367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4836548370_)
                     (let ()
                       (declare (not safe))
                       (cons _g4836448367_ _g4836548370_)))
                   '()
                   _L48339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48341_ __tmp50862))))
                                        (declare (not safe))
                                        (cons __tmp50863 __tmp50861))))
                                 (declare (not safe))
                                 (cons __tmp50860 '()))))
                          (declare (not safe))
                          (cons _L48342_ __tmp50859))))
                   (declare (not safe))
                   (cons _L48343_ __tmp50858)))))
          (let* ((___match5067350674_
                  (lambda (_e4825148279_
                           _hd4825048283_
                           _tl4824948286_
                           _e4825448289_
                           _hd4825348293_
                           _tl4825248296_
                           _e4825748299_
                           _hd4825648303_
                           _tl4825548306_
                           ___splice5062550626_
                           _target4825848309_
                           _tl4826048312_)
                    (letrec ((_loop4826148315_
                              (lambda (_hd4825948319_ _body4826548322_)
                                (if (gx#stx-pair? _hd4825948319_)
                                    (let ((_e4826248325_
                                           (gx#syntax-e _hd4825948319_)))
                                      (let ((_lp-tl4826448332_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4826248325_)))
                                            (_lp-hd4826348329_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4826248325_))))
                                        (_loop4826148315_
                                         _lp-tl4826448332_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4826348329_
                                                 _body4826548322_)))))
                                    (let ((_body4826648335_
                                           (reverse _body4826548322_)))
                                      (let ((_L48339_ _body4826648335_)
                                            (_L48341_ _tl4825548306_)
                                            (_L48342_ _hd4825648303_)
                                            (_L48343_ _hd4825048283_))
                                        (if (gx#identifier? _L48342_)
                                            (___kont5062350624_
                                             _L48339_
                                             _L48341_
                                             _L48342_
                                             _L48343_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4823248272_)))))))))
                      (_loop4826148315_ _target4825848309_ '()))))
                 (___match5064750648_
                  (lambda (_e4823848380_
                           _hd4823748384_
                           _tl4823648387_
                           _e4824148390_
                           _hd4824048394_
                           _tl4823948397_
                           _e4824448400_
                           _hd4824348404_
                           _tl4824248407_)
                    (let ((_L48410_ _hd4824348404_) (_L48412_ _hd4824048394_))
                      (if (gx#identifier? _L48412_)
                          (___kont5062150622_ _L48410_ _L48412_)
                          (if (gx#stx-pair? _hd4824048394_)
                              (let ((_e4825748299_
                                     (gx#syntax-e _hd4824048394_)))
                                (let ((_tl4825548306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4825748299_)))
                                      (_hd4825648303_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4825748299_))))
                                  (if (gx#stx-pair/null? _tl4823948397_)
                                      (let ((___splice5062550626_
                                             (gx#syntax-split-splice
                                              _tl4823948397_
                                              '0)))
                                        (let ((_tl4826048312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5062550626_
                                                  '1)))
                                              (_target4825848309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5062550626_
                                                  '0))))
                                          (if (gx#stx-null? _tl4826048312_)
                                              (___match5067350674_
                                               _e4823848380_
                                               _hd4823748384_
                                               _tl4823648387_
                                               _e4824148390_
                                               _hd4824048394_
                                               _tl4823948397_
                                               _e4825748299_
                                               _hd4825648303_
                                               _tl4825548306_
                                               ___splice5062550626_
                                               _target4825848309_
                                               _tl4826048312_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4823248272_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4823248272_)))))
                              (let ()
                                (declare (not safe))
                                (_g4823248272_))))))))
            (if (gx#stx-pair? ___stx5061850619_)
                (let ((_e4823848380_ (gx#syntax-e ___stx5061850619_)))
                  (let ((_tl4823648387_
                         (let () (declare (not safe)) (##cdr _e4823848380_)))
                        (_hd4823748384_
                         (let () (declare (not safe)) (##car _e4823848380_))))
                    (if (gx#stx-pair? _tl4823648387_)
                        (let ((_e4824148390_ (gx#syntax-e _tl4823648387_)))
                          (let ((_tl4823948397_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4824148390_)))
                                (_hd4824048394_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4824148390_))))
                            (if (gx#stx-pair? _tl4823948397_)
                                (let ((_e4824448400_
                                       (gx#syntax-e _tl4823948397_)))
                                  (let ((_tl4824248407_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4824448400_)))
                                        (_hd4824348404_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4824448400_))))
                                    (if (gx#stx-null? _tl4824248407_)
                                        (___match5064750648_
                                         _e4823848380_
                                         _hd4823748384_
                                         _tl4823648387_
                                         _e4824148390_
                                         _hd4824048394_
                                         _tl4823948397_
                                         _e4824448400_
                                         _hd4824348404_
                                         _tl4824248407_)
                                        (if (gx#stx-pair? _hd4824048394_)
                                            (let ((_e4825748299_
                                                   (gx#syntax-e
                                                    _hd4824048394_)))
                                              (let ((_tl4825548306_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4825748299_)))
                                                    (_hd4825648303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4825748299_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4823948397_)
                                                    (let ((___splice5062550626_
                                                           (gx#syntax-split-splice
                                                            _tl4823948397_
                                                            '0)))
                                                      (let ((_tl4826048312_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5062550626_ '1)))
                    (_target4825848309_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5062550626_ '0))))
                (if (gx#stx-null? _tl4826048312_)
                    (___match5067350674_
                     _e4823848380_
                     _hd4823748384_
                     _tl4823648387_
                     _e4824148390_
                     _hd4824048394_
                     _tl4823948397_
                     _e4825748299_
                     _hd4825648303_
                     _tl4825548306_
                     ___splice5062550626_
                     _target4825848309_
                     _tl4826048312_)
                    (let () (declare (not safe)) (_g4823248272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4823248272_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4823248272_))))))
                                (if (gx#stx-pair? _hd4824048394_)
                                    (let ((_e4825748299_
                                           (gx#syntax-e _hd4824048394_)))
                                      (let ((_tl4825548306_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4825748299_)))
                                            (_hd4825648303_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4825748299_))))
                                        (if (gx#stx-pair/null? _tl4823948397_)
                                            (let ((___splice5062550626_
                                                   (gx#syntax-split-splice
                                                    _tl4823948397_
                                                    '0)))
                                              (let ((_tl4826048312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5062550626_
                                                        '1)))
                                                    (_target4825848309_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5062550626_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4826048312_)
                                                    (___match5067350674_
                                                     _e4823848380_
                                                     _hd4823748384_
                                                     _tl4823648387_
                                                     _e4824148390_
                                                     _hd4824048394_
                                                     _tl4823948397_
                                                     _e4825748299_
                                                     _hd4825648303_
                                                     _tl4825548306_
                                                     ___splice5062550626_
                                                     _target4825848309_
                                                     _tl4826048312_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4823248272_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4823248272_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4823248272_))))))
                        (let () (declare (not safe)) (_g4823248272_)))))
                (let () (declare (not safe)) (_g4823248272_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_$stx48432_)
      (let* ((___stx5067650677_ _$stx48432_)
             (_g4843748477_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5067650677_))))
        (let ((___kont5067950680_
               (lambda (_L48615_ _L48617_)
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
                                               (cons _L48615_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50868 __tmp50867))))
                                 (declare (not safe))
                                 (cons __tmp50866 '()))))
                          (declare (not safe))
                          (cons _L48617_ __tmp50865))))
                   (declare (not safe))
                   (cons __tmp50869 __tmp50864))))
              (___kont5068150682_
               (lambda (_L48544_ _L48546_ _L48547_ _L48548_)
                 (let ((__tmp50870
                        (let ((__tmp50871
                               (let ((__tmp50872
                                      (let ((__tmp50875
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50873
                                             (let ((__tmp50874
                                                    (foldr (lambda (_g4856948572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4857048575_)
                     (let ()
                       (declare (not safe))
                       (cons _g4856948572_ _g4857048575_)))
                   '()
                   _L48544_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48546_ __tmp50874))))
                                        (declare (not safe))
                                        (cons __tmp50875 __tmp50873))))
                                 (declare (not safe))
                                 (cons __tmp50872 '()))))
                          (declare (not safe))
                          (cons _L48547_ __tmp50871))))
                   (declare (not safe))
                   (cons _L48548_ __tmp50870)))))
          (let* ((___match5073150732_
                  (lambda (_e4845648484_
                           _hd4845548488_
                           _tl4845448491_
                           _e4845948494_
                           _hd4845848498_
                           _tl4845748501_
                           _e4846248504_
                           _hd4846148508_
                           _tl4846048511_
                           ___splice5068350684_
                           _target4846348514_
                           _tl4846548517_)
                    (letrec ((_loop4846648520_
                              (lambda (_hd4846448524_ _body4847048527_)
                                (if (gx#stx-pair? _hd4846448524_)
                                    (let ((_e4846748530_
                                           (gx#syntax-e _hd4846448524_)))
                                      (let ((_lp-tl4846948537_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4846748530_)))
                                            (_lp-hd4846848534_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4846748530_))))
                                        (_loop4846648520_
                                         _lp-tl4846948537_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4846848534_
                                                 _body4847048527_)))))
                                    (let ((_body4847148540_
                                           (reverse _body4847048527_)))
                                      (let ((_L48544_ _body4847148540_)
                                            (_L48546_ _tl4846048511_)
                                            (_L48547_ _hd4846148508_)
                                            (_L48548_ _hd4845548488_))
                                        (if (gx#identifier? _L48547_)
                                            (___kont5068150682_
                                             _L48544_
                                             _L48546_
                                             _L48547_
                                             _L48548_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4843748477_)))))))))
                      (_loop4846648520_ _target4846348514_ '()))))
                 (___match5070550706_
                  (lambda (_e4844348585_
                           _hd4844248589_
                           _tl4844148592_
                           _e4844648595_
                           _hd4844548599_
                           _tl4844448602_
                           _e4844948605_
                           _hd4844848609_
                           _tl4844748612_)
                    (let ((_L48615_ _hd4844848609_) (_L48617_ _hd4844548599_))
                      (if (gx#identifier? _L48617_)
                          (___kont5067950680_ _L48615_ _L48617_)
                          (if (gx#stx-pair? _hd4844548599_)
                              (let ((_e4846248504_
                                     (gx#syntax-e _hd4844548599_)))
                                (let ((_tl4846048511_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4846248504_)))
                                      (_hd4846148508_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4846248504_))))
                                  (if (gx#stx-pair/null? _tl4844448602_)
                                      (let ((___splice5068350684_
                                             (gx#syntax-split-splice
                                              _tl4844448602_
                                              '0)))
                                        (let ((_tl4846548517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5068350684_
                                                  '1)))
                                              (_target4846348514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5068350684_
                                                  '0))))
                                          (if (gx#stx-null? _tl4846548517_)
                                              (___match5073150732_
                                               _e4844348585_
                                               _hd4844248589_
                                               _tl4844148592_
                                               _e4844648595_
                                               _hd4844548599_
                                               _tl4844448602_
                                               _e4846248504_
                                               _hd4846148508_
                                               _tl4846048511_
                                               ___splice5068350684_
                                               _target4846348514_
                                               _tl4846548517_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4843748477_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4843748477_)))))
                              (let ()
                                (declare (not safe))
                                (_g4843748477_))))))))
            (if (gx#stx-pair? ___stx5067650677_)
                (let ((_e4844348585_ (gx#syntax-e ___stx5067650677_)))
                  (let ((_tl4844148592_
                         (let () (declare (not safe)) (##cdr _e4844348585_)))
                        (_hd4844248589_
                         (let () (declare (not safe)) (##car _e4844348585_))))
                    (if (gx#stx-pair? _tl4844148592_)
                        (let ((_e4844648595_ (gx#syntax-e _tl4844148592_)))
                          (let ((_tl4844448602_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4844648595_)))
                                (_hd4844548599_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4844648595_))))
                            (if (gx#stx-pair? _tl4844448602_)
                                (let ((_e4844948605_
                                       (gx#syntax-e _tl4844448602_)))
                                  (let ((_tl4844748612_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4844948605_)))
                                        (_hd4844848609_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4844948605_))))
                                    (if (gx#stx-null? _tl4844748612_)
                                        (___match5070550706_
                                         _e4844348585_
                                         _hd4844248589_
                                         _tl4844148592_
                                         _e4844648595_
                                         _hd4844548599_
                                         _tl4844448602_
                                         _e4844948605_
                                         _hd4844848609_
                                         _tl4844748612_)
                                        (if (gx#stx-pair? _hd4844548599_)
                                            (let ((_e4846248504_
                                                   (gx#syntax-e
                                                    _hd4844548599_)))
                                              (let ((_tl4846048511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4846248504_)))
                                                    (_hd4846148508_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4846248504_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4844448602_)
                                                    (let ((___splice5068350684_
                                                           (gx#syntax-split-splice
                                                            _tl4844448602_
                                                            '0)))
                                                      (let ((_tl4846548517_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5068350684_ '1)))
                    (_target4846348514_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5068350684_ '0))))
                (if (gx#stx-null? _tl4846548517_)
                    (___match5073150732_
                     _e4844348585_
                     _hd4844248589_
                     _tl4844148592_
                     _e4844648595_
                     _hd4844548599_
                     _tl4844448602_
                     _e4846248504_
                     _hd4846148508_
                     _tl4846048511_
                     ___splice5068350684_
                     _target4846348514_
                     _tl4846548517_)
                    (let () (declare (not safe)) (_g4843748477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4843748477_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4843748477_))))))
                                (if (gx#stx-pair? _hd4844548599_)
                                    (let ((_e4846248504_
                                           (gx#syntax-e _hd4844548599_)))
                                      (let ((_tl4846048511_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4846248504_)))
                                            (_hd4846148508_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4846248504_))))
                                        (if (gx#stx-pair/null? _tl4844448602_)
                                            (let ((___splice5068350684_
                                                   (gx#syntax-split-splice
                                                    _tl4844448602_
                                                    '0)))
                                              (let ((_tl4846548517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5068350684_
                                                        '1)))
                                                    (_target4846348514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5068350684_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4846548517_)
                                                    (___match5073150732_
                                                     _e4844348585_
                                                     _hd4844248589_
                                                     _tl4844148592_
                                                     _e4844648595_
                                                     _hd4844548599_
                                                     _tl4844448602_
                                                     _e4846248504_
                                                     _hd4846148508_
                                                     _tl4846048511_
                                                     ___splice5068350684_
                                                     _target4846348514_
                                                     _tl4846548517_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4843748477_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4843748477_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4843748477_))))))
                        (let () (declare (not safe)) (_g4843748477_)))))
                (let () (declare (not safe)) (_g4843748477_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx48637_)
       (let* ((_g4864048660_
               (lambda (_g4864148656_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4864148656_)))
              (_g4863948731_
               (lambda (_g4864148664_)
                 (if (gx#stx-pair? _g4864148664_)
                     (let ((_e4864548667_ (gx#syntax-e _g4864148664_)))
                       (let ((_hd4864448671_
                              (let ()
                                (declare (not safe))
                                (##car _e4864548667_)))
                             (_tl4864348674_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4864548667_))))
                         (if (gx#stx-pair/null? _tl4864348674_)
                             (let ((_g50876_
                                    (gx#syntax-split-splice
                                     _tl4864348674_
                                     '0)))
                               (begin
                                 (let ((_g50877_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50876_)
                                              (##vector-length _g50876_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50877_ 2)))
                                       (error "Context expects 2 values"
                                              _g50877_)))
                                 (let ((_target4864648677_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50876_ 0)))
                                       (_tl4864848680_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50876_ 1))))
                                   (if (gx#stx-null? _tl4864848680_)
                                       (letrec ((_loop4864948683_
                                                 (lambda (_hd4864748687_
                                                          _body4865348690_)
                                                   (if (gx#stx-pair?
                                                        _hd4864748687_)
                                                       (let ((_e4865048693_
                                                              (gx#syntax-e
                                                               _hd4864748687_)))
                                                         (let ((_lp-hd4865148697_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4865048693_)))
                       (_lp-tl4865248700_
                        (let () (declare (not safe)) (##cdr _e4865048693_))))
                   (_loop4864948683_
                    _lp-tl4865248700_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd4865148697_ _body4865348690_)))))
               (let ((_body4865448703_ (reverse _body4865348690_)))
                 ((lambda (_L48707_)
                    (let ((__tmp50878
                           (let ((__tmp50879
                                  (foldr (lambda (_g4872248725_ _g4872348728_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g4872248725_
                                                   _g4872348728_)))
                                         '()
                                         _L48707_)))
                             (declare (not safe))
                             (cons '1 __tmp50879))))
                      (declare (not safe))
                      (cons 'phi: __tmp50878)))
                  _body4865448703_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4864948683_
                                          _target4864648677_
                                          '()))
                                       (_g4864048660_ _g4864148664_)))))
                             (_g4864048660_ _g4864148664_))))
                     (_g4864048660_ _g4864148664_)))))
         (_g4863948731_ _stx48637_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx48736_)
       (let* ((_g4873948759_
               (lambda (_g4874048755_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4874048755_)))
              (_g4873848830_
               (lambda (_g4874048763_)
                 (if (gx#stx-pair? _g4874048763_)
                     (let ((_e4874448766_ (gx#syntax-e _g4874048763_)))
                       (let ((_hd4874348770_
                              (let ()
                                (declare (not safe))
                                (##car _e4874448766_)))
                             (_tl4874248773_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4874448766_))))
                         (if (gx#stx-pair/null? _tl4874248773_)
                             (let ((_g50880_
                                    (gx#syntax-split-splice
                                     _tl4874248773_
                                     '0)))
                               (begin
                                 (let ((_g50881_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50880_)
                                              (##vector-length _g50880_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50881_ 2)))
                                       (error "Context expects 2 values"
                                              _g50881_)))
                                 (let ((_target4874548776_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50880_ 0)))
                                       (_tl4874748779_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50880_ 1))))
                                   (if (gx#stx-null? _tl4874748779_)
                                       (letrec ((_loop4874848782_
                                                 (lambda (_hd4874648786_
                                                          _body4875248789_)
                                                   (if (gx#stx-pair?
                                                        _hd4874648786_)
                                                       (let ((_e4874948792_
                                                              (gx#syntax-e
                                                               _hd4874648786_)))
                                                         (let ((_lp-hd4875048796_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4874948792_)))
                       (_lp-tl4875148799_
                        (let () (declare (not safe)) (##cdr _e4874948792_))))
                   (_loop4874848782_
                    _lp-tl4875148799_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd4875048796_ _body4875248789_)))))
               (let ((_body4875348802_ (reverse _body4875248789_)))
                 ((lambda (_L48806_)
                    (let ((__tmp50882
                           (let ((__tmp50883
                                  (foldr (lambda (_g4882148824_ _g4882248827_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g4882148824_
                                                   _g4882248827_)))
                                         '()
                                         _L48806_)))
                             (declare (not safe))
                             (cons '-1 __tmp50883))))
                      (declare (not safe))
                      (cons 'phi: __tmp50882)))
                  _body4875348802_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4874848782_
                                          _target4874548776_
                                          '()))
                                       (_g4873948759_ _g4874048763_)))))
                             (_g4873948759_ _g4874048763_))))
                     (_g4873948759_ _g4874048763_)))))
         (_g4873848830_ _stx48736_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx48835_)
       (let* ((_g4883848862_
               (lambda (_g4883948858_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4883948858_)))
              (_g4883748984_
               (lambda (_g4883948866_)
                 (if (gx#stx-pair? _g4883948866_)
                     (let ((_e4884448869_ (gx#syntax-e _g4883948866_)))
                       (let ((_hd4884348873_
                              (let ()
                                (declare (not safe))
                                (##car _e4884448869_)))
                             (_tl4884248876_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4884448869_))))
                         (if (gx#stx-pair? _tl4884248876_)
                             (let ((_e4884748879_
                                    (gx#syntax-e _tl4884248876_)))
                               (let ((_hd4884648883_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4884748879_)))
                                     (_tl4884548886_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4884748879_))))
                                 (if (gx#stx-pair/null? _tl4884548886_)
                                     (let ((_g50884_
                                            (gx#syntax-split-splice
                                             _tl4884548886_
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
                                         (let ((_target4884848889_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50884_ 0)))
                                               (_tl4885048892_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50884_ 1))))
                                           (if (gx#stx-null? _tl4885048892_)
                                               (letrec ((_loop4885148895_
                                                         (lambda (_hd4884948899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4885548902_)
                   (if (gx#stx-pair? _hd4884948899_)
                       (let ((_e4885248905_ (gx#syntax-e _hd4884948899_)))
                         (let ((_lp-hd4885348909_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4885248905_)))
                               (_lp-tl4885448912_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4885248905_))))
                           (_loop4885148895_
                            _lp-tl4885448912_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4885348909_ _id4885548902_)))))
                       (let ((_id4885648915_ (reverse _id4885548902_)))
                         ((lambda (_L48919_ _L48921_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4893848941_ _g4893948944_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4893848941_
                                                  _g4893948944_)))
                                        '()
                                        _L48919_))
                                (let* ((_keys48955_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4894648949_
                                                         _g4894748952_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4894648949_
                                                          _g4894748952_)))
                                                '()
                                                _L48919_)))
                                       (_keytab48966_
                                        (let ((_ht48958_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4896048962_)
                                             (hash-put!
                                              _ht48958_
                                              _g4896048962_
                                              '#t))
                                           _keys48955_)
                                          _ht48958_))
                                       (_imports48969_
                                        (gx#core-expand-import-source
                                         _L48921_))
                                       (_fold-e48979_
                                        (letrec ((_fold-e48972_
                                                  (lambda (_in48975_ _r48977_)
                                                    (if (gx#module-import?
                                                         _in48975_)
                                                        (if (hash-get
                                                             _keytab48966_
                                                             (gx#module-import-name
                                                              _in48975_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in48975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r48977_))
                    _r48977_)
                (if (gx#import-set? _in48975_)
                    (foldl _fold-e48972_
                           _r48977_
                           (gx#import-set-imports _in48975_))
                    _r48977_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e48972_)))
                                  (let ((__tmp50886
                                         (foldl _fold-e48979_
                                                '()
                                                _imports48969_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50886)))
                                (_g4883848862_ _g4883948866_)))
                          _id4885648915_
                          _hd4884648883_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4885148895_
                                                  _target4884848889_
                                                  '()))
                                               (_g4883848862_
                                                _g4883948866_)))))
                                     (_g4883848862_ _g4883948866_))))
                             (_g4883848862_ _g4883948866_))))
                     (_g4883848862_ _g4883948866_)))))
         (_g4883748984_ _stx48835_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx48989_)
       (let* ((_g4899249016_
               (lambda (_g4899349012_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4899349012_)))
              (_g4899149138_
               (lambda (_g4899349020_)
                 (if (gx#stx-pair? _g4899349020_)
                     (let ((_e4899849023_ (gx#syntax-e _g4899349020_)))
                       (let ((_hd4899749027_
                              (let ()
                                (declare (not safe))
                                (##car _e4899849023_)))
                             (_tl4899649030_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4899849023_))))
                         (if (gx#stx-pair? _tl4899649030_)
                             (let ((_e4900149033_
                                    (gx#syntax-e _tl4899649030_)))
                               (let ((_hd4900049037_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4900149033_)))
                                     (_tl4899949040_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4900149033_))))
                                 (if (gx#stx-pair/null? _tl4899949040_)
                                     (let ((_g50887_
                                            (gx#syntax-split-splice
                                             _tl4899949040_
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
                                         (let ((_target4900249043_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50887_ 0)))
                                               (_tl4900449046_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50887_ 1))))
                                           (if (gx#stx-null? _tl4900449046_)
                                               (letrec ((_loop4900549049_
                                                         (lambda (_hd4900349053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4900949056_)
                   (if (gx#stx-pair? _hd4900349053_)
                       (let ((_e4900649059_ (gx#syntax-e _hd4900349053_)))
                         (let ((_lp-hd4900749063_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4900649059_)))
                               (_lp-tl4900849066_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4900649059_))))
                           (_loop4900549049_
                            _lp-tl4900849066_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4900749063_ _id4900949056_)))))
                       (let ((_id4901049069_ (reverse _id4900949056_)))
                         ((lambda (_L49073_ _L49075_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4909249095_ _g4909349098_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4909249095_
                                                  _g4909349098_)))
                                        '()
                                        _L49073_))
                                (let* ((_keys49109_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4910049103_
                                                         _g4910149106_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4910049103_
                                                          _g4910149106_)))
                                                '()
                                                _L49073_)))
                                       (_keytab49120_
                                        (let ((_ht49112_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4911449116_)
                                             (hash-put!
                                              _ht49112_
                                              _g4911449116_
                                              '#t))
                                           _keys49109_)
                                          _ht49112_))
                                       (_imports49123_
                                        (gx#core-expand-import-source
                                         _L49075_))
                                       (_fold-e49133_
                                        (letrec ((_fold-e49126_
                                                  (lambda (_in49129_ _r49131_)
                                                    (if (gx#module-import?
                                                         _in49129_)
                                                        (if (hash-get
                                                             _keytab49120_
                                                             (gx#module-import-name
                                                              _in49129_))
                                                            _r49131_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in49129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r49131_)))
                (if (gx#import-set? _in49129_)
                    (foldl _fold-e49126_
                           _r49131_
                           (gx#import-set-imports _in49129_))
                    (let ()
                      (declare (not safe))
                      (cons _in49129_ _r49131_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49126_)))
                                  (let ((__tmp50889
                                         (foldl _fold-e49133_
                                                '()
                                                _imports49123_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50889)))
                                (_g4899249016_ _g4899349020_)))
                          _id4901049069_
                          _hd4900049037_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4900549049_
                                                  _target4900249043_
                                                  '()))
                                               (_g4899249016_
                                                _g4899349020_)))))
                                     (_g4899249016_ _g4899349020_))))
                             (_g4899249016_ _g4899349020_))))
                     (_g4899249016_ _g4899349020_)))))
         (_g4899149138_ _stx48989_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_in49190_ _rename49192_)
      (gx#make-module-import
       (gx#module-import-source _in49190_)
       _rename49192_
       (gx#module-import-phi _in49190_)
       (gx#module-import-weak? _in49190_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_name49143_ _pre49145_)
      (let* ((_name4914649154_ _name49143_)
             (_else4914849166_
              (lambda () (make-symbol _pre49145_ _name49143_)))
             (_K4915049174_
              (lambda (_mark49170_ _id49172_)
                (let ((__tmp50890 (make-symbol _pre49145_ _id49172_)))
                  (declare (not safe))
                  (cons __tmp50890 _mark49170_)))))
        (if (let () (declare (not safe)) (##pair? _name4914649154_))
            (let ((_hd4915149178_
                   (let () (declare (not safe)) (##car _name4914649154_)))
                  (_tl4915249181_
                   (let () (declare (not safe)) (##cdr _name4914649154_))))
              (let* ((_id49184_ _hd4915149178_) (_mark49187_ _tl4915249181_))
                (declare (not safe))
                (_K4915049174_ _mark49187_ _id49184_)))
            (let () (declare (not safe)) (_else4914849166_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx49194_)
       (let* ((_g4919749230_
               (lambda (_g4919849226_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4919849226_)))
              (_g4919649416_
               (lambda (_g4919849234_)
                 (if (gx#stx-pair? _g4919849234_)
                     (let ((_e4920449237_ (gx#syntax-e _g4919849234_)))
                       (let ((_hd4920349241_
                              (let ()
                                (declare (not safe))
                                (##car _e4920449237_)))
                             (_tl4920249244_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4920449237_))))
                         (if (gx#stx-pair? _tl4920249244_)
                             (let ((_e4920749247_
                                    (gx#syntax-e _tl4920249244_)))
                               (let ((_hd4920649251_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4920749247_)))
                                     (_tl4920549254_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4920749247_))))
                                 (if (gx#stx-pair/null? _tl4920549254_)
                                     (let ((_g50891_
                                            (gx#syntax-split-splice
                                             _tl4920549254_
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
                                         (let ((_target4920849257_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50891_ 0)))
                                               (_tl4921049260_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50891_ 1))))
                                           (if (gx#stx-null? _tl4921049260_)
                                               (letrec ((_loop4921149263_
                                                         (lambda (_hd4920949267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4921549270_
                          _id4921649272_)
                   (if (gx#stx-pair? _hd4920949267_)
                       (let ((_e4921249275_ (gx#syntax-e _hd4920949267_)))
                         (let ((_lp-hd4921349279_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4921249275_)))
                               (_lp-tl4921449282_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4921249275_))))
                           (if (gx#stx-pair? _lp-hd4921349279_)
                               (let ((_e4922149285_
                                      (gx#syntax-e _lp-hd4921349279_)))
                                 (let ((_hd4922049289_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4922149285_)))
                                       (_tl4921949292_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4922149285_))))
                                   (if (gx#stx-pair? _tl4921949292_)
                                       (let ((_e4922449295_
                                              (gx#syntax-e _tl4921949292_)))
                                         (let ((_hd4922349299_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4922449295_)))
                                               (_tl4922249302_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4922449295_))))
                                           (if (gx#stx-null? _tl4922249302_)
                                               (_loop4921149263_
                                                _lp-tl4921449282_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4922349299_
                                                        _new-id4921549270_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4922049289_
                                                        _id4921649272_)))
                                               (_g4919749230_ _g4919849234_))))
                                       (_g4919749230_ _g4919849234_))))
                               (_g4919749230_ _g4919849234_))))
                       (let ((_new-id4921749305_ (reverse _new-id4921549270_))
                             (_id4921849308_ (reverse _id4921649272_)))
                         ((lambda (_L49311_ _L49313_ _L49314_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g4933249335_
                                                      _g4933349338_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4933249335_
                                                       _g4933349338_)))
                                             '()
                                             _L49313_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g4934049343_
                                                      _g4934149346_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4934049343_
                                                       _g4934149346_)))
                                             '()
                                             _L49311_)))
                                (let* ((_keytab49349_ (make-hash-table))
                                       (_found49352_ (make-hash-table))
                                       (_g50893_
                                        (for-each
                                         (lambda (_id49355_ _new-id49357_)
                                           (hash-put!
                                            _keytab49349_
                                            (gx#core-identifier-key _id49355_)
                                            (gx#core-identifier-key
                                             _new-id49357_)))
                                         (foldr (lambda (_g4935849361_
                                                         _g4935949364_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4935849361_
                                                          _g4935949364_)))
                                                '()
                                                _L49313_)
                                         (foldr (lambda (_g4936649369_
                                                         _g4936749372_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4936649369_
                                                          _g4936749372_)))
                                                '()
                                                _L49311_)))
                                       (_imports49377_
                                        (gx#core-expand-import-source
                                         _L49314_))
                                       (_fold-e49397_
                                        (letrec ((_fold-e49380_
                                                  (lambda (_in49383_ _r49385_)
                                                    (if (gx#module-import?
                                                         _in49383_)
                                                        (let* ((_name49387_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in49383_))
                       (_$e49390_ (hash-get _keytab49349_ _name49387_)))
                  (if _$e49390_
                      ((lambda (_rename49394_)
                         (hash-put! _found49352_ _name49387_ '#t)
                         (let ((__tmp50894
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-import-rename|
                                   _in49383_
                                   _rename49394_))))
                           (declare (not safe))
                           (cons __tmp50894 _r49385_)))
                       _$e49390_)
                      (let () (declare (not safe)) (cons _in49383_ _r49385_))))
                (if (gx#import-set? _in49383_)
                    (foldl _fold-e49380_
                           _r49385_
                           (gx#import-set-imports _in49383_))
                    (let ()
                      (declare (not safe))
                      (cons _in49383_ _r49385_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49380_))
                                       (_new-imports49400_
                                        (foldl _fold-e49397_
                                               '()
                                               _imports49377_)))
                                  (for-each
                                   (lambda (_id49405_)
                                     (if (hash-get
                                          _found49352_
                                          (gx#core-identifier-key _id49405_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx49194_
                                          _id49405_)))
                                   (foldr (lambda (_g4940749410_ _g4940849413_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4940749410_
                                                    _g4940849413_)))
                                          '()
                                          _L49313_))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports49400_)))
                                (_g4919749230_ _g4919849234_)))
                          _new-id4921749305_
                          _id4921849308_
                          _hd4920649251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4921149263_
                                                  _target4920849257_
                                                  '()
                                                  '()))
                                               (_g4919749230_
                                                _g4919849234_)))))
                                     (_g4919749230_ _g4919849234_))))
                             (_g4919749230_ _g4919849234_))))
                     (_g4919749230_ _g4919849234_)))))
         (_g4919649416_ _stx49194_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx49422_)
       (let* ((_g4942549443_
               (lambda (_g4942649439_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4942649439_)))
              (_g4942449522_
               (lambda (_g4942649447_)
                 (if (gx#stx-pair? _g4942649447_)
                     (let ((_e4943149450_ (gx#syntax-e _g4942649447_)))
                       (let ((_hd4943049454_
                              (let ()
                                (declare (not safe))
                                (##car _e4943149450_)))
                             (_tl4942949457_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4943149450_))))
                         (if (gx#stx-pair? _tl4942949457_)
                             (let ((_e4943449460_
                                    (gx#syntax-e _tl4942949457_)))
                               (let ((_hd4943349464_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4943449460_)))
                                     (_tl4943249467_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4943449460_))))
                                 (if (gx#stx-pair? _tl4943249467_)
                                     (let ((_e4943749470_
                                            (gx#syntax-e _tl4943249467_)))
                                       (let ((_hd4943649474_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4943749470_)))
                                             (_tl4943549477_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4943749470_))))
                                         (if (gx#stx-null? _tl4943549477_)
                                             ((lambda (_L49480_ _L49482_)
                                                (if (gx#identifier? _L49480_)
                                                    (let* ((_pre49498_
                                                            (gx#stx-e
                                                             _L49480_))
                                                           (_imports49501_
                                                            (gx#core-expand-import-source
                                                             _L49482_))
                                                           (_rename-e49507_
                                                            (lambda (_name49504_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name49504_
                         _pre49498_))))
                   (_fold-e49517_
                    (letrec ((_fold-e49510_
                              (lambda (_in49513_ _r49515_)
                                (if (gx#module-import? _in49513_)
                                    (let ((__tmp50895
                                           (let ((__tmp50896
                                                  (_rename-e49507_
                                                   (gx#module-import-name
                                                    _in49513_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-import-rename|
                                              _in49513_
                                              __tmp50896))))
                                      (declare (not safe))
                                      (cons __tmp50895 _r49515_))
                                    (if (gx#import-set? _in49513_)
                                        (foldl _fold-e49510_
                                               _r49515_
                                               (gx#import-set-imports
                                                _in49513_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in49513_ _r49515_)))))))
                      _fold-e49510_)))
              (let ((__tmp50897 (foldl _fold-e49517_ '() _imports49501_)))
                (declare (not safe))
                (cons 'begin: __tmp50897)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4942549443_
                                                     _g4942649447_)))
                                              _hd4943649474_
                                              _hd4943349464_)
                                             (_g4942549443_ _g4942649447_))))
                                     (_g4942549443_ _g4942649447_))))
                             (_g4942549443_ _g4942649447_))))
                     (_g4942549443_ _g4942649447_)))))
         (_g4942449522_ _stx49422_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx49526_)
       (letrec ((_flatten49529_
                 (lambda (_list-of-lists49784_)
                   (foldr (lambda (_v49787_ _acc49789_)
                            (if (let () (declare (not safe)) (null? _v49787_))
                                _acc49789_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v49787_))
                                    (append (_flatten49529_ _v49787_)
                                            _acc49789_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v49787_ _acc49789_)))))
                          '()
                          _list-of-lists49784_)))
                (_expand-path49531_
                 (lambda (_top49652_ _mod49654_)
                   (let* ((___stx5073450735_ _mod49654_)
                          (_g4965749679_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx5073450735_))))
                     (let ((___kont5073750738_
                            (lambda (_L49747_ _L49749_)
                              (map (lambda (_mod49764_)
                                     (gx#stx-identifier
                                      _top49652_
                                      _top49652_
                                      '"/"
                                      _mod49764_))
                                   (_flatten49529_
                                    (map (lambda (_g4976649768_)
                                           (_expand-path49531_
                                            _L49749_
                                            _g4976649768_))
                                         (foldr (lambda (_g4977149774_
                                                         _g4977249777_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4977149774_
                                                          _g4977249777_)))
                                                '()
                                                _L49747_))))))
                           (___kont5074150742_
                            (lambda (_L49686_)
                              (gx#stx-identifier
                               _top49652_
                               _top49652_
                               '"/"
                               _L49686_))))
                       (let* ((_g4965649700_
                               (lambda ()
                                 (let ((_L49686_ ___stx5073450735_))
                                   (if (or (gx#identifier? _L49686_)
                                           (gx#stx-fixnum? _L49686_))
                                       (___kont5074150742_ _L49686_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4965749679_))))))
                              (___match5075750758_
                               (lambda (_e4966349707_
                                        _hd4966249711_
                                        _tl4966149714_
                                        ___splice5073950740_
                                        _target4966449717_
                                        _tl4966649720_)
                                 (letrec ((_loop4966749723_
                                           (lambda (_hd4966549727_
                                                    _mod4967149730_)
                                             (if (gx#stx-pair? _hd4966549727_)
                                                 (let ((_e4966849733_
                                                        (gx#syntax-e
                                                         _hd4966549727_)))
                                                   (let ((_lp-tl4967049740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4966849733_)))
                                                         (_lp-hd4966949737_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4966849733_))))
                                                     (_loop4966749723_
                                                      _lp-tl4967049740_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd4966949737_
                                                              _mod4967149730_)))))
                                                 (let ((_mod4967249743_
                                                        (reverse _mod4967149730_)))
                                                   (___kont5073750738_
                                                    _mod4967249743_
                                                    _hd4966249711_))))))
                                   (_loop4966749723_
                                    _target4966449717_
                                    '())))))
                         (if (gx#stx-pair? ___stx5073450735_)
                             (let ((_e4966349707_
                                    (gx#syntax-e ___stx5073450735_)))
                               (let ((_tl4966149714_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4966349707_)))
                                     (_hd4966249711_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4966349707_))))
                                 (if (gx#stx-pair/null? _tl4966149714_)
                                     (let ((___splice5073950740_
                                            (gx#syntax-split-splice
                                             _tl4966149714_
                                             '0)))
                                       (let ((_tl4966649720_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice5073950740_
                                                 '1)))
                                             (_target4966449717_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice5073950740_
                                                 '0))))
                                         (if (gx#stx-null? _tl4966649720_)
                                             (___match5075750758_
                                              _e4966349707_
                                              _hd4966249711_
                                              _tl4966149714_
                                              ___splice5073950740_
                                              _target4966449717_
                                              _tl4966649720_)
                                             (let ()
                                               (declare (not safe))
                                               (_g4965649700_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g4965649700_)))))
                             (let ()
                               (declare (not safe))
                               (_g4965649700_)))))))))
         (let* ((_g4953349557_
                 (lambda (_g4953449553_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g4953449553_)))
                (_g4953249648_
                 (lambda (_g4953449561_)
                   (if (gx#stx-pair? _g4953449561_)
                       (let ((_e4953949564_ (gx#syntax-e _g4953449561_)))
                         (let ((_hd4953849568_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4953949564_)))
                               (_tl4953749571_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4953949564_))))
                           (if (gx#stx-pair? _tl4953749571_)
                               (let ((_e4954249574_
                                      (gx#syntax-e _tl4953749571_)))
                                 (let ((_hd4954149578_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4954249574_)))
                                       (_tl4954049581_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4954249574_))))
                                   (if (gx#stx-pair/null? _tl4954049581_)
                                       (let ((_g50898_
                                              (gx#syntax-split-splice
                                               _tl4954049581_
                                               '0)))
                                         (begin
                                           (let ((_g50899_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50898_)
                                                        (##vector-length
                                                         _g50898_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50899_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50899_)))
                                           (let ((_target4954349584_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50898_ 0)))
                                                 (_tl4954549587_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50898_
                                                     1))))
                                             (if (gx#stx-null? _tl4954549587_)
                                                 (letrec ((_loop4954649590_
                                                           (lambda (_hd4954449594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod4955049597_)
                     (if (gx#stx-pair? _hd4954449594_)
                         (let ((_e4954749600_ (gx#syntax-e _hd4954449594_)))
                           (let ((_lp-hd4954849604_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4954749600_)))
                                 (_lp-tl4954949607_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4954749600_))))
                             (_loop4954649590_
                              _lp-tl4954949607_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd4954849604_ _mod4955049597_)))))
                         (let ((_mod4955149610_ (reverse _mod4955049597_)))
                           ((lambda (_L49614_ _L49616_)
                              (let ((__tmp50900
                                     (_flatten49529_
                                      (map (lambda (_g4963449636_)
                                             (_expand-path49531_
                                              _L49616_
                                              _g4963449636_))
                                           (foldr (lambda (_g4963949642_
                                                           _g4964049645_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4963949642_
                                                            _g4964049645_)))
                                                  '()
                                                  _L49614_)))))
                                (declare (not safe))
                                (cons 'begin: __tmp50900)))
                            _mod4955149610_
                            _hd4954149578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop4954649590_
                                                    _target4954349584_
                                                    '()))
                                                 (_g4953349557_
                                                  _g4953449561_)))))
                                       (_g4953349557_ _g4953449561_))))
                               (_g4953349557_ _g4953449561_))))
                       (_g4953349557_ _g4953449561_)))))
           (_g4953249648_ _stx49526_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx49793_)
       (let* ((_g4979649820_
               (lambda (_g4979749816_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4979749816_)))
              (_g4979549942_
               (lambda (_g4979749824_)
                 (if (gx#stx-pair? _g4979749824_)
                     (let ((_e4980249827_ (gx#syntax-e _g4979749824_)))
                       (let ((_hd4980149831_
                              (let ()
                                (declare (not safe))
                                (##car _e4980249827_)))
                             (_tl4980049834_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4980249827_))))
                         (if (gx#stx-pair? _tl4980049834_)
                             (let ((_e4980549837_
                                    (gx#syntax-e _tl4980049834_)))
                               (let ((_hd4980449841_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4980549837_)))
                                     (_tl4980349844_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4980549837_))))
                                 (if (gx#stx-pair/null? _tl4980349844_)
                                     (let ((_g50901_
                                            (gx#syntax-split-splice
                                             _tl4980349844_
                                             '0)))
                                       (begin
                                         (let ((_g50902_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50901_)
                                                      (##vector-length
                                                       _g50901_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50902_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50902_)))
                                         (let ((_target4980649847_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50901_ 0)))
                                               (_tl4980849850_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50901_ 1))))
                                           (if (gx#stx-null? _tl4980849850_)
                                               (letrec ((_loop4980949853_
                                                         (lambda (_hd4980749857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4981349860_)
                   (if (gx#stx-pair? _hd4980749857_)
                       (let ((_e4981049863_ (gx#syntax-e _hd4980749857_)))
                         (let ((_lp-hd4981149867_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4981049863_)))
                               (_lp-tl4981249870_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4981049863_))))
                           (_loop4980949853_
                            _lp-tl4981249870_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4981149867_ _id4981349860_)))))
                       (let ((_id4981449873_ (reverse _id4981349860_)))
                         ((lambda (_L49877_ _L49879_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4989649899_ _g4989749902_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4989649899_
                                                  _g4989749902_)))
                                        '()
                                        _L49877_))
                                (let* ((_keys49913_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4990449907_
                                                         _g4990549910_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4990449907_
                                                          _g4990549910_)))
                                                '()
                                                _L49877_)))
                                       (_keytab49924_
                                        (let ((_ht49916_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4991849920_)
                                             (hash-put!
                                              _ht49916_
                                              _g4991849920_
                                              '#t))
                                           _keys49913_)
                                          _ht49916_))
                                       (_exports49927_
                                        (gx#core-expand-export-source
                                         _L49879_))
                                       (_fold-e49937_
                                        (letrec ((_fold-e49930_
                                                  (lambda (_out49933_ _r49935_)
                                                    (if (gx#module-export?
                                                         _out49933_)
                                                        (if (hash-get
                                                             _keytab49924_
                                                             (gx#module-export-name
                                                              _out49933_))
                                                            _r49935_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _out49933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r49935_)))
                (if (gx#export-set? _out49933_)
                    (foldl _fold-e49930_
                           _r49935_
                           (gx#export-set-exports _out49933_))
                    _r49935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49930_)))
                                  (let ((__tmp50903
                                         (foldl _fold-e49937_
                                                '()
                                                _exports49927_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50903)))
                                (_g4979649820_ _g4979749824_)))
                          _id4981449873_
                          _hd4980449841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4980949853_
                                                  _target4980649847_
                                                  '()))
                                               (_g4979649820_
                                                _g4979749824_)))))
                                     (_g4979649820_ _g4979749824_))))
                             (_g4979649820_ _g4979749824_))))
                     (_g4979649820_ _g4979749824_)))))
         (_g4979549942_ _stx49793_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_out49947_ _rename49949_)
      (gx#make-module-export
       (gx#module-export-context _out49947_)
       (gx#module-export-key _out49947_)
       (gx#module-export-phi _out49947_)
       _rename49949_
       (gx#module-export-weak? _out49947_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx49951_)
       (let* ((_g4995449987_
               (lambda (_g4995549983_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4995549983_)))
              (_g4995350173_
               (lambda (_g4995549991_)
                 (if (gx#stx-pair? _g4995549991_)
                     (let ((_e4996149994_ (gx#syntax-e _g4995549991_)))
                       (let ((_hd4996049998_
                              (let ()
                                (declare (not safe))
                                (##car _e4996149994_)))
                             (_tl4995950001_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4996149994_))))
                         (if (gx#stx-pair? _tl4995950001_)
                             (let ((_e4996450004_
                                    (gx#syntax-e _tl4995950001_)))
                               (let ((_hd4996350008_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4996450004_)))
                                     (_tl4996250011_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4996450004_))))
                                 (if (gx#stx-pair/null? _tl4996250011_)
                                     (let ((_g50904_
                                            (gx#syntax-split-splice
                                             _tl4996250011_
                                             '0)))
                                       (begin
                                         (let ((_g50905_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50904_)
                                                      (##vector-length
                                                       _g50904_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50905_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50905_)))
                                         (let ((_target4996550014_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50904_ 0)))
                                               (_tl4996750017_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50904_ 1))))
                                           (if (gx#stx-null? _tl4996750017_)
                                               (letrec ((_loop4996850020_
                                                         (lambda (_hd4996650024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4997250027_
                          _id4997350029_)
                   (if (gx#stx-pair? _hd4996650024_)
                       (let ((_e4996950032_ (gx#syntax-e _hd4996650024_)))
                         (let ((_lp-hd4997050036_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4996950032_)))
                               (_lp-tl4997150039_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4996950032_))))
                           (if (gx#stx-pair? _lp-hd4997050036_)
                               (let ((_e4997850042_
                                      (gx#syntax-e _lp-hd4997050036_)))
                                 (let ((_hd4997750046_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4997850042_)))
                                       (_tl4997650049_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4997850042_))))
                                   (if (gx#stx-pair? _tl4997650049_)
                                       (let ((_e4998150052_
                                              (gx#syntax-e _tl4997650049_)))
                                         (let ((_hd4998050056_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4998150052_)))
                                               (_tl4997950059_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4998150052_))))
                                           (if (gx#stx-null? _tl4997950059_)
                                               (_loop4996850020_
                                                _lp-tl4997150039_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4998050056_
                                                        _new-id4997250027_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4997750046_
                                                        _id4997350029_)))
                                               (_g4995449987_ _g4995549991_))))
                                       (_g4995449987_ _g4995549991_))))
                               (_g4995449987_ _g4995549991_))))
                       (let ((_new-id4997450062_ (reverse _new-id4997250027_))
                             (_id4997550065_ (reverse _id4997350029_)))
                         ((lambda (_L50068_ _L50070_ _L50071_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g5008950092_
                                                      _g5009050095_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5008950092_
                                                       _g5009050095_)))
                                             '()
                                             _L50070_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g5009750100_
                                                      _g5009850103_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5009750100_
                                                       _g5009850103_)))
                                             '()
                                             _L50068_)))
                                (let* ((_keytab50106_ (make-hash-table))
                                       (_found50109_ (make-hash-table))
                                       (_g50906_
                                        (for-each
                                         (lambda (_id50112_ _new-id50114_)
                                           (hash-put!
                                            _keytab50106_
                                            (gx#core-identifier-key _id50112_)
                                            (gx#core-identifier-key
                                             _new-id50114_)))
                                         (foldr (lambda (_g5011550118_
                                                         _g5011650121_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5011550118_
                                                          _g5011650121_)))
                                                '()
                                                _L50070_)
                                         (foldr (lambda (_g5012350126_
                                                         _g5012450129_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5012350126_
                                                          _g5012450129_)))
                                                '()
                                                _L50068_)))
                                       (_exports50134_
                                        (gx#core-expand-export-source
                                         _L50071_))
                                       (_fold-e50154_
                                        (letrec ((_fold-e50137_
                                                  (lambda (_out50140_ _r50142_)
                                                    (if (gx#module-export?
                                                         _out50140_)
                                                        (let* ((_name50144_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out50140_))
                       (_$e50147_ (hash-get _keytab50106_ _name50144_)))
                  (if _$e50147_
                      ((lambda (_rename50151_)
                         (hash-put! _found50109_ _name50144_ '#t)
                         (let ((__tmp50907
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-export-rename|
                                   _out50140_
                                   _rename50151_))))
                           (declare (not safe))
                           (cons __tmp50907 _r50142_)))
                       _$e50147_)
                      (let ()
                        (declare (not safe))
                        (cons _out50140_ _r50142_))))
                (if (gx#export-set? _out50140_)
                    (foldl _fold-e50137_
                           _r50142_
                           (gx#export-set-exports _out50140_))
                    (let ()
                      (declare (not safe))
                      (cons _out50140_ _r50142_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e50137_))
                                       (_new-exports50157_
                                        (foldl _fold-e50154_
                                               '()
                                               _exports50134_)))
                                  (for-each
                                   (lambda (_id50162_)
                                     (if (hash-get
                                          _found50109_
                                          (gx#core-identifier-key _id50162_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx49951_
                                          _id50162_)))
                                   (foldr (lambda (_g5016450167_ _g5016550170_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g5016450167_
                                                    _g5016550170_)))
                                          '()
                                          _L50070_))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports50157_)))
                                (_g4995449987_ _g4995549991_)))
                          _new-id4997450062_
                          _id4997550065_
                          _hd4996350008_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4996850020_
                                                  _target4996550014_
                                                  '()
                                                  '()))
                                               (_g4995449987_
                                                _g4995549991_)))))
                                     (_g4995449987_ _g4995549991_))))
                             (_g4995449987_ _g4995549991_))))
                     (_g4995449987_ _g4995549991_)))))
         (_g4995350173_ _stx49951_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx50179_)
       (let* ((_g5018250200_
               (lambda (_g5018350196_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5018350196_)))
              (_g5018150279_
               (lambda (_g5018350204_)
                 (if (gx#stx-pair? _g5018350204_)
                     (let ((_e5018850207_ (gx#syntax-e _g5018350204_)))
                       (let ((_hd5018750211_
                              (let ()
                                (declare (not safe))
                                (##car _e5018850207_)))
                             (_tl5018650214_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5018850207_))))
                         (if (gx#stx-pair? _tl5018650214_)
                             (let ((_e5019150217_
                                    (gx#syntax-e _tl5018650214_)))
                               (let ((_hd5019050221_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5019150217_)))
                                     (_tl5018950224_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5019150217_))))
                                 (if (gx#stx-pair? _tl5018950224_)
                                     (let ((_e5019450227_
                                            (gx#syntax-e _tl5018950224_)))
                                       (let ((_hd5019350231_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5019450227_)))
                                             (_tl5019250234_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5019450227_))))
                                         (if (gx#stx-null? _tl5019250234_)
                                             ((lambda (_L50237_ _L50239_)
                                                (if (gx#identifier? _L50237_)
                                                    (let* ((_pre50255_
                                                            (gx#stx-e
                                                             _L50237_))
                                                           (_exports50258_
                                                            (gx#core-expand-export-source
                                                             _L50239_))
                                                           (_rename-e50264_
                                                            (lambda (_name50261_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name50261_
                         _pre50255_))))
                   (_fold-e50274_
                    (letrec ((_fold-e50267_
                              (lambda (_out50270_ _r50272_)
                                (if (gx#module-export? _out50270_)
                                    (let ((__tmp50908
                                           (let ((__tmp50909
                                                  (_rename-e50264_
                                                   (gx#module-export-name
                                                    _out50270_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-export-rename|
                                              _out50270_
                                              __tmp50909))))
                                      (declare (not safe))
                                      (cons __tmp50908 _r50272_))
                                    (if (gx#export-set? _out50270_)
                                        (foldl _fold-e50267_
                                               _r50272_
                                               (gx#export-set-exports
                                                _out50270_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out50270_ _r50272_)))))))
                      _fold-e50267_)))
              (let ((__tmp50910 (foldl _fold-e50274_ '() _exports50258_)))
                (declare (not safe))
                (cons 'begin: __tmp50910)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5018250200_
                                                     _g5018350204_)))
                                              _hd5019350231_
                                              _hd5019050221_)
                                             (_g5018250200_ _g5018350204_))))
                                     (_g5018250200_ _g5018350204_))))
                             (_g5018250200_ _g5018350204_))))
                     (_g5018250200_ _g5018350204_)))))
         (_g5018150279_ _stx50179_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx50283_)
       (letrec ((_identifiers50286_
                 (lambda (_id50518_ _unchecked?50520_)
                   (let ((_info50522_ (gx#syntax-local-value _id50518_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _info50522_))
                         (let ((__tmp50911
                                (let ((__tmp50915
                                       (let ((__obj50819 _info50522_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj50819
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj50819
                                                '10
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj50819
                                              'type-descriptor))))
                                      (__tmp50912
                                       (foldr cons
                                              (let ((__tmp50914
                                                     (let ((__obj50820
                                                            _info50522_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj50820
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj50820
                                                              '12
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop~MOP-2#class-type-info::t
                                                            __obj50820
                                                            'predicate))))
                                                    (__tmp50913
                                                     (foldr cons
                                                            (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?50520_
                               (foldr cons
                                      (map cdr
                                           (let ((__obj50821 _info50522_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj50821
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj50821
                                                    '16
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop~MOP-2#class-type-info::t
                                                  __obj50821
                                                  'unchecked-mutators))))
                                      (map cdr
                                           (let ((__obj50822 _info50522_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj50822
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj50822
                                                    '15
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop~MOP-2#class-type-info::t
                                                  __obj50822
                                                  'unchecked-accessors)))))
                               '())
                           (map cdr
                                (let ((__obj50823 _info50522_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj50823
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj50823
                                         '14
                                         gerbil/core/mop~MOP-2#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#class-type-info::t
                                       __obj50823
                                       'mutators)))))
                    (map cdr
                         (let ((__obj50824 _info50522_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj50824
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj50824
                                  '13
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core/mop~MOP-2#class-type-info::t
                                __obj50824
                                'accessors)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50914 __tmp50913))
                                              (let ((_ctor50525_
                                                     (let ((__obj50825
                                                            _info50522_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj50825
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj50825
                                                              '11
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop~MOP-2#class-type-info::t
                                                            __obj50825
                                                            'constructor)))))
                                                (if _ctor50525_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor50525_ '()))
                                                    '())))))
                                  (declare (not safe))
                                  (cons __tmp50915 __tmp50912))))
                           (declare (not safe))
                           (cons _id50518_ __tmp50911))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx50283_
                          _id50518_))))))
         (let* ((___stx5076050761_ _stx50283_)
                (_g5029050331_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx5076050761_))))
           (let ((___kont5076350764_
                  (lambda (_L50479_ _L50481_)
                    (let ((__tmp50916
                           (concatenate
                            (gx#stx-map
                             (lambda (_g5050050502_)
                               (_identifiers50286_
                                _g5050050502_
                                (gx#stx-e _L50481_)))
                             (foldr (lambda (_g5050550508_ _g5050650511_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g5050550508_ _g5050650511_)))
                                    '()
                                    _L50479_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp50916))))
                 (___kont5076750768_
                  (lambda (_L50378_)
                    (let ((__tmp50917
                           (concatenate
                            (gx#stx-map
                             (lambda (_g5039450396_)
                               (_identifiers50286_ _g5039450396_ '#f))
                             (foldr (lambda (_g5039950402_ _g5040050405_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g5039950402_ _g5040050405_)))
                                    '()
                                    _L50378_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp50917)))))
             (let* ((___match5081750818_
                     (lambda (_e5031650338_
                              _hd5031550342_
                              _tl5031450345_
                              ___splice5076950770_
                              _target5031750348_
                              _tl5031950351_)
                       (letrec ((_loop5032050354_
                                 (lambda (_hd5031850358_ _id5032450361_)
                                   (if (gx#stx-pair? _hd5031850358_)
                                       (let ((_e5032150364_
                                              (gx#syntax-e _hd5031850358_)))
                                         (let ((_lp-tl5032350371_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5032150364_)))
                                               (_lp-hd5032250368_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5032150364_))))
                                           (_loop5032050354_
                                            _lp-tl5032350371_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd5032250368_
                                                    _id5032450361_)))))
                                       (let ((_id5032550374_
                                              (reverse _id5032450361_)))
                                         (___kont5076750768_
                                          _id5032550374_))))))
                         (_loop5032050354_ _target5031750348_ '()))))
                    (___match5080350804_
                     (lambda (_e5029650415_
                              _hd5029550419_
                              _tl5029450422_
                              _e5029950425_
                              _hd5029850429_
                              _tl5029750432_
                              _e5030050435_
                              _e5030350439_
                              _hd5030250443_
                              _tl5030150446_
                              ___splice5076550766_
                              _target5030450449_
                              _tl5030650452_)
                       (letrec ((_loop5030750455_
                                 (lambda (_hd5030550459_ _id5031150462_)
                                   (if (gx#stx-pair? _hd5030550459_)
                                       (let ((_e5030850465_
                                              (gx#syntax-e _hd5030550459_)))
                                         (let ((_lp-tl5031050472_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5030850465_)))
                                               (_lp-hd5030950469_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5030850465_))))
                                           (_loop5030750455_
                                            _lp-tl5031050472_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd5030950469_
                                                    _id5031150462_)))))
                                       (let ((_id5031250475_
                                              (reverse _id5031150462_)))
                                         (___kont5076350764_
                                          _id5031250475_
                                          _hd5030250443_))))))
                         (_loop5030750455_ _target5030450449_ '())))))
               (if (gx#stx-pair? ___stx5076050761_)
                   (let ((_e5029650415_ (gx#syntax-e ___stx5076050761_)))
                     (let ((_tl5029450422_
                            (let ()
                              (declare (not safe))
                              (##cdr _e5029650415_)))
                           (_hd5029550419_
                            (let ()
                              (declare (not safe))
                              (##car _e5029650415_))))
                       (if (gx#stx-pair? _tl5029450422_)
                           (let ((_e5029950425_ (gx#syntax-e _tl5029450422_)))
                             (let ((_tl5029750432_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e5029950425_)))
                                   (_hd5029850429_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e5029950425_))))
                               (if (gx#stx-datum? _hd5029850429_)
                                   (let ((_e5030050435_
                                          (gx#stx-e _hd5029850429_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e5030050435_ 'unchecked:))
                                         (if (gx#stx-pair? _tl5029750432_)
                                             (let ((_e5030350439_
                                                    (gx#syntax-e
                                                     _tl5029750432_)))
                                               (let ((_tl5030150446_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5030350439_)))
                                                     (_hd5030250443_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5030350439_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl5030150446_)
                                                     (let ((___splice5076550766_
                                                            (gx#syntax-split-splice
                                                             _tl5030150446_
                                                             '0)))
                                                       (let ((_tl5030650452_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice5076550766_ '1)))
                     (_target5030450449_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice5076550766_ '0))))
                 (if (gx#stx-null? _tl5030650452_)
                     (___match5080350804_
                      _e5029650415_
                      _hd5029550419_
                      _tl5029450422_
                      _e5029950425_
                      _hd5029850429_
                      _tl5029750432_
                      _e5030050435_
                      _e5030350439_
                      _hd5030250443_
                      _tl5030150446_
                      ___splice5076550766_
                      _target5030450449_
                      _tl5030650452_)
                     (if (gx#stx-pair/null? _tl5029450422_)
                         (let ((___splice5076950770_
                                (gx#syntax-split-splice _tl5029450422_ '0)))
                           (let ((_tl5031950351_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice5076950770_ '1)))
                                 (_target5031750348_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice5076950770_ '0))))
                             (if (gx#stx-null? _tl5031950351_)
                                 (___match5081750818_
                                  _e5029650415_
                                  _hd5029550419_
                                  _tl5029450422_
                                  ___splice5076950770_
                                  _target5031750348_
                                  _tl5031950351_)
                                 (let ()
                                   (declare (not safe))
                                   (_g5029050331_)))))
                         (let () (declare (not safe)) (_g5029050331_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl5029450422_)
                                                         (let ((___splice5076950770_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl5029450422_
                         '0)))
                   (let ((_tl5031950351_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice5076950770_ '1)))
                         (_target5031750348_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice5076950770_ '0))))
                     (if (gx#stx-null? _tl5031950351_)
                         (___match5081750818_
                          _e5029650415_
                          _hd5029550419_
                          _tl5029450422_
                          ___splice5076950770_
                          _target5031750348_
                          _tl5031950351_)
                         (let () (declare (not safe)) (_g5029050331_)))))
                 (let () (declare (not safe)) (_g5029050331_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl5029450422_)
                                                 (let ((___splice5076950770_
                                                        (gx#syntax-split-splice
                                                         _tl5029450422_
                                                         '0)))
                                                   (let ((_tl5031950351_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5076950770_
                                                             '1)))
                                                         (_target5031750348_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5076950770_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl5031950351_)
                                                         (___match5081750818_
                                                          _e5029650415_
                                                          _hd5029550419_
                                                          _tl5029450422_
                                                          ___splice5076950770_
                                                          _target5031750348_
                                                          _tl5031950351_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g5029050331_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g5029050331_))))
                                         (if (gx#stx-pair/null? _tl5029450422_)
                                             (let ((___splice5076950770_
                                                    (gx#syntax-split-splice
                                                     _tl5029450422_
                                                     '0)))
                                               (let ((_tl5031950351_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice5076950770_
                                                         '1)))
                                                     (_target5031750348_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice5076950770_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl5031950351_)
                                                     (___match5081750818_
                                                      _e5029650415_
                                                      _hd5029550419_
                                                      _tl5029450422_
                                                      ___splice5076950770_
                                                      _target5031750348_
                                                      _tl5031950351_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g5029050331_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g5029050331_)))))
                                   (if (gx#stx-pair/null? _tl5029450422_)
                                       (let ((___splice5076950770_
                                              (gx#syntax-split-splice
                                               _tl5029450422_
                                               '0)))
                                         (let ((_tl5031950351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice5076950770_
                                                   '1)))
                                               (_target5031750348_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice5076950770_
                                                   '0))))
                                           (if (gx#stx-null? _tl5031950351_)
                                               (___match5081750818_
                                                _e5029650415_
                                                _hd5029550419_
                                                _tl5029450422_
                                                ___splice5076950770_
                                                _target5031750348_
                                                _tl5031950351_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g5029050331_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g5029050331_))))))
                           (if (gx#stx-pair/null? _tl5029450422_)
                               (let ((___splice5076950770_
                                      (gx#syntax-split-splice
                                       _tl5029450422_
                                       '0)))
                                 (let ((_tl5031950351_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5076950770_
                                           '1)))
                                       (_target5031750348_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5076950770_
                                           '0))))
                                   (if (gx#stx-null? _tl5031950351_)
                                       (___match5081750818_
                                        _e5029650415_
                                        _hd5029550419_
                                        _tl5029450422_
                                        ___splice5076950770_
                                        _target5031750348_
                                        _tl5031950351_)
                                       (let ()
                                         (declare (not safe))
                                         (_g5029050331_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g5029050331_))))))
                   (let () (declare (not safe)) (_g5029050331_)))))))))))
