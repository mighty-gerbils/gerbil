(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g5628_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5637_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5639_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5643_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5645_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5647_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5649_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5757_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5628_|
       'expander-identifiers:
       (let ((__tmp5629
              (let ((__tmp5650 |gx[1]#_g5628_|)
                    (__tmp5630
                     (let ((__tmp5648 |gx[1]#_g5649_|)
                           (__tmp5631
                            (let ((__tmp5646 |gx[1]#_g5647_|)
                                  (__tmp5632
                                   (let ((__tmp5640
                                          (let ((__tmp5644 |gx[1]#_g5645_|)
                                                (__tmp5641
                                                 (let ((__tmp5642
                                                        |gx[1]#_g5643_|))
                                                   (declare (not safe))
                                                   (cons __tmp5642 '()))))
                                            (declare (not safe))
                                            (cons __tmp5644 __tmp5641)))
                                         (__tmp5633
                                          (let ((__tmp5634
                                                 (let ((__tmp5638
                                                        |gx[1]#_g5639_|)
                                                       (__tmp5635
                                                        (let ((__tmp5636
                                                               |gx[1]#_g5637_|))
                                                          (declare (not safe))
                                                          (cons __tmp5636
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp5638
                                                         __tmp5635))))
                                            (declare (not safe))
                                            (cons __tmp5634 '()))))
                                     (declare (not safe))
                                     (cons __tmp5640 __tmp5633))))
                              (declare (not safe))
                              (cons __tmp5646 __tmp5632))))
                       (declare (not safe))
                       (cons __tmp5648 __tmp5631))))
                (declare (not safe))
                (cons __tmp5650 __tmp5630))))
         (declare (not safe))
         (cons '#f __tmp5629))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx39_)
        (let* ((_g4357_ (lambda (_g4453_)
                          (gx#raise-syntax-error '#f '"Bad syntax" _g4453_)))
               (_g42100_
                (lambda (_g4461_)
                  (if (gx#stx-pair? _g4461_)
                      (let ((_e4864_ (gx#syntax-e _g4461_)))
                        (let ((_hd4768_
                               (let () (declare (not safe)) (##car _e4864_)))
                              (_tl4671_
                               (let () (declare (not safe)) (##cdr _e4864_))))
                          (if (gx#stx-pair? _tl4671_)
                              (let ((_e5174_ (gx#syntax-e _tl4671_)))
                                (let ((_hd5078_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5174_)))
                                      (_tl4981_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5174_))))
                                  (if (gx#stx-null? _tl4981_)
                                      ((lambda (_L84_)
                                         (let ((__tmp5660
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp5651
                                                (let ((__tmp5657
                                                       (let ((__tmp5659
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp5658
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L84_ '()))))
                 (declare (not safe))
                 (cons __tmp5659 __tmp5658)))
              (__tmp5652
               (let ((__tmp5653
                      (let ((__tmp5656 (gx#datum->syntax '#f 'error))
                            (__tmp5654
                             (let ((__tmp5655
                                    (let ()
                                      (declare (not safe))
                                      (cons _L84_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp5655))))
                        (declare (not safe))
                        (cons __tmp5656 __tmp5654))))
                 (declare (not safe))
                 (cons __tmp5653 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp5657 __tmp5652))))
                                           (declare (not safe))
                                           (cons __tmp5660 __tmp5651)))
                                       _hd5078_)
                                      (_g4357_ _g4461_))))
                              (_g4357_ _g4461_))))
                      (_g4357_ _g4461_)))))
          (_g42100_ _$stx39_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx104_)
        (letrec ((_generate107_
                  (lambda (_tgt256_ _kws258_ _clauses259_)
                    (letrec ((_generate-clause261_
                              (lambda (_hd1171_ _E1173_)
                                (let* ((___stx55315532_ _hd1171_)
                                       (_g11771204_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx55315532_))))
                                  (let ((___kont55345535_
                                         (lambda (_L1300_ _L1302_)
                                           (_generate1263_
                                            _hd1171_
                                            _L1302_
                                            '#t
                                            _L1300_
                                            _E1173_)))
                                        (___kont55365537_
                                         (lambda (_L1252_ _L1254_ _L1255_)
                                           (_generate1263_
                                            _hd1171_
                                            _L1255_
                                            _L1254_
                                            _L1252_
                                            _E1173_)))
                                        (___kont55385539_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _stx104_
                                            _hd1171_))))
                                    (if (gx#stx-pair? ___stx55315532_)
                                        (let ((_e11831280_
                                               (gx#syntax-e ___stx55315532_)))
                                          (let ((_tl11811287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e11831280_)))
                                                (_hd11821284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e11831280_))))
                                            (if (gx#stx-pair? _tl11811287_)
                                                (let ((_e11861290_
                                                       (gx#syntax-e
                                                        _tl11811287_)))
                                                  (let ((_tl11841297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e11861290_)))
                                                        (_hd11851294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e11861290_))))
                                                    (if (gx#stx-null?
                                                         _tl11841297_)
                                                        (___kont55345535_
                                                         _hd11851294_
                                                         _hd11821284_)
                                                        (if (gx#stx-pair?
                                                             _tl11841297_)
                                                            (let ((_e11981242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl11841297_)))
                      (let ((_tl11961249_
                             (let () (declare (not safe)) (##cdr _e11981242_)))
                            (_hd11971246_
                             (let ()
                               (declare (not safe))
                               (##car _e11981242_))))
                        (if (gx#stx-null? _tl11961249_)
                            (___kont55365537_
                             _hd11971246_
                             _hd11851294_
                             _hd11821284_)
                            (___kont55385539_))))
                    (___kont55385539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont55385539_))))
                                        (___kont55385539_))))))
                             (_generate1263_
                              (lambda (_where649_
                                       _hd651_
                                       _fender652_
                                       _body653_
                                       _E654_)
                                (letrec ((_recur656_
                                          (lambda (_hd659_ _tgt661_ _K662_)
                                            (let* ((___stx55775578_ _hd659_)
                                                   (_g665677_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx55775578_))))
                                              (let ((___kont55805581_
                                                     (lambda (_L961_ _L963_)
                                                       (let* ((_g974982_
                                                               (lambda (_g975978_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error '#f '"Bad syntax" _g975978_)))
                      (_g9731163_
                       (lambda (_g975986_)
                         ((lambda (_L989_)
                            (let ()
                              (let* ((_g10011009_
                                      (lambda (_g10021005_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g10021005_)))
                                     (_g10001159_
                                      (lambda (_g10021013_)
                                        ((lambda (_L1016_)
                                           (let ()
                                             (let* ((_g10291037_
                                                     (lambda (_g10301033_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g10301033_)))
                                                    (_g10281155_
                                                     (lambda (_g10301041_)
                                                       ((lambda (_L1044_)
                                                          (let ()
                                                            (let* ((_g10571065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g10581061_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g10581061_)))
                           (_g10561151_
                            (lambda (_g10581069_)
                              ((lambda (_L1072_)
                                 (let ()
                                   (let* ((_g10851093_
                                           (lambda (_g10861089_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g10861089_)))
                                          (_g10841147_
                                           (lambda (_g10861097_)
                                             ((lambda (_L1100_)
                                                (let ()
                                                  (let* ((_g11131121_
                                                          (lambda (_g11141117_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g11141117_)))
                                                         (_g11121143_
                                                          (lambda (_g11141125_)
                                                            ((lambda (_L1128_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp5693 (gx#datum->syntax '#f 'if))
                                 (__tmp5661
                                  (let ((__tmp5690
                                         (let ((__tmp5692
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp5691
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L989_ '()))))
                                           (declare (not safe))
                                           (cons __tmp5692 __tmp5691)))
                                        (__tmp5662
                                         (let ((__tmp5664
                                                (let ((__tmp5689
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp5665
                                                       (let ((__tmp5683
                                                              (let ((__tmp5684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5685
                                    (let ((__tmp5686
                                           (let ((__tmp5688
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp5687
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L989_ '()))))
                                             (declare (not safe))
                                             (cons __tmp5688 __tmp5687))))
                                      (declare (not safe))
                                      (cons __tmp5686 '()))))
                               (declare (not safe))
                               (cons _L1016_ __tmp5685))))
                        (declare (not safe))
                        (cons __tmp5684 '())))
                     (__tmp5666
                      (let ((__tmp5667
                             (let ((__tmp5682 (gx#datum->syntax '#f 'let))
                                   (__tmp5668
                                    (let ((__tmp5670
                                           (let ((__tmp5677
                                                  (let ((__tmp5678
                                                         (let ((__tmp5679
                                                                (let ((__tmp5681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp5680
                               (let ()
                                 (declare (not safe))
                                 (cons _L1016_ '()))))
                          (declare (not safe))
                          (cons __tmp5681 __tmp5680))))
                   (declare (not safe))
                   (cons __tmp5679 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L1044_ __tmp5678)))
                                                 (__tmp5671
                                                  (let ((__tmp5672
                                                         (let ((__tmp5673
                                                                (let ((__tmp5674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp5676 (gx#datum->syntax '#f '##cdr))
                                     (__tmp5675
                                      (let ()
                                        (declare (not safe))
                                        (cons _L1016_ '()))))
                                 (declare (not safe))
                                 (cons __tmp5676 __tmp5675))))
                          (declare (not safe))
                          (cons __tmp5674 '()))))
                   (declare (not safe))
                   (cons _L1072_ __tmp5673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp5672 '()))))
                                             (declare (not safe))
                                             (cons __tmp5677 __tmp5671)))
                                          (__tmp5669
                                           (let ()
                                             (declare (not safe))
                                             (cons _L1100_ '()))))
                                      (declare (not safe))
                                      (cons __tmp5670 __tmp5669))))
                               (declare (not safe))
                               (cons __tmp5682 __tmp5668))))
                        (declare (not safe))
                        (cons __tmp5667 '()))))
                 (declare (not safe))
                 (cons __tmp5683 __tmp5666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp5689 __tmp5665)))
                                               (__tmp5663
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L1128_ '()))))
                                           (declare (not safe))
                                           (cons __tmp5664 __tmp5663))))
                                    (declare (not safe))
                                    (cons __tmp5690 __tmp5662))))
                             (declare (not safe))
                             (cons __tmp5693 __tmp5661)))))
                     _g11141125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g11121143_ _E654_))))
                                              _g10861097_))))
                                     (_g10841147_
                                      (_recur656_
                                       _L963_
                                       _L1044_
                                       (_recur656_ _L961_ _L1072_ _K662_))))))
                               _g10581069_))))
                      (_g10561151_ (gx#genident 'tl)))))
                _g10301041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g10281155_
                                                (gx#genident 'hd)))))
                                         _g10021013_))))
                                (_g10001159_ (gx#genident 'e)))))
                          _g975986_))))
                 (_g9731163_ _tgt661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont55825583_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd659_)
                                                           (if (gx#underscore?
                                                                _hd659_)
                                                               _K662_
                                                               (if (let ((__tmp5738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g687689_)
                                    (gx#bound-identifier=?
                                     _g687689_
                                     _hd659_))))
                             (declare (not safe))
                             (find __tmp5738 _kws258_))
                           (let* ((_g693708_
                                   (lambda (_g694704_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g694704_)))
                                  (_g692759_
                                   (lambda (_g694712_)
                                     (if (gx#stx-pair? _g694712_)
                                         (let ((_e699715_
                                                (gx#syntax-e _g694712_)))
                                           (let ((_hd698719_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e699715_)))
                                                 (_tl697722_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e699715_))))
                                             (if (gx#stx-pair? _tl697722_)
                                                 (let ((_e702725_
                                                        (gx#syntax-e
                                                         _tl697722_)))
                                                   (let ((_hd701729_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e702725_)))
                                                         (_tl700732_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e702725_))))
                                                     (if (gx#stx-null?
                                                          _tl700732_)
                                                         ((lambda (_L735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L737_)
                    (let ()
                      (let ((__tmp5737 (gx#datum->syntax '#f 'if))
                            (__tmp5720
                             (let ((__tmp5723
                                    (let ((__tmp5736
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp5724
                                           (let ((__tmp5733
                                                  (let ((__tmp5735
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp5734
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L737_ '()))))
                                                    (declare (not safe))
                                                    (cons __tmp5735
                                                          __tmp5734)))
                                                 (__tmp5725
                                                  (let ((__tmp5726
                                                         (let ((__tmp5732
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp5727
                        (let ((__tmp5728
                               (let ((__tmp5729
                                      (let ((__tmp5731
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp5730
                                             (let ()
                                               (declare (not safe))
                                               (cons _L735_ '()))))
                                        (declare (not safe))
                                        (cons __tmp5731 __tmp5730))))
                                 (declare (not safe))
                                 (cons __tmp5729 '()))))
                          (declare (not safe))
                          (cons _L737_ __tmp5728))))
                   (declare (not safe))
                   (cons __tmp5732 __tmp5727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp5726 '()))))
                                             (declare (not safe))
                                             (cons __tmp5733 __tmp5725))))
                                      (declare (not safe))
                                      (cons __tmp5736 __tmp5724)))
                                   (__tmp5721
                                    (let ((__tmp5722
                                           (let ()
                                             (declare (not safe))
                                             (cons _E654_ '()))))
                                      (declare (not safe))
                                      (cons _K662_ __tmp5722))))
                               (declare (not safe))
                               (cons __tmp5723 __tmp5721))))
                        (declare (not safe))
                        (cons __tmp5737 __tmp5720))))
                  _hd701729_
                  _hd698719_)
                 (_g693708_ _g694712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g693708_ _g694712_))))
                                         (_g693708_ _g694712_)))))
                             (_g692759_ (list _tgt661_ _hd659_)))
                           (let* ((_g763778_
                                   (lambda (_g764774_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g764774_)))
                                  (_g762822_
                                   (lambda (_g764782_)
                                     (if (gx#stx-pair? _g764782_)
                                         (let ((_e769785_
                                                (gx#syntax-e _g764782_)))
                                           (let ((_hd768789_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e769785_)))
                                                 (_tl767792_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e769785_))))
                                             (if (gx#stx-pair? _tl767792_)
                                                 (let ((_e772795_
                                                        (gx#syntax-e
                                                         _tl767792_)))
                                                   (let ((_hd771799_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e772795_)))
                                                         (_tl770802_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e772795_))))
                                                     (if (gx#stx-null?
                                                          _tl770802_)
                                                         ((lambda (_L805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L807_)
                    (let ()
                      (let ((__tmp5719 (gx#datum->syntax '#f 'let))
                            (__tmp5714
                             (let ((__tmp5716
                                    (let ((__tmp5717
                                           (let ((__tmp5718
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L807_ '()))))
                                             (declare (not safe))
                                             (cons _L805_ __tmp5718))))
                                      (declare (not safe))
                                      (cons __tmp5717 '())))
                                   (__tmp5715
                                    (let ()
                                      (declare (not safe))
                                      (cons _K662_ '()))))
                               (declare (not safe))
                               (cons __tmp5716 __tmp5715))))
                        (declare (not safe))
                        (cons __tmp5719 __tmp5714))))
                  _hd771799_
                  _hd768789_)
                 (_g763778_ _g764782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g763778_ _g764782_))))
                                         (_g763778_ _g764782_)))))
                             (_g762822_ (list _tgt661_ _hd659_)))))
                   (if (gx#stx-null? _hd659_)
                       (let* ((_g826834_
                               (lambda (_g827830_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g827830_)))
                              (_g825852_
                               (lambda (_g827838_)
                                 ((lambda (_L841_)
                                    (let ()
                                      (let ((__tmp5713
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp5707
                                             (let ((__tmp5710
                                                    (let ((__tmp5712
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp5711
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp5712 __tmp5711)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp5708
                                                    (let ((__tmp5709
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K662_ __tmp5709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp5710 __tmp5708))))
                                        (declare (not safe))
                                        (cons __tmp5713 __tmp5707))))
                                  _g827838_))))
                         (_g825852_ _tgt661_))
                       (if (gx#stx-datum? _hd659_)
                           (let* ((_g856875_
                                   (lambda (_g857871_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g857871_)))
                                  (_g855933_
                                   (lambda (_g857879_)
                                     (if (gx#stx-pair? _g857879_)
                                         (let ((_e863882_
                                                (gx#syntax-e _g857879_)))
                                           (let ((_hd862886_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e863882_)))
                                                 (_tl861889_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e863882_))))
                                             (if (gx#stx-pair? _tl861889_)
                                                 (let ((_e866892_
                                                        (gx#syntax-e
                                                         _tl861889_)))
                                                   (let ((_hd865896_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e866892_)))
                                                         (_tl864899_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e866892_))))
                                                     (if (gx#stx-pair?
                                                          _tl864899_)
                                                         (let ((_e869902_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl864899_)))
                   (let ((_hd868906_
                          (let () (declare (not safe)) (##car _e869902_)))
                         (_tl867909_
                          (let () (declare (not safe)) (##cdr _e869902_))))
                     (if (gx#stx-null? _tl867909_)
                         ((lambda (_L912_ _L914_ _L915_)
                            (let ()
                              (let ((__tmp5706 (gx#datum->syntax '#f 'if))
                                    (__tmp5694
                                     (let ((__tmp5697
                                            (let ((__tmp5698
                                                   (let ((__tmp5703
                                                          (let ((__tmp5705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp5704
                         (let () (declare (not safe)) (cons _L915_ '()))))
                    (declare (not safe))
                    (cons __tmp5705 __tmp5704)))
                 (__tmp5699
                  (let ((__tmp5700
                         (let ((__tmp5702 (gx#datum->syntax '#f 'quote))
                               (__tmp5701
                                (let ()
                                  (declare (not safe))
                                  (cons _L914_ '()))))
                           (declare (not safe))
                           (cons __tmp5702 __tmp5701))))
                    (declare (not safe))
                    (cons __tmp5700 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp5703
                                                           __tmp5699))))
                                              (declare (not safe))
                                              (cons _L912_ __tmp5698)))
                                           (__tmp5695
                                            (let ((__tmp5696
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E654_ '()))))
                                              (declare (not safe))
                                              (cons _K662_ __tmp5696))))
                                       (declare (not safe))
                                       (cons __tmp5697 __tmp5695))))
                                (declare (not safe))
                                (cons __tmp5706 __tmp5694))))
                          _hd868906_
                          _hd865896_
                          _hd862886_)
                         (_g856875_ _g857879_))))
                 (_g856875_ _g857879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g856875_ _g857879_))))
                                         (_g856875_ _g857879_)))))
                             (_g855933_
                              (list _tgt661_
                                    _hd659_
                                    (let ((_e937_ (gx#stx-e _hd659_)))
                                      (if (or (keyword? _e937_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e937_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e937_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _stx104_
                            _where649_
                            _hd659_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx55775578_)
                                                    (let ((_e671951_
                                                           (gx#syntax-e
                                                            ___stx55775578_)))
                                                      (let ((_tl669958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e671951_)))
                    (_hd670955_
                     (let () (declare (not safe)) (##car _e671951_))))
                (___kont55805581_ _tl669958_ _hd670955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont55825583_)))))))
                                  (_recur656_
                                   _hd651_
                                   _tgt256_
                                   (let ((__tmp5742 (gx#datum->syntax '#f 'if))
                                         (__tmp5739
                                          (let ((__tmp5740
                                                 (let ((__tmp5741
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E654_ '()))))
                                                   (declare (not safe))
                                                   (cons _body653_
                                                         __tmp5741))))
                                            (declare (not safe))
                                            (cons _fender652_ __tmp5740))))
                                     (declare (not safe))
                                     (cons __tmp5742 __tmp5739))))))
                             (_generate-clauses264_
                              (lambda (_clauses387_)
                                (let _lp390_ ((_rest393_ _clauses387_)
                                              (_E395_ (gx#genident 'E))
                                              (_r396_ '()))
                                  (let* ((___stx56135614_ _rest393_)
                                         (_g399411_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx56135614_))))
                                    (let ((___kont56165617_
                                           (lambda (_L476_ _L478_)
                                             (let* ((___stx55935594_ _L478_)
                                                    (_g490501_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx55935594_))))
                                               (let ((___kont55965597_
                                                      (lambda (_L630_)
                                                        (if (gx#stx-null?
                                                             _L476_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L630_)
                             (let ((__tmp5751 (gx#stx-null? _L630_)))
                               (declare (not safe))
                               (not __tmp5751)))
                        (let ((__tmp5743
                               (let ((__tmp5744
                                      (let ((__tmp5745
                                             (gx#stx-wrap-source
                                              (let ((__tmp5750
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp5746
                                                     (let ((__tmp5747
                                                            (let ((__tmp5748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp5749 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp5749 _L630_))))
                      (declare (not safe))
                      (cons __tmp5748 '()))))
               (declare (not safe))
               (cons '() __tmp5747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp5750 __tmp5746))
                                              (gx#stx-source _L478_))))
                                        (declare (not safe))
                                        (cons __tmp5745 '()))))
                                 (declare (not safe))
                                 (cons _E395_ __tmp5744))))
                          (declare (not safe))
                          (cons __tmp5743 _r396_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx104_
                         _L478_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx104_
                     _L478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont55985599_
                                                      (lambda ()
                                                        (let* ((_g512520_
                                                                (lambda (_g513516_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error '#f '"Bad syntax" _g513516_)))
                       (_g511609_
                        (lambda (_g513524_)
                          ((lambda (_L527_)
                             (let ()
                               (let* ((_g543551_
                                       (lambda (_g544547_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g544547_)))
                                      (_g542605_
                                       (lambda (_g544555_)
                                         ((lambda (_L558_)
                                            (let ()
                                              (let* ((_g571579_
                                                      (lambda (_g572575_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g572575_)))
                                                     (_g570601_
                                                      (lambda (_g572583_)
                                                        ((lambda (_L586_)
                                                           (let ()
                                                             (let ()
                                                               (_lp390_ _L476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L527_
                                (let ((__tmp5752
                                       (let ((__tmp5753
                                              (let ()
                                                (declare (not safe))
                                                (cons _L586_ '()))))
                                         (declare (not safe))
                                         (cons _E395_ __tmp5753))))
                                  (declare (not safe))
                                  (cons __tmp5752 _r396_))))))
                 _g572583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g570601_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp5756
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp5754
                                                         (let ((__tmp5755
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L558_ '()))))
                   (declare (not safe))
                   (cons '() __tmp5755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp5756 __tmp5754))
                                                  (gx#stx-source _L478_))))))
                                          _g544555_))))
                                 (_g542605_
                                  (_generate-clause261_
                                   _L478_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L527_ '())))))))
                           _g513524_))))
                  (_g511609_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx55935594_)
                                                     (let ((_e495620_
                                                            (gx#syntax-e
                                                             ___stx55935594_)))
                                                       (let ((_tl493627_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e495620_)))
                     (_hd494624_
                      (let () (declare (not safe)) (##car _e495620_))))
                 (if (gx#identifier? _hd494624_)
                     (if (gx#free-identifier=? |gx[1]#_g5757_| _hd494624_)
                         (___kont55965597_ _tl493627_)
                         (___kont55985599_))
                     (___kont55985599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont55985599_))))))
                                          (___kont56185619_
                                           (lambda ()
                                             (let* ((_g422430_
                                                     (lambda (_g423426_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g423426_)))
                                                    (_g421455_
                                                     (lambda (_g423434_)
                                                       ((lambda (_L437_)
                                                          (let ()
                                                            (let ((__tmp5758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp5759
                                  (let ((__tmp5760
                                         (gx#stx-wrap-source
                                          (let ((__tmp5768
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp5761
                                                 (let ((__tmp5762
                                                        (let ((__tmp5763
                                                               (let ((__tmp5767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp5764
                              (let ((__tmp5765
                                     (let ((__tmp5766
                                            (let ()
                                              (declare (not safe))
                                              (cons _L437_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax" __tmp5766))))
                                (declare (not safe))
                                (cons '#f __tmp5765))))
                         (declare (not safe))
                         (cons __tmp5767 __tmp5764))))
                  (declare (not safe))
                  (cons __tmp5763 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp5762))))
                                            (declare (not safe))
                                            (cons __tmp5768 __tmp5761))
                                          (gx#stx-source _stx104_))))
                                    (declare (not safe))
                                    (cons __tmp5760 '()))))
                             (declare (not safe))
                             (cons _E395_ __tmp5759))))
                      (declare (not safe))
                      (cons __tmp5758 _r396_))))
                _g423434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g421455_ _tgt256_)))))
                                      (if (gx#stx-pair? ___stx56135614_)
                                          (let ((_e405466_
                                                 (gx#syntax-e
                                                  ___stx56135614_)))
                                            (let ((_tl403473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e405466_)))
                                                  (_hd404470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e405466_))))
                                              (___kont56165617_
                                               _tl403473_
                                               _hd404470_)))
                                          (___kont56185619_))))))))
                      (let* ((_bind266_ (_generate-clauses264_ _clauses259_))
                             (_g269286_
                              (lambda (_g270282_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g270282_)))
                             (_g268383_
                              (lambda (_g270290_)
                                (if (gx#stx-pair/null? _g270290_)
                                    (let ((_g5769_ (gx#syntax-split-splice
                                                    _g270290_
                                                    '0)))
                                      (begin
                                        (let ((_g5770_ (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g5769_)
                                                             (##vector-length
                                                              _g5769_)
                                                             1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g5770_ 2)))
                                              (error "Context expects 2 values"
                                                     _g5770_)))
                                        (let ((_target272293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g5769_ 0)))
                                              (_tl274296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g5769_ 1))))
                                          (if (gx#stx-null? _tl274296_)
                                              (letrec ((_loop275299_
                                                        (lambda (_hd273303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try279306_)
                  (if (gx#stx-pair? _hd273303_)
                      (let ((_e276309_ (gx#syntax-e _hd273303_)))
                        (let ((_lp-hd277313_
                               (let () (declare (not safe)) (##car _e276309_)))
                              (_lp-tl278316_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276309_))))
                          (_loop275299_
                           _lp-tl278316_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd277313_ _bind-try279306_)))))
                      (let ((_bind-try280319_ (reverse _bind-try279306_)))
                        ((lambda (_L323_)
                           (let ()
                             (let* ((_g341349_
                                     (lambda (_g342345_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g342345_)))
                                    (_g340379_
                                     (lambda (_g342353_)
                                       ((lambda (_L356_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp5776
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp5771
                                                     (let ((__tmp5774
                                                            (let ((__tmp5775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g370373_ _g371376_)
                             (let ()
                               (declare (not safe))
                               (cons _g370373_ _g371376_)))))
                      (declare (not safe))
                      (foldr1 __tmp5775 '() _L323_)))
                   (__tmp5772
                    (let ((__tmp5773
                           (let () (declare (not safe)) (cons _L356_ '()))))
                      (declare (not safe))
                      (cons __tmp5773 '()))))
               (declare (not safe))
               (cons __tmp5774 __tmp5772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp5776 __tmp5771)))))
                                        _g342353_))))
                               (_g340379_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind266_)))))))
                         _bind-try280319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop275299_
                                                 _target272293_
                                                 '()))
                                              (_g269286_ _g270290_)))))
                                    (_g269286_ _g270290_)))))
                        (_g268383_ _bind266_))))))
          (let* ((_g110129_
                  (lambda (_g111125_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g111125_)))
                 (_g109252_
                  (lambda (_g111133_)
                    (if (gx#stx-pair? _g111133_)
                        (let ((_e117136_ (gx#syntax-e _g111133_)))
                          (let ((_hd116140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117136_)))
                                (_tl115143_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117136_))))
                            (if (gx#stx-pair? _tl115143_)
                                (let ((_e120146_ (gx#syntax-e _tl115143_)))
                                  (let ((_hd119150_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120146_)))
                                        (_tl118153_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120146_))))
                                    (if (gx#stx-pair? _tl118153_)
                                        (let ((_e123156_
                                               (gx#syntax-e _tl118153_)))
                                          (let ((_hd122160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123156_)))
                                                (_tl121163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123156_))))
                                            ((lambda (_L166_ _L168_ _L169_)
                                               (if (and (gx#identifier-list?
                                                         _L168_)
                                                        (gx#stx-list? _L166_))
                                                   (let* ((_g187195_
                                                           (lambda (_g188191_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g188191_)))
                                                          (_g186248_
                                                           (lambda (_g188199_)
                                                             ((lambda (_L202_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g214222_
                                  (lambda (_g215218_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g215218_)))
                                 (_g213244_
                                  (lambda (_g215226_)
                                    ((lambda (_L229_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp5782
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp5777
                                                  (let ((__tmp5779
                                                         (let ((__tmp5780
                                                                (let ((__tmp5781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L169_ '()))))
                          (declare (not safe))
                          (cons _L202_ __tmp5781))))
                   (declare (not safe))
                   (cons __tmp5780 '())))
                (__tmp5778 (let () (declare (not safe)) (cons _L229_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp5779
                                                          __tmp5778))))
                                             (declare (not safe))
                                             (cons __tmp5782 __tmp5777)))))
                                     _g215226_))))
                            (_g213244_
                             (_generate107_
                              _L202_
                              (gx#syntax->list _L168_)
                              _L166_)))))
                      _g188199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g186248_
                                                      (gx#genident 'e)))
                                                   (_g110129_ _g111133_)))
                                             _tl121163_
                                             _hd122160_
                                             _hd119150_)))
                                        (_g110129_ _g111133_))))
                                (_g110129_ _g111133_))))
                        (_g110129_ _g111133_)))))
            (_g109252_ _stx104_)))))))
