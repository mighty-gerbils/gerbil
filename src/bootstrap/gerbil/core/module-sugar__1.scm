(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_$stx47147_)
      (let* ((___stx4974949750_ _$stx47147_)
             (_g4715247171_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4974949750_))))
        (let ((___kont4975249753_
               (lambda ()
                 (let ((__tmp50045 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp50045 '()))))
              (___kont4975449755_
               (lambda (_L47198_ _L47200_ _L47201_)
                 (let ((__tmp50058 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp50046
                        (let ((__tmp50055
                               (let ((__tmp50056
                                      (let ((__tmp50057
                                             (let ()
                                               (declare (not safe))
                                               (cons _L47201_ _L47198_))))
                                        (declare (not safe))
                                        (cons __tmp50057 '()))))
                                 (declare (not safe))
                                 (cons _L47200_ __tmp50056)))
                              (__tmp50047
                               (let ((__tmp50048
                                      (let ((__tmp50054
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp50049
                                             (let ((__tmp50050
                                                    (let ((__tmp50053
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp50051
                                                           (let ((__tmp50052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L47200_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp50052))))
              (declare (not safe))
              (cons __tmp50053 __tmp50051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50050 '()))))
                                        (declare (not safe))
                                        (cons __tmp50054 __tmp50049))))
                                 (declare (not safe))
                                 (cons __tmp50048 '()))))
                          (declare (not safe))
                          (cons __tmp50055 __tmp50047))))
                   (declare (not safe))
                   (cons __tmp50058 __tmp50046)))))
          (if (gx#stx-pair? ___stx4974949750_)
              (let ((_e4715647223_ (gx#syntax-e ___stx4974949750_)))
                (let ((_tl4715447230_
                       (let () (declare (not safe)) (##cdr _e4715647223_)))
                      (_hd4715547227_
                       (let () (declare (not safe)) (##car _e4715647223_))))
                  (if (gx#stx-null? _tl4715447230_)
                      (___kont4975249753_)
                      (if (gx#stx-pair? _tl4715447230_)
                          (let ((_e4716547188_ (gx#syntax-e _tl4715447230_)))
                            (let ((_tl4716347195_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4716547188_)))
                                  (_hd4716447192_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4716547188_))))
                              (___kont4975449755_
                               _tl4716347195_
                               _hd4716447192_
                               _hd4715547227_)))
                          (let () (declare (not safe)) (_g4715247171_))))))
              (let () (declare (not safe)) (_g4715247171_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_$stx47241_)
      (let* ((___stx4977949780_ _$stx47241_)
             (_g4724647286_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4977949780_))))
        (let ((___kont4978249783_
               (lambda (_L47424_ _L47426_)
                 (let ((__tmp50064 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50059
                        (let ((__tmp50060
                               (let ((__tmp50061
                                      (let ((__tmp50063
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp50062
                                             (let ()
                                               (declare (not safe))
                                               (cons _L47424_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50063 __tmp50062))))
                                 (declare (not safe))
                                 (cons __tmp50061 '()))))
                          (declare (not safe))
                          (cons _L47426_ __tmp50060))))
                   (declare (not safe))
                   (cons __tmp50064 __tmp50059))))
              (___kont4978449785_
               (lambda (_L47353_ _L47355_ _L47356_ _L47357_)
                 (let ((__tmp50065
                        (let ((__tmp50066
                               (let ((__tmp50067
                                      (let ((__tmp50070
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50068
                                             (let ((__tmp50069
                                                    (foldr (lambda (_g4737847381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4737947384_)
                     (let ()
                       (declare (not safe))
                       (cons _g4737847381_ _g4737947384_)))
                   '()
                   _L47353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L47355_ __tmp50069))))
                                        (declare (not safe))
                                        (cons __tmp50070 __tmp50068))))
                                 (declare (not safe))
                                 (cons __tmp50067 '()))))
                          (declare (not safe))
                          (cons _L47356_ __tmp50066))))
                   (declare (not safe))
                   (cons _L47357_ __tmp50065)))))
          (let* ((___match4983449835_
                  (lambda (_e4726547293_
                           _hd4726447297_
                           _tl4726347300_
                           _e4726847303_
                           _hd4726747307_
                           _tl4726647310_
                           _e4727147313_
                           _hd4727047317_
                           _tl4726947320_
                           ___splice4978649787_
                           _target4727247323_
                           _tl4727447326_)
                    (letrec ((_loop4727547329_
                              (lambda (_hd4727347333_ _body4727947336_)
                                (if (gx#stx-pair? _hd4727347333_)
                                    (let ((_e4727647339_
                                           (gx#syntax-e _hd4727347333_)))
                                      (let ((_lp-tl4727847346_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4727647339_)))
                                            (_lp-hd4727747343_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4727647339_))))
                                        (_loop4727547329_
                                         _lp-tl4727847346_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4727747343_
                                                 _body4727947336_)))))
                                    (let ((_body4728047349_
                                           (reverse _body4727947336_)))
                                      (let ((_L47353_ _body4728047349_)
                                            (_L47355_ _tl4726947320_)
                                            (_L47356_ _hd4727047317_)
                                            (_L47357_ _hd4726447297_))
                                        (if (gx#identifier? _L47356_)
                                            (___kont4978449785_
                                             _L47353_
                                             _L47355_
                                             _L47356_
                                             _L47357_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4724647286_)))))))))
                      (_loop4727547329_ _target4727247323_ '()))))
                 (___match4980849809_
                  (lambda (_e4725247394_
                           _hd4725147398_
                           _tl4725047401_
                           _e4725547404_
                           _hd4725447408_
                           _tl4725347411_
                           _e4725847414_
                           _hd4725747418_
                           _tl4725647421_)
                    (let ((_L47424_ _hd4725747418_) (_L47426_ _hd4725447408_))
                      (if (gx#identifier? _L47426_)
                          (___kont4978249783_ _L47424_ _L47426_)
                          (if (gx#stx-pair? _hd4725447408_)
                              (let ((_e4727147313_
                                     (gx#syntax-e _hd4725447408_)))
                                (let ((_tl4726947320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4727147313_)))
                                      (_hd4727047317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4727147313_))))
                                  (if (gx#stx-pair/null? _tl4725347411_)
                                      (let ((___splice4978649787_
                                             (gx#syntax-split-splice
                                              _tl4725347411_
                                              '0)))
                                        (let ((_tl4727447326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4978649787_
                                                  '1)))
                                              (_target4727247323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4978649787_
                                                  '0))))
                                          (if (gx#stx-null? _tl4727447326_)
                                              (___match4983449835_
                                               _e4725247394_
                                               _hd4725147398_
                                               _tl4725047401_
                                               _e4725547404_
                                               _hd4725447408_
                                               _tl4725347411_
                                               _e4727147313_
                                               _hd4727047317_
                                               _tl4726947320_
                                               ___splice4978649787_
                                               _target4727247323_
                                               _tl4727447326_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4724647286_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4724647286_)))))
                              (let ()
                                (declare (not safe))
                                (_g4724647286_))))))))
            (if (gx#stx-pair? ___stx4977949780_)
                (let ((_e4725247394_ (gx#syntax-e ___stx4977949780_)))
                  (let ((_tl4725047401_
                         (let () (declare (not safe)) (##cdr _e4725247394_)))
                        (_hd4725147398_
                         (let () (declare (not safe)) (##car _e4725247394_))))
                    (if (gx#stx-pair? _tl4725047401_)
                        (let ((_e4725547404_ (gx#syntax-e _tl4725047401_)))
                          (let ((_tl4725347411_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4725547404_)))
                                (_hd4725447408_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4725547404_))))
                            (if (gx#stx-pair? _tl4725347411_)
                                (let ((_e4725847414_
                                       (gx#syntax-e _tl4725347411_)))
                                  (let ((_tl4725647421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4725847414_)))
                                        (_hd4725747418_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4725847414_))))
                                    (if (gx#stx-null? _tl4725647421_)
                                        (___match4980849809_
                                         _e4725247394_
                                         _hd4725147398_
                                         _tl4725047401_
                                         _e4725547404_
                                         _hd4725447408_
                                         _tl4725347411_
                                         _e4725847414_
                                         _hd4725747418_
                                         _tl4725647421_)
                                        (if (gx#stx-pair? _hd4725447408_)
                                            (let ((_e4727147313_
                                                   (gx#syntax-e
                                                    _hd4725447408_)))
                                              (let ((_tl4726947320_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4727147313_)))
                                                    (_hd4727047317_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4727147313_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4725347411_)
                                                    (let ((___splice4978649787_
                                                           (gx#syntax-split-splice
                                                            _tl4725347411_
                                                            '0)))
                                                      (let ((_tl4727447326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4978649787_ '1)))
                    (_target4727247323_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4978649787_ '0))))
                (if (gx#stx-null? _tl4727447326_)
                    (___match4983449835_
                     _e4725247394_
                     _hd4725147398_
                     _tl4725047401_
                     _e4725547404_
                     _hd4725447408_
                     _tl4725347411_
                     _e4727147313_
                     _hd4727047317_
                     _tl4726947320_
                     ___splice4978649787_
                     _target4727247323_
                     _tl4727447326_)
                    (let () (declare (not safe)) (_g4724647286_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4724647286_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4724647286_))))))
                                (if (gx#stx-pair? _hd4725447408_)
                                    (let ((_e4727147313_
                                           (gx#syntax-e _hd4725447408_)))
                                      (let ((_tl4726947320_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4727147313_)))
                                            (_hd4727047317_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4727147313_))))
                                        (if (gx#stx-pair/null? _tl4725347411_)
                                            (let ((___splice4978649787_
                                                   (gx#syntax-split-splice
                                                    _tl4725347411_
                                                    '0)))
                                              (let ((_tl4727447326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4978649787_
                                                        '1)))
                                                    (_target4727247323_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4978649787_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4727447326_)
                                                    (___match4983449835_
                                                     _e4725247394_
                                                     _hd4725147398_
                                                     _tl4725047401_
                                                     _e4725547404_
                                                     _hd4725447408_
                                                     _tl4725347411_
                                                     _e4727147313_
                                                     _hd4727047317_
                                                     _tl4726947320_
                                                     ___splice4978649787_
                                                     _target4727247323_
                                                     _tl4727447326_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4724647286_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4724647286_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4724647286_))))))
                        (let () (declare (not safe)) (_g4724647286_)))))
                (let () (declare (not safe)) (_g4724647286_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_$stx47446_)
      (let* ((___stx4983749838_ _$stx47446_)
             (_g4745147491_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4983749838_))))
        (let ((___kont4984049841_
               (lambda (_L47629_ _L47631_)
                 (let ((__tmp50076 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50071
                        (let ((__tmp50072
                               (let ((__tmp50073
                                      (let ((__tmp50075
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp50074
                                             (let ()
                                               (declare (not safe))
                                               (cons _L47629_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50075 __tmp50074))))
                                 (declare (not safe))
                                 (cons __tmp50073 '()))))
                          (declare (not safe))
                          (cons _L47631_ __tmp50072))))
                   (declare (not safe))
                   (cons __tmp50076 __tmp50071))))
              (___kont4984249843_
               (lambda (_L47558_ _L47560_ _L47561_ _L47562_)
                 (let ((__tmp50077
                        (let ((__tmp50078
                               (let ((__tmp50079
                                      (let ((__tmp50082
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50080
                                             (let ((__tmp50081
                                                    (foldr (lambda (_g4758347586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4758447589_)
                     (let ()
                       (declare (not safe))
                       (cons _g4758347586_ _g4758447589_)))
                   '()
                   _L47558_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L47560_ __tmp50081))))
                                        (declare (not safe))
                                        (cons __tmp50082 __tmp50080))))
                                 (declare (not safe))
                                 (cons __tmp50079 '()))))
                          (declare (not safe))
                          (cons _L47561_ __tmp50078))))
                   (declare (not safe))
                   (cons _L47562_ __tmp50077)))))
          (let* ((___match4989249893_
                  (lambda (_e4747047498_
                           _hd4746947502_
                           _tl4746847505_
                           _e4747347508_
                           _hd4747247512_
                           _tl4747147515_
                           _e4747647518_
                           _hd4747547522_
                           _tl4747447525_
                           ___splice4984449845_
                           _target4747747528_
                           _tl4747947531_)
                    (letrec ((_loop4748047534_
                              (lambda (_hd4747847538_ _body4748447541_)
                                (if (gx#stx-pair? _hd4747847538_)
                                    (let ((_e4748147544_
                                           (gx#syntax-e _hd4747847538_)))
                                      (let ((_lp-tl4748347551_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4748147544_)))
                                            (_lp-hd4748247548_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4748147544_))))
                                        (_loop4748047534_
                                         _lp-tl4748347551_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4748247548_
                                                 _body4748447541_)))))
                                    (let ((_body4748547554_
                                           (reverse _body4748447541_)))
                                      (let ((_L47558_ _body4748547554_)
                                            (_L47560_ _tl4747447525_)
                                            (_L47561_ _hd4747547522_)
                                            (_L47562_ _hd4746947502_))
                                        (if (gx#identifier? _L47561_)
                                            (___kont4984249843_
                                             _L47558_
                                             _L47560_
                                             _L47561_
                                             _L47562_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4745147491_)))))))))
                      (_loop4748047534_ _target4747747528_ '()))))
                 (___match4986649867_
                  (lambda (_e4745747599_
                           _hd4745647603_
                           _tl4745547606_
                           _e4746047609_
                           _hd4745947613_
                           _tl4745847616_
                           _e4746347619_
                           _hd4746247623_
                           _tl4746147626_)
                    (let ((_L47629_ _hd4746247623_) (_L47631_ _hd4745947613_))
                      (if (gx#identifier? _L47631_)
                          (___kont4984049841_ _L47629_ _L47631_)
                          (if (gx#stx-pair? _hd4745947613_)
                              (let ((_e4747647518_
                                     (gx#syntax-e _hd4745947613_)))
                                (let ((_tl4747447525_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4747647518_)))
                                      (_hd4747547522_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4747647518_))))
                                  (if (gx#stx-pair/null? _tl4745847616_)
                                      (let ((___splice4984449845_
                                             (gx#syntax-split-splice
                                              _tl4745847616_
                                              '0)))
                                        (let ((_tl4747947531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4984449845_
                                                  '1)))
                                              (_target4747747528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4984449845_
                                                  '0))))
                                          (if (gx#stx-null? _tl4747947531_)
                                              (___match4989249893_
                                               _e4745747599_
                                               _hd4745647603_
                                               _tl4745547606_
                                               _e4746047609_
                                               _hd4745947613_
                                               _tl4745847616_
                                               _e4747647518_
                                               _hd4747547522_
                                               _tl4747447525_
                                               ___splice4984449845_
                                               _target4747747528_
                                               _tl4747947531_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4745147491_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4745147491_)))))
                              (let ()
                                (declare (not safe))
                                (_g4745147491_))))))))
            (if (gx#stx-pair? ___stx4983749838_)
                (let ((_e4745747599_ (gx#syntax-e ___stx4983749838_)))
                  (let ((_tl4745547606_
                         (let () (declare (not safe)) (##cdr _e4745747599_)))
                        (_hd4745647603_
                         (let () (declare (not safe)) (##car _e4745747599_))))
                    (if (gx#stx-pair? _tl4745547606_)
                        (let ((_e4746047609_ (gx#syntax-e _tl4745547606_)))
                          (let ((_tl4745847616_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4746047609_)))
                                (_hd4745947613_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4746047609_))))
                            (if (gx#stx-pair? _tl4745847616_)
                                (let ((_e4746347619_
                                       (gx#syntax-e _tl4745847616_)))
                                  (let ((_tl4746147626_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4746347619_)))
                                        (_hd4746247623_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4746347619_))))
                                    (if (gx#stx-null? _tl4746147626_)
                                        (___match4986649867_
                                         _e4745747599_
                                         _hd4745647603_
                                         _tl4745547606_
                                         _e4746047609_
                                         _hd4745947613_
                                         _tl4745847616_
                                         _e4746347619_
                                         _hd4746247623_
                                         _tl4746147626_)
                                        (if (gx#stx-pair? _hd4745947613_)
                                            (let ((_e4747647518_
                                                   (gx#syntax-e
                                                    _hd4745947613_)))
                                              (let ((_tl4747447525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4747647518_)))
                                                    (_hd4747547522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4747647518_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4745847616_)
                                                    (let ((___splice4984449845_
                                                           (gx#syntax-split-splice
                                                            _tl4745847616_
                                                            '0)))
                                                      (let ((_tl4747947531_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4984449845_ '1)))
                    (_target4747747528_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4984449845_ '0))))
                (if (gx#stx-null? _tl4747947531_)
                    (___match4989249893_
                     _e4745747599_
                     _hd4745647603_
                     _tl4745547606_
                     _e4746047609_
                     _hd4745947613_
                     _tl4745847616_
                     _e4747647518_
                     _hd4747547522_
                     _tl4747447525_
                     ___splice4984449845_
                     _target4747747528_
                     _tl4747947531_)
                    (let () (declare (not safe)) (_g4745147491_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4745147491_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4745147491_))))))
                                (if (gx#stx-pair? _hd4745947613_)
                                    (let ((_e4747647518_
                                           (gx#syntax-e _hd4745947613_)))
                                      (let ((_tl4747447525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4747647518_)))
                                            (_hd4747547522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4747647518_))))
                                        (if (gx#stx-pair/null? _tl4745847616_)
                                            (let ((___splice4984449845_
                                                   (gx#syntax-split-splice
                                                    _tl4745847616_
                                                    '0)))
                                              (let ((_tl4747947531_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4984449845_
                                                        '1)))
                                                    (_target4747747528_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4984449845_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4747947531_)
                                                    (___match4989249893_
                                                     _e4745747599_
                                                     _hd4745647603_
                                                     _tl4745547606_
                                                     _e4746047609_
                                                     _hd4745947613_
                                                     _tl4745847616_
                                                     _e4747647518_
                                                     _hd4747547522_
                                                     _tl4747447525_
                                                     ___splice4984449845_
                                                     _target4747747528_
                                                     _tl4747947531_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4745147491_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4745147491_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4745147491_))))))
                        (let () (declare (not safe)) (_g4745147491_)))))
                (let () (declare (not safe)) (_g4745147491_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_$stx47651_)
      (let* ((___stx4989549896_ _$stx47651_)
             (_g4765647696_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4989549896_))))
        (let ((___kont4989849899_
               (lambda (_L47834_ _L47836_)
                 (let ((__tmp50088 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50083
                        (let ((__tmp50084
                               (let ((__tmp50085
                                      (let ((__tmp50087
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp50086
                                             (let ()
                                               (declare (not safe))
                                               (cons _L47834_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50087 __tmp50086))))
                                 (declare (not safe))
                                 (cons __tmp50085 '()))))
                          (declare (not safe))
                          (cons _L47836_ __tmp50084))))
                   (declare (not safe))
                   (cons __tmp50088 __tmp50083))))
              (___kont4990049901_
               (lambda (_L47763_ _L47765_ _L47766_ _L47767_)
                 (let ((__tmp50089
                        (let ((__tmp50090
                               (let ((__tmp50091
                                      (let ((__tmp50094
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50092
                                             (let ((__tmp50093
                                                    (foldr (lambda (_g4778847791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4778947794_)
                     (let ()
                       (declare (not safe))
                       (cons _g4778847791_ _g4778947794_)))
                   '()
                   _L47763_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L47765_ __tmp50093))))
                                        (declare (not safe))
                                        (cons __tmp50094 __tmp50092))))
                                 (declare (not safe))
                                 (cons __tmp50091 '()))))
                          (declare (not safe))
                          (cons _L47766_ __tmp50090))))
                   (declare (not safe))
                   (cons _L47767_ __tmp50089)))))
          (let* ((___match4995049951_
                  (lambda (_e4767547703_
                           _hd4767447707_
                           _tl4767347710_
                           _e4767847713_
                           _hd4767747717_
                           _tl4767647720_
                           _e4768147723_
                           _hd4768047727_
                           _tl4767947730_
                           ___splice4990249903_
                           _target4768247733_
                           _tl4768447736_)
                    (letrec ((_loop4768547739_
                              (lambda (_hd4768347743_ _body4768947746_)
                                (if (gx#stx-pair? _hd4768347743_)
                                    (let ((_e4768647749_
                                           (gx#syntax-e _hd4768347743_)))
                                      (let ((_lp-tl4768847756_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4768647749_)))
                                            (_lp-hd4768747753_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4768647749_))))
                                        (_loop4768547739_
                                         _lp-tl4768847756_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4768747753_
                                                 _body4768947746_)))))
                                    (let ((_body4769047759_
                                           (reverse _body4768947746_)))
                                      (let ((_L47763_ _body4769047759_)
                                            (_L47765_ _tl4767947730_)
                                            (_L47766_ _hd4768047727_)
                                            (_L47767_ _hd4767447707_))
                                        (if (gx#identifier? _L47766_)
                                            (___kont4990049901_
                                             _L47763_
                                             _L47765_
                                             _L47766_
                                             _L47767_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4765647696_)))))))))
                      (_loop4768547739_ _target4768247733_ '()))))
                 (___match4992449925_
                  (lambda (_e4766247804_
                           _hd4766147808_
                           _tl4766047811_
                           _e4766547814_
                           _hd4766447818_
                           _tl4766347821_
                           _e4766847824_
                           _hd4766747828_
                           _tl4766647831_)
                    (let ((_L47834_ _hd4766747828_) (_L47836_ _hd4766447818_))
                      (if (gx#identifier? _L47836_)
                          (___kont4989849899_ _L47834_ _L47836_)
                          (if (gx#stx-pair? _hd4766447818_)
                              (let ((_e4768147723_
                                     (gx#syntax-e _hd4766447818_)))
                                (let ((_tl4767947730_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4768147723_)))
                                      (_hd4768047727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4768147723_))))
                                  (if (gx#stx-pair/null? _tl4766347821_)
                                      (let ((___splice4990249903_
                                             (gx#syntax-split-splice
                                              _tl4766347821_
                                              '0)))
                                        (let ((_tl4768447736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4990249903_
                                                  '1)))
                                              (_target4768247733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4990249903_
                                                  '0))))
                                          (if (gx#stx-null? _tl4768447736_)
                                              (___match4995049951_
                                               _e4766247804_
                                               _hd4766147808_
                                               _tl4766047811_
                                               _e4766547814_
                                               _hd4766447818_
                                               _tl4766347821_
                                               _e4768147723_
                                               _hd4768047727_
                                               _tl4767947730_
                                               ___splice4990249903_
                                               _target4768247733_
                                               _tl4768447736_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4765647696_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4765647696_)))))
                              (let ()
                                (declare (not safe))
                                (_g4765647696_))))))))
            (if (gx#stx-pair? ___stx4989549896_)
                (let ((_e4766247804_ (gx#syntax-e ___stx4989549896_)))
                  (let ((_tl4766047811_
                         (let () (declare (not safe)) (##cdr _e4766247804_)))
                        (_hd4766147808_
                         (let () (declare (not safe)) (##car _e4766247804_))))
                    (if (gx#stx-pair? _tl4766047811_)
                        (let ((_e4766547814_ (gx#syntax-e _tl4766047811_)))
                          (let ((_tl4766347821_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4766547814_)))
                                (_hd4766447818_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4766547814_))))
                            (if (gx#stx-pair? _tl4766347821_)
                                (let ((_e4766847824_
                                       (gx#syntax-e _tl4766347821_)))
                                  (let ((_tl4766647831_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4766847824_)))
                                        (_hd4766747828_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4766847824_))))
                                    (if (gx#stx-null? _tl4766647831_)
                                        (___match4992449925_
                                         _e4766247804_
                                         _hd4766147808_
                                         _tl4766047811_
                                         _e4766547814_
                                         _hd4766447818_
                                         _tl4766347821_
                                         _e4766847824_
                                         _hd4766747828_
                                         _tl4766647831_)
                                        (if (gx#stx-pair? _hd4766447818_)
                                            (let ((_e4768147723_
                                                   (gx#syntax-e
                                                    _hd4766447818_)))
                                              (let ((_tl4767947730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4768147723_)))
                                                    (_hd4768047727_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4768147723_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4766347821_)
                                                    (let ((___splice4990249903_
                                                           (gx#syntax-split-splice
                                                            _tl4766347821_
                                                            '0)))
                                                      (let ((_tl4768447736_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4990249903_ '1)))
                    (_target4768247733_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4990249903_ '0))))
                (if (gx#stx-null? _tl4768447736_)
                    (___match4995049951_
                     _e4766247804_
                     _hd4766147808_
                     _tl4766047811_
                     _e4766547814_
                     _hd4766447818_
                     _tl4766347821_
                     _e4768147723_
                     _hd4768047727_
                     _tl4767947730_
                     ___splice4990249903_
                     _target4768247733_
                     _tl4768447736_)
                    (let () (declare (not safe)) (_g4765647696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4765647696_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4765647696_))))))
                                (if (gx#stx-pair? _hd4766447818_)
                                    (let ((_e4768147723_
                                           (gx#syntax-e _hd4766447818_)))
                                      (let ((_tl4767947730_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4768147723_)))
                                            (_hd4768047727_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4768147723_))))
                                        (if (gx#stx-pair/null? _tl4766347821_)
                                            (let ((___splice4990249903_
                                                   (gx#syntax-split-splice
                                                    _tl4766347821_
                                                    '0)))
                                              (let ((_tl4768447736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4990249903_
                                                        '1)))
                                                    (_target4768247733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4990249903_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4768447736_)
                                                    (___match4995049951_
                                                     _e4766247804_
                                                     _hd4766147808_
                                                     _tl4766047811_
                                                     _e4766547814_
                                                     _hd4766447818_
                                                     _tl4766347821_
                                                     _e4768147723_
                                                     _hd4768047727_
                                                     _tl4767947730_
                                                     ___splice4990249903_
                                                     _target4768247733_
                                                     _tl4768447736_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4765647696_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4765647696_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4765647696_))))))
                        (let () (declare (not safe)) (_g4765647696_)))))
                (let () (declare (not safe)) (_g4765647696_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx47856_)
       (let* ((_g4785947879_
               (lambda (_g4786047875_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4786047875_)))
              (_g4785847950_
               (lambda (_g4786047883_)
                 (if (gx#stx-pair? _g4786047883_)
                     (let ((_e4786447886_ (gx#syntax-e _g4786047883_)))
                       (let ((_hd4786347890_
                              (let ()
                                (declare (not safe))
                                (##car _e4786447886_)))
                             (_tl4786247893_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4786447886_))))
                         (if (gx#stx-pair/null? _tl4786247893_)
                             (let ((_g50095_
                                    (gx#syntax-split-splice
                                     _tl4786247893_
                                     '0)))
                               (begin
                                 (let ((_g50096_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50095_)
                                              (##vector-length _g50095_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50096_ 2)))
                                       (error "Context expects 2 values"
                                              _g50096_)))
                                 (let ((_target4786547896_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50095_ 0)))
                                       (_tl4786747899_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50095_ 1))))
                                   (if (gx#stx-null? _tl4786747899_)
                                       (letrec ((_loop4786847902_
                                                 (lambda (_hd4786647906_
                                                          _body4787247909_)
                                                   (if (gx#stx-pair?
                                                        _hd4786647906_)
                                                       (let ((_e4786947912_
                                                              (gx#syntax-e
                                                               _hd4786647906_)))
                                                         (let ((_lp-hd4787047916_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4786947912_)))
                       (_lp-tl4787147919_
                        (let () (declare (not safe)) (##cdr _e4786947912_))))
                   (_loop4786847902_
                    _lp-tl4787147919_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd4787047916_ _body4787247909_)))))
               (let ((_body4787347922_ (reverse _body4787247909_)))
                 ((lambda (_L47926_)
                    (let ((__tmp50097
                           (let ((__tmp50098
                                  (foldr (lambda (_g4794147944_ _g4794247947_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g4794147944_
                                                   _g4794247947_)))
                                         '()
                                         _L47926_)))
                             (declare (not safe))
                             (cons '1 __tmp50098))))
                      (declare (not safe))
                      (cons 'phi: __tmp50097)))
                  _body4787347922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4786847902_
                                          _target4786547896_
                                          '()))
                                       (_g4785947879_ _g4786047883_)))))
                             (_g4785947879_ _g4786047883_))))
                     (_g4785947879_ _g4786047883_)))))
         (_g4785847950_ _stx47856_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx47955_)
       (let* ((_g4795847978_
               (lambda (_g4795947974_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4795947974_)))
              (_g4795748049_
               (lambda (_g4795947982_)
                 (if (gx#stx-pair? _g4795947982_)
                     (let ((_e4796347985_ (gx#syntax-e _g4795947982_)))
                       (let ((_hd4796247989_
                              (let ()
                                (declare (not safe))
                                (##car _e4796347985_)))
                             (_tl4796147992_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4796347985_))))
                         (if (gx#stx-pair/null? _tl4796147992_)
                             (let ((_g50099_
                                    (gx#syntax-split-splice
                                     _tl4796147992_
                                     '0)))
                               (begin
                                 (let ((_g50100_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50099_)
                                              (##vector-length _g50099_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50100_ 2)))
                                       (error "Context expects 2 values"
                                              _g50100_)))
                                 (let ((_target4796447995_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50099_ 0)))
                                       (_tl4796647998_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50099_ 1))))
                                   (if (gx#stx-null? _tl4796647998_)
                                       (letrec ((_loop4796748001_
                                                 (lambda (_hd4796548005_
                                                          _body4797148008_)
                                                   (if (gx#stx-pair?
                                                        _hd4796548005_)
                                                       (let ((_e4796848011_
                                                              (gx#syntax-e
                                                               _hd4796548005_)))
                                                         (let ((_lp-hd4796948015_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4796848011_)))
                       (_lp-tl4797048018_
                        (let () (declare (not safe)) (##cdr _e4796848011_))))
                   (_loop4796748001_
                    _lp-tl4797048018_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd4796948015_ _body4797148008_)))))
               (let ((_body4797248021_ (reverse _body4797148008_)))
                 ((lambda (_L48025_)
                    (let ((__tmp50101
                           (let ((__tmp50102
                                  (foldr (lambda (_g4804048043_ _g4804148046_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g4804048043_
                                                   _g4804148046_)))
                                         '()
                                         _L48025_)))
                             (declare (not safe))
                             (cons '-1 __tmp50102))))
                      (declare (not safe))
                      (cons 'phi: __tmp50101)))
                  _body4797248021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4796748001_
                                          _target4796447995_
                                          '()))
                                       (_g4795847978_ _g4795947982_)))))
                             (_g4795847978_ _g4795947982_))))
                     (_g4795847978_ _g4795947982_)))))
         (_g4795748049_ _stx47955_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx48054_)
       (let* ((_g4805748081_
               (lambda (_g4805848077_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4805848077_)))
              (_g4805648203_
               (lambda (_g4805848085_)
                 (if (gx#stx-pair? _g4805848085_)
                     (let ((_e4806348088_ (gx#syntax-e _g4805848085_)))
                       (let ((_hd4806248092_
                              (let ()
                                (declare (not safe))
                                (##car _e4806348088_)))
                             (_tl4806148095_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4806348088_))))
                         (if (gx#stx-pair? _tl4806148095_)
                             (let ((_e4806648098_
                                    (gx#syntax-e _tl4806148095_)))
                               (let ((_hd4806548102_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4806648098_)))
                                     (_tl4806448105_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4806648098_))))
                                 (if (gx#stx-pair/null? _tl4806448105_)
                                     (let ((_g50103_
                                            (gx#syntax-split-splice
                                             _tl4806448105_
                                             '0)))
                                       (begin
                                         (let ((_g50104_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50103_)
                                                      (##vector-length
                                                       _g50103_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50104_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50104_)))
                                         (let ((_target4806748108_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50103_ 0)))
                                               (_tl4806948111_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50103_ 1))))
                                           (if (gx#stx-null? _tl4806948111_)
                                               (letrec ((_loop4807048114_
                                                         (lambda (_hd4806848118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4807448121_)
                   (if (gx#stx-pair? _hd4806848118_)
                       (let ((_e4807148124_ (gx#syntax-e _hd4806848118_)))
                         (let ((_lp-hd4807248128_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4807148124_)))
                               (_lp-tl4807348131_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4807148124_))))
                           (_loop4807048114_
                            _lp-tl4807348131_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4807248128_ _id4807448121_)))))
                       (let ((_id4807548134_ (reverse _id4807448121_)))
                         ((lambda (_L48138_ _L48140_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4815748160_ _g4815848163_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4815748160_
                                                  _g4815848163_)))
                                        '()
                                        _L48138_))
                                (let* ((_keys48174_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4816548168_
                                                         _g4816648171_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4816548168_
                                                          _g4816648171_)))
                                                '()
                                                _L48138_)))
                                       (_keytab48185_
                                        (let ((_ht48177_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4817948181_)
                                             (hash-put!
                                              _ht48177_
                                              _g4817948181_
                                              '#t))
                                           _keys48174_)
                                          _ht48177_))
                                       (_imports48188_
                                        (gx#core-expand-import-source
                                         _L48140_))
                                       (_fold-e48198_
                                        (letrec ((_fold-e48191_
                                                  (lambda (_in48194_ _r48196_)
                                                    (if (gx#module-import?
                                                         _in48194_)
                                                        (if (hash-get
                                                             _keytab48185_
                                                             (gx#module-import-name
                                                              _in48194_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in48194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r48196_))
                    _r48196_)
                (if (gx#import-set? _in48194_)
                    (foldl _fold-e48191_
                           _r48196_
                           (gx#import-set-imports _in48194_))
                    _r48196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e48191_)))
                                  (let ((__tmp50105
                                         (foldl _fold-e48198_
                                                '()
                                                _imports48188_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50105)))
                                (_g4805748081_ _g4805848085_)))
                          _id4807548134_
                          _hd4806548102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4807048114_
                                                  _target4806748108_
                                                  '()))
                                               (_g4805748081_
                                                _g4805848085_)))))
                                     (_g4805748081_ _g4805848085_))))
                             (_g4805748081_ _g4805848085_))))
                     (_g4805748081_ _g4805848085_)))))
         (_g4805648203_ _stx48054_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx48208_)
       (let* ((_g4821148235_
               (lambda (_g4821248231_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4821248231_)))
              (_g4821048357_
               (lambda (_g4821248239_)
                 (if (gx#stx-pair? _g4821248239_)
                     (let ((_e4821748242_ (gx#syntax-e _g4821248239_)))
                       (let ((_hd4821648246_
                              (let ()
                                (declare (not safe))
                                (##car _e4821748242_)))
                             (_tl4821548249_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4821748242_))))
                         (if (gx#stx-pair? _tl4821548249_)
                             (let ((_e4822048252_
                                    (gx#syntax-e _tl4821548249_)))
                               (let ((_hd4821948256_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4822048252_)))
                                     (_tl4821848259_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4822048252_))))
                                 (if (gx#stx-pair/null? _tl4821848259_)
                                     (let ((_g50106_
                                            (gx#syntax-split-splice
                                             _tl4821848259_
                                             '0)))
                                       (begin
                                         (let ((_g50107_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50106_)
                                                      (##vector-length
                                                       _g50106_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50107_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50107_)))
                                         (let ((_target4822148262_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50106_ 0)))
                                               (_tl4822348265_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50106_ 1))))
                                           (if (gx#stx-null? _tl4822348265_)
                                               (letrec ((_loop4822448268_
                                                         (lambda (_hd4822248272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4822848275_)
                   (if (gx#stx-pair? _hd4822248272_)
                       (let ((_e4822548278_ (gx#syntax-e _hd4822248272_)))
                         (let ((_lp-hd4822648282_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4822548278_)))
                               (_lp-tl4822748285_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4822548278_))))
                           (_loop4822448268_
                            _lp-tl4822748285_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4822648282_ _id4822848275_)))))
                       (let ((_id4822948288_ (reverse _id4822848275_)))
                         ((lambda (_L48292_ _L48294_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4831148314_ _g4831248317_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4831148314_
                                                  _g4831248317_)))
                                        '()
                                        _L48292_))
                                (let* ((_keys48328_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4831948322_
                                                         _g4832048325_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4831948322_
                                                          _g4832048325_)))
                                                '()
                                                _L48292_)))
                                       (_keytab48339_
                                        (let ((_ht48331_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4833348335_)
                                             (hash-put!
                                              _ht48331_
                                              _g4833348335_
                                              '#t))
                                           _keys48328_)
                                          _ht48331_))
                                       (_imports48342_
                                        (gx#core-expand-import-source
                                         _L48294_))
                                       (_fold-e48352_
                                        (letrec ((_fold-e48345_
                                                  (lambda (_in48348_ _r48350_)
                                                    (if (gx#module-import?
                                                         _in48348_)
                                                        (if (hash-get
                                                             _keytab48339_
                                                             (gx#module-import-name
                                                              _in48348_))
                                                            _r48350_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in48348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r48350_)))
                (if (gx#import-set? _in48348_)
                    (foldl _fold-e48345_
                           _r48350_
                           (gx#import-set-imports _in48348_))
                    (let ()
                      (declare (not safe))
                      (cons _in48348_ _r48350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e48345_)))
                                  (let ((__tmp50108
                                         (foldl _fold-e48352_
                                                '()
                                                _imports48342_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50108)))
                                (_g4821148235_ _g4821248239_)))
                          _id4822948288_
                          _hd4821948256_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4822448268_
                                                  _target4822148262_
                                                  '()))
                                               (_g4821148235_
                                                _g4821248239_)))))
                                     (_g4821148235_ _g4821248239_))))
                             (_g4821148235_ _g4821248239_))))
                     (_g4821148235_ _g4821248239_)))))
         (_g4821048357_ _stx48208_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_in48409_ _rename48411_)
      (gx#make-module-import
       (gx#module-import-source _in48409_)
       _rename48411_
       (gx#module-import-phi _in48409_)
       (gx#module-import-weak? _in48409_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_name48362_ _pre48364_)
      (let* ((_name4836548373_ _name48362_)
             (_else4836748385_
              (lambda () (make-symbol _pre48364_ _name48362_)))
             (_K4836948393_
              (lambda (_mark48389_ _id48391_)
                (let ((__tmp50109 (make-symbol _pre48364_ _id48391_)))
                  (declare (not safe))
                  (cons __tmp50109 _mark48389_)))))
        (if (let () (declare (not safe)) (##pair? _name4836548373_))
            (let ((_hd4837048397_
                   (let () (declare (not safe)) (##car _name4836548373_)))
                  (_tl4837148400_
                   (let () (declare (not safe)) (##cdr _name4836548373_))))
              (let* ((_id48403_ _hd4837048397_) (_mark48406_ _tl4837148400_))
                (declare (not safe))
                (_K4836948393_ _mark48406_ _id48403_)))
            (let () (declare (not safe)) (_else4836748385_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx48413_)
       (let* ((_g4841648449_
               (lambda (_g4841748445_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4841748445_)))
              (_g4841548635_
               (lambda (_g4841748453_)
                 (if (gx#stx-pair? _g4841748453_)
                     (let ((_e4842348456_ (gx#syntax-e _g4841748453_)))
                       (let ((_hd4842248460_
                              (let ()
                                (declare (not safe))
                                (##car _e4842348456_)))
                             (_tl4842148463_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4842348456_))))
                         (if (gx#stx-pair? _tl4842148463_)
                             (let ((_e4842648466_
                                    (gx#syntax-e _tl4842148463_)))
                               (let ((_hd4842548470_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4842648466_)))
                                     (_tl4842448473_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4842648466_))))
                                 (if (gx#stx-pair/null? _tl4842448473_)
                                     (let ((_g50110_
                                            (gx#syntax-split-splice
                                             _tl4842448473_
                                             '0)))
                                       (begin
                                         (let ((_g50111_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50110_)
                                                      (##vector-length
                                                       _g50110_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50111_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50111_)))
                                         (let ((_target4842748476_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50110_ 0)))
                                               (_tl4842948479_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50110_ 1))))
                                           (if (gx#stx-null? _tl4842948479_)
                                               (letrec ((_loop4843048482_
                                                         (lambda (_hd4842848486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4843448489_
                          _id4843548491_)
                   (if (gx#stx-pair? _hd4842848486_)
                       (let ((_e4843148494_ (gx#syntax-e _hd4842848486_)))
                         (let ((_lp-hd4843248498_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4843148494_)))
                               (_lp-tl4843348501_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4843148494_))))
                           (if (gx#stx-pair? _lp-hd4843248498_)
                               (let ((_e4844048504_
                                      (gx#syntax-e _lp-hd4843248498_)))
                                 (let ((_hd4843948508_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4844048504_)))
                                       (_tl4843848511_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4844048504_))))
                                   (if (gx#stx-pair? _tl4843848511_)
                                       (let ((_e4844348514_
                                              (gx#syntax-e _tl4843848511_)))
                                         (let ((_hd4844248518_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4844348514_)))
                                               (_tl4844148521_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4844348514_))))
                                           (if (gx#stx-null? _tl4844148521_)
                                               (_loop4843048482_
                                                _lp-tl4843348501_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4844248518_
                                                        _new-id4843448489_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4843948508_
                                                        _id4843548491_)))
                                               (_g4841648449_ _g4841748453_))))
                                       (_g4841648449_ _g4841748453_))))
                               (_g4841648449_ _g4841748453_))))
                       (let ((_new-id4843648524_ (reverse _new-id4843448489_))
                             (_id4843748527_ (reverse _id4843548491_)))
                         ((lambda (_L48530_ _L48532_ _L48533_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g4855148554_
                                                      _g4855248557_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4855148554_
                                                       _g4855248557_)))
                                             '()
                                             _L48532_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g4855948562_
                                                      _g4856048565_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4855948562_
                                                       _g4856048565_)))
                                             '()
                                             _L48530_)))
                                (let* ((_keytab48568_ (make-hash-table))
                                       (_found48571_ (make-hash-table))
                                       (_g50112_
                                        (for-each
                                         (lambda (_id48574_ _new-id48576_)
                                           (hash-put!
                                            _keytab48568_
                                            (gx#core-identifier-key _id48574_)
                                            (gx#core-identifier-key
                                             _new-id48576_)))
                                         (foldr (lambda (_g4857748580_
                                                         _g4857848583_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4857748580_
                                                          _g4857848583_)))
                                                '()
                                                _L48532_)
                                         (foldr (lambda (_g4858548588_
                                                         _g4858648591_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4858548588_
                                                          _g4858648591_)))
                                                '()
                                                _L48530_)))
                                       (_imports48596_
                                        (gx#core-expand-import-source
                                         _L48533_))
                                       (_fold-e48616_
                                        (letrec ((_fold-e48599_
                                                  (lambda (_in48602_ _r48604_)
                                                    (if (gx#module-import?
                                                         _in48602_)
                                                        (let* ((_name48606_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48602_))
                       (_$e48609_ (hash-get _keytab48568_ _name48606_)))
                  (if _$e48609_
                      ((lambda (_rename48613_)
                         (hash-put! _found48571_ _name48606_ '#t)
                         (let ((__tmp50113
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-import-rename|
                                   _in48602_
                                   _rename48613_))))
                           (declare (not safe))
                           (cons __tmp50113 _r48604_)))
                       _$e48609_)
                      (let () (declare (not safe)) (cons _in48602_ _r48604_))))
                (if (gx#import-set? _in48602_)
                    (foldl _fold-e48599_
                           _r48604_
                           (gx#import-set-imports _in48602_))
                    (let ()
                      (declare (not safe))
                      (cons _in48602_ _r48604_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e48599_))
                                       (_new-imports48619_
                                        (foldl _fold-e48616_
                                               '()
                                               _imports48596_)))
                                  (for-each
                                   (lambda (_id48624_)
                                     (if (hash-get
                                          _found48571_
                                          (gx#core-identifier-key _id48624_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx48413_
                                          _id48624_)))
                                   (foldr (lambda (_g4862648629_ _g4862748632_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4862648629_
                                                    _g4862748632_)))
                                          '()
                                          _L48532_))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports48619_)))
                                (_g4841648449_ _g4841748453_)))
                          _new-id4843648524_
                          _id4843748527_
                          _hd4842548470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4843048482_
                                                  _target4842748476_
                                                  '()
                                                  '()))
                                               (_g4841648449_
                                                _g4841748453_)))))
                                     (_g4841648449_ _g4841748453_))))
                             (_g4841648449_ _g4841748453_))))
                     (_g4841648449_ _g4841748453_)))))
         (_g4841548635_ _stx48413_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx48641_)
       (let* ((_g4864448662_
               (lambda (_g4864548658_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4864548658_)))
              (_g4864348741_
               (lambda (_g4864548666_)
                 (if (gx#stx-pair? _g4864548666_)
                     (let ((_e4865048669_ (gx#syntax-e _g4864548666_)))
                       (let ((_hd4864948673_
                              (let ()
                                (declare (not safe))
                                (##car _e4865048669_)))
                             (_tl4864848676_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4865048669_))))
                         (if (gx#stx-pair? _tl4864848676_)
                             (let ((_e4865348679_
                                    (gx#syntax-e _tl4864848676_)))
                               (let ((_hd4865248683_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4865348679_)))
                                     (_tl4865148686_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4865348679_))))
                                 (if (gx#stx-pair? _tl4865148686_)
                                     (let ((_e4865648689_
                                            (gx#syntax-e _tl4865148686_)))
                                       (let ((_hd4865548693_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4865648689_)))
                                             (_tl4865448696_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4865648689_))))
                                         (if (gx#stx-null? _tl4865448696_)
                                             ((lambda (_L48699_ _L48701_)
                                                (if (gx#identifier? _L48699_)
                                                    (let* ((_pre48717_
                                                            (gx#stx-e
                                                             _L48699_))
                                                           (_imports48720_
                                                            (gx#core-expand-import-source
                                                             _L48701_))
                                                           (_rename-e48726_
                                                            (lambda (_name48723_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name48723_
                         _pre48717_))))
                   (_fold-e48736_
                    (letrec ((_fold-e48729_
                              (lambda (_in48732_ _r48734_)
                                (if (gx#module-import? _in48732_)
                                    (let ((__tmp50114
                                           (let ((__tmp50115
                                                  (_rename-e48726_
                                                   (gx#module-import-name
                                                    _in48732_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-import-rename|
                                              _in48732_
                                              __tmp50115))))
                                      (declare (not safe))
                                      (cons __tmp50114 _r48734_))
                                    (if (gx#import-set? _in48732_)
                                        (foldl _fold-e48729_
                                               _r48734_
                                               (gx#import-set-imports
                                                _in48732_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in48732_ _r48734_)))))))
                      _fold-e48729_)))
              (let ((__tmp50116 (foldl _fold-e48736_ '() _imports48720_)))
                (declare (not safe))
                (cons 'begin: __tmp50116)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4864448662_
                                                     _g4864548666_)))
                                              _hd4865548693_
                                              _hd4865248683_)
                                             (_g4864448662_ _g4864548666_))))
                                     (_g4864448662_ _g4864548666_))))
                             (_g4864448662_ _g4864548666_))))
                     (_g4864448662_ _g4864548666_)))))
         (_g4864348741_ _stx48641_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx48745_)
       (letrec ((_flatten48748_
                 (lambda (_list-of-lists49003_)
                   (foldr (lambda (_v49006_ _acc49008_)
                            (if (let () (declare (not safe)) (null? _v49006_))
                                _acc49008_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v49006_))
                                    (append (_flatten48748_ _v49006_)
                                            _acc49008_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v49006_ _acc49008_)))))
                          '()
                          _list-of-lists49003_)))
                (_expand-path48750_
                 (lambda (_top48871_ _mod48873_)
                   (let* ((___stx4995349954_ _mod48873_)
                          (_g4887648898_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4995349954_))))
                     (let ((___kont4995649957_
                            (lambda (_L48966_ _L48968_)
                              (map (lambda (_mod48983_)
                                     (gx#stx-identifier
                                      _top48871_
                                      _top48871_
                                      '"/"
                                      _mod48983_))
                                   (_flatten48748_
                                    (map (lambda (_g4898548987_)
                                           (_expand-path48750_
                                            _L48968_
                                            _g4898548987_))
                                         (foldr (lambda (_g4899048993_
                                                         _g4899148996_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4899048993_
                                                          _g4899148996_)))
                                                '()
                                                _L48966_))))))
                           (___kont4996049961_
                            (lambda (_L48905_)
                              (gx#stx-identifier
                               _top48871_
                               _top48871_
                               '"/"
                               _L48905_))))
                       (let* ((_g4887548919_
                               (lambda ()
                                 (let ((_L48905_ ___stx4995349954_))
                                   (if (or (gx#identifier? _L48905_)
                                           (gx#stx-fixnum? _L48905_))
                                       (___kont4996049961_ _L48905_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4887648898_))))))
                              (___match4997649977_
                               (lambda (_e4888248926_
                                        _hd4888148930_
                                        _tl4888048933_
                                        ___splice4995849959_
                                        _target4888348936_
                                        _tl4888548939_)
                                 (letrec ((_loop4888648942_
                                           (lambda (_hd4888448946_
                                                    _mod4889048949_)
                                             (if (gx#stx-pair? _hd4888448946_)
                                                 (let ((_e4888748952_
                                                        (gx#syntax-e
                                                         _hd4888448946_)))
                                                   (let ((_lp-tl4888948959_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4888748952_)))
                                                         (_lp-hd4888848956_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4888748952_))))
                                                     (_loop4888648942_
                                                      _lp-tl4888948959_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd4888848956_
                                                              _mod4889048949_)))))
                                                 (let ((_mod4889148962_
                                                        (reverse _mod4889048949_)))
                                                   (___kont4995649957_
                                                    _mod4889148962_
                                                    _hd4888148930_))))))
                                   (_loop4888648942_
                                    _target4888348936_
                                    '())))))
                         (if (gx#stx-pair? ___stx4995349954_)
                             (let ((_e4888248926_
                                    (gx#syntax-e ___stx4995349954_)))
                               (let ((_tl4888048933_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4888248926_)))
                                     (_hd4888148930_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4888248926_))))
                                 (if (gx#stx-pair/null? _tl4888048933_)
                                     (let ((___splice4995849959_
                                            (gx#syntax-split-splice
                                             _tl4888048933_
                                             '0)))
                                       (let ((_tl4888548939_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4995849959_
                                                 '1)))
                                             (_target4888348936_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4995849959_
                                                 '0))))
                                         (if (gx#stx-null? _tl4888548939_)
                                             (___match4997649977_
                                              _e4888248926_
                                              _hd4888148930_
                                              _tl4888048933_
                                              ___splice4995849959_
                                              _target4888348936_
                                              _tl4888548939_)
                                             (let ()
                                               (declare (not safe))
                                               (_g4887548919_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g4887548919_)))))
                             (let ()
                               (declare (not safe))
                               (_g4887548919_)))))))))
         (let* ((_g4875248776_
                 (lambda (_g4875348772_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g4875348772_)))
                (_g4875148867_
                 (lambda (_g4875348780_)
                   (if (gx#stx-pair? _g4875348780_)
                       (let ((_e4875848783_ (gx#syntax-e _g4875348780_)))
                         (let ((_hd4875748787_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4875848783_)))
                               (_tl4875648790_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4875848783_))))
                           (if (gx#stx-pair? _tl4875648790_)
                               (let ((_e4876148793_
                                      (gx#syntax-e _tl4875648790_)))
                                 (let ((_hd4876048797_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4876148793_)))
                                       (_tl4875948800_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4876148793_))))
                                   (if (gx#stx-pair/null? _tl4875948800_)
                                       (let ((_g50117_
                                              (gx#syntax-split-splice
                                               _tl4875948800_
                                               '0)))
                                         (begin
                                           (let ((_g50118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50117_)
                                                        (##vector-length
                                                         _g50117_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50118_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50118_)))
                                           (let ((_target4876248803_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50117_ 0)))
                                                 (_tl4876448806_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50117_
                                                     1))))
                                             (if (gx#stx-null? _tl4876448806_)
                                                 (letrec ((_loop4876548809_
                                                           (lambda (_hd4876348813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod4876948816_)
                     (if (gx#stx-pair? _hd4876348813_)
                         (let ((_e4876648819_ (gx#syntax-e _hd4876348813_)))
                           (let ((_lp-hd4876748823_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4876648819_)))
                                 (_lp-tl4876848826_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4876648819_))))
                             (_loop4876548809_
                              _lp-tl4876848826_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd4876748823_ _mod4876948816_)))))
                         (let ((_mod4877048829_ (reverse _mod4876948816_)))
                           ((lambda (_L48833_ _L48835_)
                              (let ((__tmp50119
                                     (_flatten48748_
                                      (map (lambda (_g4885348855_)
                                             (_expand-path48750_
                                              _L48835_
                                              _g4885348855_))
                                           (foldr (lambda (_g4885848861_
                                                           _g4885948864_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4885848861_
                                                            _g4885948864_)))
                                                  '()
                                                  _L48833_)))))
                                (declare (not safe))
                                (cons 'begin: __tmp50119)))
                            _mod4877048829_
                            _hd4876048797_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop4876548809_
                                                    _target4876248803_
                                                    '()))
                                                 (_g4875248776_
                                                  _g4875348780_)))))
                                       (_g4875248776_ _g4875348780_))))
                               (_g4875248776_ _g4875348780_))))
                       (_g4875248776_ _g4875348780_)))))
           (_g4875148867_ _stx48745_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx49012_)
       (let* ((_g4901549039_
               (lambda (_g4901649035_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4901649035_)))
              (_g4901449161_
               (lambda (_g4901649043_)
                 (if (gx#stx-pair? _g4901649043_)
                     (let ((_e4902149046_ (gx#syntax-e _g4901649043_)))
                       (let ((_hd4902049050_
                              (let ()
                                (declare (not safe))
                                (##car _e4902149046_)))
                             (_tl4901949053_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4902149046_))))
                         (if (gx#stx-pair? _tl4901949053_)
                             (let ((_e4902449056_
                                    (gx#syntax-e _tl4901949053_)))
                               (let ((_hd4902349060_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4902449056_)))
                                     (_tl4902249063_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4902449056_))))
                                 (if (gx#stx-pair/null? _tl4902249063_)
                                     (let ((_g50120_
                                            (gx#syntax-split-splice
                                             _tl4902249063_
                                             '0)))
                                       (begin
                                         (let ((_g50121_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50120_)
                                                      (##vector-length
                                                       _g50120_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50121_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50121_)))
                                         (let ((_target4902549066_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50120_ 0)))
                                               (_tl4902749069_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50120_ 1))))
                                           (if (gx#stx-null? _tl4902749069_)
                                               (letrec ((_loop4902849072_
                                                         (lambda (_hd4902649076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4903249079_)
                   (if (gx#stx-pair? _hd4902649076_)
                       (let ((_e4902949082_ (gx#syntax-e _hd4902649076_)))
                         (let ((_lp-hd4903049086_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4902949082_)))
                               (_lp-tl4903149089_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4902949082_))))
                           (_loop4902849072_
                            _lp-tl4903149089_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4903049086_ _id4903249079_)))))
                       (let ((_id4903349092_ (reverse _id4903249079_)))
                         ((lambda (_L49096_ _L49098_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4911549118_ _g4911649121_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4911549118_
                                                  _g4911649121_)))
                                        '()
                                        _L49096_))
                                (let* ((_keys49132_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4912349126_
                                                         _g4912449129_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4912349126_
                                                          _g4912449129_)))
                                                '()
                                                _L49096_)))
                                       (_keytab49143_
                                        (let ((_ht49135_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4913749139_)
                                             (hash-put!
                                              _ht49135_
                                              _g4913749139_
                                              '#t))
                                           _keys49132_)
                                          _ht49135_))
                                       (_exports49146_
                                        (gx#core-expand-export-source
                                         _L49098_))
                                       (_fold-e49156_
                                        (letrec ((_fold-e49149_
                                                  (lambda (_out49152_ _r49154_)
                                                    (if (gx#module-export?
                                                         _out49152_)
                                                        (if (hash-get
                                                             _keytab49143_
                                                             (gx#module-export-name
                                                              _out49152_))
                                                            _r49154_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _out49152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r49154_)))
                (if (gx#export-set? _out49152_)
                    (foldl _fold-e49149_
                           _r49154_
                           (gx#export-set-exports _out49152_))
                    _r49154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49149_)))
                                  (let ((__tmp50122
                                         (foldl _fold-e49156_
                                                '()
                                                _exports49146_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50122)))
                                (_g4901549039_ _g4901649043_)))
                          _id4903349092_
                          _hd4902349060_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4902849072_
                                                  _target4902549066_
                                                  '()))
                                               (_g4901549039_
                                                _g4901649043_)))))
                                     (_g4901549039_ _g4901649043_))))
                             (_g4901549039_ _g4901649043_))))
                     (_g4901549039_ _g4901649043_)))))
         (_g4901449161_ _stx49012_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_out49166_ _rename49168_)
      (gx#make-module-export
       (gx#module-export-context _out49166_)
       (gx#module-export-key _out49166_)
       (gx#module-export-phi _out49166_)
       _rename49168_
       (gx#module-export-weak? _out49166_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx49170_)
       (let* ((_g4917349206_
               (lambda (_g4917449202_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4917449202_)))
              (_g4917249392_
               (lambda (_g4917449210_)
                 (if (gx#stx-pair? _g4917449210_)
                     (let ((_e4918049213_ (gx#syntax-e _g4917449210_)))
                       (let ((_hd4917949217_
                              (let ()
                                (declare (not safe))
                                (##car _e4918049213_)))
                             (_tl4917849220_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4918049213_))))
                         (if (gx#stx-pair? _tl4917849220_)
                             (let ((_e4918349223_
                                    (gx#syntax-e _tl4917849220_)))
                               (let ((_hd4918249227_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4918349223_)))
                                     (_tl4918149230_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4918349223_))))
                                 (if (gx#stx-pair/null? _tl4918149230_)
                                     (let ((_g50123_
                                            (gx#syntax-split-splice
                                             _tl4918149230_
                                             '0)))
                                       (begin
                                         (let ((_g50124_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50123_)
                                                      (##vector-length
                                                       _g50123_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50124_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50124_)))
                                         (let ((_target4918449233_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50123_ 0)))
                                               (_tl4918649236_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50123_ 1))))
                                           (if (gx#stx-null? _tl4918649236_)
                                               (letrec ((_loop4918749239_
                                                         (lambda (_hd4918549243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4919149246_
                          _id4919249248_)
                   (if (gx#stx-pair? _hd4918549243_)
                       (let ((_e4918849251_ (gx#syntax-e _hd4918549243_)))
                         (let ((_lp-hd4918949255_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4918849251_)))
                               (_lp-tl4919049258_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4918849251_))))
                           (if (gx#stx-pair? _lp-hd4918949255_)
                               (let ((_e4919749261_
                                      (gx#syntax-e _lp-hd4918949255_)))
                                 (let ((_hd4919649265_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4919749261_)))
                                       (_tl4919549268_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4919749261_))))
                                   (if (gx#stx-pair? _tl4919549268_)
                                       (let ((_e4920049271_
                                              (gx#syntax-e _tl4919549268_)))
                                         (let ((_hd4919949275_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4920049271_)))
                                               (_tl4919849278_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4920049271_))))
                                           (if (gx#stx-null? _tl4919849278_)
                                               (_loop4918749239_
                                                _lp-tl4919049258_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4919949275_
                                                        _new-id4919149246_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4919649265_
                                                        _id4919249248_)))
                                               (_g4917349206_ _g4917449210_))))
                                       (_g4917349206_ _g4917449210_))))
                               (_g4917349206_ _g4917449210_))))
                       (let ((_new-id4919349281_ (reverse _new-id4919149246_))
                             (_id4919449284_ (reverse _id4919249248_)))
                         ((lambda (_L49287_ _L49289_ _L49290_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g4930849311_
                                                      _g4930949314_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4930849311_
                                                       _g4930949314_)))
                                             '()
                                             _L49289_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g4931649319_
                                                      _g4931749322_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4931649319_
                                                       _g4931749322_)))
                                             '()
                                             _L49287_)))
                                (let* ((_keytab49325_ (make-hash-table))
                                       (_found49328_ (make-hash-table))
                                       (_g50125_
                                        (for-each
                                         (lambda (_id49331_ _new-id49333_)
                                           (hash-put!
                                            _keytab49325_
                                            (gx#core-identifier-key _id49331_)
                                            (gx#core-identifier-key
                                             _new-id49333_)))
                                         (foldr (lambda (_g4933449337_
                                                         _g4933549340_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4933449337_
                                                          _g4933549340_)))
                                                '()
                                                _L49289_)
                                         (foldr (lambda (_g4934249345_
                                                         _g4934349348_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4934249345_
                                                          _g4934349348_)))
                                                '()
                                                _L49287_)))
                                       (_exports49353_
                                        (gx#core-expand-export-source
                                         _L49290_))
                                       (_fold-e49373_
                                        (letrec ((_fold-e49356_
                                                  (lambda (_out49359_ _r49361_)
                                                    (if (gx#module-export?
                                                         _out49359_)
                                                        (let* ((_name49363_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out49359_))
                       (_$e49366_ (hash-get _keytab49325_ _name49363_)))
                  (if _$e49366_
                      ((lambda (_rename49370_)
                         (hash-put! _found49328_ _name49363_ '#t)
                         (let ((__tmp50126
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-export-rename|
                                   _out49359_
                                   _rename49370_))))
                           (declare (not safe))
                           (cons __tmp50126 _r49361_)))
                       _$e49366_)
                      (let ()
                        (declare (not safe))
                        (cons _out49359_ _r49361_))))
                (if (gx#export-set? _out49359_)
                    (foldl _fold-e49356_
                           _r49361_
                           (gx#export-set-exports _out49359_))
                    (let ()
                      (declare (not safe))
                      (cons _out49359_ _r49361_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49356_))
                                       (_new-exports49376_
                                        (foldl _fold-e49373_
                                               '()
                                               _exports49353_)))
                                  (for-each
                                   (lambda (_id49381_)
                                     (if (hash-get
                                          _found49328_
                                          (gx#core-identifier-key _id49381_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx49170_
                                          _id49381_)))
                                   (foldr (lambda (_g4938349386_ _g4938449389_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4938349386_
                                                    _g4938449389_)))
                                          '()
                                          _L49289_))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports49376_)))
                                (_g4917349206_ _g4917449210_)))
                          _new-id4919349281_
                          _id4919449284_
                          _hd4918249227_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4918749239_
                                                  _target4918449233_
                                                  '()
                                                  '()))
                                               (_g4917349206_
                                                _g4917449210_)))))
                                     (_g4917349206_ _g4917449210_))))
                             (_g4917349206_ _g4917449210_))))
                     (_g4917349206_ _g4917449210_)))))
         (_g4917249392_ _stx49170_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx49398_)
       (let* ((_g4940149419_
               (lambda (_g4940249415_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4940249415_)))
              (_g4940049498_
               (lambda (_g4940249423_)
                 (if (gx#stx-pair? _g4940249423_)
                     (let ((_e4940749426_ (gx#syntax-e _g4940249423_)))
                       (let ((_hd4940649430_
                              (let ()
                                (declare (not safe))
                                (##car _e4940749426_)))
                             (_tl4940549433_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4940749426_))))
                         (if (gx#stx-pair? _tl4940549433_)
                             (let ((_e4941049436_
                                    (gx#syntax-e _tl4940549433_)))
                               (let ((_hd4940949440_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4941049436_)))
                                     (_tl4940849443_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4941049436_))))
                                 (if (gx#stx-pair? _tl4940849443_)
                                     (let ((_e4941349446_
                                            (gx#syntax-e _tl4940849443_)))
                                       (let ((_hd4941249450_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4941349446_)))
                                             (_tl4941149453_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4941349446_))))
                                         (if (gx#stx-null? _tl4941149453_)
                                             ((lambda (_L49456_ _L49458_)
                                                (if (gx#identifier? _L49456_)
                                                    (let* ((_pre49474_
                                                            (gx#stx-e
                                                             _L49456_))
                                                           (_exports49477_
                                                            (gx#core-expand-export-source
                                                             _L49458_))
                                                           (_rename-e49483_
                                                            (lambda (_name49480_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name49480_
                         _pre49474_))))
                   (_fold-e49493_
                    (letrec ((_fold-e49486_
                              (lambda (_out49489_ _r49491_)
                                (if (gx#module-export? _out49489_)
                                    (let ((__tmp50127
                                           (let ((__tmp50128
                                                  (_rename-e49483_
                                                   (gx#module-export-name
                                                    _out49489_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-export-rename|
                                              _out49489_
                                              __tmp50128))))
                                      (declare (not safe))
                                      (cons __tmp50127 _r49491_))
                                    (if (gx#export-set? _out49489_)
                                        (foldl _fold-e49486_
                                               _r49491_
                                               (gx#export-set-exports
                                                _out49489_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out49489_ _r49491_)))))))
                      _fold-e49486_)))
              (let ((__tmp50129 (foldl _fold-e49493_ '() _exports49477_)))
                (declare (not safe))
                (cons 'begin: __tmp50129)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4940149419_
                                                     _g4940249423_)))
                                              _hd4941249450_
                                              _hd4940949440_)
                                             (_g4940149419_ _g4940249423_))))
                                     (_g4940149419_ _g4940249423_))))
                             (_g4940149419_ _g4940249423_))))
                     (_g4940149419_ _g4940249423_)))))
         (_g4940049498_ _stx49398_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx49502_)
       (letrec ((_identifiers49505_
                 (lambda (_id49737_ _unchecked?49739_)
                   (let ((_info49741_ (gx#syntax-local-value _id49737_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop$MOP-2#class-type-info::t
                            _info49741_))
                         (let ((__tmp50130
                                (let ((__tmp50134
                                       (let ((__obj50038 _info49741_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj50038
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj50038
                                                '9
                                                gerbil/core/mop$MOP-2#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop$MOP-2#class-type-info::t
                                              __obj50038
                                              'type-descriptor))))
                                      (__tmp50131
                                       (foldr cons
                                              (let ((__tmp50133
                                                     (let ((__obj50039
                                                            _info49741_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj50039
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj50039
                                                              '11
                                                              gerbil/core/mop$MOP-2#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$MOP-2#class-type-info::t
                                                            __obj50039
                                                            'predicate))))
                                                    (__tmp50132
                                                     (foldr cons
                                                            (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?49739_
                               (foldr cons
                                      (map cdr
                                           (let ((__obj50040 _info49741_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj50040
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj50040
                                                    '15
                                                    gerbil/core/mop$MOP-2#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop$MOP-2#class-type-info::t
                                                  __obj50040
                                                  'unchecked-mutators))))
                                      (map cdr
                                           (let ((__obj50041 _info49741_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj50041
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj50041
                                                    '14
                                                    gerbil/core/mop$MOP-2#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop$MOP-2#class-type-info::t
                                                  __obj50041
                                                  'unchecked-accessors)))))
                               '())
                           (map cdr
                                (let ((__obj50042 _info49741_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj50042
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj50042
                                         '13
                                         gerbil/core/mop$MOP-2#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop$MOP-2#class-type-info::t
                                       __obj50042
                                       'mutators)))))
                    (map cdr
                         (let ((__obj50043 _info49741_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj50043
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj50043
                                  '12
                                  gerbil/core/mop$MOP-2#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core/mop$MOP-2#class-type-info::t
                                __obj50043
                                'accessors)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50133 __tmp50132))
                                              (let ((_ctor49744_
                                                     (let ((__obj50044
                                                            _info49741_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj50044
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj50044
                                                              '10
                                                              gerbil/core/mop$MOP-2#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$MOP-2#class-type-info::t
                                                            __obj50044
                                                            'constructor)))))
                                                (if _ctor49744_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor49744_ '()))
                                                    '())))))
                                  (declare (not safe))
                                  (cons __tmp50134 __tmp50131))))
                           (declare (not safe))
                           (cons _id49737_ __tmp50130))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx49502_
                          _id49737_))))))
         (let* ((___stx4997949980_ _stx49502_)
                (_g4950949550_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4997949980_))))
           (let ((___kont4998249983_
                  (lambda (_L49698_ _L49700_)
                    (let ((__tmp50135
                           (concatenate
                            (gx#stx-map
                             (lambda (_g4971949721_)
                               (_identifiers49505_
                                _g4971949721_
                                (gx#stx-e _L49700_)))
                             (foldr (lambda (_g4972449727_ _g4972549730_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g4972449727_ _g4972549730_)))
                                    '()
                                    _L49698_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp50135))))
                 (___kont4998649987_
                  (lambda (_L49597_)
                    (let ((__tmp50136
                           (concatenate
                            (gx#stx-map
                             (lambda (_g4961349615_)
                               (_identifiers49505_ _g4961349615_ '#f))
                             (foldr (lambda (_g4961849621_ _g4961949624_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g4961849621_ _g4961949624_)))
                                    '()
                                    _L49597_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp50136)))))
             (let* ((___match5003650037_
                     (lambda (_e4953549557_
                              _hd4953449561_
                              _tl4953349564_
                              ___splice4998849989_
                              _target4953649567_
                              _tl4953849570_)
                       (letrec ((_loop4953949573_
                                 (lambda (_hd4953749577_ _id4954349580_)
                                   (if (gx#stx-pair? _hd4953749577_)
                                       (let ((_e4954049583_
                                              (gx#syntax-e _hd4953749577_)))
                                         (let ((_lp-tl4954249590_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4954049583_)))
                                               (_lp-hd4954149587_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4954049583_))))
                                           (_loop4953949573_
                                            _lp-tl4954249590_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd4954149587_
                                                    _id4954349580_)))))
                                       (let ((_id4954449593_
                                              (reverse _id4954349580_)))
                                         (___kont4998649987_
                                          _id4954449593_))))))
                         (_loop4953949573_ _target4953649567_ '()))))
                    (___match5002250023_
                     (lambda (_e4951549634_
                              _hd4951449638_
                              _tl4951349641_
                              _e4951849644_
                              _hd4951749648_
                              _tl4951649651_
                              _e4951949654_
                              _e4952249658_
                              _hd4952149662_
                              _tl4952049665_
                              ___splice4998449985_
                              _target4952349668_
                              _tl4952549671_)
                       (letrec ((_loop4952649674_
                                 (lambda (_hd4952449678_ _id4953049681_)
                                   (if (gx#stx-pair? _hd4952449678_)
                                       (let ((_e4952749684_
                                              (gx#syntax-e _hd4952449678_)))
                                         (let ((_lp-tl4952949691_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4952749684_)))
                                               (_lp-hd4952849688_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4952749684_))))
                                           (_loop4952649674_
                                            _lp-tl4952949691_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd4952849688_
                                                    _id4953049681_)))))
                                       (let ((_id4953149694_
                                              (reverse _id4953049681_)))
                                         (___kont4998249983_
                                          _id4953149694_
                                          _hd4952149662_))))))
                         (_loop4952649674_ _target4952349668_ '())))))
               (if (gx#stx-pair? ___stx4997949980_)
                   (let ((_e4951549634_ (gx#syntax-e ___stx4997949980_)))
                     (let ((_tl4951349641_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4951549634_)))
                           (_hd4951449638_
                            (let ()
                              (declare (not safe))
                              (##car _e4951549634_))))
                       (if (gx#stx-pair? _tl4951349641_)
                           (let ((_e4951849644_ (gx#syntax-e _tl4951349641_)))
                             (let ((_tl4951649651_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4951849644_)))
                                   (_hd4951749648_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4951849644_))))
                               (if (gx#stx-datum? _hd4951749648_)
                                   (let ((_e4951949654_
                                          (gx#stx-e _hd4951749648_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e4951949654_ 'unchecked:))
                                         (if (gx#stx-pair? _tl4951649651_)
                                             (let ((_e4952249658_
                                                    (gx#syntax-e
                                                     _tl4951649651_)))
                                               (let ((_tl4952049665_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4952249658_)))
                                                     (_hd4952149662_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4952249658_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl4952049665_)
                                                     (let ((___splice4998449985_
                                                            (gx#syntax-split-splice
                                                             _tl4952049665_
                                                             '0)))
                                                       (let ((_tl4952549671_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4998449985_ '1)))
                     (_target4952349668_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4998449985_ '0))))
                 (if (gx#stx-null? _tl4952549671_)
                     (___match5002250023_
                      _e4951549634_
                      _hd4951449638_
                      _tl4951349641_
                      _e4951849644_
                      _hd4951749648_
                      _tl4951649651_
                      _e4951949654_
                      _e4952249658_
                      _hd4952149662_
                      _tl4952049665_
                      ___splice4998449985_
                      _target4952349668_
                      _tl4952549671_)
                     (if (gx#stx-pair/null? _tl4951349641_)
                         (let ((___splice4998849989_
                                (gx#syntax-split-splice _tl4951349641_ '0)))
                           (let ((_tl4953849570_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4998849989_ '1)))
                                 (_target4953649567_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4998849989_ '0))))
                             (if (gx#stx-null? _tl4953849570_)
                                 (___match5003650037_
                                  _e4951549634_
                                  _hd4951449638_
                                  _tl4951349641_
                                  ___splice4998849989_
                                  _target4953649567_
                                  _tl4953849570_)
                                 (let ()
                                   (declare (not safe))
                                   (_g4950949550_)))))
                         (let () (declare (not safe)) (_g4950949550_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl4951349641_)
                                                         (let ((___splice4998849989_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4951349641_
                         '0)))
                   (let ((_tl4953849570_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4998849989_ '1)))
                         (_target4953649567_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4998849989_ '0))))
                     (if (gx#stx-null? _tl4953849570_)
                         (___match5003650037_
                          _e4951549634_
                          _hd4951449638_
                          _tl4951349641_
                          ___splice4998849989_
                          _target4953649567_
                          _tl4953849570_)
                         (let () (declare (not safe)) (_g4950949550_)))))
                 (let () (declare (not safe)) (_g4950949550_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl4951349641_)
                                                 (let ((___splice4998849989_
                                                        (gx#syntax-split-splice
                                                         _tl4951349641_
                                                         '0)))
                                                   (let ((_tl4953849570_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4998849989_
                                                             '1)))
                                                         (_target4953649567_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4998849989_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl4953849570_)
                                                         (___match5003650037_
                                                          _e4951549634_
                                                          _hd4951449638_
                                                          _tl4951349641_
                                                          ___splice4998849989_
                                                          _target4953649567_
                                                          _tl4953849570_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g4950949550_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g4950949550_))))
                                         (if (gx#stx-pair/null? _tl4951349641_)
                                             (let ((___splice4998849989_
                                                    (gx#syntax-split-splice
                                                     _tl4951349641_
                                                     '0)))
                                               (let ((_tl4953849570_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4998849989_
                                                         '1)))
                                                     (_target4953649567_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4998849989_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl4953849570_)
                                                     (___match5003650037_
                                                      _e4951549634_
                                                      _hd4951449638_
                                                      _tl4951349641_
                                                      ___splice4998849989_
                                                      _target4953649567_
                                                      _tl4953849570_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g4950949550_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g4950949550_)))))
                                   (if (gx#stx-pair/null? _tl4951349641_)
                                       (let ((___splice4998849989_
                                              (gx#syntax-split-splice
                                               _tl4951349641_
                                               '0)))
                                         (let ((_tl4953849570_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4998849989_
                                                   '1)))
                                               (_target4953649567_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4998849989_
                                                   '0))))
                                           (if (gx#stx-null? _tl4953849570_)
                                               (___match5003650037_
                                                _e4951549634_
                                                _hd4951449638_
                                                _tl4951349641_
                                                ___splice4998849989_
                                                _target4953649567_
                                                _tl4953849570_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4950949550_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4950949550_))))))
                           (if (gx#stx-pair/null? _tl4951349641_)
                               (let ((___splice4998849989_
                                      (gx#syntax-split-splice
                                       _tl4951349641_
                                       '0)))
                                 (let ((_tl4953849570_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4998849989_
                                           '1)))
                                       (_target4953649567_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4998849989_
                                           '0))))
                                   (if (gx#stx-null? _tl4953849570_)
                                       (___match5003650037_
                                        _e4951549634_
                                        _hd4951449638_
                                        _tl4951349641_
                                        ___splice4998849989_
                                        _target4953649567_
                                        _tl4953849570_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4950949550_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4950949550_))))))
                   (let () (declare (not safe)) (_g4950949550_)))))))))))
