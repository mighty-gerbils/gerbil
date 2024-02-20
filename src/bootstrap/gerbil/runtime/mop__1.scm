(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61351_)
      (let* ((___stx6338363384_ _$stx61351_)
             (_g6135661385_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6338363384_))))
        (let ((___kont6338663387_
               (lambda (_L61478_ _L61480_)
                 (let ((__tmp63646 (gx#datum->syntax '#f '##fx=))
                       (__tmp63640
                        (let ((__tmp63642
                               (let ((__tmp63645
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63643
                                      (let ((__tmp63644
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61478_ '()))))
                                        (declare (not safe))
                                        (cons _L61480_ __tmp63644))))
                                 (declare (not safe))
                                 (cons __tmp63645 __tmp63643)))
                              (__tmp63641
                               (let ()
                                 (declare (not safe))
                                 (cons _L61478_ '()))))
                          (declare (not safe))
                          (cons __tmp63642 __tmp63641))))
                   (declare (not safe))
                   (cons __tmp63646 __tmp63640))))
              (___kont6338863389_
               (lambda (_L61422_ _L61424_)
                 (let ((__tmp63659 (gx#datum->syntax '#f 'let))
                       (__tmp63647
                        (let ((__tmp63657
                               (let ((__tmp63658
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61422_ '()))))
                                 (declare (not safe))
                                 (cons _L61422_ __tmp63658)))
                              (__tmp63648
                               (let ((__tmp63649
                                      (let ((__tmp63656
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63650
                                             (let ((__tmp63652
                                                    (let ((__tmp63655
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63653
                                                           (let ((__tmp63654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61422_ '()))))
                     (declare (not safe))
                     (cons _L61424_ __tmp63654))))
              (declare (not safe))
              (cons __tmp63655 __tmp63653)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63651
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L61422_ '()))))
                                               (declare (not safe))
                                               (cons __tmp63652 __tmp63651))))
                                        (declare (not safe))
                                        (cons __tmp63656 __tmp63650))))
                                 (declare (not safe))
                                 (cons __tmp63649 '()))))
                          (declare (not safe))
                          (cons __tmp63657 __tmp63648))))
                   (declare (not safe))
                   (cons __tmp63659 __tmp63647)))))
          (let ((___match6341063411_
                 (lambda (_e6136261448_
                          _hd6136161452_
                          _tl6136061455_
                          _e6136561458_
                          _hd6136461462_
                          _tl6136361465_
                          _e6136861468_
                          _hd6136761472_
                          _tl6136661475_)
                   (let ((_L61478_ _hd6136761472_) (_L61480_ _hd6136461462_))
                     (if (or (gx#identifier? _L61478_)
                             (gx#stx-fixnum? _L61478_))
                         (___kont6338663387_ _L61478_ _L61480_)
                         (___kont6338863389_
                          _hd6136761472_
                          _hd6136461462_))))))
            (if (gx#stx-pair? ___stx6338363384_)
                (let ((_e6136261448_ (gx#syntax-e ___stx6338363384_)))
                  (let ((_tl6136061455_
                         (let () (declare (not safe)) (##cdr _e6136261448_)))
                        (_hd6136161452_
                         (let () (declare (not safe)) (##car _e6136261448_))))
                    (if (gx#stx-pair? _tl6136061455_)
                        (let ((_e6136561458_ (gx#syntax-e _tl6136061455_)))
                          (let ((_tl6136361465_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6136561458_)))
                                (_hd6136461462_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6136561458_))))
                            (if (gx#stx-pair? _tl6136361465_)
                                (let ((_e6136861468_
                                       (gx#syntax-e _tl6136361465_)))
                                  (let ((_tl6136661475_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6136861468_)))
                                        (_hd6136761472_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6136861468_))))
                                    (if (gx#stx-null? _tl6136661475_)
                                        (___match6341063411_
                                         _e6136261448_
                                         _hd6136161452_
                                         _tl6136061455_
                                         _e6136561458_
                                         _hd6136461462_
                                         _tl6136361465_
                                         _e6136861468_
                                         _hd6136761472_
                                         _tl6136661475_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6135661385_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6135661385_)))))
                        (let () (declare (not safe)) (_g6135661385_)))))
                (let () (declare (not safe)) (_g6135661385_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx61503_)
      (let* ((___stx6343363434_ _$stx61503_)
             (_g6150861537_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6343363434_))))
        (let ((___kont6343663437_
               (lambda (_L61629_ _L61631_)
                 (let ((__tmp63666 (gx#datum->syntax '#f '##fx=))
                       (__tmp63660
                        (let ((__tmp63662
                               (let ((__tmp63665
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63663
                                      (let ((__tmp63664
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61629_ '()))))
                                        (declare (not safe))
                                        (cons _L61631_ __tmp63664))))
                                 (declare (not safe))
                                 (cons __tmp63665 __tmp63663)))
                              (__tmp63661
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp63662 __tmp63661))))
                   (declare (not safe))
                   (cons __tmp63666 __tmp63660))))
              (___kont6343863439_
               (lambda (_L61574_ _L61576_)
                 (let ((__tmp63679 (gx#datum->syntax '#f 'let))
                       (__tmp63667
                        (let ((__tmp63677
                               (let ((__tmp63678
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61574_ '()))))
                                 (declare (not safe))
                                 (cons _L61574_ __tmp63678)))
                              (__tmp63668
                               (let ((__tmp63669
                                      (let ((__tmp63676
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63670
                                             (let ((__tmp63672
                                                    (let ((__tmp63675
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63673
                                                           (let ((__tmp63674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61574_ '()))))
                     (declare (not safe))
                     (cons _L61576_ __tmp63674))))
              (declare (not safe))
              (cons __tmp63675 __tmp63673)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63671
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp63672 __tmp63671))))
                                        (declare (not safe))
                                        (cons __tmp63676 __tmp63670))))
                                 (declare (not safe))
                                 (cons __tmp63669 '()))))
                          (declare (not safe))
                          (cons __tmp63677 __tmp63668))))
                   (declare (not safe))
                   (cons __tmp63679 __tmp63667)))))
          (let ((___match6346063461_
                 (lambda (_e6151461599_
                          _hd6151361603_
                          _tl6151261606_
                          _e6151761609_
                          _hd6151661613_
                          _tl6151561616_
                          _e6152061619_
                          _hd6151961623_
                          _tl6151861626_)
                   (let ((_L61629_ _hd6151961623_) (_L61631_ _hd6151661613_))
                     (if (or (gx#identifier? _L61629_)
                             (gx#stx-fixnum? _L61629_))
                         (___kont6343663437_ _L61629_ _L61631_)
                         (___kont6343863439_
                          _hd6151961623_
                          _hd6151661613_))))))
            (if (gx#stx-pair? ___stx6343363434_)
                (let ((_e6151461599_ (gx#syntax-e ___stx6343363434_)))
                  (let ((_tl6151261606_
                         (let () (declare (not safe)) (##cdr _e6151461599_)))
                        (_hd6151361603_
                         (let () (declare (not safe)) (##car _e6151461599_))))
                    (if (gx#stx-pair? _tl6151261606_)
                        (let ((_e6151761609_ (gx#syntax-e _tl6151261606_)))
                          (let ((_tl6151561616_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6151761609_)))
                                (_hd6151661613_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6151761609_))))
                            (if (gx#stx-pair? _tl6151561616_)
                                (let ((_e6152061619_
                                       (gx#syntax-e _tl6151561616_)))
                                  (let ((_tl6151861626_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6152061619_)))
                                        (_hd6151961623_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6152061619_))))
                                    (if (gx#stx-null? _tl6151861626_)
                                        (___match6346063461_
                                         _e6151461599_
                                         _hd6151361603_
                                         _tl6151261606_
                                         _e6151761609_
                                         _hd6151661613_
                                         _tl6151561616_
                                         _e6152061619_
                                         _hd6151961623_
                                         _tl6151861626_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6150861537_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6150861537_)))))
                        (let () (declare (not safe)) (_g6150861537_)))))
                (let () (declare (not safe)) (_g6150861537_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx61654_)
      (let* ((_g6165761678_
              (lambda (_g6165861674_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6165861674_)))
             (_g6165661906_
              (lambda (_g6165861682_)
                (if (gx#stx-pair? _g6165861682_)
                    (let ((_e6166361685_ (gx#syntax-e _g6165861682_)))
                      (let ((_hd6166261689_
                             (let ()
                               (declare (not safe))
                               (##car _e6166361685_)))
                            (_tl6166161692_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6166361685_))))
                        (if (gx#stx-pair? _tl6166161692_)
                            (let ((_e6166661695_ (gx#syntax-e _tl6166161692_)))
                              (let ((_hd6166561699_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6166661695_)))
                                    (_tl6166461702_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6166661695_))))
                                (if (gx#stx-pair? _hd6166561699_)
                                    (let ((_e6166961705_
                                           (gx#syntax-e _hd6166561699_)))
                                      (let ((_hd6166861709_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6166961705_)))
                                            (_tl6166761712_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6166961705_))))
                                        (if (gx#stx-pair? _tl6166761712_)
                                            (let ((_e6167261715_
                                                   (gx#syntax-e
                                                    _tl6166761712_)))
                                              (let ((_hd6167161719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6167261715_)))
                                                    (_tl6167061722_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6167261715_))))
                                                (if (gx#stx-null?
                                                     _tl6167061722_)
                                                    (if (gx#stx-null?
                                                         _tl6166461702_)
                                                        ((lambda (_L61725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L61727_)
                   (let* ((_g6174561753_
                           (lambda (_g6174661749_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6174661749_)))
                          (_g6174461902_
                           (lambda (_g6174661757_)
                             ((lambda (_L61760_)
                                (let ()
                                  (let* ((_g6177261780_
                                          (lambda (_g6177361776_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6177361776_)))
                                         (_g6177161898_
                                          (lambda (_g6177361784_)
                                            ((lambda (_L61787_)
                                               (let ()
                                                 (let* ((_g6180061808_
                                                         (lambda (_g6180161804_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6180161804_)))
                                                        (_g6179961894_
                                                         (lambda (_g6180161812_)
                                                           ((lambda (_L61815_)
                                                              (let ()
                                                                (let* ((_g6182861836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6182961832_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6182961832_)))
                               (_g6182761890_
                                (lambda (_g6182961840_)
                                  ((lambda (_L61843_)
                                     (let ()
                                       (let* ((_g6185661864_
                                               (lambda (_g6185761860_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6185761860_)))
                                              (_g6185561886_
                                               (lambda (_g6185761868_)
                                                 ((lambda (_L61871_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp63812
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp63680
                                                               (let ((__tmp63782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63811 (gx#datum->syntax '#f 'def))
                                    (__tmp63783
                                     (let ((__tmp63784
                                            (let ((__tmp63785
                                                   (let ((__tmp63810
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp63786
                                                          (let ((__tmp63805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63809
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp63806
                                (let ((__tmp63807
                                       (let ((__tmp63808
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L61727_ __tmp63808))))
                                  (declare (not safe))
                                  (cons _L61760_ __tmp63807))))
                           (declare (not safe))
                           (cons __tmp63809 __tmp63806)))
                        (__tmp63787
                         (let ((__tmp63788
                                (let ((__tmp63804
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp63789
                                       (let ((__tmp63802
                                              (let ((__tmp63803
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp63803 '())))
                                             (__tmp63790
                                              (let ((__tmp63791
                                                     (let ((__tmp63801
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp63792
                                                            (let ((__tmp63800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63793
                           (let ((__tmp63794
                                  (let ((__tmp63799
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp63795
                                         (let ((__tmp63796
                                                (let ((__tmp63798
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp63797
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L61727_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp63798
                                                        __tmp63797))))
                                           (declare (not safe))
                                           (cons __tmp63796 '()))))
                                    (declare (not safe))
                                    (cons __tmp63799 __tmp63795))))
                             (declare (not safe))
                             (cons _L61725_ __tmp63794))))
                      (declare (not safe))
                      (cons __tmp63800 __tmp63793))))
               (declare (not safe))
               (cons __tmp63801 __tmp63792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63791 '()))))
                                         (declare (not safe))
                                         (cons __tmp63802 __tmp63790))))
                                  (declare (not safe))
                                  (cons __tmp63804 __tmp63789))))
                           (declare (not safe))
                           (cons __tmp63788 '()))))
                    (declare (not safe))
                    (cons __tmp63805 __tmp63787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63810
                                                           __tmp63786))))
                                              (declare (not safe))
                                              (cons __tmp63785 '()))))
                                       (declare (not safe))
                                       (cons _L61787_ __tmp63784))))
                                (declare (not safe))
                                (cons __tmp63811 __tmp63783)))
                             (__tmp63681
                              (let ((__tmp63752
                                     (let ((__tmp63781
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp63753
                                            (let ((__tmp63754
                                                   (let ((__tmp63755
                                                          (let ((__tmp63780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp63756
                         (let ((__tmp63775
                                (let ((__tmp63779
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp63776
                                       (let ((__tmp63777
                                              (let ((__tmp63778
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L61727_ __tmp63778))))
                                         (declare (not safe))
                                         (cons _L61760_ __tmp63777))))
                                  (declare (not safe))
                                  (cons __tmp63779 __tmp63776)))
                               (__tmp63757
                                (let ((__tmp63758
                                       (let ((__tmp63774
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp63759
                                              (let ((__tmp63772
                                                     (let ((__tmp63773
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp63773 '())))
                                                    (__tmp63760
                                                     (let ((__tmp63761
                                                            (let ((__tmp63771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp63762
                           (let ((__tmp63770 (gx#datum->syntax '#f 'klass))
                                 (__tmp63763
                                  (let ((__tmp63764
                                         (let ((__tmp63769
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp63765
                                                (let ((__tmp63766
                                                       (let ((__tmp63768
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp63767
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L61727_ '()))))
                 (declare (not safe))
                 (cons __tmp63768 __tmp63767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63766 '()))))
                                           (declare (not safe))
                                           (cons __tmp63769 __tmp63765))))
                                    (declare (not safe))
                                    (cons _L61725_ __tmp63764))))
                             (declare (not safe))
                             (cons __tmp63770 __tmp63763))))
                      (declare (not safe))
                      (cons __tmp63771 __tmp63762))))
               (declare (not safe))
               (cons __tmp63761 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63772 __tmp63760))))
                                         (declare (not safe))
                                         (cons __tmp63774 __tmp63759))))
                                  (declare (not safe))
                                  (cons __tmp63758 '()))))
                           (declare (not safe))
                           (cons __tmp63775 __tmp63757))))
                    (declare (not safe))
                    (cons __tmp63780 __tmp63756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63755 '()))))
                                              (declare (not safe))
                                              (cons _L61815_ __tmp63754))))
                                       (declare (not safe))
                                       (cons __tmp63781 __tmp63753)))
                                    (__tmp63682
                                     (let ((__tmp63718
                                            (let ((__tmp63751
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp63719
                                                   (let ((__tmp63720
                                                          (let ((__tmp63721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63750
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp63722
                                (let ((__tmp63745
                                       (let ((__tmp63749
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp63746
                                              (let ((__tmp63747
                                                     (let ((__tmp63748
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L61727_
                                                             __tmp63748))))
                                                (declare (not safe))
                                                (cons _L61760_ __tmp63747))))
                                         (declare (not safe))
                                         (cons __tmp63749 __tmp63746)))
                                      (__tmp63723
                                       (let ((__tmp63724
                                              (let ((__tmp63744
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp63725
                                                     (let ((__tmp63740
                                                            (let ((__tmp63743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63741
                           (let ((__tmp63742 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp63742 '()))))
                      (declare (not safe))
                      (cons __tmp63743 __tmp63741)))
                   (__tmp63726
                    (let ((__tmp63727
                           (let ((__tmp63739
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp63728
                                  (let ((__tmp63738
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63729
                                         (let ((__tmp63737
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp63730
                                                (let ((__tmp63731
                                                       (let ((__tmp63736
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp63732
                                                              (let ((__tmp63733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp63735 (gx#datum->syntax '#f 'quote))
                                   (__tmp63734
                                    (let ()
                                      (declare (not safe))
                                      (cons _L61727_ '()))))
                               (declare (not safe))
                               (cons __tmp63735 __tmp63734))))
                        (declare (not safe))
                        (cons __tmp63733 '()))))
                 (declare (not safe))
                 (cons __tmp63736 __tmp63732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L61725_ __tmp63731))))
                                           (declare (not safe))
                                           (cons __tmp63737 __tmp63730))))
                                    (declare (not safe))
                                    (cons __tmp63738 __tmp63729))))
                             (declare (not safe))
                             (cons __tmp63739 __tmp63728))))
                      (declare (not safe))
                      (cons __tmp63727 '()))))
               (declare (not safe))
               (cons __tmp63740 __tmp63726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63744 __tmp63725))))
                                         (declare (not safe))
                                         (cons __tmp63724 '()))))
                                  (declare (not safe))
                                  (cons __tmp63745 __tmp63723))))
                           (declare (not safe))
                           (cons __tmp63750 __tmp63722))))
                    (declare (not safe))
                    (cons __tmp63721 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L61843_
                                                           __tmp63720))))
                                              (declare (not safe))
                                              (cons __tmp63751 __tmp63719)))
                                           (__tmp63683
                                            (let ((__tmp63684
                                                   (let ((__tmp63717
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp63685
                                                          (let ((__tmp63686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63687
                                (let ((__tmp63716
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp63688
                                       (let ((__tmp63711
                                              (let ((__tmp63715
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp63712
                                                     (let ((__tmp63713
                                                            (let ((__tmp63714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L61727_ __tmp63714))))
               (declare (not safe))
               (cons _L61760_ __tmp63713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63715 __tmp63712)))
                                             (__tmp63689
                                              (let ((__tmp63690
                                                     (let ((__tmp63710
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp63691
                                                            (let ((__tmp63706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63709 (gx#datum->syntax '#f 'klass))
                                 (__tmp63707
                                  (let ((__tmp63708
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp63708 '()))))
                             (declare (not safe))
                             (cons __tmp63709 __tmp63707)))
                          (__tmp63692
                           (let ((__tmp63693
                                  (let ((__tmp63705
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp63694
                                         (let ((__tmp63704
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp63695
                                                (let ((__tmp63703
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp63696
                                                       (let ((__tmp63697
                                                              (let ((__tmp63702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp63698
                             (let ((__tmp63699
                                    (let ((__tmp63701
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp63700
                                           (let ()
                                             (declare (not safe))
                                             (cons _L61727_ '()))))
                                      (declare (not safe))
                                      (cons __tmp63701 __tmp63700))))
                               (declare (not safe))
                               (cons __tmp63699 '()))))
                        (declare (not safe))
                        (cons __tmp63702 __tmp63698))))
                 (declare (not safe))
                 (cons _L61725_ __tmp63697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63703
                                                        __tmp63696))))
                                           (declare (not safe))
                                           (cons __tmp63704 __tmp63695))))
                                    (declare (not safe))
                                    (cons __tmp63705 __tmp63694))))
                             (declare (not safe))
                             (cons __tmp63693 '()))))
                      (declare (not safe))
                      (cons __tmp63706 __tmp63692))))
               (declare (not safe))
               (cons __tmp63710 __tmp63691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63690 '()))))
                                         (declare (not safe))
                                         (cons __tmp63711 __tmp63689))))
                                  (declare (not safe))
                                  (cons __tmp63716 __tmp63688))))
                           (declare (not safe))
                           (cons __tmp63687 '()))))
                    (declare (not safe))
                    (cons _L61871_ __tmp63686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63717
                                                           __tmp63685))))
                                              (declare (not safe))
                                              (cons __tmp63684 '()))))
                                       (declare (not safe))
                                       (cons __tmp63718 __tmp63683))))
                                (declare (not safe))
                                (cons __tmp63752 __tmp63682))))
                         (declare (not safe))
                         (cons __tmp63782 __tmp63681))))
                  (declare (not safe))
                  (cons __tmp63812 __tmp63680)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6185761868_))))
                                         (_g6185561886_
                                          (gx#stx-identifier
                                           _L61727_
                                           '"&"
                                           _L61843_)))))
                                   _g6182961840_))))
                          (_g6182761890_
                           (gx#stx-identifier _L61727_ _L61787_ '"-set!")))))
                    _g6180161812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6179961894_
                                                    (gx#stx-identifier
                                                     _L61727_
                                                     '"&"
                                                     _L61787_)))))
                                             _g6177361784_))))
                                    (_g6177161898_
                                     (gx#stx-identifier
                                      _L61727_
                                      '"class-type-"
                                      _L61727_)))))
                              _g6174661757_))))
                     (_g6174461902_ (gx#core-quote-syntax 'class::t))))
                 _hd6167161719_
                 _hd6166861709_)
                (_g6165761678_ _g6165861682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6165761678_
                                                     _g6165861682_))))
                                            (_g6165761678_ _g6165861682_))))
                                    (_g6165761678_ _g6165861682_))))
                            (_g6165761678_ _g6165861682_))))
                    (_g6165761678_ _g6165861682_)))))
        (_g6165661906_ _stx61654_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx61910_)
      (let* ((_g6191461943_
              (lambda (_g6191561939_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6191561939_)))
             (_g6191362043_
              (lambda (_g6191561947_)
                (if (gx#stx-pair? _g6191561947_)
                    (let ((_e6192061950_ (gx#syntax-e _g6191561947_)))
                      (let ((_hd6191961954_
                             (let ()
                               (declare (not safe))
                               (##car _e6192061950_)))
                            (_tl6191861957_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6192061950_))))
                        (if (gx#stx-pair/null? _tl6191861957_)
                            (let ((_g63813_
                                   (gx#syntax-split-splice _tl6191861957_ '0)))
                              (begin
                                (let ((_g63814_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g63813_)
                                             (##vector-length _g63813_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g63814_ 2)))
                                      (error "Context expects 2 values"
                                             _g63814_)))
                                (let ((_target6192161960_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63813_ 0)))
                                      (_tl6192361963_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63813_ 1))))
                                  (if (gx#stx-null? _tl6192361963_)
                                      (letrec ((_loop6192461966_
                                                (lambda (_hd6192261970_
                                                         _field6192861973_
                                                         _slot6192961975_)
                                                  (if (gx#stx-pair?
                                                       _hd6192261970_)
                                                      (let ((_e6192561978_
                                                             (gx#syntax-e
                                                              _hd6192261970_)))
                                                        (let ((_lp-hd6192661982_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6192561978_)))
                      (_lp-tl6192761985_
                       (let () (declare (not safe)) (##cdr _e6192561978_))))
                  (if (gx#stx-pair? _lp-hd6192661982_)
                      (let ((_e6193461988_ (gx#syntax-e _lp-hd6192661982_)))
                        (let ((_hd6193361992_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6193461988_)))
                              (_tl6193261995_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6193461988_))))
                          (if (gx#stx-pair? _tl6193261995_)
                              (let ((_e6193761998_
                                     (gx#syntax-e _tl6193261995_)))
                                (let ((_hd6193662002_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6193761998_)))
                                      (_tl6193562005_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6193761998_))))
                                  (if (gx#stx-null? _tl6193562005_)
                                      (_loop6192461966_
                                       _lp-tl6192761985_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6193662002_
                                               _field6192861973_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6193361992_
                                               _slot6192961975_)))
                                      (_g6191461943_ _g6191561947_))))
                              (_g6191461943_ _g6191561947_))))
                      (_g6191461943_ _g6191561947_))))
              (let ((_field6193062008_ (reverse _field6192861973_))
                    (_slot6193162011_ (reverse _slot6192961975_)))
                ((lambda (_L62014_ _L62016_)
                   (let ((__tmp63822 (gx#datum->syntax '#f 'begin))
                         (__tmp63815
                          (begin
                            (gx#syntax-check-splice-targets _L62014_ _L62016_)
                            (let ((__tmp63816
                                   (lambda (_g6203162035_
                                            _g6203262038_
                                            _g6203362040_)
                                     (let ((__tmp63817
                                            (let ((__tmp63821
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp63818
                                                   (let ((__tmp63819
                                                          (let ((__tmp63820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6203162035_ '()))))
                    (declare (not safe))
                    (cons _g6203262038_ __tmp63820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63819 '()))))
                                              (declare (not safe))
                                              (cons __tmp63821 __tmp63818))))
                                       (declare (not safe))
                                       (cons __tmp63817 _g6203362040_)))))
                              (declare (not safe))
                              (foldr2 __tmp63816 '() _L62014_ _L62016_)))))
                     (declare (not safe))
                     (cons __tmp63822 __tmp63815)))
                 _field6193062008_
                 _slot6193162011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6192461966_
                                         _target6192161960_
                                         '()
                                         '()))
                                      (_g6191461943_ _g6191561947_)))))
                            (_g6191461943_ _g6191561947_))))
                    (_g6191461943_ _g6191561947_)))))
        (_g6191362043_ _$stx61910_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62048_)
      (let* ((_g6205262078_
              (lambda (_g6205362074_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6205362074_)))
             (_g6205162161_
              (lambda (_g6205362082_)
                (if (gx#stx-pair? _g6205362082_)
                    (let ((_e6206062085_ (gx#syntax-e _g6205362082_)))
                      (let ((_hd6205962089_
                             (let ()
                               (declare (not safe))
                               (##car _e6206062085_)))
                            (_tl6205862092_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6206062085_))))
                        (if (gx#stx-pair? _tl6205862092_)
                            (let ((_e6206362095_ (gx#syntax-e _tl6205862092_)))
                              (let ((_hd6206262099_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6206362095_)))
                                    (_tl6206162102_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6206362095_))))
                                (if (gx#stx-pair? _tl6206162102_)
                                    (let ((_e6206662105_
                                           (gx#syntax-e _tl6206162102_)))
                                      (let ((_hd6206562109_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6206662105_)))
                                            (_tl6206462112_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6206662105_))))
                                        (if (gx#stx-pair? _tl6206462112_)
                                            (let ((_e6206962115_
                                                   (gx#syntax-e
                                                    _tl6206462112_)))
                                              (let ((_hd6206862119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6206962115_)))
                                                    (_tl6206762122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6206962115_))))
                                                (if (gx#stx-pair?
                                                     _tl6206762122_)
                                                    (let ((_e6207262125_
                                                           (gx#syntax-e
                                                            _tl6206762122_)))
                                                      (let ((_hd6207162129_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6207262125_)))
                    (_tl6207062132_
                     (let () (declare (not safe)) (##cdr _e6207262125_))))
                (if (gx#stx-null? _tl6207062132_)
                    ((lambda (_L62135_ _L62137_ _L62138_ _L62139_)
                       (let ((__tmp63869 (gx#datum->syntax '#f 'if))
                             (__tmp63823
                              (let ((__tmp63866
                                     (let ((__tmp63868
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp63867
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62139_ '()))))
                                       (declare (not safe))
                                       (cons __tmp63868 __tmp63867)))
                                    (__tmp63824
                                     (let ((__tmp63829
                                            (let ((__tmp63865
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp63830
                                                   (let ((__tmp63859
                                                          (let ((__tmp63864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp63860
                         (let ((__tmp63861
                                (let ((__tmp63863
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp63862
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62139_ '()))))
                                  (declare (not safe))
                                  (cons __tmp63863 __tmp63862))))
                           (declare (not safe))
                           (cons __tmp63861 '()))))
                    (declare (not safe))
                    (cons __tmp63864 __tmp63860)))
                 (__tmp63831
                  (let ((__tmp63832
                         (let ((__tmp63858 (gx#datum->syntax '#f 'cond))
                               (__tmp63833
                                (let ((__tmp63841
                                       (let ((__tmp63845
                                              (let ((__tmp63857
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp63846
                                                     (let ((__tmp63853
                                                            (let ((__tmp63856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp63854
                           (let ((__tmp63855 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp63855 '()))))
                      (declare (not safe))
                      (cons __tmp63856 __tmp63854)))
                   (__tmp63847
                    (let ((__tmp63848
                           (let ((__tmp63852
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp63849
                                  (let ((__tmp63851
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63850
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62138_ '()))))
                                    (declare (not safe))
                                    (cons __tmp63851 __tmp63850))))
                             (declare (not safe))
                             (cons __tmp63852 __tmp63849))))
                      (declare (not safe))
                      (cons __tmp63848 '()))))
               (declare (not safe))
               (cons __tmp63853 __tmp63847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63857 __tmp63846)))
                                             (__tmp63842
                                              (let ((__tmp63844
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp63843
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62137_ '()))))
                                                (declare (not safe))
                                                (cons __tmp63844 __tmp63843))))
                                         (declare (not safe))
                                         (cons __tmp63845 __tmp63842)))
                                      (__tmp63834
                                       (let ((__tmp63835
                                              (let ((__tmp63840
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63836
                                                     (let ((__tmp63837
                                                            (let ((__tmp63838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63839
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62138_ '()))))
                             (declare (not safe))
                             (cons _L62139_ __tmp63839))))
                      (declare (not safe))
                      (cons _L62135_ __tmp63838))))
               (declare (not safe))
               (cons __tmp63837 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63840 __tmp63836))))
                                         (declare (not safe))
                                         (cons __tmp63835 '()))))
                                  (declare (not safe))
                                  (cons __tmp63841 __tmp63834))))
                           (declare (not safe))
                           (cons __tmp63858 __tmp63833))))
                    (declare (not safe))
                    (cons __tmp63832 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63859
                                                           __tmp63831))))
                                              (declare (not safe))
                                              (cons __tmp63865 __tmp63830)))
                                           (__tmp63825
                                            (let ((__tmp63826
                                                   (let ((__tmp63827
                                                          (let ((__tmp63828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62138_ '()))))
                    (declare (not safe))
                    (cons _L62139_ __tmp63828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62135_
                                                           __tmp63827))))
                                              (declare (not safe))
                                              (cons __tmp63826 '()))))
                                       (declare (not safe))
                                       (cons __tmp63829 __tmp63825))))
                                (declare (not safe))
                                (cons __tmp63866 __tmp63824))))
                         (declare (not safe))
                         (cons __tmp63869 __tmp63823)))
                     _hd6207162129_
                     _hd6206862119_
                     _hd6206562109_
                     _hd6206262099_)
                    (_g6205262078_ _g6205362082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6205262078_
                                                     _g6205362082_))))
                                            (_g6205262078_ _g6205362082_))))
                                    (_g6205262078_ _g6205362082_))))
                            (_g6205262078_ _g6205362082_))))
                    (_g6205262078_ _g6205362082_)))))
        (_g6205162161_ _$stx62048_)))))
