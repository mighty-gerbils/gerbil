(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander$<syntax-sugar>[1]#_g5680_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx4055_)
        (let* ((_g40584082_
                (lambda (_g40594078_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g40594078_)))
               (_g40574388_
                (lambda (_g40594086_)
                  (if (gx#stx-pair? _g40594086_)
                      (let ((_e40644089_ (gx#syntax-e _g40594086_)))
                        (let ((_hd40634093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e40644089_)))
                              (_tl40624096_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e40644089_))))
                          (if (gx#stx-pair? _tl40624096_)
                              (let ((_e40674099_ (gx#syntax-e _tl40624096_)))
                                (let ((_hd40664103_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e40674099_)))
                                      (_tl40654106_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e40674099_))))
                                  (if (gx#stx-pair/null? _tl40654106_)
                                      (let ((_g5610_ (gx#syntax-split-splice
                                                      _tl40654106_
                                                      '0)))
                                        (begin
                                          (let ((_g5611_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g5610_)
                                                               (##vector-length
                                                                _g5610_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g5611_ 2)))
                                                (error "Context expects 2 values"
                                                       _g5611_)))
                                          (let ((_target40684109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5610_ 0)))
                                                (_tl40704112_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5610_ 1))))
                                            (if (gx#stx-null? _tl40704112_)
                                                (letrec ((_loop40714115_
                                                          (lambda (_hd40694119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses40754122_)
                    (if (gx#stx-pair? _hd40694119_)
                        (let ((_e40724125_ (gx#syntax-e _hd40694119_)))
                          (let ((_lp-hd40734129_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e40724125_)))
                                (_lp-tl40744132_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e40724125_))))
                            (_loop40714115_
                             _lp-tl40744132_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd40734129_ _clauses40754122_)))))
                        (let ((_clauses40764135_ (reverse _clauses40754122_)))
                          ((lambda (_L4139_ _L4141_)
                             (if (gx#identifier-list? _L4141_)
                                 (let* ((_body4305_
                                         (gx#stx-map
                                          (lambda (_clause4162_)
                                            (let* ((___stx53475348_
                                                    _clause4162_)
                                                   (_g41664193_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx53475348_))))
                                              (let ((___kont53505351_
                                                     (lambda (_L4278_ _L4280_)
                                                       (let ((__tmp5612
                                                              (let ((__tmp5613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5615 (gx#datum->syntax '#f 'syntax))
                                   (__tmp5614
                                    (let ()
                                      (declare (not safe))
                                      (cons _L4278_ '()))))
                               (declare (not safe))
                               (cons __tmp5615 __tmp5614))))
                        (declare (not safe))
                        (cons __tmp5613 '()))))
                 (declare (not safe))
                 (cons _L4280_ __tmp5612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont53525353_
                                                     (lambda (_L4230_
                                                              _L4232_
                                                              _L4233_)
                                                       (let ((__tmp5616
                                                              (let ((__tmp5617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5618
                                    (let ((__tmp5620
                                           (gx#datum->syntax '#f 'syntax))
                                          (__tmp5619
                                           (let ()
                                             (declare (not safe))
                                             (cons _L4230_ '()))))
                                      (declare (not safe))
                                      (cons __tmp5620 __tmp5619))))
                               (declare (not safe))
                               (cons __tmp5618 '()))))
                        (declare (not safe))
                        (cons _L4232_ __tmp5617))))
                 (declare (not safe))
                 (cons _L4233_ __tmp5616)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx53475348_)
                                                    (let ((_e41724258_
                                                           (gx#syntax-e
                                                            ___stx53475348_)))
                                                      (let ((_tl41704265_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e41724258_)))
                    (_hd41714262_
                     (let () (declare (not safe)) (##car _e41724258_))))
                (if (gx#stx-pair? _tl41704265_)
                    (let ((_e41754268_ (gx#syntax-e _tl41704265_)))
                      (let ((_tl41734275_
                             (let () (declare (not safe)) (##cdr _e41754268_)))
                            (_hd41744272_
                             (let ()
                               (declare (not safe))
                               (##car _e41754268_))))
                        (if (gx#stx-null? _tl41734275_)
                            (___kont53505351_ _hd41744272_ _hd41714262_)
                            (if (gx#stx-pair? _tl41734275_)
                                (let ((_e41874220_ (gx#syntax-e _tl41734275_)))
                                  (let ((_tl41854227_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e41874220_)))
                                        (_hd41864224_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e41874220_))))
                                    (if (gx#stx-null? _tl41854227_)
                                        (___kont53525353_
                                         _hd41864224_
                                         _hd41744272_
                                         _hd41714262_)
                                        (let ()
                                          (declare (not safe))
                                          (_g41664193_)))))
                                (let () (declare (not safe)) (_g41664193_))))))
                    (let () (declare (not safe)) (_g41664193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g41664193_))))))
                                          (foldr (lambda (_g42964299_
                                                          _g42974302_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g42964299_
                                                           _g42974302_)))
                                                 '()
                                                 _L4139_)))
                                        (_g43084325_
                                         (lambda (_g43094321_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g43094321_)))
                                        (_g43074384_
                                         (lambda (_g43094329_)
                                           (if (gx#stx-pair/null? _g43094329_)
                                               (let ((_g5621_ (gx#syntax-split-splice
                                                               _g43094329_
                                                               '0)))
                                                 (begin
                                                   (let ((_g5622_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g5621_)
                                (##vector-length _g5621_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g5622_ 2)))
                 (error "Context expects 2 values" _g5622_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target43114332_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5621_
                                                             0)))
                                                         (_tl43134335_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5621_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl43134335_)
                                                         (letrec ((_loop43144338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd43124342_ _clause43184345_)
                             (if (gx#stx-pair? _hd43124342_)
                                 (let ((_e43154348_
                                        (gx#syntax-e _hd43124342_)))
                                   (let ((_lp-hd43164352_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e43154348_)))
                                         (_lp-tl43174355_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e43154348_))))
                                     (_loop43144338_
                                      _lp-tl43174355_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd43164352_
                                              _clause43184345_)))))
                                 (let ((_clause43194358_
                                        (reverse _clause43184345_)))
                                   ((lambda (_L4362_)
                                      (let ((__tmp5633
                                             (gx#datum->syntax '#f 'lambda%))
                                            (__tmp5623
                                             (let ((__tmp5631
                                                    (let ((__tmp5632
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$stx)))
                                                      (declare (not safe))
                                                      (cons __tmp5632 '())))
                                                   (__tmp5624
                                                    (let ((__tmp5625
                                                           (let ((__tmp5630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5626
                          (let ((__tmp5629 (gx#datum->syntax '#f '$stx))
                                (__tmp5627
                                 (let ((__tmp5628
                                        (foldr (lambda (_g43754378_
                                                        _g43764381_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g43754378_
                                                         _g43764381_)))
                                               '()
                                               _L4362_)))
                                   (declare (not safe))
                                   (cons _L4141_ __tmp5628))))
                            (declare (not safe))
                            (cons __tmp5629 __tmp5627))))
                     (declare (not safe))
                     (cons __tmp5630 __tmp5626))))
              (declare (not safe))
              (cons __tmp5625 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp5631 __tmp5624))))
                                        (declare (not safe))
                                        (cons __tmp5633 __tmp5623)))
                                    _clause43194358_))))))
                   (_loop43144338_ _target43114332_ '()))
                 (_g43084325_ _g43094329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g43084325_ _g43094329_)))))
                                   (_g43074384_ _body4305_))
                                 (_g40584082_ _g40594086_)))
                           _clauses40764135_
                           _hd40664103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop40714115_
                                                   _target40684109_
                                                   '()))
                                                (_g40584082_ _g40594086_)))))
                                      (_g40584082_ _g40594086_))))
                              (_g40584082_ _g40594086_))))
                      (_g40584082_ _g40594086_)))))
          (_g40574388_ _stx4055_))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx4394_)
        (let* ((___stx53915392_ _stx4394_)
               (_g43994484_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx53915392_))))
          (let ((___kont53945395_
                 (lambda (_L4824_)
                   (let ((__tmp5636 (gx#datum->syntax '#f 'let-values))
                         (__tmp5634
                          (let ((__tmp5635
                                 (foldr (lambda (_g48404843_ _g48414846_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g48404843_ _g48414846_)))
                                        '()
                                        _L4824_)))
                            (declare (not safe))
                            (cons '() __tmp5635))))
                     (declare (not safe))
                     (cons __tmp5636 __tmp5634))))
                (___kont53985399_
                 (lambda (_L4732_ _L4734_ _L4735_)
                   (let ((__tmp5646 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5637
                          (let ((__tmp5638
                                 (let ((__tmp5639
                                        (let ((__tmp5640
                                               (let ((__tmp5641
                                                      (let ((__tmp5642
                                                             (let ((__tmp5645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp5643
                            (let ((__tmp5644
                                   (foldr (lambda (_g47584761_ _g47594764_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g47584761_ _g47594764_)))
                                          '()
                                          _L4732_)))
                              (declare (not safe))
                              (cons '() __tmp5644))))
                       (declare (not safe))
                       (cons __tmp5645 __tmp5643))))
                (declare (not safe))
                (cons __tmp5642 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L4735_ __tmp5641))))
                                          (declare (not safe))
                                          (cons __tmp5640 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp5639))))
                            (declare (not safe))
                            (cons _L4734_ __tmp5638))))
                     (declare (not safe))
                     (cons __tmp5646 __tmp5637))))
                (___kont54025403_
                 (lambda (_L4595_ _L4597_ _L4598_)
                   (let ((__tmp5660 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp5647
                          (let ((__tmp5657
                                 (let ((__tmp5659 (gx#datum->syntax '#f 'list))
                                       (__tmp5658
                                        (foldr (lambda (_g46244627_
                                                        _g46254630_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g46244627_
                                                         _g46254630_)))
                                               '()
                                               _L4597_)))
                                   (declare (not safe))
                                   (cons __tmp5659 __tmp5658)))
                                (__tmp5648
                                 (let ((__tmp5649
                                        (let ((__tmp5650
                                               (let ((__tmp5656
                                                      (foldr (lambda (_g46224633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g46234636_)
                       (let ()
                         (declare (not safe))
                         (cons _g46224633_ _g46234636_)))
                     '()
                     _L4598_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp5651
                                                      (let ((__tmp5652
                                                             (let ((__tmp5655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp5653
                            (let ((__tmp5654
                                   (foldr (lambda (_g46204639_ _g46214642_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g46204639_ _g46214642_)))
                                          '()
                                          _L4595_)))
                              (declare (not safe))
                              (cons '() __tmp5654))))
                       (declare (not safe))
                       (cons __tmp5655 __tmp5653))))
                (declare (not safe))
                (cons __tmp5652 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp5656 __tmp5651))))
                                          (declare (not safe))
                                          (cons __tmp5650 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp5649))))
                            (declare (not safe))
                            (cons __tmp5657 __tmp5648))))
                     (declare (not safe))
                     (cons __tmp5660 __tmp5647)))))
            (let* ((___match54925493_
                    (lambda (_e44494491_
                             _hd44484495_
                             _tl44474498_
                             _e44524501_
                             _hd44514505_
                             _tl44504508_
                             ___splice54045405_
                             _target44534511_
                             _tl44554514_)
                      (letrec ((_loop44564517_
                                (lambda (_hd44544521_
                                         _e44604524_
                                         _pat44614526_)
                                  (if (gx#stx-pair? _hd44544521_)
                                      (let ((_e44574529_
                                             (gx#syntax-e _hd44544521_)))
                                        (let ((_lp-tl44594536_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44574529_)))
                                              (_lp-hd44584533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44574529_))))
                                          (if (gx#stx-pair? _lp-hd44584533_)
                                              (let ((_e44664539_
                                                     (gx#syntax-e
                                                      _lp-hd44584533_)))
                                                (let ((_tl44644546_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44664539_)))
                                                      (_hd44654543_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44664539_))))
                                                  (if (gx#stx-pair?
                                                       _tl44644546_)
                                                      (let ((_e44694549_
                                                             (gx#syntax-e
                                                              _tl44644546_)))
                                                        (let ((_tl44674556_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e44694549_)))
                      (_hd44684553_
                       (let () (declare (not safe)) (##car _e44694549_))))
                  (if (gx#stx-null? _tl44674556_)
                      (_loop44564517_
                       _lp-tl44594536_
                       (let ()
                         (declare (not safe))
                         (cons _hd44684553_ _e44604524_))
                       (let ()
                         (declare (not safe))
                         (cons _hd44654543_ _pat44614526_)))
                      (let () (declare (not safe)) (_g43994484_)))))
              (let () (declare (not safe)) (_g43994484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g43994484_)))))
                                      (let ((_pat44634562_
                                             (reverse _pat44614526_))
                                            (_e44624559_
                                             (reverse _e44604524_)))
                                        (if (gx#stx-pair/null? _tl44504508_)
                                            (let ((___splice54065407_
                                                   (gx#syntax-split-splice
                                                    _tl44504508_
                                                    '0)))
                                              (let ((_tl44724568_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice54065407_
                                                        '1)))
                                                    (_target44704565_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice54065407_
                                                        '0))))
                                                (if (gx#stx-null? _tl44724568_)
                                                    (letrec ((_loop44734571_
                                                              (lambda (_hd44714575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body44774578_)
                        (if (gx#stx-pair? _hd44714575_)
                            (let ((_e44744581_ (gx#syntax-e _hd44714575_)))
                              (let ((_lp-tl44764588_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e44744581_)))
                                    (_lp-hd44754585_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e44744581_))))
                                (_loop44734571_
                                 _lp-tl44764588_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd44754585_ _body44774578_)))))
                            (let ((_body44784591_ (reverse _body44774578_)))
                              (___kont54025403_
                               _body44784591_
                               _e44624559_
                               _pat44634562_))))))
              (_loop44734571_ _target44704565_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g43994484_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g43994484_))))))))
                        (_loop44564517_ _target44534511_ '() '()))))
                   (___match54725473_
                    (lambda (_e44224652_
                             _hd44214656_
                             _tl44204659_
                             _e44254662_
                             _hd44244666_
                             _tl44234669_
                             _e44284672_
                             _hd44274676_
                             _tl44264679_
                             _e44314682_
                             _hd44304686_
                             _tl44294689_
                             _e44344692_
                             _hd44334696_
                             _tl44324699_
                             ___splice54005401_
                             _target44354702_
                             _tl44374705_)
                      (letrec ((_loop44384708_
                                (lambda (_hd44364712_ _body44424715_)
                                  (if (gx#stx-pair? _hd44364712_)
                                      (let ((_e44394718_
                                             (gx#syntax-e _hd44364712_)))
                                        (let ((_lp-tl44414725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44394718_)))
                                              (_lp-hd44404722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44394718_))))
                                          (_loop44384708_
                                           _lp-tl44414725_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd44404722_
                                                   _body44424715_)))))
                                      (let ((_body44434728_
                                             (reverse _body44424715_)))
                                        (___kont53985399_
                                         _body44434728_
                                         _hd44334696_
                                         _hd44304686_))))))
                        (_loop44384708_ _target44354702_ '()))))
                   (___match54305431_
                    (lambda (_e44044774_
                             _hd44034778_
                             _tl44024781_
                             _e44074784_
                             _hd44064788_
                             _tl44054791_
                             ___splice53965397_
                             _target44084794_
                             _tl44104797_)
                      (letrec ((_loop44114800_
                                (lambda (_hd44094804_ _body44154807_)
                                  (if (gx#stx-pair? _hd44094804_)
                                      (let ((_e44124810_
                                             (gx#syntax-e _hd44094804_)))
                                        (let ((_lp-tl44144817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44124810_)))
                                              (_lp-hd44134814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44124810_))))
                                          (_loop44114800_
                                           _lp-tl44144817_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd44134814_
                                                   _body44154807_)))))
                                      (let ((_body44164820_
                                             (reverse _body44154807_)))
                                        (___kont53945395_ _body44164820_))))))
                        (_loop44114800_ _target44084794_ '())))))
              (if (gx#stx-pair? ___stx53915392_)
                  (let ((_e44044774_ (gx#syntax-e ___stx53915392_)))
                    (let ((_tl44024781_
                           (let () (declare (not safe)) (##cdr _e44044774_)))
                          (_hd44034778_
                           (let () (declare (not safe)) (##car _e44044774_))))
                      (if (gx#stx-pair? _tl44024781_)
                          (let ((_e44074784_ (gx#syntax-e _tl44024781_)))
                            (let ((_tl44054791_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e44074784_)))
                                  (_hd44064788_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e44074784_))))
                              (if (gx#stx-null? _hd44064788_)
                                  (if (gx#stx-pair/null? _tl44054791_)
                                      (let ((___splice53965397_
                                             (gx#syntax-split-splice
                                              _tl44054791_
                                              '0)))
                                        (let ((_tl44104797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice53965397_
                                                  '1)))
                                              (_target44084794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice53965397_
                                                  '0))))
                                          (if (gx#stx-null? _tl44104797_)
                                              (___match54305431_
                                               _e44044774_
                                               _hd44034778_
                                               _tl44024781_
                                               _e44074784_
                                               _hd44064788_
                                               _tl44054791_
                                               ___splice53965397_
                                               _target44084794_
                                               _tl44104797_)
                                              (if (gx#stx-pair/null?
                                                   _hd44064788_)
                                                  (let ((___splice54045405_
                                                         (gx#syntax-split-splice
                                                          _hd44064788_
                                                          '0)))
                                                    (let ((_tl44554514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54045405_
                                                              '1)))
                                                          (_target44534511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54045405_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl44554514_)
                                                          (___match54925493_
                                                           _e44044774_
                                                           _hd44034778_
                                                           _tl44024781_
                                                           _e44074784_
                                                           _hd44064788_
                                                           _tl44054791_
                                                           ___splice54045405_
                                                           _target44534511_
                                                           _tl44554514_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g43994484_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g43994484_))))))
                                      (if (gx#stx-pair/null? _hd44064788_)
                                          (let ((___splice54045405_
                                                 (gx#syntax-split-splice
                                                  _hd44064788_
                                                  '0)))
                                            (let ((_tl44554514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54045405_
                                                      '1)))
                                                  (_target44534511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54045405_
                                                      '0))))
                                              (if (gx#stx-null? _tl44554514_)
                                                  (___match54925493_
                                                   _e44044774_
                                                   _hd44034778_
                                                   _tl44024781_
                                                   _e44074784_
                                                   _hd44064788_
                                                   _tl44054791_
                                                   ___splice54045405_
                                                   _target44534511_
                                                   _tl44554514_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g43994484_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g43994484_))))
                                  (if (gx#stx-pair? _hd44064788_)
                                      (let ((_e44284672_
                                             (gx#syntax-e _hd44064788_)))
                                        (let ((_tl44264679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44284672_)))
                                              (_hd44274676_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44284672_))))
                                          (if (gx#stx-pair? _hd44274676_)
                                              (let ((_e44314682_
                                                     (gx#syntax-e
                                                      _hd44274676_)))
                                                (let ((_tl44294689_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44314682_)))
                                                      (_hd44304686_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44314682_))))
                                                  (if (gx#stx-pair?
                                                       _tl44294689_)
                                                      (let ((_e44344692_
                                                             (gx#syntax-e
                                                              _tl44294689_)))
                                                        (let ((_tl44324699_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e44344692_)))
                      (_hd44334696_
                       (let () (declare (not safe)) (##car _e44344692_))))
                  (if (gx#stx-null? _tl44324699_)
                      (if (gx#stx-null? _tl44264679_)
                          (if (gx#stx-pair/null? _tl44054791_)
                              (let ((___splice54005401_
                                     (gx#syntax-split-splice _tl44054791_ '0)))
                                (let ((_tl44374705_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice54005401_ '1)))
                                      (_target44354702_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice54005401_
                                          '0))))
                                  (if (gx#stx-null? _tl44374705_)
                                      (___match54725473_
                                       _e44044774_
                                       _hd44034778_
                                       _tl44024781_
                                       _e44074784_
                                       _hd44064788_
                                       _tl44054791_
                                       _e44284672_
                                       _hd44274676_
                                       _tl44264679_
                                       _e44314682_
                                       _hd44304686_
                                       _tl44294689_
                                       _e44344692_
                                       _hd44334696_
                                       _tl44324699_
                                       ___splice54005401_
                                       _target44354702_
                                       _tl44374705_)
                                      (if (gx#stx-pair/null? _hd44064788_)
                                          (let ((___splice54045405_
                                                 (gx#syntax-split-splice
                                                  _hd44064788_
                                                  '0)))
                                            (let ((_tl44554514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54045405_
                                                      '1)))
                                                  (_target44534511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54045405_
                                                      '0))))
                                              (if (gx#stx-null? _tl44554514_)
                                                  (___match54925493_
                                                   _e44044774_
                                                   _hd44034778_
                                                   _tl44024781_
                                                   _e44074784_
                                                   _hd44064788_
                                                   _tl44054791_
                                                   ___splice54045405_
                                                   _target44534511_
                                                   _tl44554514_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g43994484_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g43994484_))))))
                              (if (gx#stx-pair/null? _hd44064788_)
                                  (let ((___splice54045405_
                                         (gx#syntax-split-splice
                                          _hd44064788_
                                          '0)))
                                    (let ((_tl44554514_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice54045405_
                                              '1)))
                                          (_target44534511_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice54045405_
                                              '0))))
                                      (if (gx#stx-null? _tl44554514_)
                                          (___match54925493_
                                           _e44044774_
                                           _hd44034778_
                                           _tl44024781_
                                           _e44074784_
                                           _hd44064788_
                                           _tl44054791_
                                           ___splice54045405_
                                           _target44534511_
                                           _tl44554514_)
                                          (let ()
                                            (declare (not safe))
                                            (_g43994484_)))))
                                  (let () (declare (not safe)) (_g43994484_))))
                          (if (gx#stx-pair/null? _hd44064788_)
                              (let ((___splice54045405_
                                     (gx#syntax-split-splice _hd44064788_ '0)))
                                (let ((_tl44554514_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice54045405_ '1)))
                                      (_target44534511_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice54045405_
                                          '0))))
                                  (if (gx#stx-null? _tl44554514_)
                                      (___match54925493_
                                       _e44044774_
                                       _hd44034778_
                                       _tl44024781_
                                       _e44074784_
                                       _hd44064788_
                                       _tl44054791_
                                       ___splice54045405_
                                       _target44534511_
                                       _tl44554514_)
                                      (let ()
                                        (declare (not safe))
                                        (_g43994484_)))))
                              (let () (declare (not safe)) (_g43994484_))))
                      (if (gx#stx-pair/null? _hd44064788_)
                          (let ((___splice54045405_
                                 (gx#syntax-split-splice _hd44064788_ '0)))
                            (let ((_tl44554514_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice54045405_ '1)))
                                  (_target44534511_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice54045405_ '0))))
                              (if (gx#stx-null? _tl44554514_)
                                  (___match54925493_
                                   _e44044774_
                                   _hd44034778_
                                   _tl44024781_
                                   _e44074784_
                                   _hd44064788_
                                   _tl44054791_
                                   ___splice54045405_
                                   _target44534511_
                                   _tl44554514_)
                                  (let ()
                                    (declare (not safe))
                                    (_g43994484_)))))
                          (let () (declare (not safe)) (_g43994484_))))))
              (if (gx#stx-pair/null? _hd44064788_)
                  (let ((___splice54045405_
                         (gx#syntax-split-splice _hd44064788_ '0)))
                    (let ((_tl44554514_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice54045405_ '1)))
                          (_target44534511_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice54045405_ '0))))
                      (if (gx#stx-null? _tl44554514_)
                          (___match54925493_
                           _e44044774_
                           _hd44034778_
                           _tl44024781_
                           _e44074784_
                           _hd44064788_
                           _tl44054791_
                           ___splice54045405_
                           _target44534511_
                           _tl44554514_)
                          (let () (declare (not safe)) (_g43994484_)))))
                  (let () (declare (not safe)) (_g43994484_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd44064788_)
                                                  (let ((___splice54045405_
                                                         (gx#syntax-split-splice
                                                          _hd44064788_
                                                          '0)))
                                                    (let ((_tl44554514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54045405_
                                                              '1)))
                                                          (_target44534511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice54045405_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl44554514_)
                                                          (___match54925493_
                                                           _e44044774_
                                                           _hd44034778_
                                                           _tl44024781_
                                                           _e44074784_
                                                           _hd44064788_
                                                           _tl44054791_
                                                           ___splice54045405_
                                                           _target44534511_
                                                           _tl44554514_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g43994484_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g43994484_))))))
                                      (if (gx#stx-pair/null? _hd44064788_)
                                          (let ((___splice54045405_
                                                 (gx#syntax-split-splice
                                                  _hd44064788_
                                                  '0)))
                                            (let ((_tl44554514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54045405_
                                                      '1)))
                                                  (_target44534511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice54045405_
                                                      '0))))
                                              (if (gx#stx-null? _tl44554514_)
                                                  (___match54925493_
                                                   _e44044774_
                                                   _hd44034778_
                                                   _tl44024781_
                                                   _e44074784_
                                                   _hd44064788_
                                                   _tl44054791_
                                                   ___splice54045405_
                                                   _target44534511_
                                                   _tl44554514_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g43994484_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g43994484_)))))))
                          (let () (declare (not safe)) (_g43994484_)))))
                  (let () (declare (not safe)) (_g43994484_))))))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx4857_)
        (let* ((___stx54955496_ _stx4857_)
               (_g48624939_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx54955496_))))
          (let ((___kont54985499_
                 (lambda (_L5235_)
                   (let ((__tmp5663 (gx#datum->syntax '#f 'let-values))
                         (__tmp5661
                          (let ((__tmp5662
                                 (foldr (lambda (_g52515254_ _g52525257_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g52515254_ _g52525257_)))
                                        '()
                                        _L5235_)))
                            (declare (not safe))
                            (cons '() __tmp5662))))
                     (declare (not safe))
                     (cons __tmp5663 __tmp5661))))
                (___kont55025503_
                 (lambda (_L5137_ _L5139_ _L5140_ _L5141_ _L5142_)
                   (let ((__tmp5672 (gx#datum->syntax '#f 'let-values))
                         (__tmp5664
                          (let ((__tmp5669
                                 (let ((__tmp5670
                                        (let ((__tmp5671
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L5140_ '()))))
                                          (declare (not safe))
                                          (cons _L5141_ __tmp5671))))
                                   (declare (not safe))
                                   (cons __tmp5670 '())))
                                (__tmp5665
                                 (let ((__tmp5666
                                        (let ((__tmp5667
                                               (let ((__tmp5668
                                                      (foldr (lambda (_g51695172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g51705175_)
                       (let ()
                         (declare (not safe))
                         (cons _g51695172_ _g51705175_)))
                     '()
                     _L5137_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5139_ __tmp5668))))
                                          (declare (not safe))
                                          (cons _L5142_ __tmp5667))))
                                   (declare (not safe))
                                   (cons __tmp5666 '()))))
                            (declare (not safe))
                            (cons __tmp5669 __tmp5665))))
                     (declare (not safe))
                     (cons __tmp5672 __tmp5664))))
                (___kont55065507_
                 (lambda (_L5006_ _L5008_ _L5009_ _L5010_)
                   (let ((__tmp5679 (gx#datum->syntax '#f 'with-syntax))
                         (__tmp5673
                          (let ((__tmp5678
                                 (let ()
                                   (declare (not safe))
                                   (cons _L5009_ '())))
                                (__tmp5674
                                 (let ((__tmp5675
                                        (let ((__tmp5676
                                               (let ((__tmp5677
                                                      (foldr (lambda (_g50315034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g50325037_)
                       (let ()
                         (declare (not safe))
                         (cons _g50315034_ _g50325037_)))
                     '()
                     _L5006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5008_ __tmp5677))))
                                          (declare (not safe))
                                          (cons _L5010_ __tmp5676))))
                                   (declare (not safe))
                                   (cons __tmp5675 '()))))
                            (declare (not safe))
                            (cons __tmp5678 __tmp5674))))
                     (declare (not safe))
                     (cons __tmp5679 __tmp5673)))))
            (let* ((___match56085609_
                    (lambda (_e49184946_
                             _hd49174950_
                             _tl49164953_
                             _e49214956_
                             _hd49204960_
                             _tl49194963_
                             _e49244966_
                             _hd49234970_
                             _tl49224973_
                             ___splice55085509_
                             _target49254976_
                             _tl49274979_)
                      (letrec ((_loop49284982_
                                (lambda (_hd49264986_ _body49324989_)
                                  (if (gx#stx-pair? _hd49264986_)
                                      (let ((_e49294992_
                                             (gx#syntax-e _hd49264986_)))
                                        (let ((_lp-tl49314999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49294992_)))
                                              (_lp-hd49304996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49294992_))))
                                          (_loop49284982_
                                           _lp-tl49314999_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd49304996_
                                                   _body49324989_)))))
                                      (let ((_body49335002_
                                             (reverse _body49324989_)))
                                        (___kont55065507_
                                         _body49335002_
                                         _tl49224973_
                                         _hd49234970_
                                         _hd49174950_))))))
                        (_loop49284982_ _target49254976_ '()))))
                   (___match55825583_
                    (lambda (_e48875047_
                             _hd48865051_
                             _tl48855054_
                             _e48905057_
                             _hd48895061_
                             _tl48885064_
                             _e48935067_
                             _hd48925071_
                             _tl48915074_
                             _e48965077_
                             _hd48955081_
                             _tl48945084_
                             _e48995087_
                             _hd48985091_
                             _tl48975094_
                             _e49025097_
                             _hd49015101_
                             _tl49005104_
                             ___splice55045505_
                             _target49035107_
                             _tl49055110_)
                      (letrec ((_loop49065113_
                                (lambda (_hd49045117_ _body49105120_)
                                  (if (gx#stx-pair? _hd49045117_)
                                      (let ((_e49075123_
                                             (gx#syntax-e _hd49045117_)))
                                        (let ((_lp-tl49095130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49075123_)))
                                              (_lp-hd49085127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49075123_))))
                                          (_loop49065113_
                                           _lp-tl49095130_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd49085127_
                                                   _body49105120_)))))
                                      (let ((_body49115133_
                                             (reverse _body49105120_)))
                                        (___kont55025503_
                                         _body49115133_
                                         _tl48915074_
                                         _hd49015101_
                                         _tl48975094_
                                         _hd48865051_))))))
                        (_loop49065113_ _target49035107_ '()))))
                   (___match55325533_
                    (lambda (_e48675185_
                             _hd48665189_
                             _tl48655192_
                             _e48705195_
                             _hd48695199_
                             _tl48685202_
                             ___splice55005501_
                             _target48715205_
                             _tl48735208_)
                      (letrec ((_loop48745211_
                                (lambda (_hd48725215_ _body48785218_)
                                  (if (gx#stx-pair? _hd48725215_)
                                      (let ((_e48755221_
                                             (gx#syntax-e _hd48725215_)))
                                        (let ((_lp-tl48775228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48755221_)))
                                              (_lp-hd48765225_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48755221_))))
                                          (_loop48745211_
                                           _lp-tl48775228_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd48765225_
                                                   _body48785218_)))))
                                      (let ((_body48795231_
                                             (reverse _body48785218_)))
                                        (___kont54985499_ _body48795231_))))))
                        (_loop48745211_ _target48715205_ '())))))
              (if (gx#stx-pair? ___stx54955496_)
                  (let ((_e48675185_ (gx#syntax-e ___stx54955496_)))
                    (let ((_tl48655192_
                           (let () (declare (not safe)) (##cdr _e48675185_)))
                          (_hd48665189_
                           (let () (declare (not safe)) (##car _e48675185_))))
                      (if (gx#stx-pair? _tl48655192_)
                          (let ((_e48705195_ (gx#syntax-e _tl48655192_)))
                            (let ((_tl48685202_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e48705195_)))
                                  (_hd48695199_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e48705195_))))
                              (if (gx#stx-null? _hd48695199_)
                                  (if (gx#stx-pair/null? _tl48685202_)
                                      (let ((___splice55005501_
                                             (gx#syntax-split-splice
                                              _tl48685202_
                                              '0)))
                                        (let ((_tl48735208_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice55005501_
                                                  '1)))
                                              (_target48715205_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice55005501_
                                                  '0))))
                                          (if (gx#stx-null? _tl48735208_)
                                              (___match55325533_
                                               _e48675185_
                                               _hd48665189_
                                               _tl48655192_
                                               _e48705195_
                                               _hd48695199_
                                               _tl48685202_
                                               ___splice55005501_
                                               _target48715205_
                                               _tl48735208_)
                                              (let ()
                                                (declare (not safe))
                                                (_g48624939_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g48624939_)))
                                  (if (gx#stx-pair? _hd48695199_)
                                      (let ((_e48935067_
                                             (gx#syntax-e _hd48695199_)))
                                        (let ((_tl48915074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48935067_)))
                                              (_hd48925071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48935067_))))
                                          (if (gx#stx-pair? _hd48925071_)
                                              (let ((_e48965077_
                                                     (gx#syntax-e
                                                      _hd48925071_)))
                                                (let ((_tl48945084_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e48965077_)))
                                                      (_hd48955081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e48965077_))))
                                                  (if (gx#stx-pair?
                                                       _hd48955081_)
                                                      (let ((_e48995087_
                                                             (gx#syntax-e
                                                              _hd48955081_)))
                                                        (let ((_tl48975094_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e48995087_)))
                      (_hd48985091_
                       (let () (declare (not safe)) (##car _e48995087_))))
                  (if (gx#identifier? _hd48985091_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander$<syntax-sugar>[1]#_g5680_|
                           _hd48985091_)
                          (if (gx#stx-pair? _tl48945084_)
                              (let ((_e49025097_ (gx#syntax-e _tl48945084_)))
                                (let ((_tl49005104_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e49025097_)))
                                      (_hd49015101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e49025097_))))
                                  (if (gx#stx-null? _tl49005104_)
                                      (if (gx#stx-pair/null? _tl48685202_)
                                          (let ((___splice55045505_
                                                 (gx#syntax-split-splice
                                                  _tl48685202_
                                                  '0)))
                                            (let ((_tl49055110_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55045505_
                                                      '1)))
                                                  (_target49035107_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55045505_
                                                      '0))))
                                              (if (gx#stx-null? _tl49055110_)
                                                  (___match55825583_
                                                   _e48675185_
                                                   _hd48665189_
                                                   _tl48655192_
                                                   _e48705195_
                                                   _hd48695199_
                                                   _tl48685202_
                                                   _e48935067_
                                                   _hd48925071_
                                                   _tl48915074_
                                                   _e48965077_
                                                   _hd48955081_
                                                   _tl48945084_
                                                   _e48995087_
                                                   _hd48985091_
                                                   _tl48975094_
                                                   _e49025097_
                                                   _hd49015101_
                                                   _tl49005104_
                                                   ___splice55045505_
                                                   _target49035107_
                                                   _tl49055110_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48624939_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48624939_)))
                                      (if (gx#stx-pair/null? _tl48685202_)
                                          (let ((___splice55085509_
                                                 (gx#syntax-split-splice
                                                  _tl48685202_
                                                  '0)))
                                            (let ((_tl49274979_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55085509_
                                                      '1)))
                                                  (_target49254976_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice55085509_
                                                      '0))))
                                              (if (gx#stx-null? _tl49274979_)
                                                  (___match56085609_
                                                   _e48675185_
                                                   _hd48665189_
                                                   _tl48655192_
                                                   _e48705195_
                                                   _hd48695199_
                                                   _tl48685202_
                                                   _e48935067_
                                                   _hd48925071_
                                                   _tl48915074_
                                                   ___splice55085509_
                                                   _target49254976_
                                                   _tl49274979_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48624939_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48624939_))))))
                              (if (gx#stx-pair/null? _tl48685202_)
                                  (let ((___splice55085509_
                                         (gx#syntax-split-splice
                                          _tl48685202_
                                          '0)))
                                    (let ((_tl49274979_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice55085509_
                                              '1)))
                                          (_target49254976_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice55085509_
                                              '0))))
                                      (if (gx#stx-null? _tl49274979_)
                                          (___match56085609_
                                           _e48675185_
                                           _hd48665189_
                                           _tl48655192_
                                           _e48705195_
                                           _hd48695199_
                                           _tl48685202_
                                           _e48935067_
                                           _hd48925071_
                                           _tl48915074_
                                           ___splice55085509_
                                           _target49254976_
                                           _tl49274979_)
                                          (let ()
                                            (declare (not safe))
                                            (_g48624939_)))))
                                  (let () (declare (not safe)) (_g48624939_))))
                          (if (gx#stx-pair/null? _tl48685202_)
                              (let ((___splice55085509_
                                     (gx#syntax-split-splice _tl48685202_ '0)))
                                (let ((_tl49274979_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice55085509_ '1)))
                                      (_target49254976_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice55085509_
                                          '0))))
                                  (if (gx#stx-null? _tl49274979_)
                                      (___match56085609_
                                       _e48675185_
                                       _hd48665189_
                                       _tl48655192_
                                       _e48705195_
                                       _hd48695199_
                                       _tl48685202_
                                       _e48935067_
                                       _hd48925071_
                                       _tl48915074_
                                       ___splice55085509_
                                       _target49254976_
                                       _tl49274979_)
                                      (let ()
                                        (declare (not safe))
                                        (_g48624939_)))))
                              (let () (declare (not safe)) (_g48624939_))))
                      (if (gx#stx-pair/null? _tl48685202_)
                          (let ((___splice55085509_
                                 (gx#syntax-split-splice _tl48685202_ '0)))
                            (let ((_tl49274979_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice55085509_ '1)))
                                  (_target49254976_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice55085509_ '0))))
                              (if (gx#stx-null? _tl49274979_)
                                  (___match56085609_
                                   _e48675185_
                                   _hd48665189_
                                   _tl48655192_
                                   _e48705195_
                                   _hd48695199_
                                   _tl48685202_
                                   _e48935067_
                                   _hd48925071_
                                   _tl48915074_
                                   ___splice55085509_
                                   _target49254976_
                                   _tl49274979_)
                                  (let ()
                                    (declare (not safe))
                                    (_g48624939_)))))
                          (let () (declare (not safe)) (_g48624939_))))))
              (if (gx#stx-pair/null? _tl48685202_)
                  (let ((___splice55085509_
                         (gx#syntax-split-splice _tl48685202_ '0)))
                    (let ((_tl49274979_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice55085509_ '1)))
                          (_target49254976_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice55085509_ '0))))
                      (if (gx#stx-null? _tl49274979_)
                          (___match56085609_
                           _e48675185_
                           _hd48665189_
                           _tl48655192_
                           _e48705195_
                           _hd48695199_
                           _tl48685202_
                           _e48935067_
                           _hd48925071_
                           _tl48915074_
                           ___splice55085509_
                           _target49254976_
                           _tl49274979_)
                          (let () (declare (not safe)) (_g48624939_)))))
                  (let () (declare (not safe)) (_g48624939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl48685202_)
                                                  (let ((___splice55085509_
                                                         (gx#syntax-split-splice
                                                          _tl48685202_
                                                          '0)))
                                                    (let ((_tl49274979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice55085509_
                                                              '1)))
                                                          (_target49254976_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice55085509_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl49274979_)
                                                          (___match56085609_
                                                           _e48675185_
                                                           _hd48665189_
                                                           _tl48655192_
                                                           _e48705195_
                                                           _hd48695199_
                                                           _tl48685202_
                                                           _e48935067_
                                                           _hd48925071_
                                                           _tl48915074_
                                                           ___splice55085509_
                                                           _target49254976_
                                                           _tl49274979_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g48624939_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g48624939_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g48624939_))))))
                          (let () (declare (not safe)) (_g48624939_)))))
                  (let () (declare (not safe)) (_g48624939_))))))))
    (define |gerbil/core/expander$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx5267_)
        (let* ((_g52705288_
                (lambda (_g52715284_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g52715284_)))
               (_g52695343_
                (lambda (_g52715292_)
                  (if (gx#stx-pair? _g52715292_)
                      (let ((_e52765295_ (gx#syntax-e _g52715292_)))
                        (let ((_hd52755299_
                               (let ()
                                 (declare (not safe))
                                 (##car _e52765295_)))
                              (_tl52745302_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e52765295_))))
                          (if (gx#stx-pair? _tl52745302_)
                              (let ((_e52795305_ (gx#syntax-e _tl52745302_)))
                                (let ((_hd52785309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e52795305_)))
                                      (_tl52775312_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e52795305_))))
                                  (if (gx#stx-pair? _tl52775312_)
                                      (let ((_e52825315_
                                             (gx#syntax-e _tl52775312_)))
                                        (let ((_hd52815319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e52825315_)))
                                              (_tl52805322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e52825315_))))
                                          (if (gx#stx-null? _tl52805322_)
                                              ((lambda (_L5325_ _L5327_)
                                                 (let ((__tmp5689
                                                        (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source))
                                                       (__tmp5681
                                                        (let ((__tmp5686
                                                               (let ((__tmp5688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax))
                             (__tmp5687
                              (let ()
                                (declare (not safe))
                                (cons _L5325_ '()))))
                         (declare (not safe))
                         (cons __tmp5688 __tmp5687)))
                      (__tmp5682
                       (let ((__tmp5683
                              (let ((__tmp5685
                                     (gx#datum->syntax '#f 'stx-source))
                                    (__tmp5684
                                     (let ()
                                       (declare (not safe))
                                       (cons _L5327_ '()))))
                                (declare (not safe))
                                (cons __tmp5685 __tmp5684))))
                         (declare (not safe))
                         (cons __tmp5683 '()))))
                  (declare (not safe))
                  (cons __tmp5686 __tmp5682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp5689 __tmp5681)))
                                               _hd52815319_
                                               _hd52785309_)
                                              (_g52705288_ _g52715292_))))
                                      (_g52705288_ _g52715292_))))
                              (_g52705288_ _g52715292_))))
                      (_g52705288_ _g52715292_)))))
          (_g52695343_ _stx5267_))))))
