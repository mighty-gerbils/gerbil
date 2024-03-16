(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander$<syntax-sugar>[1]#_g5681_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx4056_)
        (let* ((_g40594083_
                (lambda (_g40604079_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g40604079_)))
               (_g40584389_
                (lambda (_g40604087_)
                  (if (gx#stx-pair? _g40604087_)
                      (let ((_e40634090_ (gx#syntax-e _g40604087_)))
                        (let ((_hd40644094_
                               (let ()
                                 (declare (not safe))
                                 (##car _e40634090_)))
                              (_tl40654097_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e40634090_))))
                          (if (gx#stx-pair? _tl40654097_)
                              (let ((_e40664100_ (gx#syntax-e _tl40654097_)))
                                (let ((_hd40674104_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e40664100_)))
                                      (_tl40684107_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e40664100_))))
                                  (if (gx#stx-pair/null? _tl40684107_)
                                      (let ((_g5611_ (gx#syntax-split-splice
                                                      _tl40684107_
                                                      '0)))
                                        (begin
                                          (let ((_g5612_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g5611_)
                                                               (##vector-length
                                                                _g5611_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g5612_ 2)))
                                                (error "Context expects 2 values"
                                                       _g5612_)))
                                          (let ((_target40694110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5611_ 0)))
                                                (_tl40714113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5611_ 1))))
                                            (if (gx#stx-null? _tl40714113_)
                                                (letrec ((_loop40724116_
                                                          (lambda (_hd40704120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses40764123_)
                    (if (gx#stx-pair? _hd40704120_)
                        (let ((_e40734126_ (gx#syntax-e _hd40704120_)))
                          (let ((_lp-hd40744130_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e40734126_)))
                                (_lp-tl40754133_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e40734126_))))
                            (_loop40724116_
                             _lp-tl40754133_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd40744130_ _clauses40764123_)))))
                        (let ((_clauses40774136_ (reverse _clauses40764123_)))
                          ((lambda (_L4140_ _L4142_)
                             (if (gx#identifier-list? _L4142_)
                                 (let* ((_body4306_
                                         (gx#stx-map
                                          (lambda (_clause4163_)
                                            (let* ((___stx53485349_
                                                    _clause4163_)
                                                   (_g41674194_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx53485349_))))
                                              (let ((___kont53515352_
                                                     (lambda (_L4279_ _L4281_)
                                                       (let ((__tmp5613
                                                              (let ((__tmp5614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5616 (gx#datum->syntax '#f 'syntax))
                                   (__tmp5615
                                    (let ()
                                      (declare (not safe))
                                      (cons _L4279_ '()))))
                               (declare (not safe))
                               (cons __tmp5616 __tmp5615))))
                        (declare (not safe))
                        (cons __tmp5614 '()))))
                 (declare (not safe))
                 (cons _L4281_ __tmp5613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont53535354_
                                                     (lambda (_L4231_
                                                              _L4233_
                                                              _L4234_)
                                                       (let ((__tmp5617
                                                              (let ((__tmp5618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5619
                                    (let ((__tmp5621
                                           (gx#datum->syntax '#f 'syntax))
                                          (__tmp5620
                                           (let ()
                                             (declare (not safe))
                                             (cons _L4231_ '()))))
                                      (declare (not safe))
                                      (cons __tmp5621 __tmp5620))))
                               (declare (not safe))
                               (cons __tmp5619 '()))))
                        (declare (not safe))
                        (cons _L4233_ __tmp5618))))
                 (declare (not safe))
                 (cons _L4234_ __tmp5617)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx53485349_)
                                                    (let ((_e41714259_
                                                           (gx#syntax-e
                                                            ___stx53485349_)))
                                                      (let ((_tl41734266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e41714259_)))
                    (_hd41724263_
                     (let () (declare (not safe)) (##car _e41714259_))))
                (if (gx#stx-pair? _tl41734266_)
                    (let ((_e41744269_ (gx#syntax-e _tl41734266_)))
                      (let ((_tl41764276_
                             (let () (declare (not safe)) (##cdr _e41744269_)))
                            (_hd41754273_
                             (let ()
                               (declare (not safe))
                               (##car _e41744269_))))
                        (if (gx#stx-null? _tl41764276_)
                            (___kont53515352_ _hd41754273_ _hd41724263_)
                            (if (gx#stx-pair? _tl41764276_)
                                (let ((_e41864221_ (gx#syntax-e _tl41764276_)))
                                  (let ((_tl41884228_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e41864221_)))
                                        (_hd41874225_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e41864221_))))
                                    (if (gx#stx-null? _tl41884228_)
                                        (___kont53535354_
                                         _hd41874225_
                                         _hd41754273_
                                         _hd41724263_)
                                        (let ()
                                          (declare (not safe))
                                          (_g41674194_)))))
                                (let () (declare (not safe)) (_g41674194_))))))
                    (let () (declare (not safe)) (_g41674194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g41674194_))))))
                                          (foldr (lambda (_g42974300_
                                                          _g42984303_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g42974300_
                                                           _g42984303_)))
                                                 '()
                                                 _L4140_)))
                                        (_g43094326_
                                         (lambda (_g43104322_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g43104322_)))
                                        (_g43084385_
                                         (lambda (_g43104330_)
                                           (if (gx#stx-pair/null? _g43104330_)
                                               (let ((_g5622_ (gx#syntax-split-splice
                                                               _g43104330_
                                                               '0)))
                                                 (begin
                                                   (let ((_g5623_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g5622_)
                                (##vector-length _g5622_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g5623_ 2)))
                 (error "Context expects 2 values" _g5623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target43124333_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5622_
                                                             0)))
                                                         (_tl43144336_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5622_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl43144336_)
                                                         (letrec ((_loop43154339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd43134343_ _clause43194346_)
                             (if (gx#stx-pair? _hd43134343_)
                                 (let ((_e43164349_
                                        (gx#syntax-e _hd43134343_)))
                                   (let ((_lp-hd43174353_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e43164349_)))
                                         (_lp-tl43184356_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e43164349_))))
                                     (_loop43154339_
                                      _lp-tl43184356_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd43174353_
                                              _clause43194346_)))))
                                 (let ((_clause43204359_
                                        (reverse _clause43194346_)))
                                   ((lambda (_L4363_)
                                      (let ((__tmp5634
                                             (gx#datum->syntax '#f 'lambda%))
                                            (__tmp5624
                                             (let ((__tmp5632
                                                    (let ((__tmp5633
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$stx)))
                                                      (declare (not safe))
                                                      (cons __tmp5633 '())))
                                                   (__tmp5625
                                                    (let ((__tmp5626
                                                           (let ((__tmp5631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5627
                          (let ((__tmp5630 (gx#datum->syntax '#f '$stx))
                                (__tmp5628
                                 (let ((__tmp5629
                                        (foldr (lambda (_g43764379_
                                                        _g43774382_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g43764379_
                                                         _g43774382_)))
                                               '()
                                               _L4363_)))
                                   (declare (not safe))
                                   (cons _L4142_ __tmp5629))))
                            (declare (not safe))
                            (cons __tmp5630 __tmp5628))))
                     (declare (not safe))
                     (cons __tmp5631 __tmp5627))))
              (declare (not safe))
              (cons __tmp5626 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp5632 __tmp5625))))
                                        (declare (not safe))
                                        (cons __tmp5634 __tmp5624)))
                                    _clause43204359_))))))
                   (_loop43154339_ _target43124333_ '()))
                 (_g43094326_ _g43104330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g43094326_ _g43104330_)))))
                                   (_g43084385_ _body4306_))
                                 (_g40594083_ _g40604087_)))
                           _clauses40774136_
                           _hd40674104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop40724116_
                                                   _target40694110_
                                                   '()))
                                                (_g40594083_ _g40604087_)))))
                                      (_g40594083_ _g40604087_))))
                              (_g40594083_ _g40604087_))))
                      (_g40594083_ _g40604087_)))))
          (_g40584389_ _stx4056_))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx4395_)
        (let* ((___stx53925393_ _stx4395_)
               (_g44004485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx53925393_))))
          (let ((___kont53955396_
                 (lambda (_L4825_)
                   (let ((__tmp5637 (gx#datum->syntax '#f 'let-values))
                         (__tmp5635
                          (let ((__tmp5636
                                 (foldr (lambda (_g48414844_ _g48424847_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g48414844_ _g48424847_)))
                                        '()
                                        _L4825_)))
                            (declare (not safe))
                            (cons '() __tmp5636))))
                     (declare (not safe))
                     (cons __tmp5637 __tmp5635))))
                (___kont53995400_
                 (lambda (_L4733_ _L4735_ _L4736_)
                   (let ((__tmp5647 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5638
                          (let ((__tmp5639
                                 (let ((__tmp5640
                                        (let ((__tmp5641
                                               (let ((__tmp5642
                                                      (let ((__tmp5643
                                                             (let ((__tmp5646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp5644
                            (let ((__tmp5645
                                   (foldr (lambda (_g47594762_ _g47604765_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g47594762_ _g47604765_)))
                                          '()
                                          _L4733_)))
                              (declare (not safe))
                              (cons '() __tmp5645))))
                       (declare (not safe))
                       (cons __tmp5646 __tmp5644))))
                (declare (not safe))
                (cons __tmp5643 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L4736_ __tmp5642))))
                                          (declare (not safe))
                                          (cons __tmp5641 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp5640))))
                            (declare (not safe))
                            (cons _L4735_ __tmp5639))))
                     (declare (not safe))
                     (cons __tmp5647 __tmp5638))))
                (___kont54035404_
                 (lambda (_L4596_ _L4598_ _L4599_)
                   (let ((__tmp5661 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5648
                          (let ((__tmp5658
                                 (let ((__tmp5660 (gx#datum->syntax '#f 'list))
                                       (__tmp5659
                                        (foldr (lambda (_g46214628_
                                                        _g46224631_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g46214628_
                                                         _g46224631_)))
                                               '()
                                               _L4598_)))
                                   (declare (not safe))
                                   (cons __tmp5660 __tmp5659)))
                                (__tmp5649
                                 (let ((__tmp5650
                                        (let ((__tmp5651
                                               (let ((__tmp5657
                                                      (foldr (lambda (_g46234634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g46244637_)
                       (let ()
                         (declare (not safe))
                         (cons _g46234634_ _g46244637_)))
                     '()
                     _L4599_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp5652
                                                      (let ((__tmp5653
                                                             (let ((__tmp5656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp5654
                            (let ((__tmp5655
                                   (foldr (lambda (_g46254640_ _g46264643_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g46254640_ _g46264643_)))
                                          '()
                                          _L4596_)))
                              (declare (not safe))
                              (cons '() __tmp5655))))
                       (declare (not safe))
                       (cons __tmp5656 __tmp5654))))
                (declare (not safe))
                (cons __tmp5653 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp5657 __tmp5652))))
                                          (declare (not safe))
                                          (cons __tmp5651 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp5650))))
                            (declare (not safe))
                            (cons __tmp5658 __tmp5649))))
                     (declare (not safe))
                     (cons __tmp5661 __tmp5648)))))
            (let* ((___match54935494_
                    (lambda (_e44484492_
                             _hd44494496_
                             _tl44504499_
                             _e44514502_
                             _hd44524506_
                             _tl44534509_
                             ___splice54055406_
                             _target44544512_
                             _tl44564515_)
                      (letrec ((_loop44574518_
                                (lambda (_hd44554522_
                                         _e44614525_
                                         _pat44624527_)
                                  (if (gx#stx-pair? _hd44554522_)
                                      (let ((_e44584530_
                                             (gx#syntax-e _hd44554522_)))
                                        (let ((_lp-tl44604537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44584530_)))
                                              (_lp-hd44594534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44584530_))))
                                          (if (gx#stx-pair? _lp-hd44594534_)
                                              (let ((_e44654540_
                                                     (gx#syntax-e
                                                      _lp-hd44594534_)))
                                                (let ((_tl44674547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44654540_)))
                                                      (_hd44664544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44654540_))))
                                                  (if (gx#stx-pair?
                                                       _tl44674547_)
                                                      (let ((_e44684550_
                                                             (gx#syntax-e
                                                              _tl44674547_)))
                                                        (let ((_tl44704557_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e44684550_)))
                      (_hd44694554_
                       (let () (declare (not safe)) (##car _e44684550_))))
                  (if (gx#stx-null? _tl44704557_)
                      (_loop44574518_
                       _lp-tl44604537_
                       (let ()
                         (declare (not safe))
                         (cons _hd44694554_ _e44614525_))
                       (let ()
                         (declare (not safe))
                         (cons _hd44664544_ _pat44624527_)))
                      (let () (declare (not safe)) (_g44004485_)))))
              (let () (declare (not safe)) (_g44004485_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g44004485_)))))
                                      (let ((_pat44644563_
                                             (reverse _pat44624527_))
                                            (_e44634560_
                                             (reverse _e44614525_)))
                                        (if (gx#stx-pair/null? _tl44534509_)
                                            (let ((___splice54075408_
                                                   (gx#syntax-split-splice
                                                    _tl44534509_
                                                    '0)))
                                              (let ((_tl44734569_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice54075408_
                                                        '1)))
                                                    (_target44714566_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice54075408_
                                                        '0))))
                                                (if (gx#stx-null? _tl44734569_)
                                                    (letrec ((_loop44744572_
                                                              (lambda (_hd44724576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body44784579_)
                        (if (gx#stx-pair? _hd44724576_)
                            (let ((_e44754582_ (gx#syntax-e _hd44724576_)))
                              (let ((_lp-tl44774589_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e44754582_)))
                                    (_lp-hd44764586_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e44754582_))))
                                (_loop44744572_
                                 _lp-tl44774589_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd44764586_ _body44784579_)))))
                            (let ((_body44794592_ (reverse _body44784579_)))
                              (___kont54035404_
                               _body44794592_
                               _e44634560_
                               _pat44644563_))))))
              (_loop44744572_ _target44714566_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g44004485_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g44004485_))))))))
                        (_loop44574518_ _target44544512_ '() '()))))
                   (___match54735474_
                    (lambda (_e44214653_
                             _hd44224657_
                             _tl44234660_
                             _e44244663_
                             _hd44254667_
                             _tl44264670_
                             _e44274673_
                             _hd44284677_
                             _tl44294680_
                             _e44304683_
                             _hd44314687_
                             _tl44324690_
                             _e44334693_
                             _hd44344697_
                             _tl44354700_
                             ___splice54015402_
                             _target44364703_
                             _tl44384706_)
                      (letrec ((_loop44394709_
                                (lambda (_hd44374713_ _body44434716_)
                                  (if (gx#stx-pair? _hd44374713_)
                                      (let ((_e44404719_
                                             (gx#syntax-e _hd44374713_)))
                                        (let ((_lp-tl44424726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44404719_)))
                                              (_lp-hd44414723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44404719_))))
                                          (_loop44394709_
                                           _lp-tl44424726_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd44414723_
                                                   _body44434716_)))))
                                      (let ((_body44444729_
                                             (reverse _body44434716_)))
                                        (___kont53995400_
                                         _body44444729_
                                         _hd44344697_
                                         _hd44314687_))))))
                        (_loop44394709_ _target44364703_ '()))))
                   (___match54315432_
                    (lambda (_e44034775_
                             _hd44044779_
                             _tl44054782_
                             _e44064785_
                             _hd44074789_
                             _tl44084792_
                             ___splice53975398_
                             _target44094795_
                             _tl44114798_)
                      (letrec ((_loop44124801_
                                (lambda (_hd44104805_ _body44164808_)
                                  (if (gx#stx-pair? _hd44104805_)
                                      (let ((_e44134811_
                                             (gx#syntax-e _hd44104805_)))
                                        (let ((_lp-tl44154818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44134811_)))
                                              (_lp-hd44144815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44134811_))))
                                          (_loop44124801_
                                           _lp-tl44154818_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd44144815_
                                                   _body44164808_)))))
                                      (let ((_body44174821_
                                             (reverse _body44164808_)))
                                        (___kont53955396_ _body44174821_))))))
                        (_loop44124801_ _target44094795_ '())))))
              (if (gx#stx-pair? ___stx53925393_)
                  (let ((_e44034775_ (gx#syntax-e ___stx53925393_)))
                    (let ((_tl44054782_
                           (let () (declare (not safe)) (##cdr _e44034775_)))
                          (_hd44044779_
                           (let () (declare (not safe)) (##car _e44034775_))))
                      (if (gx#stx-pair? _tl44054782_)
                          (let ((_e44064785_ (gx#syntax-e _tl44054782_)))
                            (let ((_tl44084792_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e44064785_)))
                                  (_hd44074789_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e44064785_))))
                              (if (gx#stx-null? _hd44074789_)
                                  (if (gx#stx-pair/null? _tl44084792_)
                                      (let ((___splice53975398_
                                             (gx#syntax-split-splice
                                              _tl44084792_
                                              '0)))
                                        (let ((_tl44114798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice53975398_
                                                  '1)))
                                              (_target44094795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice53975398_
                                                  '0))))
                                          (if (gx#stx-null? _tl44114798_)
                                              (___match54315432_
                                               _e44034775_
                                               _hd44044779_
                                               _tl44054782_
                                               _e44064785_
                                               _hd44074789_
                                               _tl44084792_
                                               ___splice53975398_
                                               _target44094795_
                                               _tl44114798_)
                                              (if (gx#stx-pair/null?
                                                   _hd44074789_)
                                                  (let ((___splice54055406_
                                                         (gx#syntax-split-splice
                                                          _hd44074789_
                                                          '0)))
                                                    (let ((_tl44564515_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54055406_
                                                              '1)))
                                                          (_target44544512_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54055406_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl44564515_)
                                                          (___match54935494_
                                                           _e44034775_
                                                           _hd44044779_
                                                           _tl44054782_
                                                           _e44064785_
                                                           _hd44074789_
                                                           _tl44084792_
                                                           ___splice54055406_
                                                           _target44544512_
                                                           _tl44564515_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g44004485_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44004485_))))))
                                      (if (gx#stx-pair/null? _hd44074789_)
                                          (let ((___splice54055406_
                                                 (gx#syntax-split-splice
                                                  _hd44074789_
                                                  '0)))
                                            (let ((_tl44564515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54055406_
                                                      '1)))
                                                  (_target44544512_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54055406_
                                                      '0))))
                                              (if (gx#stx-null? _tl44564515_)
                                                  (___match54935494_
                                                   _e44034775_
                                                   _hd44044779_
                                                   _tl44054782_
                                                   _e44064785_
                                                   _hd44074789_
                                                   _tl44084792_
                                                   ___splice54055406_
                                                   _target44544512_
                                                   _tl44564515_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44004485_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44004485_))))
                                  (if (gx#stx-pair? _hd44074789_)
                                      (let ((_e44274673_
                                             (gx#syntax-e _hd44074789_)))
                                        (let ((_tl44294680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44274673_)))
                                              (_hd44284677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44274673_))))
                                          (if (gx#stx-pair? _hd44284677_)
                                              (let ((_e44304683_
                                                     (gx#syntax-e
                                                      _hd44284677_)))
                                                (let ((_tl44324690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44304683_)))
                                                      (_hd44314687_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44304683_))))
                                                  (if (gx#stx-pair?
                                                       _tl44324690_)
                                                      (let ((_e44334693_
                                                             (gx#syntax-e
                                                              _tl44324690_)))
                                                        (let ((_tl44354700_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e44334693_)))
                      (_hd44344697_
                       (let () (declare (not safe)) (##car _e44334693_))))
                  (if (gx#stx-null? _tl44354700_)
                      (if (gx#stx-null? _tl44294680_)
                          (if (gx#stx-pair/null? _tl44084792_)
                              (let ((___splice54015402_
                                     (gx#syntax-split-splice _tl44084792_ '0)))
                                (let ((_tl44384706_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice54015402_ '1)))
                                      (_target44364703_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice54015402_
                                          '0))))
                                  (if (gx#stx-null? _tl44384706_)
                                      (___match54735474_
                                       _e44034775_
                                       _hd44044779_
                                       _tl44054782_
                                       _e44064785_
                                       _hd44074789_
                                       _tl44084792_
                                       _e44274673_
                                       _hd44284677_
                                       _tl44294680_
                                       _e44304683_
                                       _hd44314687_
                                       _tl44324690_
                                       _e44334693_
                                       _hd44344697_
                                       _tl44354700_
                                       ___splice54015402_
                                       _target44364703_
                                       _tl44384706_)
                                      (if (gx#stx-pair/null? _hd44074789_)
                                          (let ((___splice54055406_
                                                 (gx#syntax-split-splice
                                                  _hd44074789_
                                                  '0)))
                                            (let ((_tl44564515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54055406_
                                                      '1)))
                                                  (_target44544512_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54055406_
                                                      '0))))
                                              (if (gx#stx-null? _tl44564515_)
                                                  (___match54935494_
                                                   _e44034775_
                                                   _hd44044779_
                                                   _tl44054782_
                                                   _e44064785_
                                                   _hd44074789_
                                                   _tl44084792_
                                                   ___splice54055406_
                                                   _target44544512_
                                                   _tl44564515_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44004485_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44004485_))))))
                              (if (gx#stx-pair/null? _hd44074789_)
                                  (let ((___splice54055406_
                                         (gx#syntax-split-splice
                                          _hd44074789_
                                          '0)))
                                    (let ((_tl44564515_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice54055406_
                                              '1)))
                                          (_target44544512_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice54055406_
                                              '0))))
                                      (if (gx#stx-null? _tl44564515_)
                                          (___match54935494_
                                           _e44034775_
                                           _hd44044779_
                                           _tl44054782_
                                           _e44064785_
                                           _hd44074789_
                                           _tl44084792_
                                           ___splice54055406_
                                           _target44544512_
                                           _tl44564515_)
                                          (let ()
                                            (declare (not safe))
                                            (_g44004485_)))))
                                  (let () (declare (not safe)) (_g44004485_))))
                          (if (gx#stx-pair/null? _hd44074789_)
                              (let ((___splice54055406_
                                     (gx#syntax-split-splice _hd44074789_ '0)))
                                (let ((_tl44564515_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice54055406_ '1)))
                                      (_target44544512_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice54055406_
                                          '0))))
                                  (if (gx#stx-null? _tl44564515_)
                                      (___match54935494_
                                       _e44034775_
                                       _hd44044779_
                                       _tl44054782_
                                       _e44064785_
                                       _hd44074789_
                                       _tl44084792_
                                       ___splice54055406_
                                       _target44544512_
                                       _tl44564515_)
                                      (let ()
                                        (declare (not safe))
                                        (_g44004485_)))))
                              (let () (declare (not safe)) (_g44004485_))))
                      (if (gx#stx-pair/null? _hd44074789_)
                          (let ((___splice54055406_
                                 (gx#syntax-split-splice _hd44074789_ '0)))
                            (let ((_tl44564515_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice54055406_ '1)))
                                  (_target44544512_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice54055406_ '0))))
                              (if (gx#stx-null? _tl44564515_)
                                  (___match54935494_
                                   _e44034775_
                                   _hd44044779_
                                   _tl44054782_
                                   _e44064785_
                                   _hd44074789_
                                   _tl44084792_
                                   ___splice54055406_
                                   _target44544512_
                                   _tl44564515_)
                                  (let ()
                                    (declare (not safe))
                                    (_g44004485_)))))
                          (let () (declare (not safe)) (_g44004485_))))))
              (if (gx#stx-pair/null? _hd44074789_)
                  (let ((___splice54055406_
                         (gx#syntax-split-splice _hd44074789_ '0)))
                    (let ((_tl44564515_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice54055406_ '1)))
                          (_target44544512_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice54055406_ '0))))
                      (if (gx#stx-null? _tl44564515_)
                          (___match54935494_
                           _e44034775_
                           _hd44044779_
                           _tl44054782_
                           _e44064785_
                           _hd44074789_
                           _tl44084792_
                           ___splice54055406_
                           _target44544512_
                           _tl44564515_)
                          (let () (declare (not safe)) (_g44004485_)))))
                  (let () (declare (not safe)) (_g44004485_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd44074789_)
                                                  (let ((___splice54055406_
                                                         (gx#syntax-split-splice
                                                          _hd44074789_
                                                          '0)))
                                                    (let ((_tl44564515_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54055406_
                                                              '1)))
                                                          (_target44544512_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54055406_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl44564515_)
                                                          (___match54935494_
                                                           _e44034775_
                                                           _hd44044779_
                                                           _tl44054782_
                                                           _e44064785_
                                                           _hd44074789_
                                                           _tl44084792_
                                                           ___splice54055406_
                                                           _target44544512_
                                                           _tl44564515_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g44004485_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44004485_))))))
                                      (if (gx#stx-pair/null? _hd44074789_)
                                          (let ((___splice54055406_
                                                 (gx#syntax-split-splice
                                                  _hd44074789_
                                                  '0)))
                                            (let ((_tl44564515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54055406_
                                                      '1)))
                                                  (_target44544512_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54055406_
                                                      '0))))
                                              (if (gx#stx-null? _tl44564515_)
                                                  (___match54935494_
                                                   _e44034775_
                                                   _hd44044779_
                                                   _tl44054782_
                                                   _e44064785_
                                                   _hd44074789_
                                                   _tl44084792_
                                                   ___splice54055406_
                                                   _target44544512_
                                                   _tl44564515_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44004485_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44004485_)))))))
                          (let () (declare (not safe)) (_g44004485_)))))
                  (let () (declare (not safe)) (_g44004485_))))))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx4858_)
        (let* ((___stx54965497_ _stx4858_)
               (_g48634940_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx54965497_))))
          (let ((___kont54995500_
                 (lambda (_L5236_)
                   (let ((__tmp5664 (gx#datum->syntax '#f 'let-values))
                         (__tmp5662
                          (let ((__tmp5663
                                 (foldr (lambda (_g52525255_ _g52535258_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g52525255_ _g52535258_)))
                                        '()
                                        _L5236_)))
                            (declare (not safe))
                            (cons '() __tmp5663))))
                     (declare (not safe))
                     (cons __tmp5664 __tmp5662))))
                (___kont55035504_
                 (lambda (_L5138_ _L5140_ _L5141_ _L5142_ _L5143_)
                   (let ((__tmp5673 (gx#datum->syntax '#f 'let-values))
                         (__tmp5665
                          (let ((__tmp5670
                                 (let ((__tmp5671
                                        (let ((__tmp5672
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L5141_ '()))))
                                          (declare (not safe))
                                          (cons _L5142_ __tmp5672))))
                                   (declare (not safe))
                                   (cons __tmp5671 '())))
                                (__tmp5666
                                 (let ((__tmp5667
                                        (let ((__tmp5668
                                               (let ((__tmp5669
                                                      (foldr (lambda (_g51705173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g51715176_)
                       (let ()
                         (declare (not safe))
                         (cons _g51705173_ _g51715176_)))
                     '()
                     _L5138_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5140_ __tmp5669))))
                                          (declare (not safe))
                                          (cons _L5143_ __tmp5668))))
                                   (declare (not safe))
                                   (cons __tmp5667 '()))))
                            (declare (not safe))
                            (cons __tmp5670 __tmp5666))))
                     (declare (not safe))
                     (cons __tmp5673 __tmp5665))))
                (___kont55075508_
                 (lambda (_L5007_ _L5009_ _L5010_ _L5011_)
                   (let ((__tmp5680 (gx#datum->syntax '#f 'with-syntax))
                         (__tmp5674
                          (let ((__tmp5679
                                 (let ()
                                   (declare (not safe))
                                   (cons _L5010_ '())))
                                (__tmp5675
                                 (let ((__tmp5676
                                        (let ((__tmp5677
                                               (let ((__tmp5678
                                                      (foldr (lambda (_g50325035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g50335038_)
                       (let ()
                         (declare (not safe))
                         (cons _g50325035_ _g50335038_)))
                     '()
                     _L5007_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5009_ __tmp5678))))
                                          (declare (not safe))
                                          (cons _L5011_ __tmp5677))))
                                   (declare (not safe))
                                   (cons __tmp5676 '()))))
                            (declare (not safe))
                            (cons __tmp5679 __tmp5675))))
                     (declare (not safe))
                     (cons __tmp5680 __tmp5674)))))
            (let* ((___match56095610_
                    (lambda (_e49174947_
                             _hd49184951_
                             _tl49194954_
                             _e49204957_
                             _hd49214961_
                             _tl49224964_
                             _e49234967_
                             _hd49244971_
                             _tl49254974_
                             ___splice55095510_
                             _target49264977_
                             _tl49284980_)
                      (letrec ((_loop49294983_
                                (lambda (_hd49274987_ _body49334990_)
                                  (if (gx#stx-pair? _hd49274987_)
                                      (let ((_e49304993_
                                             (gx#syntax-e _hd49274987_)))
                                        (let ((_lp-tl49325000_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49304993_)))
                                              (_lp-hd49314997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49304993_))))
                                          (_loop49294983_
                                           _lp-tl49325000_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd49314997_
                                                   _body49334990_)))))
                                      (let ((_body49345003_
                                             (reverse _body49334990_)))
                                        (___kont55075508_
                                         _body49345003_
                                         _tl49254974_
                                         _hd49244971_
                                         _hd49184951_))))))
                        (_loop49294983_ _target49264977_ '()))))
                   (___match55835584_
                    (lambda (_e48865048_
                             _hd48875052_
                             _tl48885055_
                             _e48895058_
                             _hd48905062_
                             _tl48915065_
                             _e48925068_
                             _hd48935072_
                             _tl48945075_
                             _e48955078_
                             _hd48965082_
                             _tl48975085_
                             _e48985088_
                             _hd48995092_
                             _tl49005095_
                             _e49015098_
                             _hd49025102_
                             _tl49035105_
                             ___splice55055506_
                             _target49045108_
                             _tl49065111_)
                      (letrec ((_loop49075114_
                                (lambda (_hd49055118_ _body49115121_)
                                  (if (gx#stx-pair? _hd49055118_)
                                      (let ((_e49085124_
                                             (gx#syntax-e _hd49055118_)))
                                        (let ((_lp-tl49105131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49085124_)))
                                              (_lp-hd49095128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49085124_))))
                                          (_loop49075114_
                                           _lp-tl49105131_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd49095128_
                                                   _body49115121_)))))
                                      (let ((_body49125134_
                                             (reverse _body49115121_)))
                                        (___kont55035504_
                                         _body49125134_
                                         _tl48945075_
                                         _hd49025102_
                                         _tl49005095_
                                         _hd48875052_))))))
                        (_loop49075114_ _target49045108_ '()))))
                   (___match55335534_
                    (lambda (_e48665186_
                             _hd48675190_
                             _tl48685193_
                             _e48695196_
                             _hd48705200_
                             _tl48715203_
                             ___splice55015502_
                             _target48725206_
                             _tl48745209_)
                      (letrec ((_loop48755212_
                                (lambda (_hd48735216_ _body48795219_)
                                  (if (gx#stx-pair? _hd48735216_)
                                      (let ((_e48765222_
                                             (gx#syntax-e _hd48735216_)))
                                        (let ((_lp-tl48785229_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48765222_)))
                                              (_lp-hd48775226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48765222_))))
                                          (_loop48755212_
                                           _lp-tl48785229_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd48775226_
                                                   _body48795219_)))))
                                      (let ((_body48805232_
                                             (reverse _body48795219_)))
                                        (___kont54995500_ _body48805232_))))))
                        (_loop48755212_ _target48725206_ '())))))
              (if (gx#stx-pair? ___stx54965497_)
                  (let ((_e48665186_ (gx#syntax-e ___stx54965497_)))
                    (let ((_tl48685193_
                           (let () (declare (not safe)) (##cdr _e48665186_)))
                          (_hd48675190_
                           (let () (declare (not safe)) (##car _e48665186_))))
                      (if (gx#stx-pair? _tl48685193_)
                          (let ((_e48695196_ (gx#syntax-e _tl48685193_)))
                            (let ((_tl48715203_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e48695196_)))
                                  (_hd48705200_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e48695196_))))
                              (if (gx#stx-null? _hd48705200_)
                                  (if (gx#stx-pair/null? _tl48715203_)
                                      (let ((___splice55015502_
                                             (gx#syntax-split-splice
                                              _tl48715203_
                                              '0)))
                                        (let ((_tl48745209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice55015502_
                                                  '1)))
                                              (_target48725206_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice55015502_
                                                  '0))))
                                          (if (gx#stx-null? _tl48745209_)
                                              (___match55335534_
                                               _e48665186_
                                               _hd48675190_
                                               _tl48685193_
                                               _e48695196_
                                               _hd48705200_
                                               _tl48715203_
                                               ___splice55015502_
                                               _target48725206_
                                               _tl48745209_)
                                              (let ()
                                                (declare (not safe))
                                                (_g48634940_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g48634940_)))
                                  (if (gx#stx-pair? _hd48705200_)
                                      (let ((_e48925068_
                                             (gx#syntax-e _hd48705200_)))
                                        (let ((_tl48945075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48925068_)))
                                              (_hd48935072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48925068_))))
                                          (if (gx#stx-pair? _hd48935072_)
                                              (let ((_e48955078_
                                                     (gx#syntax-e
                                                      _hd48935072_)))
                                                (let ((_tl48975085_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e48955078_)))
                                                      (_hd48965082_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e48955078_))))
                                                  (if (gx#stx-pair?
                                                       _hd48965082_)
                                                      (let ((_e48985088_
                                                             (gx#syntax-e
                                                              _hd48965082_)))
                                                        (let ((_tl49005095_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e48985088_)))
                      (_hd48995092_
                       (let () (declare (not safe)) (##car _e48985088_))))
                  (if (gx#identifier? _hd48995092_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander$<syntax-sugar>[1]#_g5681_|
                           _hd48995092_)
                          (if (gx#stx-pair? _tl48975085_)
                              (let ((_e49015098_ (gx#syntax-e _tl48975085_)))
                                (let ((_tl49035105_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e49015098_)))
                                      (_hd49025102_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e49015098_))))
                                  (if (gx#stx-null? _tl49035105_)
                                      (if (gx#stx-pair/null? _tl48715203_)
                                          (let ((___splice55055506_
                                                 (gx#syntax-split-splice
                                                  _tl48715203_
                                                  '0)))
                                            (let ((_tl49065111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55055506_
                                                      '1)))
                                                  (_target49045108_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55055506_
                                                      '0))))
                                              (if (gx#stx-null? _tl49065111_)
                                                  (___match55835584_
                                                   _e48665186_
                                                   _hd48675190_
                                                   _tl48685193_
                                                   _e48695196_
                                                   _hd48705200_
                                                   _tl48715203_
                                                   _e48925068_
                                                   _hd48935072_
                                                   _tl48945075_
                                                   _e48955078_
                                                   _hd48965082_
                                                   _tl48975085_
                                                   _e48985088_
                                                   _hd48995092_
                                                   _tl49005095_
                                                   _e49015098_
                                                   _hd49025102_
                                                   _tl49035105_
                                                   ___splice55055506_
                                                   _target49045108_
                                                   _tl49065111_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48634940_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48634940_)))
                                      (if (gx#stx-pair/null? _tl48715203_)
                                          (let ((___splice55095510_
                                                 (gx#syntax-split-splice
                                                  _tl48715203_
                                                  '0)))
                                            (let ((_tl49284980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55095510_
                                                      '1)))
                                                  (_target49264977_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55095510_
                                                      '0))))
                                              (if (gx#stx-null? _tl49284980_)
                                                  (___match56095610_
                                                   _e48665186_
                                                   _hd48675190_
                                                   _tl48685193_
                                                   _e48695196_
                                                   _hd48705200_
                                                   _tl48715203_
                                                   _e48925068_
                                                   _hd48935072_
                                                   _tl48945075_
                                                   ___splice55095510_
                                                   _target49264977_
                                                   _tl49284980_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48634940_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48634940_))))))
                              (if (gx#stx-pair/null? _tl48715203_)
                                  (let ((___splice55095510_
                                         (gx#syntax-split-splice
                                          _tl48715203_
                                          '0)))
                                    (let ((_tl49284980_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice55095510_
                                              '1)))
                                          (_target49264977_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice55095510_
                                              '0))))
                                      (if (gx#stx-null? _tl49284980_)
                                          (___match56095610_
                                           _e48665186_
                                           _hd48675190_
                                           _tl48685193_
                                           _e48695196_
                                           _hd48705200_
                                           _tl48715203_
                                           _e48925068_
                                           _hd48935072_
                                           _tl48945075_
                                           ___splice55095510_
                                           _target49264977_
                                           _tl49284980_)
                                          (let ()
                                            (declare (not safe))
                                            (_g48634940_)))))
                                  (let () (declare (not safe)) (_g48634940_))))
                          (if (gx#stx-pair/null? _tl48715203_)
                              (let ((___splice55095510_
                                     (gx#syntax-split-splice _tl48715203_ '0)))
                                (let ((_tl49284980_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice55095510_ '1)))
                                      (_target49264977_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice55095510_
                                          '0))))
                                  (if (gx#stx-null? _tl49284980_)
                                      (___match56095610_
                                       _e48665186_
                                       _hd48675190_
                                       _tl48685193_
                                       _e48695196_
                                       _hd48705200_
                                       _tl48715203_
                                       _e48925068_
                                       _hd48935072_
                                       _tl48945075_
                                       ___splice55095510_
                                       _target49264977_
                                       _tl49284980_)
                                      (let ()
                                        (declare (not safe))
                                        (_g48634940_)))))
                              (let () (declare (not safe)) (_g48634940_))))
                      (if (gx#stx-pair/null? _tl48715203_)
                          (let ((___splice55095510_
                                 (gx#syntax-split-splice _tl48715203_ '0)))
                            (let ((_tl49284980_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice55095510_ '1)))
                                  (_target49264977_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice55095510_ '0))))
                              (if (gx#stx-null? _tl49284980_)
                                  (___match56095610_
                                   _e48665186_
                                   _hd48675190_
                                   _tl48685193_
                                   _e48695196_
                                   _hd48705200_
                                   _tl48715203_
                                   _e48925068_
                                   _hd48935072_
                                   _tl48945075_
                                   ___splice55095510_
                                   _target49264977_
                                   _tl49284980_)
                                  (let ()
                                    (declare (not safe))
                                    (_g48634940_)))))
                          (let () (declare (not safe)) (_g48634940_))))))
              (if (gx#stx-pair/null? _tl48715203_)
                  (let ((___splice55095510_
                         (gx#syntax-split-splice _tl48715203_ '0)))
                    (let ((_tl49284980_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice55095510_ '1)))
                          (_target49264977_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice55095510_ '0))))
                      (if (gx#stx-null? _tl49284980_)
                          (___match56095610_
                           _e48665186_
                           _hd48675190_
                           _tl48685193_
                           _e48695196_
                           _hd48705200_
                           _tl48715203_
                           _e48925068_
                           _hd48935072_
                           _tl48945075_
                           ___splice55095510_
                           _target49264977_
                           _tl49284980_)
                          (let () (declare (not safe)) (_g48634940_)))))
                  (let () (declare (not safe)) (_g48634940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl48715203_)
                                                  (let ((___splice55095510_
                                                         (gx#syntax-split-splice
                                                          _tl48715203_
                                                          '0)))
                                                    (let ((_tl49284980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice55095510_
                                                              '1)))
                                                          (_target49264977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice55095510_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl49284980_)
                                                          (___match56095610_
                                                           _e48665186_
                                                           _hd48675190_
                                                           _tl48685193_
                                                           _e48695196_
                                                           _hd48705200_
                                                           _tl48715203_
                                                           _e48925068_
                                                           _hd48935072_
                                                           _tl48945075_
                                                           ___splice55095510_
                                                           _target49264977_
                                                           _tl49284980_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g48634940_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48634940_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g48634940_))))))
                          (let () (declare (not safe)) (_g48634940_)))))
                  (let () (declare (not safe)) (_g48634940_))))))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx5268_)
        (let* ((_g52715289_
                (lambda (_g52725285_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g52725285_)))
               (_g52705344_
                (lambda (_g52725293_)
                  (if (gx#stx-pair? _g52725293_)
                      (let ((_e52755296_ (gx#syntax-e _g52725293_)))
                        (let ((_hd52765300_
                               (let ()
                                 (declare (not safe))
                                 (##car _e52755296_)))
                              (_tl52775303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e52755296_))))
                          (if (gx#stx-pair? _tl52775303_)
                              (let ((_e52785306_ (gx#syntax-e _tl52775303_)))
                                (let ((_hd52795310_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e52785306_)))
                                      (_tl52805313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e52785306_))))
                                  (if (gx#stx-pair? _tl52805313_)
                                      (let ((_e52815316_
                                             (gx#syntax-e _tl52805313_)))
                                        (let ((_hd52825320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e52815316_)))
                                              (_tl52835323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e52815316_))))
                                          (if (gx#stx-null? _tl52835323_)
                                              ((lambda (_L5326_ _L5328_)
                                                 (let ((__tmp5690
                                                        (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source))
                                                       (__tmp5682
                                                        (let ((__tmp5687
                                                               (let ((__tmp5689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax))
                             (__tmp5688
                              (let ()
                                (declare (not safe))
                                (cons _L5326_ '()))))
                         (declare (not safe))
                         (cons __tmp5689 __tmp5688)))
                      (__tmp5683
                       (let ((__tmp5684
                              (let ((__tmp5686
                                     (gx#datum->syntax '#f 'stx-source))
                                    (__tmp5685
                                     (let ()
                                       (declare (not safe))
                                       (cons _L5328_ '()))))
                                (declare (not safe))
                                (cons __tmp5686 __tmp5685))))
                         (declare (not safe))
                         (cons __tmp5684 '()))))
                  (declare (not safe))
                  (cons __tmp5687 __tmp5683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp5690 __tmp5682)))
                                               _hd52825320_
                                               _hd52795310_)
                                              (_g52715289_ _g52725293_))))
                                      (_g52715289_ _g52725293_))))
                              (_g52715289_ _g52725293_))))
                      (_g52715289_ _g52725293_)))))
          (_g52705344_ _stx5268_))))))
