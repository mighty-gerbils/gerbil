(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander$<syntax-sugar>[1]#_g5689_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx4064_)
        (let* ((_g40674091_
                (lambda (_g40684087_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g40684087_)))
               (_g40664397_
                (lambda (_g40684095_)
                  (if (gx#stx-pair? _g40684095_)
                      (let ((_e40714098_ (gx#syntax-e _g40684095_)))
                        (let ((_hd40724102_
                               (let ()
                                 (declare (not safe))
                                 (##car _e40714098_)))
                              (_tl40734105_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e40714098_))))
                          (if (gx#stx-pair? _tl40734105_)
                              (let ((_e40744108_ (gx#syntax-e _tl40734105_)))
                                (let ((_hd40754112_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e40744108_)))
                                      (_tl40764115_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e40744108_))))
                                  (if (gx#stx-pair/null? _tl40764115_)
                                      (let ((_g5619_ (gx#syntax-split-splice
                                                      _tl40764115_
                                                      '0)))
                                        (begin
                                          (let ((_g5620_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g5619_)
                                                               (##vector-length
                                                                _g5619_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g5620_ 2)))
                                                (error "Context expects 2 values"
                                                       _g5620_)))
                                          (let ((_target40774118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5619_ 0)))
                                                (_tl40794121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5619_ 1))))
                                            (if (gx#stx-null? _tl40794121_)
                                                (letrec ((_loop40804124_
                                                          (lambda (_hd40784128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses40844131_)
                    (if (gx#stx-pair? _hd40784128_)
                        (let ((_e40814134_ (gx#syntax-e _hd40784128_)))
                          (let ((_lp-hd40824138_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e40814134_)))
                                (_lp-tl40834141_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e40814134_))))
                            (_loop40804124_
                             _lp-tl40834141_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd40824138_ _clauses40844131_)))))
                        (let ((_clauses40854144_ (reverse _clauses40844131_)))
                          ((lambda (_L4148_ _L4150_)
                             (if (gx#identifier-list? _L4150_)
                                 (let* ((_body4314_
                                         (gx#stx-map
                                          (lambda (_clause4171_)
                                            (let* ((___stx53565357_
                                                    _clause4171_)
                                                   (_g41754202_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx53565357_))))
                                              (let ((___kont53595360_
                                                     (lambda (_L4287_ _L4289_)
                                                       (let ((__tmp5621
                                                              (let ((__tmp5622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5624 (gx#datum->syntax '#f 'syntax))
                                   (__tmp5623
                                    (let ()
                                      (declare (not safe))
                                      (cons _L4287_ '()))))
                               (declare (not safe))
                               (cons __tmp5624 __tmp5623))))
                        (declare (not safe))
                        (cons __tmp5622 '()))))
                 (declare (not safe))
                 (cons _L4289_ __tmp5621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont53615362_
                                                     (lambda (_L4239_
                                                              _L4241_
                                                              _L4242_)
                                                       (let ((__tmp5625
                                                              (let ((__tmp5626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5627
                                    (let ((__tmp5629
                                           (gx#datum->syntax '#f 'syntax))
                                          (__tmp5628
                                           (let ()
                                             (declare (not safe))
                                             (cons _L4239_ '()))))
                                      (declare (not safe))
                                      (cons __tmp5629 __tmp5628))))
                               (declare (not safe))
                               (cons __tmp5627 '()))))
                        (declare (not safe))
                        (cons _L4241_ __tmp5626))))
                 (declare (not safe))
                 (cons _L4242_ __tmp5625)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx53565357_)
                                                    (let ((_e41794267_
                                                           (gx#syntax-e
                                                            ___stx53565357_)))
                                                      (let ((_tl41814274_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e41794267_)))
                    (_hd41804271_
                     (let () (declare (not safe)) (##car _e41794267_))))
                (if (gx#stx-pair? _tl41814274_)
                    (let ((_e41824277_ (gx#syntax-e _tl41814274_)))
                      (let ((_tl41844284_
                             (let () (declare (not safe)) (##cdr _e41824277_)))
                            (_hd41834281_
                             (let ()
                               (declare (not safe))
                               (##car _e41824277_))))
                        (if (gx#stx-null? _tl41844284_)
                            (___kont53595360_ _hd41834281_ _hd41804271_)
                            (if (gx#stx-pair? _tl41844284_)
                                (let ((_e41944229_ (gx#syntax-e _tl41844284_)))
                                  (let ((_tl41964236_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e41944229_)))
                                        (_hd41954233_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e41944229_))))
                                    (if (gx#stx-null? _tl41964236_)
                                        (___kont53615362_
                                         _hd41954233_
                                         _hd41834281_
                                         _hd41804271_)
                                        (let ()
                                          (declare (not safe))
                                          (_g41754202_)))))
                                (let () (declare (not safe)) (_g41754202_))))))
                    (let () (declare (not safe)) (_g41754202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g41754202_))))))
                                          (foldr (lambda (_g43054308_
                                                          _g43064311_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g43054308_
                                                           _g43064311_)))
                                                 '()
                                                 _L4148_)))
                                        (_g43174334_
                                         (lambda (_g43184330_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g43184330_)))
                                        (_g43164393_
                                         (lambda (_g43184338_)
                                           (if (gx#stx-pair/null? _g43184338_)
                                               (let ((_g5630_ (gx#syntax-split-splice
                                                               _g43184338_
                                                               '0)))
                                                 (begin
                                                   (let ((_g5631_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g5630_)
                                (##vector-length _g5630_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g5631_ 2)))
                 (error "Context expects 2 values" _g5631_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target43204341_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5630_
                                                             0)))
                                                         (_tl43224344_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5630_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl43224344_)
                                                         (letrec ((_loop43234347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd43214351_ _clause43274354_)
                             (if (gx#stx-pair? _hd43214351_)
                                 (let ((_e43244357_
                                        (gx#syntax-e _hd43214351_)))
                                   (let ((_lp-hd43254361_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e43244357_)))
                                         (_lp-tl43264364_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e43244357_))))
                                     (_loop43234347_
                                      _lp-tl43264364_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd43254361_
                                              _clause43274354_)))))
                                 (let ((_clause43284367_
                                        (reverse _clause43274354_)))
                                   ((lambda (_L4371_)
                                      (let ((__tmp5642
                                             (gx#datum->syntax '#f 'lambda%))
                                            (__tmp5632
                                             (let ((__tmp5640
                                                    (let ((__tmp5641
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$stx)))
                                                      (declare (not safe))
                                                      (cons __tmp5641 '())))
                                                   (__tmp5633
                                                    (let ((__tmp5634
                                                           (let ((__tmp5639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5635
                          (let ((__tmp5638 (gx#datum->syntax '#f '$stx))
                                (__tmp5636
                                 (let ((__tmp5637
                                        (foldr (lambda (_g43844387_
                                                        _g43854390_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g43844387_
                                                         _g43854390_)))
                                               '()
                                               _L4371_)))
                                   (declare (not safe))
                                   (cons _L4150_ __tmp5637))))
                            (declare (not safe))
                            (cons __tmp5638 __tmp5636))))
                     (declare (not safe))
                     (cons __tmp5639 __tmp5635))))
              (declare (not safe))
              (cons __tmp5634 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp5640 __tmp5633))))
                                        (declare (not safe))
                                        (cons __tmp5642 __tmp5632)))
                                    _clause43284367_))))))
                   (_loop43234347_ _target43204341_ '()))
                 (_g43174334_ _g43184338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g43174334_ _g43184338_)))))
                                   (_g43164393_ _body4314_))
                                 (_g40674091_ _g40684095_)))
                           _clauses40854144_
                           _hd40754112_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop40804124_
                                                   _target40774118_
                                                   '()))
                                                (_g40674091_ _g40684095_)))))
                                      (_g40674091_ _g40684095_))))
                              (_g40674091_ _g40684095_))))
                      (_g40674091_ _g40684095_)))))
          (_g40664397_ _stx4064_))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx4403_)
        (let* ((___stx54005401_ _stx4403_)
               (_g44084493_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx54005401_))))
          (let ((___kont54035404_
                 (lambda (_L4833_)
                   (let ((__tmp5645 (gx#datum->syntax '#f 'let-values))
                         (__tmp5643
                          (let ((__tmp5644
                                 (foldr (lambda (_g48494852_ _g48504855_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g48494852_ _g48504855_)))
                                        '()
                                        _L4833_)))
                            (declare (not safe))
                            (cons '() __tmp5644))))
                     (declare (not safe))
                     (cons __tmp5645 __tmp5643))))
                (___kont54075408_
                 (lambda (_L4741_ _L4743_ _L4744_)
                   (let ((__tmp5655 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5646
                          (let ((__tmp5647
                                 (let ((__tmp5648
                                        (let ((__tmp5649
                                               (let ((__tmp5650
                                                      (let ((__tmp5651
                                                             (let ((__tmp5654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp5652
                            (let ((__tmp5653
                                   (foldr (lambda (_g47674770_ _g47684773_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g47674770_ _g47684773_)))
                                          '()
                                          _L4741_)))
                              (declare (not safe))
                              (cons '() __tmp5653))))
                       (declare (not safe))
                       (cons __tmp5654 __tmp5652))))
                (declare (not safe))
                (cons __tmp5651 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L4744_ __tmp5650))))
                                          (declare (not safe))
                                          (cons __tmp5649 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp5648))))
                            (declare (not safe))
                            (cons _L4743_ __tmp5647))))
                     (declare (not safe))
                     (cons __tmp5655 __tmp5646))))
                (___kont54115412_
                 (lambda (_L4604_ _L4606_ _L4607_)
                   (let ((__tmp5669 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5656
                          (let ((__tmp5666
                                 (let ((__tmp5668 (gx#datum->syntax '#f 'list))
                                       (__tmp5667
                                        (foldr (lambda (_g46294636_
                                                        _g46304639_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g46294636_
                                                         _g46304639_)))
                                               '()
                                               _L4606_)))
                                   (declare (not safe))
                                   (cons __tmp5668 __tmp5667)))
                                (__tmp5657
                                 (let ((__tmp5658
                                        (let ((__tmp5659
                                               (let ((__tmp5665
                                                      (foldr (lambda (_g46314642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g46324645_)
                       (let ()
                         (declare (not safe))
                         (cons _g46314642_ _g46324645_)))
                     '()
                     _L4607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp5660
                                                      (let ((__tmp5661
                                                             (let ((__tmp5664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp5662
                            (let ((__tmp5663
                                   (foldr (lambda (_g46334648_ _g46344651_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g46334648_ _g46344651_)))
                                          '()
                                          _L4604_)))
                              (declare (not safe))
                              (cons '() __tmp5663))))
                       (declare (not safe))
                       (cons __tmp5664 __tmp5662))))
                (declare (not safe))
                (cons __tmp5661 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp5665 __tmp5660))))
                                          (declare (not safe))
                                          (cons __tmp5659 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp5658))))
                            (declare (not safe))
                            (cons __tmp5666 __tmp5657))))
                     (declare (not safe))
                     (cons __tmp5669 __tmp5656)))))
            (let* ((___match55015502_
                    (lambda (_e44564500_
                             _hd44574504_
                             _tl44584507_
                             _e44594510_
                             _hd44604514_
                             _tl44614517_
                             ___splice54135414_
                             _target44624520_
                             _tl44644523_)
                      (letrec ((_loop44654526_
                                (lambda (_hd44634530_
                                         _e44694533_
                                         _pat44704535_)
                                  (if (gx#stx-pair? _hd44634530_)
                                      (let ((_e44664538_
                                             (gx#syntax-e _hd44634530_)))
                                        (let ((_lp-tl44684545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44664538_)))
                                              (_lp-hd44674542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44664538_))))
                                          (if (gx#stx-pair? _lp-hd44674542_)
                                              (let ((_e44734548_
                                                     (gx#syntax-e
                                                      _lp-hd44674542_)))
                                                (let ((_tl44754555_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44734548_)))
                                                      (_hd44744552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44734548_))))
                                                  (if (gx#stx-pair?
                                                       _tl44754555_)
                                                      (let ((_e44764558_
                                                             (gx#syntax-e
                                                              _tl44754555_)))
                                                        (let ((_tl44784565_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e44764558_)))
                      (_hd44774562_
                       (let () (declare (not safe)) (##car _e44764558_))))
                  (if (gx#stx-null? _tl44784565_)
                      (_loop44654526_
                       _lp-tl44684545_
                       (let ()
                         (declare (not safe))
                         (cons _hd44774562_ _e44694533_))
                       (let ()
                         (declare (not safe))
                         (cons _hd44744552_ _pat44704535_)))
                      (let () (declare (not safe)) (_g44084493_)))))
              (let () (declare (not safe)) (_g44084493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g44084493_)))))
                                      (let ((_pat44724571_
                                             (reverse _pat44704535_))
                                            (_e44714568_
                                             (reverse _e44694533_)))
                                        (if (gx#stx-pair/null? _tl44614517_)
                                            (let ((___splice54155416_
                                                   (gx#syntax-split-splice
                                                    _tl44614517_
                                                    '0)))
                                              (let ((_tl44814577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice54155416_
                                                        '1)))
                                                    (_target44794574_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice54155416_
                                                        '0))))
                                                (if (gx#stx-null? _tl44814577_)
                                                    (letrec ((_loop44824580_
                                                              (lambda (_hd44804584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body44864587_)
                        (if (gx#stx-pair? _hd44804584_)
                            (let ((_e44834590_ (gx#syntax-e _hd44804584_)))
                              (let ((_lp-tl44854597_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e44834590_)))
                                    (_lp-hd44844594_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e44834590_))))
                                (_loop44824580_
                                 _lp-tl44854597_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd44844594_ _body44864587_)))))
                            (let ((_body44874600_ (reverse _body44864587_)))
                              (___kont54115412_
                               _body44874600_
                               _e44714568_
                               _pat44724571_))))))
              (_loop44824580_ _target44794574_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g44084493_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g44084493_))))))))
                        (_loop44654526_ _target44624520_ '() '()))))
                   (___match54815482_
                    (lambda (_e44294661_
                             _hd44304665_
                             _tl44314668_
                             _e44324671_
                             _hd44334675_
                             _tl44344678_
                             _e44354681_
                             _hd44364685_
                             _tl44374688_
                             _e44384691_
                             _hd44394695_
                             _tl44404698_
                             _e44414701_
                             _hd44424705_
                             _tl44434708_
                             ___splice54095410_
                             _target44444711_
                             _tl44464714_)
                      (letrec ((_loop44474717_
                                (lambda (_hd44454721_ _body44514724_)
                                  (if (gx#stx-pair? _hd44454721_)
                                      (let ((_e44484727_
                                             (gx#syntax-e _hd44454721_)))
                                        (let ((_lp-tl44504734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44484727_)))
                                              (_lp-hd44494731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44484727_))))
                                          (_loop44474717_
                                           _lp-tl44504734_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd44494731_
                                                   _body44514724_)))))
                                      (let ((_body44524737_
                                             (reverse _body44514724_)))
                                        (___kont54075408_
                                         _body44524737_
                                         _hd44424705_
                                         _hd44394695_))))))
                        (_loop44474717_ _target44444711_ '()))))
                   (___match54395440_
                    (lambda (_e44114783_
                             _hd44124787_
                             _tl44134790_
                             _e44144793_
                             _hd44154797_
                             _tl44164800_
                             ___splice54055406_
                             _target44174803_
                             _tl44194806_)
                      (letrec ((_loop44204809_
                                (lambda (_hd44184813_ _body44244816_)
                                  (if (gx#stx-pair? _hd44184813_)
                                      (let ((_e44214819_
                                             (gx#syntax-e _hd44184813_)))
                                        (let ((_lp-tl44234826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44214819_)))
                                              (_lp-hd44224823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44214819_))))
                                          (_loop44204809_
                                           _lp-tl44234826_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd44224823_
                                                   _body44244816_)))))
                                      (let ((_body44254829_
                                             (reverse _body44244816_)))
                                        (___kont54035404_ _body44254829_))))))
                        (_loop44204809_ _target44174803_ '())))))
              (if (gx#stx-pair? ___stx54005401_)
                  (let ((_e44114783_ (gx#syntax-e ___stx54005401_)))
                    (let ((_tl44134790_
                           (let () (declare (not safe)) (##cdr _e44114783_)))
                          (_hd44124787_
                           (let () (declare (not safe)) (##car _e44114783_))))
                      (if (gx#stx-pair? _tl44134790_)
                          (let ((_e44144793_ (gx#syntax-e _tl44134790_)))
                            (let ((_tl44164800_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e44144793_)))
                                  (_hd44154797_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e44144793_))))
                              (if (gx#stx-null? _hd44154797_)
                                  (if (gx#stx-pair/null? _tl44164800_)
                                      (let ((___splice54055406_
                                             (gx#syntax-split-splice
                                              _tl44164800_
                                              '0)))
                                        (let ((_tl44194806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice54055406_
                                                  '1)))
                                              (_target44174803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice54055406_
                                                  '0))))
                                          (if (gx#stx-null? _tl44194806_)
                                              (___match54395440_
                                               _e44114783_
                                               _hd44124787_
                                               _tl44134790_
                                               _e44144793_
                                               _hd44154797_
                                               _tl44164800_
                                               ___splice54055406_
                                               _target44174803_
                                               _tl44194806_)
                                              (if (gx#stx-pair/null?
                                                   _hd44154797_)
                                                  (let ((___splice54135414_
                                                         (gx#syntax-split-splice
                                                          _hd44154797_
                                                          '0)))
                                                    (let ((_tl44644523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54135414_
                                                              '1)))
                                                          (_target44624520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54135414_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl44644523_)
                                                          (___match55015502_
                                                           _e44114783_
                                                           _hd44124787_
                                                           _tl44134790_
                                                           _e44144793_
                                                           _hd44154797_
                                                           _tl44164800_
                                                           ___splice54135414_
                                                           _target44624520_
                                                           _tl44644523_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g44084493_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44084493_))))))
                                      (if (gx#stx-pair/null? _hd44154797_)
                                          (let ((___splice54135414_
                                                 (gx#syntax-split-splice
                                                  _hd44154797_
                                                  '0)))
                                            (let ((_tl44644523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54135414_
                                                      '1)))
                                                  (_target44624520_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54135414_
                                                      '0))))
                                              (if (gx#stx-null? _tl44644523_)
                                                  (___match55015502_
                                                   _e44114783_
                                                   _hd44124787_
                                                   _tl44134790_
                                                   _e44144793_
                                                   _hd44154797_
                                                   _tl44164800_
                                                   ___splice54135414_
                                                   _target44624520_
                                                   _tl44644523_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44084493_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44084493_))))
                                  (if (gx#stx-pair? _hd44154797_)
                                      (let ((_e44354681_
                                             (gx#syntax-e _hd44154797_)))
                                        (let ((_tl44374688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44354681_)))
                                              (_hd44364685_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44354681_))))
                                          (if (gx#stx-pair? _hd44364685_)
                                              (let ((_e44384691_
                                                     (gx#syntax-e
                                                      _hd44364685_)))
                                                (let ((_tl44404698_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44384691_)))
                                                      (_hd44394695_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44384691_))))
                                                  (if (gx#stx-pair?
                                                       _tl44404698_)
                                                      (let ((_e44414701_
                                                             (gx#syntax-e
                                                              _tl44404698_)))
                                                        (let ((_tl44434708_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e44414701_)))
                      (_hd44424705_
                       (let () (declare (not safe)) (##car _e44414701_))))
                  (if (gx#stx-null? _tl44434708_)
                      (if (gx#stx-null? _tl44374688_)
                          (if (gx#stx-pair/null? _tl44164800_)
                              (let ((___splice54095410_
                                     (gx#syntax-split-splice _tl44164800_ '0)))
                                (let ((_tl44464714_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice54095410_ '1)))
                                      (_target44444711_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice54095410_
                                          '0))))
                                  (if (gx#stx-null? _tl44464714_)
                                      (___match54815482_
                                       _e44114783_
                                       _hd44124787_
                                       _tl44134790_
                                       _e44144793_
                                       _hd44154797_
                                       _tl44164800_
                                       _e44354681_
                                       _hd44364685_
                                       _tl44374688_
                                       _e44384691_
                                       _hd44394695_
                                       _tl44404698_
                                       _e44414701_
                                       _hd44424705_
                                       _tl44434708_
                                       ___splice54095410_
                                       _target44444711_
                                       _tl44464714_)
                                      (if (gx#stx-pair/null? _hd44154797_)
                                          (let ((___splice54135414_
                                                 (gx#syntax-split-splice
                                                  _hd44154797_
                                                  '0)))
                                            (let ((_tl44644523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54135414_
                                                      '1)))
                                                  (_target44624520_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54135414_
                                                      '0))))
                                              (if (gx#stx-null? _tl44644523_)
                                                  (___match55015502_
                                                   _e44114783_
                                                   _hd44124787_
                                                   _tl44134790_
                                                   _e44144793_
                                                   _hd44154797_
                                                   _tl44164800_
                                                   ___splice54135414_
                                                   _target44624520_
                                                   _tl44644523_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44084493_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44084493_))))))
                              (if (gx#stx-pair/null? _hd44154797_)
                                  (let ((___splice54135414_
                                         (gx#syntax-split-splice
                                          _hd44154797_
                                          '0)))
                                    (let ((_tl44644523_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice54135414_
                                              '1)))
                                          (_target44624520_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice54135414_
                                              '0))))
                                      (if (gx#stx-null? _tl44644523_)
                                          (___match55015502_
                                           _e44114783_
                                           _hd44124787_
                                           _tl44134790_
                                           _e44144793_
                                           _hd44154797_
                                           _tl44164800_
                                           ___splice54135414_
                                           _target44624520_
                                           _tl44644523_)
                                          (let ()
                                            (declare (not safe))
                                            (_g44084493_)))))
                                  (let () (declare (not safe)) (_g44084493_))))
                          (if (gx#stx-pair/null? _hd44154797_)
                              (let ((___splice54135414_
                                     (gx#syntax-split-splice _hd44154797_ '0)))
                                (let ((_tl44644523_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice54135414_ '1)))
                                      (_target44624520_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice54135414_
                                          '0))))
                                  (if (gx#stx-null? _tl44644523_)
                                      (___match55015502_
                                       _e44114783_
                                       _hd44124787_
                                       _tl44134790_
                                       _e44144793_
                                       _hd44154797_
                                       _tl44164800_
                                       ___splice54135414_
                                       _target44624520_
                                       _tl44644523_)
                                      (let ()
                                        (declare (not safe))
                                        (_g44084493_)))))
                              (let () (declare (not safe)) (_g44084493_))))
                      (if (gx#stx-pair/null? _hd44154797_)
                          (let ((___splice54135414_
                                 (gx#syntax-split-splice _hd44154797_ '0)))
                            (let ((_tl44644523_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice54135414_ '1)))
                                  (_target44624520_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice54135414_ '0))))
                              (if (gx#stx-null? _tl44644523_)
                                  (___match55015502_
                                   _e44114783_
                                   _hd44124787_
                                   _tl44134790_
                                   _e44144793_
                                   _hd44154797_
                                   _tl44164800_
                                   ___splice54135414_
                                   _target44624520_
                                   _tl44644523_)
                                  (let ()
                                    (declare (not safe))
                                    (_g44084493_)))))
                          (let () (declare (not safe)) (_g44084493_))))))
              (if (gx#stx-pair/null? _hd44154797_)
                  (let ((___splice54135414_
                         (gx#syntax-split-splice _hd44154797_ '0)))
                    (let ((_tl44644523_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice54135414_ '1)))
                          (_target44624520_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice54135414_ '0))))
                      (if (gx#stx-null? _tl44644523_)
                          (___match55015502_
                           _e44114783_
                           _hd44124787_
                           _tl44134790_
                           _e44144793_
                           _hd44154797_
                           _tl44164800_
                           ___splice54135414_
                           _target44624520_
                           _tl44644523_)
                          (let () (declare (not safe)) (_g44084493_)))))
                  (let () (declare (not safe)) (_g44084493_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd44154797_)
                                                  (let ((___splice54135414_
                                                         (gx#syntax-split-splice
                                                          _hd44154797_
                                                          '0)))
                                                    (let ((_tl44644523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54135414_
                                                              '1)))
                                                          (_target44624520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54135414_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl44644523_)
                                                          (___match55015502_
                                                           _e44114783_
                                                           _hd44124787_
                                                           _tl44134790_
                                                           _e44144793_
                                                           _hd44154797_
                                                           _tl44164800_
                                                           ___splice54135414_
                                                           _target44624520_
                                                           _tl44644523_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g44084493_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44084493_))))))
                                      (if (gx#stx-pair/null? _hd44154797_)
                                          (let ((___splice54135414_
                                                 (gx#syntax-split-splice
                                                  _hd44154797_
                                                  '0)))
                                            (let ((_tl44644523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54135414_
                                                      '1)))
                                                  (_target44624520_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54135414_
                                                      '0))))
                                              (if (gx#stx-null? _tl44644523_)
                                                  (___match55015502_
                                                   _e44114783_
                                                   _hd44124787_
                                                   _tl44134790_
                                                   _e44144793_
                                                   _hd44154797_
                                                   _tl44164800_
                                                   ___splice54135414_
                                                   _target44624520_
                                                   _tl44644523_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44084493_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44084493_)))))))
                          (let () (declare (not safe)) (_g44084493_)))))
                  (let () (declare (not safe)) (_g44084493_))))))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx4866_)
        (let* ((___stx55045505_ _stx4866_)
               (_g48714948_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx55045505_))))
          (let ((___kont55075508_
                 (lambda (_L5244_)
                   (let ((__tmp5672 (gx#datum->syntax '#f 'let-values))
                         (__tmp5670
                          (let ((__tmp5671
                                 (foldr (lambda (_g52605263_ _g52615266_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g52605263_ _g52615266_)))
                                        '()
                                        _L5244_)))
                            (declare (not safe))
                            (cons '() __tmp5671))))
                     (declare (not safe))
                     (cons __tmp5672 __tmp5670))))
                (___kont55115512_
                 (lambda (_L5146_ _L5148_ _L5149_ _L5150_ _L5151_)
                   (let ((__tmp5681 (gx#datum->syntax '#f 'let-values))
                         (__tmp5673
                          (let ((__tmp5678
                                 (let ((__tmp5679
                                        (let ((__tmp5680
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L5149_ '()))))
                                          (declare (not safe))
                                          (cons _L5150_ __tmp5680))))
                                   (declare (not safe))
                                   (cons __tmp5679 '())))
                                (__tmp5674
                                 (let ((__tmp5675
                                        (let ((__tmp5676
                                               (let ((__tmp5677
                                                      (foldr (lambda (_g51785181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g51795184_)
                       (let ()
                         (declare (not safe))
                         (cons _g51785181_ _g51795184_)))
                     '()
                     _L5146_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5148_ __tmp5677))))
                                          (declare (not safe))
                                          (cons _L5151_ __tmp5676))))
                                   (declare (not safe))
                                   (cons __tmp5675 '()))))
                            (declare (not safe))
                            (cons __tmp5678 __tmp5674))))
                     (declare (not safe))
                     (cons __tmp5681 __tmp5673))))
                (___kont55155516_
                 (lambda (_L5015_ _L5017_ _L5018_ _L5019_)
                   (let ((__tmp5688 (gx#datum->syntax '#f 'with-syntax))
                         (__tmp5682
                          (let ((__tmp5687
                                 (let ()
                                   (declare (not safe))
                                   (cons _L5018_ '())))
                                (__tmp5683
                                 (let ((__tmp5684
                                        (let ((__tmp5685
                                               (let ((__tmp5686
                                                      (foldr (lambda (_g50405043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g50415046_)
                       (let ()
                         (declare (not safe))
                         (cons _g50405043_ _g50415046_)))
                     '()
                     _L5015_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5017_ __tmp5686))))
                                          (declare (not safe))
                                          (cons _L5019_ __tmp5685))))
                                   (declare (not safe))
                                   (cons __tmp5684 '()))))
                            (declare (not safe))
                            (cons __tmp5687 __tmp5683))))
                     (declare (not safe))
                     (cons __tmp5688 __tmp5682)))))
            (let* ((___match56175618_
                    (lambda (_e49254955_
                             _hd49264959_
                             _tl49274962_
                             _e49284965_
                             _hd49294969_
                             _tl49304972_
                             _e49314975_
                             _hd49324979_
                             _tl49334982_
                             ___splice55175518_
                             _target49344985_
                             _tl49364988_)
                      (letrec ((_loop49374991_
                                (lambda (_hd49354995_ _body49414998_)
                                  (if (gx#stx-pair? _hd49354995_)
                                      (let ((_e49385001_
                                             (gx#syntax-e _hd49354995_)))
                                        (let ((_lp-tl49405008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49385001_)))
                                              (_lp-hd49395005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49385001_))))
                                          (_loop49374991_
                                           _lp-tl49405008_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd49395005_
                                                   _body49414998_)))))
                                      (let ((_body49425011_
                                             (reverse _body49414998_)))
                                        (___kont55155516_
                                         _body49425011_
                                         _tl49334982_
                                         _hd49324979_
                                         _hd49264959_))))))
                        (_loop49374991_ _target49344985_ '()))))
                   (___match55915592_
                    (lambda (_e48945056_
                             _hd48955060_
                             _tl48965063_
                             _e48975066_
                             _hd48985070_
                             _tl48995073_
                             _e49005076_
                             _hd49015080_
                             _tl49025083_
                             _e49035086_
                             _hd49045090_
                             _tl49055093_
                             _e49065096_
                             _hd49075100_
                             _tl49085103_
                             _e49095106_
                             _hd49105110_
                             _tl49115113_
                             ___splice55135514_
                             _target49125116_
                             _tl49145119_)
                      (letrec ((_loop49155122_
                                (lambda (_hd49135126_ _body49195129_)
                                  (if (gx#stx-pair? _hd49135126_)
                                      (let ((_e49165132_
                                             (gx#syntax-e _hd49135126_)))
                                        (let ((_lp-tl49185139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49165132_)))
                                              (_lp-hd49175136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49165132_))))
                                          (_loop49155122_
                                           _lp-tl49185139_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd49175136_
                                                   _body49195129_)))))
                                      (let ((_body49205142_
                                             (reverse _body49195129_)))
                                        (___kont55115512_
                                         _body49205142_
                                         _tl49025083_
                                         _hd49105110_
                                         _tl49085103_
                                         _hd48955060_))))))
                        (_loop49155122_ _target49125116_ '()))))
                   (___match55415542_
                    (lambda (_e48745194_
                             _hd48755198_
                             _tl48765201_
                             _e48775204_
                             _hd48785208_
                             _tl48795211_
                             ___splice55095510_
                             _target48805214_
                             _tl48825217_)
                      (letrec ((_loop48835220_
                                (lambda (_hd48815224_ _body48875227_)
                                  (if (gx#stx-pair? _hd48815224_)
                                      (let ((_e48845230_
                                             (gx#syntax-e _hd48815224_)))
                                        (let ((_lp-tl48865237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48845230_)))
                                              (_lp-hd48855234_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48845230_))))
                                          (_loop48835220_
                                           _lp-tl48865237_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd48855234_
                                                   _body48875227_)))))
                                      (let ((_body48885240_
                                             (reverse _body48875227_)))
                                        (___kont55075508_ _body48885240_))))))
                        (_loop48835220_ _target48805214_ '())))))
              (if (gx#stx-pair? ___stx55045505_)
                  (let ((_e48745194_ (gx#syntax-e ___stx55045505_)))
                    (let ((_tl48765201_
                           (let () (declare (not safe)) (##cdr _e48745194_)))
                          (_hd48755198_
                           (let () (declare (not safe)) (##car _e48745194_))))
                      (if (gx#stx-pair? _tl48765201_)
                          (let ((_e48775204_ (gx#syntax-e _tl48765201_)))
                            (let ((_tl48795211_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e48775204_)))
                                  (_hd48785208_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e48775204_))))
                              (if (gx#stx-null? _hd48785208_)
                                  (if (gx#stx-pair/null? _tl48795211_)
                                      (let ((___splice55095510_
                                             (gx#syntax-split-splice
                                              _tl48795211_
                                              '0)))
                                        (let ((_tl48825217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice55095510_
                                                  '1)))
                                              (_target48805214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice55095510_
                                                  '0))))
                                          (if (gx#stx-null? _tl48825217_)
                                              (___match55415542_
                                               _e48745194_
                                               _hd48755198_
                                               _tl48765201_
                                               _e48775204_
                                               _hd48785208_
                                               _tl48795211_
                                               ___splice55095510_
                                               _target48805214_
                                               _tl48825217_)
                                              (let ()
                                                (declare (not safe))
                                                (_g48714948_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g48714948_)))
                                  (if (gx#stx-pair? _hd48785208_)
                                      (let ((_e49005076_
                                             (gx#syntax-e _hd48785208_)))
                                        (let ((_tl49025083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49005076_)))
                                              (_hd49015080_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49005076_))))
                                          (if (gx#stx-pair? _hd49015080_)
                                              (let ((_e49035086_
                                                     (gx#syntax-e
                                                      _hd49015080_)))
                                                (let ((_tl49055093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e49035086_)))
                                                      (_hd49045090_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e49035086_))))
                                                  (if (gx#stx-pair?
                                                       _hd49045090_)
                                                      (let ((_e49065096_
                                                             (gx#syntax-e
                                                              _hd49045090_)))
                                                        (let ((_tl49085103_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e49065096_)))
                      (_hd49075100_
                       (let () (declare (not safe)) (##car _e49065096_))))
                  (if (gx#identifier? _hd49075100_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander$<syntax-sugar>[1]#_g5689_|
                           _hd49075100_)
                          (if (gx#stx-pair? _tl49055093_)
                              (let ((_e49095106_ (gx#syntax-e _tl49055093_)))
                                (let ((_tl49115113_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e49095106_)))
                                      (_hd49105110_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e49095106_))))
                                  (if (gx#stx-null? _tl49115113_)
                                      (if (gx#stx-pair/null? _tl48795211_)
                                          (let ((___splice55135514_
                                                 (gx#syntax-split-splice
                                                  _tl48795211_
                                                  '0)))
                                            (let ((_tl49145119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55135514_
                                                      '1)))
                                                  (_target49125116_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55135514_
                                                      '0))))
                                              (if (gx#stx-null? _tl49145119_)
                                                  (___match55915592_
                                                   _e48745194_
                                                   _hd48755198_
                                                   _tl48765201_
                                                   _e48775204_
                                                   _hd48785208_
                                                   _tl48795211_
                                                   _e49005076_
                                                   _hd49015080_
                                                   _tl49025083_
                                                   _e49035086_
                                                   _hd49045090_
                                                   _tl49055093_
                                                   _e49065096_
                                                   _hd49075100_
                                                   _tl49085103_
                                                   _e49095106_
                                                   _hd49105110_
                                                   _tl49115113_
                                                   ___splice55135514_
                                                   _target49125116_
                                                   _tl49145119_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48714948_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48714948_)))
                                      (if (gx#stx-pair/null? _tl48795211_)
                                          (let ((___splice55175518_
                                                 (gx#syntax-split-splice
                                                  _tl48795211_
                                                  '0)))
                                            (let ((_tl49364988_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55175518_
                                                      '1)))
                                                  (_target49344985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55175518_
                                                      '0))))
                                              (if (gx#stx-null? _tl49364988_)
                                                  (___match56175618_
                                                   _e48745194_
                                                   _hd48755198_
                                                   _tl48765201_
                                                   _e48775204_
                                                   _hd48785208_
                                                   _tl48795211_
                                                   _e49005076_
                                                   _hd49015080_
                                                   _tl49025083_
                                                   ___splice55175518_
                                                   _target49344985_
                                                   _tl49364988_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48714948_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48714948_))))))
                              (if (gx#stx-pair/null? _tl48795211_)
                                  (let ((___splice55175518_
                                         (gx#syntax-split-splice
                                          _tl48795211_
                                          '0)))
                                    (let ((_tl49364988_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice55175518_
                                              '1)))
                                          (_target49344985_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice55175518_
                                              '0))))
                                      (if (gx#stx-null? _tl49364988_)
                                          (___match56175618_
                                           _e48745194_
                                           _hd48755198_
                                           _tl48765201_
                                           _e48775204_
                                           _hd48785208_
                                           _tl48795211_
                                           _e49005076_
                                           _hd49015080_
                                           _tl49025083_
                                           ___splice55175518_
                                           _target49344985_
                                           _tl49364988_)
                                          (let ()
                                            (declare (not safe))
                                            (_g48714948_)))))
                                  (let () (declare (not safe)) (_g48714948_))))
                          (if (gx#stx-pair/null? _tl48795211_)
                              (let ((___splice55175518_
                                     (gx#syntax-split-splice _tl48795211_ '0)))
                                (let ((_tl49364988_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice55175518_ '1)))
                                      (_target49344985_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice55175518_
                                          '0))))
                                  (if (gx#stx-null? _tl49364988_)
                                      (___match56175618_
                                       _e48745194_
                                       _hd48755198_
                                       _tl48765201_
                                       _e48775204_
                                       _hd48785208_
                                       _tl48795211_
                                       _e49005076_
                                       _hd49015080_
                                       _tl49025083_
                                       ___splice55175518_
                                       _target49344985_
                                       _tl49364988_)
                                      (let ()
                                        (declare (not safe))
                                        (_g48714948_)))))
                              (let () (declare (not safe)) (_g48714948_))))
                      (if (gx#stx-pair/null? _tl48795211_)
                          (let ((___splice55175518_
                                 (gx#syntax-split-splice _tl48795211_ '0)))
                            (let ((_tl49364988_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice55175518_ '1)))
                                  (_target49344985_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice55175518_ '0))))
                              (if (gx#stx-null? _tl49364988_)
                                  (___match56175618_
                                   _e48745194_
                                   _hd48755198_
                                   _tl48765201_
                                   _e48775204_
                                   _hd48785208_
                                   _tl48795211_
                                   _e49005076_
                                   _hd49015080_
                                   _tl49025083_
                                   ___splice55175518_
                                   _target49344985_
                                   _tl49364988_)
                                  (let ()
                                    (declare (not safe))
                                    (_g48714948_)))))
                          (let () (declare (not safe)) (_g48714948_))))))
              (if (gx#stx-pair/null? _tl48795211_)
                  (let ((___splice55175518_
                         (gx#syntax-split-splice _tl48795211_ '0)))
                    (let ((_tl49364988_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice55175518_ '1)))
                          (_target49344985_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice55175518_ '0))))
                      (if (gx#stx-null? _tl49364988_)
                          (___match56175618_
                           _e48745194_
                           _hd48755198_
                           _tl48765201_
                           _e48775204_
                           _hd48785208_
                           _tl48795211_
                           _e49005076_
                           _hd49015080_
                           _tl49025083_
                           ___splice55175518_
                           _target49344985_
                           _tl49364988_)
                          (let () (declare (not safe)) (_g48714948_)))))
                  (let () (declare (not safe)) (_g48714948_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl48795211_)
                                                  (let ((___splice55175518_
                                                         (gx#syntax-split-splice
                                                          _tl48795211_
                                                          '0)))
                                                    (let ((_tl49364988_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice55175518_
                                                              '1)))
                                                          (_target49344985_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice55175518_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl49364988_)
                                                          (___match56175618_
                                                           _e48745194_
                                                           _hd48755198_
                                                           _tl48765201_
                                                           _e48775204_
                                                           _hd48785208_
                                                           _tl48795211_
                                                           _e49005076_
                                                           _hd49015080_
                                                           _tl49025083_
                                                           ___splice55175518_
                                                           _target49344985_
                                                           _tl49364988_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g48714948_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48714948_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g48714948_))))))
                          (let () (declare (not safe)) (_g48714948_)))))
                  (let () (declare (not safe)) (_g48714948_))))))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx5276_)
        (let* ((_g52795297_
                (lambda (_g52805293_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g52805293_)))
               (_g52785352_
                (lambda (_g52805301_)
                  (if (gx#stx-pair? _g52805301_)
                      (let ((_e52835304_ (gx#syntax-e _g52805301_)))
                        (let ((_hd52845308_
                               (let ()
                                 (declare (not safe))
                                 (##car _e52835304_)))
                              (_tl52855311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e52835304_))))
                          (if (gx#stx-pair? _tl52855311_)
                              (let ((_e52865314_ (gx#syntax-e _tl52855311_)))
                                (let ((_hd52875318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e52865314_)))
                                      (_tl52885321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e52865314_))))
                                  (if (gx#stx-pair? _tl52885321_)
                                      (let ((_e52895324_
                                             (gx#syntax-e _tl52885321_)))
                                        (let ((_hd52905328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e52895324_)))
                                              (_tl52915331_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e52895324_))))
                                          (if (gx#stx-null? _tl52915331_)
                                              ((lambda (_L5334_ _L5336_)
                                                 (let ((__tmp5698
                                                        (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source))
                                                       (__tmp5690
                                                        (let ((__tmp5695
                                                               (let ((__tmp5697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax))
                             (__tmp5696
                              (let ()
                                (declare (not safe))
                                (cons _L5334_ '()))))
                         (declare (not safe))
                         (cons __tmp5697 __tmp5696)))
                      (__tmp5691
                       (let ((__tmp5692
                              (let ((__tmp5694
                                     (gx#datum->syntax '#f 'stx-source))
                                    (__tmp5693
                                     (let ()
                                       (declare (not safe))
                                       (cons _L5336_ '()))))
                                (declare (not safe))
                                (cons __tmp5694 __tmp5693))))
                         (declare (not safe))
                         (cons __tmp5692 '()))))
                  (declare (not safe))
                  (cons __tmp5695 __tmp5691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp5698 __tmp5690)))
                                               _hd52905328_
                                               _hd52875318_)
                                              (_g52795297_ _g52805301_))))
                                      (_g52795297_ _g52805301_))))
                              (_g52795297_ _g52805301_))))
                      (_g52795297_ _g52805301_)))))
          (_g52785352_ _stx5276_))))))
