(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander$<syntax-sugar>[1]#_g5682_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx4057_)
        (let* ((_g40604084_
                (lambda (_g40614080_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g40614080_)))
               (_g40594390_
                (lambda (_g40614088_)
                  (if (gx#stx-pair? _g40614088_)
                      (let ((_e40664091_ (gx#syntax-e _g40614088_)))
                        (let ((_hd40654095_
                               (let ()
                                 (declare (not safe))
                                 (##car _e40664091_)))
                              (_tl40644098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e40664091_))))
                          (if (gx#stx-pair? _tl40644098_)
                              (let ((_e40694101_ (gx#syntax-e _tl40644098_)))
                                (let ((_hd40684105_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e40694101_)))
                                      (_tl40674108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e40694101_))))
                                  (if (gx#stx-pair/null? _tl40674108_)
                                      (let ((_g5612_ (gx#syntax-split-splice
                                                      _tl40674108_
                                                      '0)))
                                        (begin
                                          (let ((_g5613_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g5612_)
                                                               (##vector-length
                                                                _g5612_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g5613_ 2)))
                                                (error "Context expects 2 values"
                                                       _g5613_)))
                                          (let ((_target40704111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5612_ 0)))
                                                (_tl40724114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5612_ 1))))
                                            (if (gx#stx-null? _tl40724114_)
                                                (letrec ((_loop40734117_
                                                          (lambda (_hd40714121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses40774124_)
                    (if (gx#stx-pair? _hd40714121_)
                        (let ((_e40744127_ (gx#syntax-e _hd40714121_)))
                          (let ((_lp-hd40754131_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e40744127_)))
                                (_lp-tl40764134_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e40744127_))))
                            (_loop40734117_
                             _lp-tl40764134_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd40754131_ _clauses40774124_)))))
                        (let ((_clauses40784137_ (reverse _clauses40774124_)))
                          ((lambda (_L4141_ _L4143_)
                             (if (gx#identifier-list? _L4143_)
                                 (let* ((_body4307_
                                         (gx#stx-map
                                          (lambda (_clause4164_)
                                            (let* ((___stx53495350_
                                                    _clause4164_)
                                                   (_g41684195_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx53495350_))))
                                              (let ((___kont53525353_
                                                     (lambda (_L4280_ _L4282_)
                                                       (let ((__tmp5614
                                                              (let ((__tmp5615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5617 (gx#datum->syntax '#f 'syntax))
                                   (__tmp5616
                                    (let ()
                                      (declare (not safe))
                                      (cons _L4280_ '()))))
                               (declare (not safe))
                               (cons __tmp5617 __tmp5616))))
                        (declare (not safe))
                        (cons __tmp5615 '()))))
                 (declare (not safe))
                 (cons _L4282_ __tmp5614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont53545355_
                                                     (lambda (_L4232_
                                                              _L4234_
                                                              _L4235_)
                                                       (let ((__tmp5618
                                                              (let ((__tmp5619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5620
                                    (let ((__tmp5622
                                           (gx#datum->syntax '#f 'syntax))
                                          (__tmp5621
                                           (let ()
                                             (declare (not safe))
                                             (cons _L4232_ '()))))
                                      (declare (not safe))
                                      (cons __tmp5622 __tmp5621))))
                               (declare (not safe))
                               (cons __tmp5620 '()))))
                        (declare (not safe))
                        (cons _L4234_ __tmp5619))))
                 (declare (not safe))
                 (cons _L4235_ __tmp5618)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx53495350_)
                                                    (let ((_e41744260_
                                                           (gx#syntax-e
                                                            ___stx53495350_)))
                                                      (let ((_tl41724267_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e41744260_)))
                    (_hd41734264_
                     (let () (declare (not safe)) (##car _e41744260_))))
                (if (gx#stx-pair? _tl41724267_)
                    (let ((_e41774270_ (gx#syntax-e _tl41724267_)))
                      (let ((_tl41754277_
                             (let () (declare (not safe)) (##cdr _e41774270_)))
                            (_hd41764274_
                             (let ()
                               (declare (not safe))
                               (##car _e41774270_))))
                        (if (gx#stx-null? _tl41754277_)
                            (___kont53525353_ _hd41764274_ _hd41734264_)
                            (if (gx#stx-pair? _tl41754277_)
                                (let ((_e41894222_ (gx#syntax-e _tl41754277_)))
                                  (let ((_tl41874229_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e41894222_)))
                                        (_hd41884226_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e41894222_))))
                                    (if (gx#stx-null? _tl41874229_)
                                        (___kont53545355_
                                         _hd41884226_
                                         _hd41764274_
                                         _hd41734264_)
                                        (let ()
                                          (declare (not safe))
                                          (_g41684195_)))))
                                (let () (declare (not safe)) (_g41684195_))))))
                    (let () (declare (not safe)) (_g41684195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g41684195_))))))
                                          (foldr (lambda (_g42984301_
                                                          _g42994304_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g42984301_
                                                           _g42994304_)))
                                                 '()
                                                 _L4141_)))
                                        (_g43104327_
                                         (lambda (_g43114323_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g43114323_)))
                                        (_g43094386_
                                         (lambda (_g43114331_)
                                           (if (gx#stx-pair/null? _g43114331_)
                                               (let ((_g5623_ (gx#syntax-split-splice
                                                               _g43114331_
                                                               '0)))
                                                 (begin
                                                   (let ((_g5624_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g5623_)
                                (##vector-length _g5623_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g5624_ 2)))
                 (error "Context expects 2 values" _g5624_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target43134334_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5623_
                                                             0)))
                                                         (_tl43154337_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5623_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl43154337_)
                                                         (letrec ((_loop43164340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd43144344_ _clause43204347_)
                             (if (gx#stx-pair? _hd43144344_)
                                 (let ((_e43174350_
                                        (gx#syntax-e _hd43144344_)))
                                   (let ((_lp-hd43184354_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e43174350_)))
                                         (_lp-tl43194357_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e43174350_))))
                                     (_loop43164340_
                                      _lp-tl43194357_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd43184354_
                                              _clause43204347_)))))
                                 (let ((_clause43214360_
                                        (reverse _clause43204347_)))
                                   ((lambda (_L4364_)
                                      (let ((__tmp5635
                                             (gx#datum->syntax '#f 'lambda%))
                                            (__tmp5625
                                             (let ((__tmp5633
                                                    (let ((__tmp5634
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$stx)))
                                                      (declare (not safe))
                                                      (cons __tmp5634 '())))
                                                   (__tmp5626
                                                    (let ((__tmp5627
                                                           (let ((__tmp5632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5628
                          (let ((__tmp5631 (gx#datum->syntax '#f '$stx))
                                (__tmp5629
                                 (let ((__tmp5630
                                        (foldr (lambda (_g43774380_
                                                        _g43784383_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g43774380_
                                                         _g43784383_)))
                                               '()
                                               _L4364_)))
                                   (declare (not safe))
                                   (cons _L4143_ __tmp5630))))
                            (declare (not safe))
                            (cons __tmp5631 __tmp5629))))
                     (declare (not safe))
                     (cons __tmp5632 __tmp5628))))
              (declare (not safe))
              (cons __tmp5627 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp5633 __tmp5626))))
                                        (declare (not safe))
                                        (cons __tmp5635 __tmp5625)))
                                    _clause43214360_))))))
                   (_loop43164340_ _target43134334_ '()))
                 (_g43104327_ _g43114331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g43104327_ _g43114331_)))))
                                   (_g43094386_ _body4307_))
                                 (_g40604084_ _g40614088_)))
                           _clauses40784137_
                           _hd40684105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop40734117_
                                                   _target40704111_
                                                   '()))
                                                (_g40604084_ _g40614088_)))))
                                      (_g40604084_ _g40614088_))))
                              (_g40604084_ _g40614088_))))
                      (_g40604084_ _g40614088_)))))
          (_g40594390_ _stx4057_))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx4396_)
        (let* ((___stx53935394_ _stx4396_)
               (_g44014486_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx53935394_))))
          (let ((___kont53965397_
                 (lambda (_L4826_)
                   (let ((__tmp5638 (gx#datum->syntax '#f 'let-values))
                         (__tmp5636
                          (let ((__tmp5637
                                 (foldr (lambda (_g48424845_ _g48434848_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g48424845_ _g48434848_)))
                                        '()
                                        _L4826_)))
                            (declare (not safe))
                            (cons '() __tmp5637))))
                     (declare (not safe))
                     (cons __tmp5638 __tmp5636))))
                (___kont54005401_
                 (lambda (_L4734_ _L4736_ _L4737_)
                   (let ((__tmp5648 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5639
                          (let ((__tmp5640
                                 (let ((__tmp5641
                                        (let ((__tmp5642
                                               (let ((__tmp5643
                                                      (let ((__tmp5644
                                                             (let ((__tmp5647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp5645
                            (let ((__tmp5646
                                   (foldr (lambda (_g47604763_ _g47614766_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g47604763_ _g47614766_)))
                                          '()
                                          _L4734_)))
                              (declare (not safe))
                              (cons '() __tmp5646))))
                       (declare (not safe))
                       (cons __tmp5647 __tmp5645))))
                (declare (not safe))
                (cons __tmp5644 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L4737_ __tmp5643))))
                                          (declare (not safe))
                                          (cons __tmp5642 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp5641))))
                            (declare (not safe))
                            (cons _L4736_ __tmp5640))))
                     (declare (not safe))
                     (cons __tmp5648 __tmp5639))))
                (___kont54045405_
                 (lambda (_L4597_ _L4599_ _L4600_)
                   (let ((__tmp5662 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5649
                          (let ((__tmp5659
                                 (let ((__tmp5661 (gx#datum->syntax '#f 'list))
                                       (__tmp5660
                                        (foldr (lambda (_g46264629_
                                                        _g46274632_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g46264629_
                                                         _g46274632_)))
                                               '()
                                               _L4599_)))
                                   (declare (not safe))
                                   (cons __tmp5661 __tmp5660)))
                                (__tmp5650
                                 (let ((__tmp5651
                                        (let ((__tmp5652
                                               (let ((__tmp5658
                                                      (foldr (lambda (_g46244635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g46254638_)
                       (let ()
                         (declare (not safe))
                         (cons _g46244635_ _g46254638_)))
                     '()
                     _L4600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp5653
                                                      (let ((__tmp5654
                                                             (let ((__tmp5657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp5655
                            (let ((__tmp5656
                                   (foldr (lambda (_g46224641_ _g46234644_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g46224641_ _g46234644_)))
                                          '()
                                          _L4597_)))
                              (declare (not safe))
                              (cons '() __tmp5656))))
                       (declare (not safe))
                       (cons __tmp5657 __tmp5655))))
                (declare (not safe))
                (cons __tmp5654 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp5658 __tmp5653))))
                                          (declare (not safe))
                                          (cons __tmp5652 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp5651))))
                            (declare (not safe))
                            (cons __tmp5659 __tmp5650))))
                     (declare (not safe))
                     (cons __tmp5662 __tmp5649)))))
            (let* ((___match54945495_
                    (lambda (_e44514493_
                             _hd44504497_
                             _tl44494500_
                             _e44544503_
                             _hd44534507_
                             _tl44524510_
                             ___splice54065407_
                             _target44554513_
                             _tl44574516_)
                      (letrec ((_loop44584519_
                                (lambda (_hd44564523_
                                         _e44624526_
                                         _pat44634528_)
                                  (if (gx#stx-pair? _hd44564523_)
                                      (let ((_e44594531_
                                             (gx#syntax-e _hd44564523_)))
                                        (let ((_lp-tl44614538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44594531_)))
                                              (_lp-hd44604535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44594531_))))
                                          (if (gx#stx-pair? _lp-hd44604535_)
                                              (let ((_e44684541_
                                                     (gx#syntax-e
                                                      _lp-hd44604535_)))
                                                (let ((_tl44664548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44684541_)))
                                                      (_hd44674545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44684541_))))
                                                  (if (gx#stx-pair?
                                                       _tl44664548_)
                                                      (let ((_e44714551_
                                                             (gx#syntax-e
                                                              _tl44664548_)))
                                                        (let ((_tl44694558_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e44714551_)))
                      (_hd44704555_
                       (let () (declare (not safe)) (##car _e44714551_))))
                  (if (gx#stx-null? _tl44694558_)
                      (_loop44584519_
                       _lp-tl44614538_
                       (let ()
                         (declare (not safe))
                         (cons _hd44704555_ _e44624526_))
                       (let ()
                         (declare (not safe))
                         (cons _hd44674545_ _pat44634528_)))
                      (let () (declare (not safe)) (_g44014486_)))))
              (let () (declare (not safe)) (_g44014486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g44014486_)))))
                                      (let ((_pat44654564_
                                             (reverse _pat44634528_))
                                            (_e44644561_
                                             (reverse _e44624526_)))
                                        (if (gx#stx-pair/null? _tl44524510_)
                                            (let ((___splice54085409_
                                                   (gx#syntax-split-splice
                                                    _tl44524510_
                                                    '0)))
                                              (let ((_tl44744570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice54085409_
                                                        '1)))
                                                    (_target44724567_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice54085409_
                                                        '0))))
                                                (if (gx#stx-null? _tl44744570_)
                                                    (letrec ((_loop44754573_
                                                              (lambda (_hd44734577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body44794580_)
                        (if (gx#stx-pair? _hd44734577_)
                            (let ((_e44764583_ (gx#syntax-e _hd44734577_)))
                              (let ((_lp-tl44784590_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e44764583_)))
                                    (_lp-hd44774587_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e44764583_))))
                                (_loop44754573_
                                 _lp-tl44784590_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd44774587_ _body44794580_)))))
                            (let ((_body44804593_ (reverse _body44794580_)))
                              (___kont54045405_
                               _body44804593_
                               _e44644561_
                               _pat44654564_))))))
              (_loop44754573_ _target44724567_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g44014486_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g44014486_))))))))
                        (_loop44584519_ _target44554513_ '() '()))))
                   (___match54745475_
                    (lambda (_e44244654_
                             _hd44234658_
                             _tl44224661_
                             _e44274664_
                             _hd44264668_
                             _tl44254671_
                             _e44304674_
                             _hd44294678_
                             _tl44284681_
                             _e44334684_
                             _hd44324688_
                             _tl44314691_
                             _e44364694_
                             _hd44354698_
                             _tl44344701_
                             ___splice54025403_
                             _target44374704_
                             _tl44394707_)
                      (letrec ((_loop44404710_
                                (lambda (_hd44384714_ _body44444717_)
                                  (if (gx#stx-pair? _hd44384714_)
                                      (let ((_e44414720_
                                             (gx#syntax-e _hd44384714_)))
                                        (let ((_lp-tl44434727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44414720_)))
                                              (_lp-hd44424724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44414720_))))
                                          (_loop44404710_
                                           _lp-tl44434727_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd44424724_
                                                   _body44444717_)))))
                                      (let ((_body44454730_
                                             (reverse _body44444717_)))
                                        (___kont54005401_
                                         _body44454730_
                                         _hd44354698_
                                         _hd44324688_))))))
                        (_loop44404710_ _target44374704_ '()))))
                   (___match54325433_
                    (lambda (_e44064776_
                             _hd44054780_
                             _tl44044783_
                             _e44094786_
                             _hd44084790_
                             _tl44074793_
                             ___splice53985399_
                             _target44104796_
                             _tl44124799_)
                      (letrec ((_loop44134802_
                                (lambda (_hd44114806_ _body44174809_)
                                  (if (gx#stx-pair? _hd44114806_)
                                      (let ((_e44144812_
                                             (gx#syntax-e _hd44114806_)))
                                        (let ((_lp-tl44164819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44144812_)))
                                              (_lp-hd44154816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44144812_))))
                                          (_loop44134802_
                                           _lp-tl44164819_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd44154816_
                                                   _body44174809_)))))
                                      (let ((_body44184822_
                                             (reverse _body44174809_)))
                                        (___kont53965397_ _body44184822_))))))
                        (_loop44134802_ _target44104796_ '())))))
              (if (gx#stx-pair? ___stx53935394_)
                  (let ((_e44064776_ (gx#syntax-e ___stx53935394_)))
                    (let ((_tl44044783_
                           (let () (declare (not safe)) (##cdr _e44064776_)))
                          (_hd44054780_
                           (let () (declare (not safe)) (##car _e44064776_))))
                      (if (gx#stx-pair? _tl44044783_)
                          (let ((_e44094786_ (gx#syntax-e _tl44044783_)))
                            (let ((_tl44074793_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e44094786_)))
                                  (_hd44084790_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e44094786_))))
                              (if (gx#stx-null? _hd44084790_)
                                  (if (gx#stx-pair/null? _tl44074793_)
                                      (let ((___splice53985399_
                                             (gx#syntax-split-splice
                                              _tl44074793_
                                              '0)))
                                        (let ((_tl44124799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice53985399_
                                                  '1)))
                                              (_target44104796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice53985399_
                                                  '0))))
                                          (if (gx#stx-null? _tl44124799_)
                                              (___match54325433_
                                               _e44064776_
                                               _hd44054780_
                                               _tl44044783_
                                               _e44094786_
                                               _hd44084790_
                                               _tl44074793_
                                               ___splice53985399_
                                               _target44104796_
                                               _tl44124799_)
                                              (if (gx#stx-pair/null?
                                                   _hd44084790_)
                                                  (let ((___splice54065407_
                                                         (gx#syntax-split-splice
                                                          _hd44084790_
                                                          '0)))
                                                    (let ((_tl44574516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54065407_
                                                              '1)))
                                                          (_target44554513_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54065407_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl44574516_)
                                                          (___match54945495_
                                                           _e44064776_
                                                           _hd44054780_
                                                           _tl44044783_
                                                           _e44094786_
                                                           _hd44084790_
                                                           _tl44074793_
                                                           ___splice54065407_
                                                           _target44554513_
                                                           _tl44574516_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g44014486_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44014486_))))))
                                      (if (gx#stx-pair/null? _hd44084790_)
                                          (let ((___splice54065407_
                                                 (gx#syntax-split-splice
                                                  _hd44084790_
                                                  '0)))
                                            (let ((_tl44574516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54065407_
                                                      '1)))
                                                  (_target44554513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54065407_
                                                      '0))))
                                              (if (gx#stx-null? _tl44574516_)
                                                  (___match54945495_
                                                   _e44064776_
                                                   _hd44054780_
                                                   _tl44044783_
                                                   _e44094786_
                                                   _hd44084790_
                                                   _tl44074793_
                                                   ___splice54065407_
                                                   _target44554513_
                                                   _tl44574516_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44014486_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44014486_))))
                                  (if (gx#stx-pair? _hd44084790_)
                                      (let ((_e44304674_
                                             (gx#syntax-e _hd44084790_)))
                                        (let ((_tl44284681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44304674_)))
                                              (_hd44294678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44304674_))))
                                          (if (gx#stx-pair? _hd44294678_)
                                              (let ((_e44334684_
                                                     (gx#syntax-e
                                                      _hd44294678_)))
                                                (let ((_tl44314691_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44334684_)))
                                                      (_hd44324688_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44334684_))))
                                                  (if (gx#stx-pair?
                                                       _tl44314691_)
                                                      (let ((_e44364694_
                                                             (gx#syntax-e
                                                              _tl44314691_)))
                                                        (let ((_tl44344701_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e44364694_)))
                      (_hd44354698_
                       (let () (declare (not safe)) (##car _e44364694_))))
                  (if (gx#stx-null? _tl44344701_)
                      (if (gx#stx-null? _tl44284681_)
                          (if (gx#stx-pair/null? _tl44074793_)
                              (let ((___splice54025403_
                                     (gx#syntax-split-splice _tl44074793_ '0)))
                                (let ((_tl44394707_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice54025403_ '1)))
                                      (_target44374704_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice54025403_
                                          '0))))
                                  (if (gx#stx-null? _tl44394707_)
                                      (___match54745475_
                                       _e44064776_
                                       _hd44054780_
                                       _tl44044783_
                                       _e44094786_
                                       _hd44084790_
                                       _tl44074793_
                                       _e44304674_
                                       _hd44294678_
                                       _tl44284681_
                                       _e44334684_
                                       _hd44324688_
                                       _tl44314691_
                                       _e44364694_
                                       _hd44354698_
                                       _tl44344701_
                                       ___splice54025403_
                                       _target44374704_
                                       _tl44394707_)
                                      (if (gx#stx-pair/null? _hd44084790_)
                                          (let ((___splice54065407_
                                                 (gx#syntax-split-splice
                                                  _hd44084790_
                                                  '0)))
                                            (let ((_tl44574516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54065407_
                                                      '1)))
                                                  (_target44554513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54065407_
                                                      '0))))
                                              (if (gx#stx-null? _tl44574516_)
                                                  (___match54945495_
                                                   _e44064776_
                                                   _hd44054780_
                                                   _tl44044783_
                                                   _e44094786_
                                                   _hd44084790_
                                                   _tl44074793_
                                                   ___splice54065407_
                                                   _target44554513_
                                                   _tl44574516_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44014486_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44014486_))))))
                              (if (gx#stx-pair/null? _hd44084790_)
                                  (let ((___splice54065407_
                                         (gx#syntax-split-splice
                                          _hd44084790_
                                          '0)))
                                    (let ((_tl44574516_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice54065407_
                                              '1)))
                                          (_target44554513_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice54065407_
                                              '0))))
                                      (if (gx#stx-null? _tl44574516_)
                                          (___match54945495_
                                           _e44064776_
                                           _hd44054780_
                                           _tl44044783_
                                           _e44094786_
                                           _hd44084790_
                                           _tl44074793_
                                           ___splice54065407_
                                           _target44554513_
                                           _tl44574516_)
                                          (let ()
                                            (declare (not safe))
                                            (_g44014486_)))))
                                  (let () (declare (not safe)) (_g44014486_))))
                          (if (gx#stx-pair/null? _hd44084790_)
                              (let ((___splice54065407_
                                     (gx#syntax-split-splice _hd44084790_ '0)))
                                (let ((_tl44574516_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice54065407_ '1)))
                                      (_target44554513_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice54065407_
                                          '0))))
                                  (if (gx#stx-null? _tl44574516_)
                                      (___match54945495_
                                       _e44064776_
                                       _hd44054780_
                                       _tl44044783_
                                       _e44094786_
                                       _hd44084790_
                                       _tl44074793_
                                       ___splice54065407_
                                       _target44554513_
                                       _tl44574516_)
                                      (let ()
                                        (declare (not safe))
                                        (_g44014486_)))))
                              (let () (declare (not safe)) (_g44014486_))))
                      (if (gx#stx-pair/null? _hd44084790_)
                          (let ((___splice54065407_
                                 (gx#syntax-split-splice _hd44084790_ '0)))
                            (let ((_tl44574516_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice54065407_ '1)))
                                  (_target44554513_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice54065407_ '0))))
                              (if (gx#stx-null? _tl44574516_)
                                  (___match54945495_
                                   _e44064776_
                                   _hd44054780_
                                   _tl44044783_
                                   _e44094786_
                                   _hd44084790_
                                   _tl44074793_
                                   ___splice54065407_
                                   _target44554513_
                                   _tl44574516_)
                                  (let ()
                                    (declare (not safe))
                                    (_g44014486_)))))
                          (let () (declare (not safe)) (_g44014486_))))))
              (if (gx#stx-pair/null? _hd44084790_)
                  (let ((___splice54065407_
                         (gx#syntax-split-splice _hd44084790_ '0)))
                    (let ((_tl44574516_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice54065407_ '1)))
                          (_target44554513_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice54065407_ '0))))
                      (if (gx#stx-null? _tl44574516_)
                          (___match54945495_
                           _e44064776_
                           _hd44054780_
                           _tl44044783_
                           _e44094786_
                           _hd44084790_
                           _tl44074793_
                           ___splice54065407_
                           _target44554513_
                           _tl44574516_)
                          (let () (declare (not safe)) (_g44014486_)))))
                  (let () (declare (not safe)) (_g44014486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd44084790_)
                                                  (let ((___splice54065407_
                                                         (gx#syntax-split-splice
                                                          _hd44084790_
                                                          '0)))
                                                    (let ((_tl44574516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54065407_
                                                              '1)))
                                                          (_target44554513_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54065407_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl44574516_)
                                                          (___match54945495_
                                                           _e44064776_
                                                           _hd44054780_
                                                           _tl44044783_
                                                           _e44094786_
                                                           _hd44084790_
                                                           _tl44074793_
                                                           ___splice54065407_
                                                           _target44554513_
                                                           _tl44574516_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g44014486_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44014486_))))))
                                      (if (gx#stx-pair/null? _hd44084790_)
                                          (let ((___splice54065407_
                                                 (gx#syntax-split-splice
                                                  _hd44084790_
                                                  '0)))
                                            (let ((_tl44574516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54065407_
                                                      '1)))
                                                  (_target44554513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54065407_
                                                      '0))))
                                              (if (gx#stx-null? _tl44574516_)
                                                  (___match54945495_
                                                   _e44064776_
                                                   _hd44054780_
                                                   _tl44044783_
                                                   _e44094786_
                                                   _hd44084790_
                                                   _tl44074793_
                                                   ___splice54065407_
                                                   _target44554513_
                                                   _tl44574516_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g44014486_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g44014486_)))))))
                          (let () (declare (not safe)) (_g44014486_)))))
                  (let () (declare (not safe)) (_g44014486_))))))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx4859_)
        (let* ((___stx54975498_ _stx4859_)
               (_g48644941_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx54975498_))))
          (let ((___kont55005501_
                 (lambda (_L5237_)
                   (let ((__tmp5665 (gx#datum->syntax '#f 'let-values))
                         (__tmp5663
                          (let ((__tmp5664
                                 (foldr (lambda (_g52535256_ _g52545259_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g52535256_ _g52545259_)))
                                        '()
                                        _L5237_)))
                            (declare (not safe))
                            (cons '() __tmp5664))))
                     (declare (not safe))
                     (cons __tmp5665 __tmp5663))))
                (___kont55045505_
                 (lambda (_L5139_ _L5141_ _L5142_ _L5143_ _L5144_)
                   (let ((__tmp5674 (gx#datum->syntax '#f 'let-values))
                         (__tmp5666
                          (let ((__tmp5671
                                 (let ((__tmp5672
                                        (let ((__tmp5673
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L5142_ '()))))
                                          (declare (not safe))
                                          (cons _L5143_ __tmp5673))))
                                   (declare (not safe))
                                   (cons __tmp5672 '())))
                                (__tmp5667
                                 (let ((__tmp5668
                                        (let ((__tmp5669
                                               (let ((__tmp5670
                                                      (foldr (lambda (_g51715174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g51725177_)
                       (let ()
                         (declare (not safe))
                         (cons _g51715174_ _g51725177_)))
                     '()
                     _L5139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5141_ __tmp5670))))
                                          (declare (not safe))
                                          (cons _L5144_ __tmp5669))))
                                   (declare (not safe))
                                   (cons __tmp5668 '()))))
                            (declare (not safe))
                            (cons __tmp5671 __tmp5667))))
                     (declare (not safe))
                     (cons __tmp5674 __tmp5666))))
                (___kont55085509_
                 (lambda (_L5008_ _L5010_ _L5011_ _L5012_)
                   (let ((__tmp5681 (gx#datum->syntax '#f 'with-syntax))
                         (__tmp5675
                          (let ((__tmp5680
                                 (let ()
                                   (declare (not safe))
                                   (cons _L5011_ '())))
                                (__tmp5676
                                 (let ((__tmp5677
                                        (let ((__tmp5678
                                               (let ((__tmp5679
                                                      (foldr (lambda (_g50335036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g50345039_)
                       (let ()
                         (declare (not safe))
                         (cons _g50335036_ _g50345039_)))
                     '()
                     _L5008_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5010_ __tmp5679))))
                                          (declare (not safe))
                                          (cons _L5012_ __tmp5678))))
                                   (declare (not safe))
                                   (cons __tmp5677 '()))))
                            (declare (not safe))
                            (cons __tmp5680 __tmp5676))))
                     (declare (not safe))
                     (cons __tmp5681 __tmp5675)))))
            (let* ((___match56105611_
                    (lambda (_e49204948_
                             _hd49194952_
                             _tl49184955_
                             _e49234958_
                             _hd49224962_
                             _tl49214965_
                             _e49264968_
                             _hd49254972_
                             _tl49244975_
                             ___splice55105511_
                             _target49274978_
                             _tl49294981_)
                      (letrec ((_loop49304984_
                                (lambda (_hd49284988_ _body49344991_)
                                  (if (gx#stx-pair? _hd49284988_)
                                      (let ((_e49314994_
                                             (gx#syntax-e _hd49284988_)))
                                        (let ((_lp-tl49335001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49314994_)))
                                              (_lp-hd49324998_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49314994_))))
                                          (_loop49304984_
                                           _lp-tl49335001_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd49324998_
                                                   _body49344991_)))))
                                      (let ((_body49355004_
                                             (reverse _body49344991_)))
                                        (___kont55085509_
                                         _body49355004_
                                         _tl49244975_
                                         _hd49254972_
                                         _hd49194952_))))))
                        (_loop49304984_ _target49274978_ '()))))
                   (___match55845585_
                    (lambda (_e48895049_
                             _hd48885053_
                             _tl48875056_
                             _e48925059_
                             _hd48915063_
                             _tl48905066_
                             _e48955069_
                             _hd48945073_
                             _tl48935076_
                             _e48985079_
                             _hd48975083_
                             _tl48965086_
                             _e49015089_
                             _hd49005093_
                             _tl48995096_
                             _e49045099_
                             _hd49035103_
                             _tl49025106_
                             ___splice55065507_
                             _target49055109_
                             _tl49075112_)
                      (letrec ((_loop49085115_
                                (lambda (_hd49065119_ _body49125122_)
                                  (if (gx#stx-pair? _hd49065119_)
                                      (let ((_e49095125_
                                             (gx#syntax-e _hd49065119_)))
                                        (let ((_lp-tl49115132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49095125_)))
                                              (_lp-hd49105129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49095125_))))
                                          (_loop49085115_
                                           _lp-tl49115132_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd49105129_
                                                   _body49125122_)))))
                                      (let ((_body49135135_
                                             (reverse _body49125122_)))
                                        (___kont55045505_
                                         _body49135135_
                                         _tl48935076_
                                         _hd49035103_
                                         _tl48995096_
                                         _hd48885053_))))))
                        (_loop49085115_ _target49055109_ '()))))
                   (___match55345535_
                    (lambda (_e48695187_
                             _hd48685191_
                             _tl48675194_
                             _e48725197_
                             _hd48715201_
                             _tl48705204_
                             ___splice55025503_
                             _target48735207_
                             _tl48755210_)
                      (letrec ((_loop48765213_
                                (lambda (_hd48745217_ _body48805220_)
                                  (if (gx#stx-pair? _hd48745217_)
                                      (let ((_e48775223_
                                             (gx#syntax-e _hd48745217_)))
                                        (let ((_lp-tl48795230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48775223_)))
                                              (_lp-hd48785227_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48775223_))))
                                          (_loop48765213_
                                           _lp-tl48795230_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd48785227_
                                                   _body48805220_)))))
                                      (let ((_body48815233_
                                             (reverse _body48805220_)))
                                        (___kont55005501_ _body48815233_))))))
                        (_loop48765213_ _target48735207_ '())))))
              (if (gx#stx-pair? ___stx54975498_)
                  (let ((_e48695187_ (gx#syntax-e ___stx54975498_)))
                    (let ((_tl48675194_
                           (let () (declare (not safe)) (##cdr _e48695187_)))
                          (_hd48685191_
                           (let () (declare (not safe)) (##car _e48695187_))))
                      (if (gx#stx-pair? _tl48675194_)
                          (let ((_e48725197_ (gx#syntax-e _tl48675194_)))
                            (let ((_tl48705204_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e48725197_)))
                                  (_hd48715201_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e48725197_))))
                              (if (gx#stx-null? _hd48715201_)
                                  (if (gx#stx-pair/null? _tl48705204_)
                                      (let ((___splice55025503_
                                             (gx#syntax-split-splice
                                              _tl48705204_
                                              '0)))
                                        (let ((_tl48755210_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice55025503_
                                                  '1)))
                                              (_target48735207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice55025503_
                                                  '0))))
                                          (if (gx#stx-null? _tl48755210_)
                                              (___match55345535_
                                               _e48695187_
                                               _hd48685191_
                                               _tl48675194_
                                               _e48725197_
                                               _hd48715201_
                                               _tl48705204_
                                               ___splice55025503_
                                               _target48735207_
                                               _tl48755210_)
                                              (let ()
                                                (declare (not safe))
                                                (_g48644941_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g48644941_)))
                                  (if (gx#stx-pair? _hd48715201_)
                                      (let ((_e48955069_
                                             (gx#syntax-e _hd48715201_)))
                                        (let ((_tl48935076_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48955069_)))
                                              (_hd48945073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48955069_))))
                                          (if (gx#stx-pair? _hd48945073_)
                                              (let ((_e48985079_
                                                     (gx#syntax-e
                                                      _hd48945073_)))
                                                (let ((_tl48965086_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e48985079_)))
                                                      (_hd48975083_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e48985079_))))
                                                  (if (gx#stx-pair?
                                                       _hd48975083_)
                                                      (let ((_e49015089_
                                                             (gx#syntax-e
                                                              _hd48975083_)))
                                                        (let ((_tl48995096_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e49015089_)))
                      (_hd49005093_
                       (let () (declare (not safe)) (##car _e49015089_))))
                  (if (gx#identifier? _hd49005093_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander$<syntax-sugar>[1]#_g5682_|
                           _hd49005093_)
                          (if (gx#stx-pair? _tl48965086_)
                              (let ((_e49045099_ (gx#syntax-e _tl48965086_)))
                                (let ((_tl49025106_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e49045099_)))
                                      (_hd49035103_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e49045099_))))
                                  (if (gx#stx-null? _tl49025106_)
                                      (if (gx#stx-pair/null? _tl48705204_)
                                          (let ((___splice55065507_
                                                 (gx#syntax-split-splice
                                                  _tl48705204_
                                                  '0)))
                                            (let ((_tl49075112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55065507_
                                                      '1)))
                                                  (_target49055109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55065507_
                                                      '0))))
                                              (if (gx#stx-null? _tl49075112_)
                                                  (___match55845585_
                                                   _e48695187_
                                                   _hd48685191_
                                                   _tl48675194_
                                                   _e48725197_
                                                   _hd48715201_
                                                   _tl48705204_
                                                   _e48955069_
                                                   _hd48945073_
                                                   _tl48935076_
                                                   _e48985079_
                                                   _hd48975083_
                                                   _tl48965086_
                                                   _e49015089_
                                                   _hd49005093_
                                                   _tl48995096_
                                                   _e49045099_
                                                   _hd49035103_
                                                   _tl49025106_
                                                   ___splice55065507_
                                                   _target49055109_
                                                   _tl49075112_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48644941_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48644941_)))
                                      (if (gx#stx-pair/null? _tl48705204_)
                                          (let ((___splice55105511_
                                                 (gx#syntax-split-splice
                                                  _tl48705204_
                                                  '0)))
                                            (let ((_tl49294981_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55105511_
                                                      '1)))
                                                  (_target49274978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55105511_
                                                      '0))))
                                              (if (gx#stx-null? _tl49294981_)
                                                  (___match56105611_
                                                   _e48695187_
                                                   _hd48685191_
                                                   _tl48675194_
                                                   _e48725197_
                                                   _hd48715201_
                                                   _tl48705204_
                                                   _e48955069_
                                                   _hd48945073_
                                                   _tl48935076_
                                                   ___splice55105511_
                                                   _target49274978_
                                                   _tl49294981_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48644941_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48644941_))))))
                              (if (gx#stx-pair/null? _tl48705204_)
                                  (let ((___splice55105511_
                                         (gx#syntax-split-splice
                                          _tl48705204_
                                          '0)))
                                    (let ((_tl49294981_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice55105511_
                                              '1)))
                                          (_target49274978_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice55105511_
                                              '0))))
                                      (if (gx#stx-null? _tl49294981_)
                                          (___match56105611_
                                           _e48695187_
                                           _hd48685191_
                                           _tl48675194_
                                           _e48725197_
                                           _hd48715201_
                                           _tl48705204_
                                           _e48955069_
                                           _hd48945073_
                                           _tl48935076_
                                           ___splice55105511_
                                           _target49274978_
                                           _tl49294981_)
                                          (let ()
                                            (declare (not safe))
                                            (_g48644941_)))))
                                  (let () (declare (not safe)) (_g48644941_))))
                          (if (gx#stx-pair/null? _tl48705204_)
                              (let ((___splice55105511_
                                     (gx#syntax-split-splice _tl48705204_ '0)))
                                (let ((_tl49294981_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice55105511_ '1)))
                                      (_target49274978_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice55105511_
                                          '0))))
                                  (if (gx#stx-null? _tl49294981_)
                                      (___match56105611_
                                       _e48695187_
                                       _hd48685191_
                                       _tl48675194_
                                       _e48725197_
                                       _hd48715201_
                                       _tl48705204_
                                       _e48955069_
                                       _hd48945073_
                                       _tl48935076_
                                       ___splice55105511_
                                       _target49274978_
                                       _tl49294981_)
                                      (let ()
                                        (declare (not safe))
                                        (_g48644941_)))))
                              (let () (declare (not safe)) (_g48644941_))))
                      (if (gx#stx-pair/null? _tl48705204_)
                          (let ((___splice55105511_
                                 (gx#syntax-split-splice _tl48705204_ '0)))
                            (let ((_tl49294981_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice55105511_ '1)))
                                  (_target49274978_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice55105511_ '0))))
                              (if (gx#stx-null? _tl49294981_)
                                  (___match56105611_
                                   _e48695187_
                                   _hd48685191_
                                   _tl48675194_
                                   _e48725197_
                                   _hd48715201_
                                   _tl48705204_
                                   _e48955069_
                                   _hd48945073_
                                   _tl48935076_
                                   ___splice55105511_
                                   _target49274978_
                                   _tl49294981_)
                                  (let ()
                                    (declare (not safe))
                                    (_g48644941_)))))
                          (let () (declare (not safe)) (_g48644941_))))))
              (if (gx#stx-pair/null? _tl48705204_)
                  (let ((___splice55105511_
                         (gx#syntax-split-splice _tl48705204_ '0)))
                    (let ((_tl49294981_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice55105511_ '1)))
                          (_target49274978_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice55105511_ '0))))
                      (if (gx#stx-null? _tl49294981_)
                          (___match56105611_
                           _e48695187_
                           _hd48685191_
                           _tl48675194_
                           _e48725197_
                           _hd48715201_
                           _tl48705204_
                           _e48955069_
                           _hd48945073_
                           _tl48935076_
                           ___splice55105511_
                           _target49274978_
                           _tl49294981_)
                          (let () (declare (not safe)) (_g48644941_)))))
                  (let () (declare (not safe)) (_g48644941_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl48705204_)
                                                  (let ((___splice55105511_
                                                         (gx#syntax-split-splice
                                                          _tl48705204_
                                                          '0)))
                                                    (let ((_tl49294981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice55105511_
                                                              '1)))
                                                          (_target49274978_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice55105511_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl49294981_)
                                                          (___match56105611_
                                                           _e48695187_
                                                           _hd48685191_
                                                           _tl48675194_
                                                           _e48725197_
                                                           _hd48715201_
                                                           _tl48705204_
                                                           _e48955069_
                                                           _hd48945073_
                                                           _tl48935076_
                                                           ___splice55105511_
                                                           _target49274978_
                                                           _tl49294981_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g48644941_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48644941_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g48644941_))))))
                          (let () (declare (not safe)) (_g48644941_)))))
                  (let () (declare (not safe)) (_g48644941_))))))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx5269_)
        (let* ((_g52725290_
                (lambda (_g52735286_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g52735286_)))
               (_g52715345_
                (lambda (_g52735294_)
                  (if (gx#stx-pair? _g52735294_)
                      (let ((_e52785297_ (gx#syntax-e _g52735294_)))
                        (let ((_hd52775301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e52785297_)))
                              (_tl52765304_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e52785297_))))
                          (if (gx#stx-pair? _tl52765304_)
                              (let ((_e52815307_ (gx#syntax-e _tl52765304_)))
                                (let ((_hd52805311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e52815307_)))
                                      (_tl52795314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e52815307_))))
                                  (if (gx#stx-pair? _tl52795314_)
                                      (let ((_e52845317_
                                             (gx#syntax-e _tl52795314_)))
                                        (let ((_hd52835321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e52845317_)))
                                              (_tl52825324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e52845317_))))
                                          (if (gx#stx-null? _tl52825324_)
                                              ((lambda (_L5327_ _L5329_)
                                                 (let ((__tmp5691
                                                        (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source))
                                                       (__tmp5683
                                                        (let ((__tmp5688
                                                               (let ((__tmp5690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax))
                             (__tmp5689
                              (let ()
                                (declare (not safe))
                                (cons _L5327_ '()))))
                         (declare (not safe))
                         (cons __tmp5690 __tmp5689)))
                      (__tmp5684
                       (let ((__tmp5685
                              (let ((__tmp5687
                                     (gx#datum->syntax '#f 'stx-source))
                                    (__tmp5686
                                     (let ()
                                       (declare (not safe))
                                       (cons _L5329_ '()))))
                                (declare (not safe))
                                (cons __tmp5687 __tmp5686))))
                         (declare (not safe))
                         (cons __tmp5685 '()))))
                  (declare (not safe))
                  (cons __tmp5688 __tmp5684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp5691 __tmp5683)))
                                               _hd52835321_
                                               _hd52805311_)
                                              (_g52725290_ _g52735294_))))
                                      (_g52725290_ _g52735294_))))
                              (_g52725290_ _g52735294_))))
                      (_g52725290_ _g52735294_)))))
          (_g52715345_ _stx5269_))))))
