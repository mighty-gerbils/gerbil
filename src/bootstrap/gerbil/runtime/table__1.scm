(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57721_)
      (let* ((_g5772557739_
              (lambda (_g5772657735_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5772657735_)))
             (_g5772457781_
              (lambda (_g5772657743_)
                (if (gx#stx-pair? _g5772657743_)
                    (let ((_e5773057746_ (gx#syntax-e _g5772657743_)))
                      (let ((_hd5772957750_
                             (let ()
                               (declare (not safe))
                               (##car _e5773057746_)))
                            (_tl5772857753_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5773057746_))))
                        (if (gx#stx-pair? _tl5772857753_)
                            (let ((_e5773357756_ (gx#syntax-e _tl5772857753_)))
                              (let ((_hd5773257760_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5773357756_)))
                                    (_tl5773157763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5773357756_))))
                                (if (gx#stx-null? _tl5773157763_)
                                    ((lambda (_L57766_)
                                       (let ((__tmp60303
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp60301
                                              (let ((__tmp60302
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57766_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp60302))))
                                         (declare (not safe))
                                         (cons __tmp60303 __tmp60301)))
                                     _hd5773257760_)
                                    (_g5772557739_ _g5772657743_))))
                            (_g5772557739_ _g5772657743_))))
                    (_g5772557739_ _g5772657743_)))))
        (_g5772457781_ _$stx57721_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx57785_)
      (let* ((_g5778957835_
              (lambda (_g5779057831_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5779057831_)))
             (_g5778857988_
              (lambda (_g5779057839_)
                (if (gx#stx-pair? _g5779057839_)
                    (let ((_e5780257842_ (gx#syntax-e _g5779057839_)))
                      (let ((_hd5780157846_
                             (let ()
                               (declare (not safe))
                               (##car _e5780257842_)))
                            (_tl5780057849_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5780257842_))))
                        (if (gx#stx-pair? _tl5780057849_)
                            (let ((_e5780557852_ (gx#syntax-e _tl5780057849_)))
                              (let ((_hd5780457856_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5780557852_)))
                                    (_tl5780357859_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5780557852_))))
                                (if (gx#stx-pair? _tl5780357859_)
                                    (let ((_e5780857862_
                                           (gx#syntax-e _tl5780357859_)))
                                      (let ((_hd5780757866_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5780857862_)))
                                            (_tl5780657869_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5780857862_))))
                                        (if (gx#stx-pair? _tl5780657869_)
                                            (let ((_e5781157872_
                                                   (gx#syntax-e
                                                    _tl5780657869_)))
                                              (let ((_hd5781057876_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5781157872_)))
                                                    (_tl5780957879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5781157872_))))
                                                (if (gx#stx-pair?
                                                     _tl5780957879_)
                                                    (let ((_e5781457882_
                                                           (gx#syntax-e
                                                            _tl5780957879_)))
                                                      (let ((_hd5781357886_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5781457882_)))
                    (_tl5781257889_
                     (let () (declare (not safe)) (##cdr _e5781457882_))))
                (if (gx#stx-pair? _tl5781257889_)
                    (let ((_e5781757892_ (gx#syntax-e _tl5781257889_)))
                      (let ((_hd5781657896_
                             (let ()
                               (declare (not safe))
                               (##car _e5781757892_)))
                            (_tl5781557899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5781757892_))))
                        (if (gx#stx-pair? _tl5781557899_)
                            (let ((_e5782057902_ (gx#syntax-e _tl5781557899_)))
                              (let ((_hd5781957906_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5782057902_)))
                                    (_tl5781857909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5782057902_))))
                                (if (gx#stx-pair? _tl5781857909_)
                                    (let ((_e5782357912_
                                           (gx#syntax-e _tl5781857909_)))
                                      (let ((_hd5782257916_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5782357912_)))
                                            (_tl5782157919_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5782357912_))))
                                        (if (gx#stx-pair? _tl5782157919_)
                                            (let ((_e5782657922_
                                                   (gx#syntax-e
                                                    _tl5782157919_)))
                                              (let ((_hd5782557926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5782657922_)))
                                                    (_tl5782457929_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5782657922_))))
                                                (if (gx#stx-pair?
                                                     _tl5782457929_)
                                                    (let ((_e5782957932_
                                                           (gx#syntax-e
                                                            _tl5782457929_)))
                                                      (let ((_hd5782857936_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5782957932_)))
                    (_tl5782757939_
                     (let () (declare (not safe)) (##cdr _e5782957932_))))
                (if (gx#stx-null? _tl5782757939_)
                    ((lambda (_L57942_
                              _L57944_
                              _L57945_
                              _L57946_
                              _L57947_
                              _L57948_
                              _L57949_
                              _L57950_
                              _L57951_)
                       (let ((__tmp60735 (gx#datum->syntax '#f 'begin))
                             (__tmp60304
                              (let ((__tmp60714
                                     (let ((__tmp60734
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60715
                                            (let ((__tmp60725
                                                   (let ((__tmp60726
                                                          (let ((__tmp60731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60733 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60732
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60733 __tmp60732)))
                        (__tmp60727
                         (let ((__tmp60728
                                (let ((__tmp60730 (gx#datum->syntax '#f 'seed))
                                      (__tmp60729
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60730 __tmp60729))))
                           (declare (not safe))
                           (cons __tmp60728 '()))))
                    (declare (not safe))
                    (cons __tmp60731 __tmp60727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57951_
                                                           __tmp60726)))
                                                  (__tmp60716
                                                   (let ((__tmp60717
                                                          (let ((__tmp60724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60718
                         (let ((__tmp60723 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60719
                                (let ((__tmp60720
                                       (let ((__tmp60721
                                              (let ((__tmp60722
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60722 '()))))
                                         (declare (not safe))
                                         (cons _L57942_ __tmp60721))))
                                  (declare (not safe))
                                  (cons _L57944_ __tmp60720))))
                           (declare (not safe))
                           (cons __tmp60723 __tmp60719))))
                    (declare (not safe))
                    (cons __tmp60724 __tmp60718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60717 '()))))
                                              (declare (not safe))
                                              (cons __tmp60725 __tmp60716))))
                                       (declare (not safe))
                                       (cons __tmp60734 __tmp60715)))
                                    (__tmp60305
                                     (let ((__tmp60671
                                            (let ((__tmp60713
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60672
                                                   (let ((__tmp60706
                                                          (let ((__tmp60707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60712 (gx#datum->syntax '#f 'tab))
                               (__tmp60708
                                (let ((__tmp60711 (gx#datum->syntax '#f 'key))
                                      (__tmp60709
                                       (let ((__tmp60710
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60710 '()))))
                                  (declare (not safe))
                                  (cons __tmp60711 __tmp60709))))
                           (declare (not safe))
                           (cons __tmp60712 __tmp60708))))
                    (declare (not safe))
                    (cons _L57950_ __tmp60707)))
                 (__tmp60673
                  (let ((__tmp60674
                         (let ((__tmp60705 (gx#datum->syntax '#f 'let))
                               (__tmp60675
                                (let ((__tmp60689
                                       (let ((__tmp60698
                                              (let ((__tmp60704
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60699
                                                     (let ((__tmp60700
                                                            (let ((__tmp60703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60701
                           (let ((__tmp60702 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60702 '()))))
                      (declare (not safe))
                      (cons __tmp60703 __tmp60701))))
               (declare (not safe))
               (cons __tmp60700 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60704 __tmp60699)))
                                             (__tmp60690
                                              (let ((__tmp60691
                                                     (let ((__tmp60697
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60692
                                                            (let ((__tmp60693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60696
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60694
                                  (let ((__tmp60695
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60695 '()))))
                             (declare (not safe))
                             (cons __tmp60696 __tmp60694))))
                      (declare (not safe))
                      (cons __tmp60693 '()))))
               (declare (not safe))
               (cons __tmp60697 __tmp60692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60691 '()))))
                                         (declare (not safe))
                                         (cons __tmp60698 __tmp60690)))
                                      (__tmp60676
                                       (let ((__tmp60677
                                              (let ((__tmp60688
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60678
                                                     (let ((__tmp60687
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60679
                                                            (let ((__tmp60686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60680
                           (let ((__tmp60681
                                  (let ((__tmp60682
                                         (let ((__tmp60685
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60683
                                                (let ((__tmp60684
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60684 '()))))
                                           (declare (not safe))
                                           (cons __tmp60685 __tmp60683))))
                                    (declare (not safe))
                                    (cons _L57942_ __tmp60682))))
                             (declare (not safe))
                             (cons _L57944_ __tmp60681))))
                      (declare (not safe))
                      (cons __tmp60686 __tmp60680))))
               (declare (not safe))
               (cons __tmp60687 __tmp60679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60688 __tmp60678))))
                                         (declare (not safe))
                                         (cons __tmp60677 '()))))
                                  (declare (not safe))
                                  (cons __tmp60689 __tmp60676))))
                           (declare (not safe))
                           (cons __tmp60705 __tmp60675))))
                    (declare (not safe))
                    (cons __tmp60674 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60706
                                                           __tmp60673))))
                                              (declare (not safe))
                                              (cons __tmp60713 __tmp60672)))
                                           (__tmp60306
                                            (let ((__tmp60625
                                                   (let ((__tmp60670
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp60626
                                                          (let ((__tmp60663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60664
                                (let ((__tmp60669 (gx#datum->syntax '#f 'tab))
                                      (__tmp60665
                                       (let ((__tmp60668
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60666
                                              (let ((__tmp60667
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60667 '()))))
                                         (declare (not safe))
                                         (cons __tmp60668 __tmp60666))))
                                  (declare (not safe))
                                  (cons __tmp60669 __tmp60665))))
                           (declare (not safe))
                           (cons _L57949_ __tmp60664)))
                        (__tmp60627
                         (let ((__tmp60636
                                (let ((__tmp60662 (gx#datum->syntax '#f 'when))
                                      (__tmp60637
                                       (let ((__tmp60643
                                              (let ((__tmp60661
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60644
                                                     (let ((__tmp60657
                                                            (let ((__tmp60660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60658
                           (let ((__tmp60659 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60659 '()))))
                      (declare (not safe))
                      (cons __tmp60660 __tmp60658)))
                   (__tmp60645
                    (let ((__tmp60646
                           (let ((__tmp60656
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60647
                                  (let ((__tmp60649
                                         (let ((__tmp60655
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60650
                                                (let ((__tmp60651
                                                       (let ((__tmp60654
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60652
                                                              (let ((__tmp60653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60653 '()))))
                 (declare (not safe))
                 (cons __tmp60654 __tmp60652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60651 '()))))
                                           (declare (not safe))
                                           (cons __tmp60655 __tmp60650)))
                                        (__tmp60648
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60649 __tmp60648))))
                             (declare (not safe))
                             (cons __tmp60656 __tmp60647))))
                      (declare (not safe))
                      (cons __tmp60646 '()))))
               (declare (not safe))
               (cons __tmp60657 __tmp60645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60661 __tmp60644)))
                                             (__tmp60638
                                              (let ((__tmp60639
                                                     (let ((__tmp60642
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60640
                                                            (let ((__tmp60641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60641 '()))))
               (declare (not safe))
               (cons __tmp60642 __tmp60640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60639 '()))))
                                         (declare (not safe))
                                         (cons __tmp60643 __tmp60638))))
                                  (declare (not safe))
                                  (cons __tmp60662 __tmp60637)))
                               (__tmp60628
                                (let ((__tmp60629
                                       (let ((__tmp60630
                                              (let ((__tmp60635
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60631
                                                     (let ((__tmp60634
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60632
                                                            (let ((__tmp60633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60633 '()))))
               (declare (not safe))
               (cons __tmp60634 __tmp60632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60635 __tmp60631))))
                                         (declare (not safe))
                                         (cons _L57948_ __tmp60630))))
                                  (declare (not safe))
                                  (cons __tmp60629 '()))))
                           (declare (not safe))
                           (cons __tmp60636 __tmp60628))))
                    (declare (not safe))
                    (cons __tmp60663 __tmp60627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60670
                                                           __tmp60626)))
                                                  (__tmp60307
                                                   (let ((__tmp60523
                                                          (let ((__tmp60624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp60524
                         (let ((__tmp60617
                                (let ((__tmp60618
                                       (let ((__tmp60623
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp60619
                                              (let ((__tmp60622
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp60620
                                                     (let ((__tmp60621
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp60621 '()))))
                                                (declare (not safe))
                                                (cons __tmp60622 __tmp60620))))
                                         (declare (not safe))
                                         (cons __tmp60623 __tmp60619))))
                                  (declare (not safe))
                                  (cons _L57948_ __tmp60618)))
                               (__tmp60525
                                (let ((__tmp60526
                                       (let ((__tmp60616
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp60527
                                              (let ((__tmp60600
                                                     (let ((__tmp60609
                                                            (let ((__tmp60615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp60610
                           (let ((__tmp60611
                                  (let ((__tmp60614
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp60612
                                         (let ((__tmp60613
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60613 '()))))
                                    (declare (not safe))
                                    (cons __tmp60614 __tmp60612))))
                             (declare (not safe))
                             (cons __tmp60611 '()))))
                      (declare (not safe))
                      (cons __tmp60615 __tmp60610)))
                   (__tmp60601
                    (let ((__tmp60602
                           (let ((__tmp60608 (gx#datum->syntax '#f 'seed))
                                 (__tmp60603
                                  (let ((__tmp60604
                                         (let ((__tmp60607
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp60605
                                                (let ((__tmp60606
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp60606 '()))))
                                           (declare (not safe))
                                           (cons __tmp60607 __tmp60605))))
                                    (declare (not safe))
                                    (cons __tmp60604 '()))))
                             (declare (not safe))
                             (cons __tmp60608 __tmp60603))))
                      (declare (not safe))
                      (cons __tmp60602 '()))))
               (declare (not safe))
               (cons __tmp60609 __tmp60601)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60528
                                                     (let ((__tmp60529
                                                            (let ((__tmp60599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp60530
                           (let ((__tmp60598 (gx#datum->syntax '#f 'table))
                                 (__tmp60531
                                  (let ((__tmp60597
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp60532
                                         (let ((__tmp60533
                                                (let ((__tmp60534
                                                       (let ((__tmp60596
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp60535
                                                              (let ((__tmp60595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp60536
                             (let ((__tmp60558
                                    (let ((__tmp60594
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp60559
                                           (let ((__tmp60560
                                                  (let ((__tmp60578
                                                         (let ((__tmp60593
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp60579
                        (let ((__tmp60589
                               (let ((__tmp60592
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp60590
                                      (let ((__tmp60591
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp60591 '()))))
                                 (declare (not safe))
                                 (cons __tmp60592 __tmp60590)))
                              (__tmp60580
                               (let ((__tmp60581
                                      (let ((__tmp60588
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp60582
                                             (let ((__tmp60584
                                                    (let ((__tmp60587
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60585
                                                           (let ((__tmp60586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60586 '()))))
              (declare (not safe))
              (cons __tmp60587 __tmp60585)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60583
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp60584 __tmp60583))))
                                        (declare (not safe))
                                        (cons __tmp60588 __tmp60582))))
                                 (declare (not safe))
                                 (cons __tmp60581 '()))))
                          (declare (not safe))
                          (cons __tmp60589 __tmp60580))))
                   (declare (not safe))
                   (cons __tmp60593 __tmp60579)))
                (__tmp60561
                 (let ((__tmp60562
                        (let ((__tmp60577 (gx#datum->syntax '#f 'set!))
                              (__tmp60563
                               (let ((__tmp60573
                                      (let ((__tmp60576
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60574
                                             (let ((__tmp60575
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60575 '()))))
                                        (declare (not safe))
                                        (cons __tmp60576 __tmp60574)))
                                     (__tmp60564
                                      (let ((__tmp60565
                                             (let ((__tmp60572
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60566
                                                    (let ((__tmp60568
                                                           (let ((__tmp60571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60569
                          (let ((__tmp60570 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60570 '()))))
                     (declare (not safe))
                     (cons __tmp60571 __tmp60569)))
                  (__tmp60567 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60568 __tmp60567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60572 __tmp60566))))
                                        (declare (not safe))
                                        (cons __tmp60565 '()))))
                                 (declare (not safe))
                                 (cons __tmp60573 __tmp60564))))
                          (declare (not safe))
                          (cons __tmp60577 __tmp60563))))
                   (declare (not safe))
                   (cons __tmp60562 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60578
                                                          __tmp60561))))
                                             (declare (not safe))
                                             (cons '() __tmp60560))))
                                      (declare (not safe))
                                      (cons __tmp60594 __tmp60559)))
                                   (__tmp60537
                                    (let ((__tmp60538
                                           (let ((__tmp60557
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp60539
                                                  (let ((__tmp60540
                                                         (let ((__tmp60541
                                                                (let ((__tmp60556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp60542
                               (let ((__tmp60552
                                      (let ((__tmp60555
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60553
                                             (let ((__tmp60554
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60554 '()))))
                                        (declare (not safe))
                                        (cons __tmp60555 __tmp60553)))
                                     (__tmp60543
                                      (let ((__tmp60544
                                             (let ((__tmp60551
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60545
                                                    (let ((__tmp60547
                                                           (let ((__tmp60550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60548
                          (let ((__tmp60549 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60549 '()))))
                     (declare (not safe))
                     (cons __tmp60550 __tmp60548)))
                  (__tmp60546 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60547 __tmp60546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60551 __tmp60545))))
                                        (declare (not safe))
                                        (cons __tmp60544 '()))))
                                 (declare (not safe))
                                 (cons __tmp60552 __tmp60543))))
                          (declare (not safe))
                          (cons __tmp60556 __tmp60542))))
                   (declare (not safe))
                   (cons __tmp60541 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp60540))))
                                             (declare (not safe))
                                             (cons __tmp60557 __tmp60539))))
                                      (declare (not safe))
                                      (cons __tmp60538 '()))))
                               (declare (not safe))
                               (cons __tmp60558 __tmp60537))))
                        (declare (not safe))
                        (cons __tmp60595 __tmp60536))))
                 (declare (not safe))
                 (cons __tmp60596 __tmp60535))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57942_ __tmp60534))))
                                           (declare (not safe))
                                           (cons _L57944_ __tmp60533))))
                                    (declare (not safe))
                                    (cons __tmp60597 __tmp60532))))
                             (declare (not safe))
                             (cons __tmp60598 __tmp60531))))
                      (declare (not safe))
                      (cons __tmp60599 __tmp60530))))
               (declare (not safe))
               (cons __tmp60529 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60600 __tmp60528))))
                                         (declare (not safe))
                                         (cons __tmp60616 __tmp60527))))
                                  (declare (not safe))
                                  (cons __tmp60526 '()))))
                           (declare (not safe))
                           (cons __tmp60617 __tmp60525))))
                    (declare (not safe))
                    (cons __tmp60624 __tmp60524)))
                 (__tmp60308
                  (let ((__tmp60475
                         (let ((__tmp60522 (gx#datum->syntax '#f 'def))
                               (__tmp60476
                                (let ((__tmp60514
                                       (let ((__tmp60515
                                              (let ((__tmp60521
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60516
                                                     (let ((__tmp60520
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60517
                                                            (let ((__tmp60518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60519 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp60519 '()))))
                      (declare (not safe))
                      (cons _L57947_ __tmp60518))))
               (declare (not safe))
               (cons __tmp60520 __tmp60517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60521 __tmp60516))))
                                         (declare (not safe))
                                         (cons _L57947_ __tmp60515)))
                                      (__tmp60477
                                       (let ((__tmp60487
                                              (let ((__tmp60513
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp60488
                                                     (let ((__tmp60494
                                                            (let ((__tmp60512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp60495
                           (let ((__tmp60508
                                  (let ((__tmp60511
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp60509
                                         (let ((__tmp60510
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60510 '()))))
                                    (declare (not safe))
                                    (cons __tmp60511 __tmp60509)))
                                 (__tmp60496
                                  (let ((__tmp60497
                                         (let ((__tmp60507
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp60498
                                                (let ((__tmp60500
                                                       (let ((__tmp60506
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp60501
                                                              (let ((__tmp60502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60505
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp60503
                                    (let ((__tmp60504
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp60504 '()))))
                               (declare (not safe))
                               (cons __tmp60505 __tmp60503))))
                        (declare (not safe))
                        (cons __tmp60502 '()))))
                 (declare (not safe))
                 (cons __tmp60506 __tmp60501)))
              (__tmp60499 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60500
                                                        __tmp60499))))
                                           (declare (not safe))
                                           (cons __tmp60507 __tmp60498))))
                                    (declare (not safe))
                                    (cons __tmp60497 '()))))
                             (declare (not safe))
                             (cons __tmp60508 __tmp60496))))
                      (declare (not safe))
                      (cons __tmp60512 __tmp60495)))
                   (__tmp60489
                    (let ((__tmp60490
                           (let ((__tmp60493
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp60491
                                  (let ((__tmp60492
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60492 '()))))
                             (declare (not safe))
                             (cons __tmp60493 __tmp60491))))
                      (declare (not safe))
                      (cons __tmp60490 '()))))
               (declare (not safe))
               (cons __tmp60494 __tmp60489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60513 __tmp60488)))
                                             (__tmp60478
                                              (let ((__tmp60479
                                                     (let ((__tmp60480
                                                            (let ((__tmp60486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60481
                           (let ((__tmp60485 (gx#datum->syntax '#f 'key))
                                 (__tmp60482
                                  (let ((__tmp60483
                                         (let ((__tmp60484
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp60484 '()))))
                                    (declare (not safe))
                                    (cons _L57947_ __tmp60483))))
                             (declare (not safe))
                             (cons __tmp60485 __tmp60482))))
                      (declare (not safe))
                      (cons __tmp60486 __tmp60481))))
               (declare (not safe))
               (cons _L57946_ __tmp60480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60479 '()))))
                                         (declare (not safe))
                                         (cons __tmp60487 __tmp60478))))
                                  (declare (not safe))
                                  (cons __tmp60514 __tmp60477))))
                           (declare (not safe))
                           (cons __tmp60522 __tmp60476)))
                        (__tmp60309
                         (let ((__tmp60371
                                (let ((__tmp60474 (gx#datum->syntax '#f 'def))
                                      (__tmp60372
                                       (let ((__tmp60466
                                              (let ((__tmp60467
                                                     (let ((__tmp60473
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp60468
                                                            (let ((__tmp60472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp60469
                           (let ((__tmp60470
                                  (let ((__tmp60471
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp60471 '()))))
                             (declare (not safe))
                             (cons _L57947_ __tmp60470))))
                      (declare (not safe))
                      (cons __tmp60472 __tmp60469))))
               (declare (not safe))
               (cons __tmp60473 __tmp60468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57946_ __tmp60467)))
                                             (__tmp60373
                                              (let ((__tmp60374
                                                     (let ((__tmp60465
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp60375
                                                            (let ((__tmp60449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60458
                                  (let ((__tmp60464
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp60459
                                         (let ((__tmp60460
                                                (let ((__tmp60463
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp60461
                                                       (let ((__tmp60462
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp60462
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60463
                                                        __tmp60461))))
                                           (declare (not safe))
                                           (cons __tmp60460 '()))))
                                    (declare (not safe))
                                    (cons __tmp60464 __tmp60459)))
                                 (__tmp60450
                                  (let ((__tmp60451
                                         (let ((__tmp60457
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp60452
                                                (let ((__tmp60453
                                                       (let ((__tmp60456
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp60454
                                                              (let ((__tmp60455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60455 '()))))
                 (declare (not safe))
                 (cons __tmp60456 __tmp60454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60453 '()))))
                                           (declare (not safe))
                                           (cons __tmp60457 __tmp60452))))
                                    (declare (not safe))
                                    (cons __tmp60451 '()))))
                             (declare (not safe))
                             (cons __tmp60458 __tmp60450)))
                          (__tmp60376
                           (let ((__tmp60377
                                  (let ((__tmp60448
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp60378
                                         (let ((__tmp60447
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60379
                                                (let ((__tmp60446
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60380
                                                       (let ((__tmp60381
                                                              (let ((__tmp60382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60445 (gx#datum->syntax '#f 'key))
                                   (__tmp60383
                                    (let ((__tmp60384
                                           (let ((__tmp60444
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp60385
                                                  (let ((__tmp60407
                                                         (let ((__tmp60443
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp60408
                        (let ((__tmp60409
                               (let ((__tmp60427
                                      (let ((__tmp60442
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp60428
                                             (let ((__tmp60438
                                                    (let ((__tmp60441
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60439
                                                           (let ((__tmp60440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60440 '()))))
              (declare (not safe))
              (cons __tmp60441 __tmp60439)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60429
                                                    (let ((__tmp60430
                                                           (let ((__tmp60437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp60431
                          (let ((__tmp60433
                                 (let ((__tmp60436
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp60434
                                        (let ((__tmp60435
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp60435 '()))))
                                   (declare (not safe))
                                   (cons __tmp60436 __tmp60434)))
                                (__tmp60432
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60433 __tmp60432))))
                     (declare (not safe))
                     (cons __tmp60437 __tmp60431))))
              (declare (not safe))
              (cons __tmp60430 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60438 __tmp60429))))
                                        (declare (not safe))
                                        (cons __tmp60442 __tmp60428)))
                                     (__tmp60410
                                      (let ((__tmp60411
                                             (let ((__tmp60426
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60412
                                                    (let ((__tmp60422
                                                           (let ((__tmp60425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60423
                          (let ((__tmp60424 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60424 '()))))
                     (declare (not safe))
                     (cons __tmp60425 __tmp60423)))
                  (__tmp60413
                   (let ((__tmp60414
                          (let ((__tmp60421 (gx#datum->syntax '#f 'fx+))
                                (__tmp60415
                                 (let ((__tmp60417
                                        (let ((__tmp60420
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60418
                                               (let ((__tmp60419
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60419 '()))))
                                          (declare (not safe))
                                          (cons __tmp60420 __tmp60418)))
                                       (__tmp60416
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60417 __tmp60416))))
                            (declare (not safe))
                            (cons __tmp60421 __tmp60415))))
                     (declare (not safe))
                     (cons __tmp60414 '()))))
              (declare (not safe))
              (cons __tmp60422 __tmp60413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60426 __tmp60412))))
                                        (declare (not safe))
                                        (cons __tmp60411 '()))))
                                 (declare (not safe))
                                 (cons __tmp60427 __tmp60410))))
                          (declare (not safe))
                          (cons '() __tmp60409))))
                   (declare (not safe))
                   (cons __tmp60443 __tmp60408)))
                (__tmp60386
                 (let ((__tmp60387
                        (let ((__tmp60406 (gx#datum->syntax '#f 'lambda))
                              (__tmp60388
                               (let ((__tmp60389
                                      (let ((__tmp60390
                                             (let ((__tmp60405
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60391
                                                    (let ((__tmp60401
                                                           (let ((__tmp60404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60402
                          (let ((__tmp60403 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60403 '()))))
                     (declare (not safe))
                     (cons __tmp60404 __tmp60402)))
                  (__tmp60392
                   (let ((__tmp60393
                          (let ((__tmp60400 (gx#datum->syntax '#f 'fx+))
                                (__tmp60394
                                 (let ((__tmp60396
                                        (let ((__tmp60399
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60397
                                               (let ((__tmp60398
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60398 '()))))
                                          (declare (not safe))
                                          (cons __tmp60399 __tmp60397)))
                                       (__tmp60395
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60396 __tmp60395))))
                            (declare (not safe))
                            (cons __tmp60400 __tmp60394))))
                     (declare (not safe))
                     (cons __tmp60393 '()))))
              (declare (not safe))
              (cons __tmp60401 __tmp60392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60405 __tmp60391))))
                                        (declare (not safe))
                                        (cons __tmp60390 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp60389))))
                          (declare (not safe))
                          (cons __tmp60406 __tmp60388))))
                   (declare (not safe))
                   (cons __tmp60387 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60407
                                                          __tmp60386))))
                                             (declare (not safe))
                                             (cons __tmp60444 __tmp60385))))
                                      (declare (not safe))
                                      (cons _L57947_ __tmp60384))))
                               (declare (not safe))
                               (cons __tmp60445 __tmp60383))))
                        (declare (not safe))
                        (cons _L57942_ __tmp60382))))
                 (declare (not safe))
                 (cons _L57944_ __tmp60381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60446
                                                        __tmp60380))))
                                           (declare (not safe))
                                           (cons __tmp60447 __tmp60379))))
                                    (declare (not safe))
                                    (cons __tmp60448 __tmp60378))))
                             (declare (not safe))
                             (cons __tmp60377 '()))))
                      (declare (not safe))
                      (cons __tmp60449 __tmp60376))))
               (declare (not safe))
               (cons __tmp60465 __tmp60375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60374 '()))))
                                         (declare (not safe))
                                         (cons __tmp60466 __tmp60373))))
                                  (declare (not safe))
                                  (cons __tmp60474 __tmp60372)))
                               (__tmp60310
                                (let ((__tmp60311
                                       (let ((__tmp60370
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp60312
                                              (let ((__tmp60365
                                                     (let ((__tmp60366
                                                            (let ((__tmp60369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60367
                           (let ((__tmp60368 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp60368 '()))))
                      (declare (not safe))
                      (cons __tmp60369 __tmp60367))))
               (declare (not safe))
               (cons _L57945_ __tmp60366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60313
                                                     (let ((__tmp60314
                                                            (let ((__tmp60364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60315
                           (let ((__tmp60348
                                  (let ((__tmp60357
                                         (let ((__tmp60363
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60358
                                                (let ((__tmp60359
                                                       (let ((__tmp60362
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60360
                                                              (let ((__tmp60361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60361 '()))))
                 (declare (not safe))
                 (cons __tmp60362 __tmp60360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60359 '()))))
                                           (declare (not safe))
                                           (cons __tmp60363 __tmp60358)))
                                        (__tmp60349
                                         (let ((__tmp60350
                                                (let ((__tmp60356
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60351
                                                       (let ((__tmp60352
                                                              (let ((__tmp60355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp60353
                             (let ((__tmp60354 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp60354 '()))))
                        (declare (not safe))
                        (cons __tmp60355 __tmp60353))))
                 (declare (not safe))
                 (cons __tmp60352 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60356
                                                        __tmp60351))))
                                           (declare (not safe))
                                           (cons __tmp60350 '()))))
                                    (declare (not safe))
                                    (cons __tmp60357 __tmp60349)))
                                 (__tmp60316
                                  (let ((__tmp60317
                                         (let ((__tmp60347
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp60318
                                                (let ((__tmp60346
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp60319
                                                       (let ((__tmp60345
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp60320
                                                              (let ((__tmp60321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60322
                                    (let ((__tmp60344
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp60323
                                           (let ((__tmp60324
                                                  (let ((__tmp60343
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp60325
                                                         (let ((__tmp60326
                                                                (let ((__tmp60327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60342 (gx#datum->syntax '#f 'set!))
                                     (__tmp60328
                                      (let ((__tmp60338
                                             (let ((__tmp60341
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp60339
                                                    (let ((__tmp60340
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp60340 '()))))
                                               (declare (not safe))
                                               (cons __tmp60341 __tmp60339)))
                                            (__tmp60329
                                             (let ((__tmp60330
                                                    (let ((__tmp60337
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp60331
                                                           (let ((__tmp60333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60336
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp60334
                                 (let ((__tmp60335
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp60335 '()))))
                            (declare (not safe))
                            (cons __tmp60336 __tmp60334)))
                         (__tmp60332
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60333 __tmp60332))))
              (declare (not safe))
              (cons __tmp60337 __tmp60331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60330 '()))))
                                        (declare (not safe))
                                        (cons __tmp60338 __tmp60329))))
                                 (declare (not safe))
                                 (cons __tmp60342 __tmp60328))))
                          (declare (not safe))
                          (cons __tmp60327 '()))))
                   (declare (not safe))
                   (cons '() __tmp60326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60343
                                                          __tmp60325))))
                                             (declare (not safe))
                                             (cons __tmp60324 '()))))
                                      (declare (not safe))
                                      (cons __tmp60344 __tmp60323))))
                               (declare (not safe))
                               (cons _L57942_ __tmp60322))))
                        (declare (not safe))
                        (cons _L57944_ __tmp60321))))
                 (declare (not safe))
                 (cons __tmp60345 __tmp60320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60346
                                                        __tmp60319))))
                                           (declare (not safe))
                                           (cons __tmp60347 __tmp60318))))
                                    (declare (not safe))
                                    (cons __tmp60317 '()))))
                             (declare (not safe))
                             (cons __tmp60348 __tmp60316))))
                      (declare (not safe))
                      (cons __tmp60364 __tmp60315))))
               (declare (not safe))
               (cons __tmp60314 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60365 __tmp60313))))
                                         (declare (not safe))
                                         (cons __tmp60370 __tmp60312))))
                                  (declare (not safe))
                                  (cons __tmp60311 '()))))
                           (declare (not safe))
                           (cons __tmp60371 __tmp60310))))
                    (declare (not safe))
                    (cons __tmp60475 __tmp60309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60523
                                                           __tmp60308))))
                                              (declare (not safe))
                                              (cons __tmp60625 __tmp60307))))
                                       (declare (not safe))
                                       (cons __tmp60671 __tmp60306))))
                                (declare (not safe))
                                (cons __tmp60714 __tmp60305))))
                         (declare (not safe))
                         (cons __tmp60735 __tmp60304)))
                     _hd5782857936_
                     _hd5782557926_
                     _hd5782257916_
                     _hd5781957906_
                     _hd5781657896_
                     _hd5781357886_
                     _hd5781057876_
                     _hd5780757866_
                     _hd5780457856_)
                    (_g5778957835_ _g5779057839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5778957835_
                                                     _g5779057839_))))
                                            (_g5778957835_ _g5779057839_))))
                                    (_g5778957835_ _g5779057839_))))
                            (_g5778957835_ _g5779057839_))))
                    (_g5778957835_ _g5779057839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5778957835_
                                                     _g5779057839_))))
                                            (_g5778957835_ _g5779057839_))))
                                    (_g5778957835_ _g5779057839_))))
                            (_g5778957835_ _g5779057839_))))
                    (_g5778957835_ _g5779057839_)))))
        (_g5778857988_ _$stx57785_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx57992_)
      (let* ((_g5799658018_
              (lambda (_g5799758014_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5799758014_)))
             (_g5799558087_
              (lambda (_g5799758022_)
                (if (gx#stx-pair? _g5799758022_)
                    (let ((_e5800358025_ (gx#syntax-e _g5799758022_)))
                      (let ((_hd5800258029_
                             (let ()
                               (declare (not safe))
                               (##car _e5800358025_)))
                            (_tl5800158032_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5800358025_))))
                        (if (gx#stx-pair? _tl5800158032_)
                            (let ((_e5800658035_ (gx#syntax-e _tl5800158032_)))
                              (let ((_hd5800558039_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5800658035_)))
                                    (_tl5800458042_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5800658035_))))
                                (if (gx#stx-pair? _tl5800458042_)
                                    (let ((_e5800958045_
                                           (gx#syntax-e _tl5800458042_)))
                                      (let ((_hd5800858049_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5800958045_)))
                                            (_tl5800758052_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5800958045_))))
                                        (if (gx#stx-pair? _tl5800758052_)
                                            (let ((_e5801258055_
                                                   (gx#syntax-e
                                                    _tl5800758052_)))
                                              (let ((_hd5801158059_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5801258055_)))
                                                    (_tl5801058062_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5801258055_))))
                                                (if (gx#stx-null?
                                                     _tl5801058062_)
                                                    ((lambda (_L58065_
                                                              _L58067_
                                                              _L58068_)
                                                       (let ((__tmp60755
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60736
                                                              (let ((__tmp60743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60754
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60744
                                    (let ((__tmp60745
                                           (let ((__tmp60753
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60746
                                                  (let ((__tmp60747
                                                         (let ((__tmp60748
                                                                (let ((__tmp60749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60752 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60750
                                      (let ((__tmp60751
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58067_ '()))))
                                        (declare (not safe))
                                        (cons _L58067_ __tmp60751))))
                                 (declare (not safe))
                                 (cons __tmp60752 __tmp60750))))
                          (declare (not safe))
                          (cons __tmp60749 '()))))
                   (declare (not safe))
                   (cons _L58067_ __tmp60748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58068_
                                                          __tmp60747))))
                                             (declare (not safe))
                                             (cons __tmp60753 __tmp60746))))
                                      (declare (not safe))
                                      (cons __tmp60745 '()))))
                               (declare (not safe))
                               (cons __tmp60754 __tmp60744)))
                            (__tmp60737
                             (let ((__tmp60738
                                    (let ((__tmp60742
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60739
                                           (let ((__tmp60741
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60740
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58065_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60741 __tmp60740))))
                                      (declare (not safe))
                                      (cons __tmp60742 __tmp60739))))
                               (declare (not safe))
                               (cons __tmp60738 '()))))
                        (declare (not safe))
                        (cons __tmp60743 __tmp60737))))
                 (declare (not safe))
                 (cons __tmp60755 __tmp60736)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5801158059_
                                                     _hd5800858049_
                                                     _hd5800558039_)
                                                    (_g5799658018_
                                                     _g5799758022_))))
                                            (_g5799658018_ _g5799758022_))))
                                    (_g5799658018_ _g5799758022_))))
                            (_g5799658018_ _g5799758022_))))
                    (_g5799658018_ _g5799758022_)))))
        (_g5799558087_ _$stx57992_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx58091_)
      (let* ((_g5809558129_
              (lambda (_g5809658125_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5809658125_)))
             (_g5809458240_
              (lambda (_g5809658133_)
                (if (gx#stx-pair? _g5809658133_)
                    (let ((_e5810558136_ (gx#syntax-e _g5809658133_)))
                      (let ((_hd5810458140_
                             (let ()
                               (declare (not safe))
                               (##car _e5810558136_)))
                            (_tl5810358143_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5810558136_))))
                        (if (gx#stx-pair? _tl5810358143_)
                            (let ((_e5810858146_ (gx#syntax-e _tl5810358143_)))
                              (let ((_hd5810758150_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5810858146_)))
                                    (_tl5810658153_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5810858146_))))
                                (if (gx#stx-pair? _tl5810658153_)
                                    (let ((_e5811158156_
                                           (gx#syntax-e _tl5810658153_)))
                                      (let ((_hd5811058160_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5811158156_)))
                                            (_tl5810958163_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5811158156_))))
                                        (if (gx#stx-pair? _tl5810958163_)
                                            (let ((_e5811458166_
                                                   (gx#syntax-e
                                                    _tl5810958163_)))
                                              (let ((_hd5811358170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5811458166_)))
                                                    (_tl5811258173_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5811458166_))))
                                                (if (gx#stx-pair?
                                                     _tl5811258173_)
                                                    (let ((_e5811758176_
                                                           (gx#syntax-e
                                                            _tl5811258173_)))
                                                      (let ((_hd5811658180_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5811758176_)))
                    (_tl5811558183_
                     (let () (declare (not safe)) (##cdr _e5811758176_))))
                (if (gx#stx-pair? _tl5811558183_)
                    (let ((_e5812058186_ (gx#syntax-e _tl5811558183_)))
                      (let ((_hd5811958190_
                             (let ()
                               (declare (not safe))
                               (##car _e5812058186_)))
                            (_tl5811858193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5812058186_))))
                        (if (gx#stx-pair? _tl5811858193_)
                            (let ((_e5812358196_ (gx#syntax-e _tl5811858193_)))
                              (let ((_hd5812258200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5812358196_)))
                                    (_tl5812158203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5812358196_))))
                                (if (gx#stx-null? _tl5812158203_)
                                    ((lambda (_L58206_
                                              _L58208_
                                              _L58209_
                                              _L58210_
                                              _L58211_
                                              _L58212_)
                                       (let ((__tmp60914
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60756
                                              (let ((__tmp60874
                                                     (let ((__tmp60905
                                                            (let ((__tmp60913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60906
                           (let ((__tmp60907
                                  (let ((__tmp60912
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60908
                                         (let ((__tmp60910
                                                (let ((__tmp60911
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58208_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58210_ __tmp60911)))
                                               (__tmp60909
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58211_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60910 __tmp60909))))
                                    (declare (not safe))
                                    (cons __tmp60912 __tmp60908))))
                             (declare (not safe))
                             (cons __tmp60907 '()))))
                      (declare (not safe))
                      (cons __tmp60913 __tmp60906)))
                   (__tmp60875
                    (let ((__tmp60899
                           (let ((__tmp60904 (gx#datum->syntax '#f 'size))
                                 (__tmp60900
                                  (let ((__tmp60901
                                         (let ((__tmp60903
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60902
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58212_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60903 __tmp60902))))
                                    (declare (not safe))
                                    (cons __tmp60901 '()))))
                             (declare (not safe))
                             (cons __tmp60904 __tmp60900)))
                          (__tmp60876
                           (let ((__tmp60891
                                  (let ((__tmp60898
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60892
                                         (let ((__tmp60893
                                                (let ((__tmp60897
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60894
                                                       (let ((__tmp60896
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60895
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60896 __tmp60895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60897
                                                        __tmp60894))))
                                           (declare (not safe))
                                           (cons __tmp60893 '()))))
                                    (declare (not safe))
                                    (cons __tmp60898 __tmp60892)))
                                 (__tmp60877
                                  (let ((__tmp60878
                                         (let ((__tmp60890
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60879
                                                (let ((__tmp60880
                                                       (let ((__tmp60889
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60881
                                                              (let ((__tmp60883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60888
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60884
                                    (let ((__tmp60887
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60885
                                           (let ((__tmp60886
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60886 '()))))
                                      (declare (not safe))
                                      (cons __tmp60887 __tmp60885))))
                               (declare (not safe))
                               (cons __tmp60888 __tmp60884)))
                            (__tmp60882
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60883 __tmp60882))))
                 (declare (not safe))
                 (cons __tmp60889 __tmp60881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60880 '()))))
                                           (declare (not safe))
                                           (cons __tmp60890 __tmp60879))))
                                    (declare (not safe))
                                    (cons __tmp60878 '()))))
                             (declare (not safe))
                             (cons __tmp60891 __tmp60877))))
                      (declare (not safe))
                      (cons __tmp60899 __tmp60876))))
               (declare (not safe))
               (cons __tmp60905 __tmp60875)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60757
                                                     (let ((__tmp60758
                                                            (let ((__tmp60873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60759
                           (let ((__tmp60872 (gx#datum->syntax '#f 'loop))
                                 (__tmp60760
                                  (let ((__tmp60859
                                         (let ((__tmp60868
                                                (let ((__tmp60871
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60869
                                                       (let ((__tmp60870
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60870
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60871
                                                        __tmp60869)))
                                               (__tmp60860
                                                (let ((__tmp60865
                                                       (let ((__tmp60867
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60866
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60867 __tmp60866)))
              (__tmp60861
               (let ((__tmp60862
                      (let ((__tmp60864 (gx#datum->syntax '#f 'deleted))
                            (__tmp60863
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60864 __tmp60863))))
                 (declare (not safe))
                 (cons __tmp60862 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60865
                                                        __tmp60861))))
                                           (declare (not safe))
                                           (cons __tmp60868 __tmp60860)))
                                        (__tmp60761
                                         (let ((__tmp60762
                                                (let ((__tmp60858
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60763
                                                       (let ((__tmp60850
                                                              (let ((__tmp60857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60851
                             (let ((__tmp60852
                                    (let ((__tmp60856
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60853
                                           (let ((__tmp60854
                                                  (let ((__tmp60855
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60855 '()))))
                                             (declare (not safe))
                                             (cons _L58212_ __tmp60854))))
                                      (declare (not safe))
                                      (cons __tmp60856 __tmp60853))))
                               (declare (not safe))
                               (cons __tmp60852 '()))))
                        (declare (not safe))
                        (cons __tmp60857 __tmp60851)))
                     (__tmp60764
                      (let ((__tmp60765
                             (let ((__tmp60849 (gx#datum->syntax '#f 'cond))
                                   (__tmp60766
                                    (let ((__tmp60840
                                           (let ((__tmp60842
                                                  (let ((__tmp60848
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60843
                                                         (let ((__tmp60847
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60844
                        (let ((__tmp60845
                               (let ((__tmp60846
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60846 '()))))
                          (declare (not safe))
                          (cons __tmp60845 '()))))
                   (declare (not safe))
                   (cons __tmp60847 __tmp60844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60848
                                                          __tmp60843)))
                                                 (__tmp60841
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58206_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60842 __tmp60841)))
                                          (__tmp60767
                                           (let ((__tmp60807
                                                  (let ((__tmp60833
                                                         (let ((__tmp60839
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60834
                        (let ((__tmp60838 (gx#datum->syntax '#f 'k))
                              (__tmp60835
                               (let ((__tmp60836
                                      (let ((__tmp60837
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60837 '()))))
                                 (declare (not safe))
                                 (cons __tmp60836 '()))))
                          (declare (not safe))
                          (cons __tmp60838 __tmp60835))))
                   (declare (not safe))
                   (cons __tmp60839 __tmp60834)))
                (__tmp60808
                 (let ((__tmp60809
                        (let ((__tmp60832 (gx#datum->syntax '#f 'loop))
                              (__tmp60810
                               (let ((__tmp60824
                                      (let ((__tmp60831
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60825
                                             (let ((__tmp60830
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60826
                                                    (let ((__tmp60829
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60827
                                                           (let ((__tmp60828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60828 '()))))
              (declare (not safe))
              (cons __tmp60829 __tmp60827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60830 __tmp60826))))
                                        (declare (not safe))
                                        (cons __tmp60831 __tmp60825)))
                                     (__tmp60811
                                      (let ((__tmp60819
                                             (let ((__tmp60823
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60820
                                                    (let ((__tmp60822
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60821
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60822
                                                            __tmp60821))))
                                               (declare (not safe))
                                               (cons __tmp60823 __tmp60820)))
                                            (__tmp60812
                                             (let ((__tmp60813
                                                    (let ((__tmp60818
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60814
                                                           (let ((__tmp60817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60815
                          (let ((__tmp60816 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60816 '()))))
                     (declare (not safe))
                     (cons __tmp60817 __tmp60815))))
              (declare (not safe))
              (cons __tmp60818 __tmp60814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60813 '()))))
                                        (declare (not safe))
                                        (cons __tmp60819 __tmp60812))))
                                 (declare (not safe))
                                 (cons __tmp60824 __tmp60811))))
                          (declare (not safe))
                          (cons __tmp60832 __tmp60810))))
                   (declare (not safe))
                   (cons __tmp60809 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60833
                                                          __tmp60808)))
                                                 (__tmp60768
                                                  (let ((__tmp60792
                                                         (let ((__tmp60803
                                                                (let ((__tmp60804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60805
                                      (let ((__tmp60806
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60806 '()))))
                                 (declare (not safe))
                                 (cons _L58208_ __tmp60805))))
                          (declare (not safe))
                          (cons _L58209_ __tmp60804)))
                       (__tmp60793
                        (let ((__tmp60794
                               (let ((__tmp60802
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60795
                                      (let ((__tmp60796
                                             (let ((__tmp60797
                                                    (let ((__tmp60801
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60798
                                                           (let ((__tmp60800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60799
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60800 __tmp60799))))
              (declare (not safe))
              (cons __tmp60801 __tmp60798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60797 '()))))
                                        (declare (not safe))
                                        (cons _L58212_ __tmp60796))))
                                 (declare (not safe))
                                 (cons __tmp60802 __tmp60795))))
                          (declare (not safe))
                          (cons __tmp60794 '()))))
                   (declare (not safe))
                   (cons __tmp60803 __tmp60793)))
                (__tmp60769
                 (let ((__tmp60770
                        (let ((__tmp60791 (gx#datum->syntax '#f 'else))
                              (__tmp60771
                               (let ((__tmp60772
                                      (let ((__tmp60790
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60773
                                             (let ((__tmp60782
                                                    (let ((__tmp60789
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60783
                                                           (let ((__tmp60788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60784
                          (let ((__tmp60787 (gx#datum->syntax '#f 'i))
                                (__tmp60785
                                 (let ((__tmp60786
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60786 '()))))
                            (declare (not safe))
                            (cons __tmp60787 __tmp60785))))
                     (declare (not safe))
                     (cons __tmp60788 __tmp60784))))
              (declare (not safe))
              (cons __tmp60789 __tmp60783)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60774
                                                    (let ((__tmp60777
                                                           (let ((__tmp60781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60778
                          (let ((__tmp60780 (gx#datum->syntax '#f 'i))
                                (__tmp60779
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60780 __tmp60779))))
                     (declare (not safe))
                     (cons __tmp60781 __tmp60778)))
                  (__tmp60775
                   (let ((__tmp60776 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60776 '()))))
              (declare (not safe))
              (cons __tmp60777 __tmp60775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60782 __tmp60774))))
                                        (declare (not safe))
                                        (cons __tmp60790 __tmp60773))))
                                 (declare (not safe))
                                 (cons __tmp60772 '()))))
                          (declare (not safe))
                          (cons __tmp60791 __tmp60771))))
                   (declare (not safe))
                   (cons __tmp60770 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60792
                                                          __tmp60769))))
                                             (declare (not safe))
                                             (cons __tmp60807 __tmp60768))))
                                      (declare (not safe))
                                      (cons __tmp60840 __tmp60767))))
                               (declare (not safe))
                               (cons __tmp60849 __tmp60766))))
                        (declare (not safe))
                        (cons __tmp60765 '()))))
                 (declare (not safe))
                 (cons __tmp60850 __tmp60764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60858
                                                        __tmp60763))))
                                           (declare (not safe))
                                           (cons __tmp60762 '()))))
                                    (declare (not safe))
                                    (cons __tmp60859 __tmp60761))))
                             (declare (not safe))
                             (cons __tmp60872 __tmp60760))))
                      (declare (not safe))
                      (cons __tmp60873 __tmp60759))))
               (declare (not safe))
               (cons __tmp60758 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60874 __tmp60757))))
                                         (declare (not safe))
                                         (cons __tmp60914 __tmp60756)))
                                     _hd5812258200_
                                     _hd5811958190_
                                     _hd5811658180_
                                     _hd5811358170_
                                     _hd5811058160_
                                     _hd5810758150_)
                                    (_g5809558129_ _g5809658133_))))
                            (_g5809558129_ _g5809658133_))))
                    (_g5809558129_ _g5809658133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5809558129_
                                                     _g5809658133_))))
                                            (_g5809558129_ _g5809658133_))))
                                    (_g5809558129_ _g5809658133_))))
                            (_g5809558129_ _g5809658133_))))
                    (_g5809558129_ _g5809658133_)))))
        (_g5809458240_ _$stx58091_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx58244_)
      (let* ((_g5824858290_
              (lambda (_g5824958286_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5824958286_)))
             (_g5824758429_
              (lambda (_g5824958294_)
                (if (gx#stx-pair? _g5824958294_)
                    (let ((_e5826058297_ (gx#syntax-e _g5824958294_)))
                      (let ((_hd5825958301_
                             (let ()
                               (declare (not safe))
                               (##car _e5826058297_)))
                            (_tl5825858304_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5826058297_))))
                        (if (gx#stx-pair? _tl5825858304_)
                            (let ((_e5826358307_ (gx#syntax-e _tl5825858304_)))
                              (let ((_hd5826258311_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5826358307_)))
                                    (_tl5826158314_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5826358307_))))
                                (if (gx#stx-pair? _tl5826158314_)
                                    (let ((_e5826658317_
                                           (gx#syntax-e _tl5826158314_)))
                                      (let ((_hd5826558321_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5826658317_)))
                                            (_tl5826458324_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5826658317_))))
                                        (if (gx#stx-pair? _tl5826458324_)
                                            (let ((_e5826958327_
                                                   (gx#syntax-e
                                                    _tl5826458324_)))
                                              (let ((_hd5826858331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5826958327_)))
                                                    (_tl5826758334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5826958327_))))
                                                (if (gx#stx-pair?
                                                     _tl5826758334_)
                                                    (let ((_e5827258337_
                                                           (gx#syntax-e
                                                            _tl5826758334_)))
                                                      (let ((_hd5827158341_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5827258337_)))
                    (_tl5827058344_
                     (let () (declare (not safe)) (##cdr _e5827258337_))))
                (if (gx#stx-pair? _tl5827058344_)
                    (let ((_e5827558347_ (gx#syntax-e _tl5827058344_)))
                      (let ((_hd5827458351_
                             (let ()
                               (declare (not safe))
                               (##car _e5827558347_)))
                            (_tl5827358354_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5827558347_))))
                        (if (gx#stx-pair? _tl5827358354_)
                            (let ((_e5827858357_ (gx#syntax-e _tl5827358354_)))
                              (let ((_hd5827758361_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5827858357_)))
                                    (_tl5827658364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5827858357_))))
                                (if (gx#stx-pair? _tl5827658364_)
                                    (let ((_e5828158367_
                                           (gx#syntax-e _tl5827658364_)))
                                      (let ((_hd5828058371_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5828158367_)))
                                            (_tl5827958374_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5828158367_))))
                                        (if (gx#stx-pair? _tl5827958374_)
                                            (let ((_e5828458377_
                                                   (gx#syntax-e
                                                    _tl5827958374_)))
                                              (let ((_hd5828358381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5828458377_)))
                                                    (_tl5828258384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5828458377_))))
                                                (if (gx#stx-null?
                                                     _tl5828258384_)
                                                    ((lambda (_L58387_
                                                              _L58389_
                                                              _L58390_
                                                              _L58391_
                                                              _L58392_
                                                              _L58393_
                                                              _L58394_
                                                              _L58395_)
                                                       (let ((__tmp61131
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60915
                                                              (let ((__tmp61091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61122
                                    (let ((__tmp61130
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61123
                                           (let ((__tmp61124
                                                  (let ((__tmp61129
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp61125
                                                         (let ((__tmp61127
                                                                (let ((__tmp61128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58391_ '()))))
                          (declare (not safe))
                          (cons _L58393_ __tmp61128)))
                       (__tmp61126
                        (let () (declare (not safe)) (cons _L58394_ '()))))
                   (declare (not safe))
                   (cons __tmp61127 __tmp61126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61129
                                                          __tmp61125))))
                                             (declare (not safe))
                                             (cons __tmp61124 '()))))
                                      (declare (not safe))
                                      (cons __tmp61130 __tmp61123)))
                                   (__tmp61092
                                    (let ((__tmp61116
                                           (let ((__tmp61121
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp61117
                                                  (let ((__tmp61118
                                                         (let ((__tmp61120
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp61119
                        (let () (declare (not safe)) (cons _L58395_ '()))))
                   (declare (not safe))
                   (cons __tmp61120 __tmp61119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61118 '()))))
                                             (declare (not safe))
                                             (cons __tmp61121 __tmp61117)))
                                          (__tmp61093
                                           (let ((__tmp61108
                                                  (let ((__tmp61115
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp61109
                                                         (let ((__tmp61110
                                                                (let ((__tmp61114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp61111
                               (let ((__tmp61113 (gx#datum->syntax '#f 'size))
                                     (__tmp61112
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp61113 __tmp61112))))
                          (declare (not safe))
                          (cons __tmp61114 __tmp61111))))
                   (declare (not safe))
                   (cons __tmp61110 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61115
                                                          __tmp61109)))
                                                 (__tmp61094
                                                  (let ((__tmp61095
                                                         (let ((__tmp61107
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp61096
                        (let ((__tmp61097
                               (let ((__tmp61106
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp61098
                                      (let ((__tmp61100
                                             (let ((__tmp61105
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp61101
                                                    (let ((__tmp61104
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp61102
                                                           (let ((__tmp61103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp61103 '()))))
              (declare (not safe))
              (cons __tmp61104 __tmp61102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61105 __tmp61101)))
                                            (__tmp61099
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp61100 __tmp61099))))
                                 (declare (not safe))
                                 (cons __tmp61106 __tmp61098))))
                          (declare (not safe))
                          (cons __tmp61097 '()))))
                   (declare (not safe))
                   (cons __tmp61107 __tmp61096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61095 '()))))
                                             (declare (not safe))
                                             (cons __tmp61108 __tmp61094))))
                                      (declare (not safe))
                                      (cons __tmp61116 __tmp61093))))
                               (declare (not safe))
                               (cons __tmp61122 __tmp61092)))
                            (__tmp60916
                             (let ((__tmp60917
                                    (let ((__tmp61090
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60918
                                           (let ((__tmp61089
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60919
                                                  (let ((__tmp61076
                                                         (let ((__tmp61085
                                                                (let ((__tmp61088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp61086
                               (let ((__tmp61087
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp61087 '()))))
                          (declare (not safe))
                          (cons __tmp61088 __tmp61086)))
                       (__tmp61077
                        (let ((__tmp61082
                               (let ((__tmp61084 (gx#datum->syntax '#f 'i))
                                     (__tmp61083
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61084 __tmp61083)))
                              (__tmp61078
                               (let ((__tmp61079
                                      (let ((__tmp61081
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp61080
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp61081 __tmp61080))))
                                 (declare (not safe))
                                 (cons __tmp61079 '()))))
                          (declare (not safe))
                          (cons __tmp61082 __tmp61078))))
                   (declare (not safe))
                   (cons __tmp61085 __tmp61077)))
                (__tmp60920
                 (let ((__tmp60921
                        (let ((__tmp61075 (gx#datum->syntax '#f 'let))
                              (__tmp60922
                               (let ((__tmp61067
                                      (let ((__tmp61074
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp61068
                                             (let ((__tmp61069
                                                    (let ((__tmp61073
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp61070
                                                           (let ((__tmp61071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp61072 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp61072 '()))))
                     (declare (not safe))
                     (cons _L58395_ __tmp61071))))
              (declare (not safe))
              (cons __tmp61073 __tmp61070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61069 '()))))
                                        (declare (not safe))
                                        (cons __tmp61074 __tmp61068)))
                                     (__tmp60923
                                      (let ((__tmp60924
                                             (let ((__tmp61066
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60925
                                                    (let ((__tmp61007
                                                           (let ((__tmp61059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp61065 (gx#datum->syntax '#f 'eq?))
                                (__tmp61060
                                 (let ((__tmp61064 (gx#datum->syntax '#f 'k))
                                       (__tmp61061
                                        (let ((__tmp61062
                                               (let ((__tmp61063
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp61063 '()))))
                                          (declare (not safe))
                                          (cons __tmp61062 '()))))
                                   (declare (not safe))
                                   (cons __tmp61064 __tmp61061))))
                            (declare (not safe))
                            (cons __tmp61065 __tmp61060)))
                         (__tmp61008
                          (let ((__tmp61009
                                 (let ((__tmp61058 (gx#datum->syntax '#f 'if))
                                       (__tmp61010
                                        (let ((__tmp61057
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp61011
                                               (let ((__tmp61035
                                                      (let ((__tmp61056
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp61036
                                                             (let ((__tmp61050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61055
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp61051
                                   (let ((__tmp61052
                                          (let ((__tmp61054
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp61053
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58391_ '()))))
                                            (declare (not safe))
                                            (cons __tmp61054 __tmp61053))))
                                     (declare (not safe))
                                     (cons _L58395_ __tmp61052))))
                              (declare (not safe))
                              (cons __tmp61055 __tmp61051)))
                           (__tmp61037
                            (let ((__tmp61040
                                   (let ((__tmp61049
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp61041
                                          (let ((__tmp61042
                                                 (let ((__tmp61044
                                                        (let ((__tmp61048
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp61045
                                                               (let ((__tmp61047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp61046
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp61047 __tmp61046))))
                  (declare (not safe))
                  (cons __tmp61048 __tmp61045)))
               (__tmp61043 (let () (declare (not safe)) (cons _L58390_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp61044
                                                         __tmp61043))))
                                            (declare (not safe))
                                            (cons _L58395_ __tmp61042))))
                                     (declare (not safe))
                                     (cons __tmp61049 __tmp61041)))
                                  (__tmp61038
                                   (let ((__tmp61039
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58387_ '()))))
                                     (declare (not safe))
                                     (cons __tmp61039 '()))))
                              (declare (not safe))
                              (cons __tmp61040 __tmp61038))))
                       (declare (not safe))
                       (cons __tmp61050 __tmp61037))))
                (declare (not safe))
                (cons __tmp61056 __tmp61036)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp61012
                                                      (let ((__tmp61013
                                                             (let ((__tmp61034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp61014
                            (let ((__tmp61028
                                   (let ((__tmp61033
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp61029
                                          (let ((__tmp61030
                                                 (let ((__tmp61032
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp61031
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58391_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp61032
                                                         __tmp61031))))
                                            (declare (not safe))
                                            (cons _L58395_ __tmp61030))))
                                     (declare (not safe))
                                     (cons __tmp61033 __tmp61029)))
                                  (__tmp61015
                                   (let ((__tmp61018
                                          (let ((__tmp61027
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp61019
                                                 (let ((__tmp61020
                                                        (let ((__tmp61022
                                                               (let ((__tmp61026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp61023
                              (let ((__tmp61025 (gx#datum->syntax '#f 'probe))
                                    (__tmp61024
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp61025 __tmp61024))))
                         (declare (not safe))
                         (cons __tmp61026 __tmp61023)))
                      (__tmp61021
                       (let () (declare (not safe)) (cons _L58390_ '()))))
                  (declare (not safe))
                  (cons __tmp61022 __tmp61021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58395_
                                                         __tmp61020))))
                                            (declare (not safe))
                                            (cons __tmp61027 __tmp61019)))
                                         (__tmp61016
                                          (let ((__tmp61017
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58389_ '()))))
                                            (declare (not safe))
                                            (cons __tmp61017 '()))))
                                     (declare (not safe))
                                     (cons __tmp61018 __tmp61016))))
                              (declare (not safe))
                              (cons __tmp61028 __tmp61015))))
                       (declare (not safe))
                       (cons __tmp61034 __tmp61014))))
                (declare (not safe))
                (cons __tmp61013 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61035
                                                       __tmp61012))))
                                          (declare (not safe))
                                          (cons __tmp61057 __tmp61011))))
                                   (declare (not safe))
                                   (cons __tmp61058 __tmp61010))))
                            (declare (not safe))
                            (cons __tmp61009 '()))))
                     (declare (not safe))
                     (cons __tmp61059 __tmp61008)))
                  (__tmp60926
                   (let ((__tmp60974
                          (let ((__tmp61000
                                 (let ((__tmp61006 (gx#datum->syntax '#f 'eq?))
                                       (__tmp61001
                                        (let ((__tmp61005
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp61002
                                               (let ((__tmp61003
                                                      (let ((__tmp61004
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp61004
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp61003 '()))))
                                          (declare (not safe))
                                          (cons __tmp61005 __tmp61002))))
                                   (declare (not safe))
                                   (cons __tmp61006 __tmp61001)))
                                (__tmp60975
                                 (let ((__tmp60976
                                        (let ((__tmp60999
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60977
                                               (let ((__tmp60991
                                                      (let ((__tmp60998
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60992
                                                             (let ((__tmp60997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60993
                            (let ((__tmp60996 (gx#datum->syntax '#f 'i))
                                  (__tmp60994
                                   (let ((__tmp60995
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60995 '()))))
                              (declare (not safe))
                              (cons __tmp60996 __tmp60994))))
                       (declare (not safe))
                       (cons __tmp60997 __tmp60993))))
                (declare (not safe))
                (cons __tmp60998 __tmp60992)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60978
                                                      (let ((__tmp60986
                                                             (let ((__tmp60990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60987
                            (let ((__tmp60989 (gx#datum->syntax '#f 'i))
                                  (__tmp60988
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60989 __tmp60988))))
                       (declare (not safe))
                       (cons __tmp60990 __tmp60987)))
                    (__tmp60979
                     (let ((__tmp60980
                            (let ((__tmp60985 (gx#datum->syntax '#f 'or))
                                  (__tmp60981
                                   (let ((__tmp60984
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60982
                                          (let ((__tmp60983
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60983 '()))))
                                     (declare (not safe))
                                     (cons __tmp60984 __tmp60982))))
                              (declare (not safe))
                              (cons __tmp60985 __tmp60981))))
                       (declare (not safe))
                       (cons __tmp60980 '()))))
                (declare (not safe))
                (cons __tmp60986 __tmp60979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60991
                                                       __tmp60978))))
                                          (declare (not safe))
                                          (cons __tmp60999 __tmp60977))))
                                   (declare (not safe))
                                   (cons __tmp60976 '()))))
                            (declare (not safe))
                            (cons __tmp61000 __tmp60975)))
                         (__tmp60927
                          (let ((__tmp60951
                                 (let ((__tmp60970
                                        (let ((__tmp60971
                                               (let ((__tmp60972
                                                      (let ((__tmp60973
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60973
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58391_ __tmp60972))))
                                          (declare (not safe))
                                          (cons _L58392_ __tmp60971)))
                                       (__tmp60952
                                        (let ((__tmp60964
                                               (let ((__tmp60969
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60965
                                                      (let ((__tmp60966
                                                             (let ((__tmp60968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60967
                            (let () (declare (not safe)) (cons _L58391_ '()))))
                       (declare (not safe))
                       (cons __tmp60968 __tmp60967))))
                (declare (not safe))
                (cons _L58395_ __tmp60966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60969 __tmp60965)))
                                              (__tmp60953
                                               (let ((__tmp60954
                                                      (let ((__tmp60963
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60955
                                                             (let ((__tmp60956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60958
                                   (let ((__tmp60962
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60959
                                          (let ((__tmp60961
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60960
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60961 __tmp60960))))
                                     (declare (not safe))
                                     (cons __tmp60962 __tmp60959)))
                                  (__tmp60957
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58390_ '()))))
                              (declare (not safe))
                              (cons __tmp60958 __tmp60957))))
                       (declare (not safe))
                       (cons _L58395_ __tmp60956))))
                (declare (not safe))
                (cons __tmp60963 __tmp60955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60954 '()))))
                                          (declare (not safe))
                                          (cons __tmp60964 __tmp60953))))
                                   (declare (not safe))
                                   (cons __tmp60970 __tmp60952)))
                                (__tmp60928
                                 (let ((__tmp60929
                                        (let ((__tmp60950
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60930
                                               (let ((__tmp60931
                                                      (let ((__tmp60949
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60932
                                                             (let ((__tmp60941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60948
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60942
                                   (let ((__tmp60947
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60943
                                          (let ((__tmp60946
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60944
                                                 (let ((__tmp60945
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60945 '()))))
                                            (declare (not safe))
                                            (cons __tmp60946 __tmp60944))))
                                     (declare (not safe))
                                     (cons __tmp60947 __tmp60943))))
                              (declare (not safe))
                              (cons __tmp60948 __tmp60942)))
                           (__tmp60933
                            (let ((__tmp60936
                                   (let ((__tmp60940
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60937
                                          (let ((__tmp60939
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60938
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60939 __tmp60938))))
                                     (declare (not safe))
                                     (cons __tmp60940 __tmp60937)))
                                  (__tmp60934
                                   (let ((__tmp60935
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60935 '()))))
                              (declare (not safe))
                              (cons __tmp60936 __tmp60934))))
                       (declare (not safe))
                       (cons __tmp60941 __tmp60933))))
                (declare (not safe))
                (cons __tmp60949 __tmp60932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60931 '()))))
                                          (declare (not safe))
                                          (cons __tmp60950 __tmp60930))))
                                   (declare (not safe))
                                   (cons __tmp60929 '()))))
                            (declare (not safe))
                            (cons __tmp60951 __tmp60928))))
                     (declare (not safe))
                     (cons __tmp60974 __tmp60927))))
              (declare (not safe))
              (cons __tmp61007 __tmp60926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61066 __tmp60925))))
                                        (declare (not safe))
                                        (cons __tmp60924 '()))))
                                 (declare (not safe))
                                 (cons __tmp61067 __tmp60923))))
                          (declare (not safe))
                          (cons __tmp61075 __tmp60922))))
                   (declare (not safe))
                   (cons __tmp60921 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61076
                                                          __tmp60920))))
                                             (declare (not safe))
                                             (cons __tmp61089 __tmp60919))))
                                      (declare (not safe))
                                      (cons __tmp61090 __tmp60918))))
                               (declare (not safe))
                               (cons __tmp60917 '()))))
                        (declare (not safe))
                        (cons __tmp61091 __tmp60916))))
                 (declare (not safe))
                 (cons __tmp61131 __tmp60915)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5828358381_
                                                     _hd5828058371_
                                                     _hd5827758361_
                                                     _hd5827458351_
                                                     _hd5827158341_
                                                     _hd5826858331_
                                                     _hd5826558321_
                                                     _hd5826258311_)
                                                    (_g5824858290_
                                                     _g5824958294_))))
                                            (_g5824858290_ _g5824958294_))))
                                    (_g5824858290_ _g5824958294_))))
                            (_g5824858290_ _g5824958294_))))
                    (_g5824858290_ _g5824958294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5824858290_
                                                     _g5824958294_))))
                                            (_g5824858290_ _g5824958294_))))
                                    (_g5824858290_ _g5824958294_))))
                            (_g5824858290_ _g5824958294_))))
                    (_g5824858290_ _g5824958294_)))))
        (_g5824758429_ _$stx58244_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx58433_)
      (let* ((_g5843758483_
              (lambda (_g5843858479_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5843858479_)))
             (_g5843658636_
              (lambda (_g5843858487_)
                (if (gx#stx-pair? _g5843858487_)
                    (let ((_e5845058490_ (gx#syntax-e _g5843858487_)))
                      (let ((_hd5844958494_
                             (let ()
                               (declare (not safe))
                               (##car _e5845058490_)))
                            (_tl5844858497_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5845058490_))))
                        (if (gx#stx-pair? _tl5844858497_)
                            (let ((_e5845358500_ (gx#syntax-e _tl5844858497_)))
                              (let ((_hd5845258504_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5845358500_)))
                                    (_tl5845158507_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5845358500_))))
                                (if (gx#stx-pair? _tl5845158507_)
                                    (let ((_e5845658510_
                                           (gx#syntax-e _tl5845158507_)))
                                      (let ((_hd5845558514_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5845658510_)))
                                            (_tl5845458517_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5845658510_))))
                                        (if (gx#stx-pair? _tl5845458517_)
                                            (let ((_e5845958520_
                                                   (gx#syntax-e
                                                    _tl5845458517_)))
                                              (let ((_hd5845858524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5845958520_)))
                                                    (_tl5845758527_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5845958520_))))
                                                (if (gx#stx-pair?
                                                     _tl5845758527_)
                                                    (let ((_e5846258530_
                                                           (gx#syntax-e
                                                            _tl5845758527_)))
                                                      (let ((_hd5846158534_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5846258530_)))
                    (_tl5846058537_
                     (let () (declare (not safe)) (##cdr _e5846258530_))))
                (if (gx#stx-pair? _tl5846058537_)
                    (let ((_e5846558540_ (gx#syntax-e _tl5846058537_)))
                      (let ((_hd5846458544_
                             (let ()
                               (declare (not safe))
                               (##car _e5846558540_)))
                            (_tl5846358547_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5846558540_))))
                        (if (gx#stx-pair? _tl5846358547_)
                            (let ((_e5846858550_ (gx#syntax-e _tl5846358547_)))
                              (let ((_hd5846758554_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5846858550_)))
                                    (_tl5846658557_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5846858550_))))
                                (if (gx#stx-pair? _tl5846658557_)
                                    (let ((_e5847158560_
                                           (gx#syntax-e _tl5846658557_)))
                                      (let ((_hd5847058564_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5847158560_)))
                                            (_tl5846958567_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5847158560_))))
                                        (if (gx#stx-pair? _tl5846958567_)
                                            (let ((_e5847458570_
                                                   (gx#syntax-e
                                                    _tl5846958567_)))
                                              (let ((_hd5847358574_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5847458570_)))
                                                    (_tl5847258577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5847458570_))))
                                                (if (gx#stx-pair?
                                                     _tl5847258577_)
                                                    (let ((_e5847758580_
                                                           (gx#syntax-e
                                                            _tl5847258577_)))
                                                      (let ((_hd5847658584_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5847758580_)))
                    (_tl5847558587_
                     (let () (declare (not safe)) (##cdr _e5847758580_))))
                (if (gx#stx-null? _tl5847558587_)
                    ((lambda (_L58590_
                              _L58592_
                              _L58593_
                              _L58594_
                              _L58595_
                              _L58596_
                              _L58597_
                              _L58598_
                              _L58599_)
                       (let ((__tmp61363 (gx#datum->syntax '#f 'let*))
                             (__tmp61132
                              (let ((__tmp61323
                                     (let ((__tmp61354
                                            (let ((__tmp61362
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp61355
                                                   (let ((__tmp61356
                                                          (let ((__tmp61361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp61357
                         (let ((__tmp61359
                                (let ((__tmp61360
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58595_ '()))))
                                  (declare (not safe))
                                  (cons _L58597_ __tmp61360)))
                               (__tmp61358
                                (let ()
                                  (declare (not safe))
                                  (cons _L58598_ '()))))
                           (declare (not safe))
                           (cons __tmp61359 __tmp61358))))
                    (declare (not safe))
                    (cons __tmp61361 __tmp61357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61356 '()))))
                                              (declare (not safe))
                                              (cons __tmp61362 __tmp61355)))
                                           (__tmp61324
                                            (let ((__tmp61348
                                                   (let ((__tmp61353
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp61349
                                                          (let ((__tmp61350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61352
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp61351
                                (let ()
                                  (declare (not safe))
                                  (cons _L58599_ '()))))
                           (declare (not safe))
                           (cons __tmp61352 __tmp61351))))
                    (declare (not safe))
                    (cons __tmp61350 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61353
                                                           __tmp61349)))
                                                  (__tmp61325
                                                   (let ((__tmp61340
                                                          (let ((__tmp61347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp61341
                         (let ((__tmp61342
                                (let ((__tmp61346
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp61343
                                       (let ((__tmp61345
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp61344
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp61345 __tmp61344))))
                                  (declare (not safe))
                                  (cons __tmp61346 __tmp61343))))
                           (declare (not safe))
                           (cons __tmp61342 '()))))
                    (declare (not safe))
                    (cons __tmp61347 __tmp61341)))
                 (__tmp61326
                  (let ((__tmp61327
                         (let ((__tmp61339 (gx#datum->syntax '#f 'start))
                               (__tmp61328
                                (let ((__tmp61329
                                       (let ((__tmp61338
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp61330
                                              (let ((__tmp61332
                                                     (let ((__tmp61337
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp61333
                                                            (let ((__tmp61336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61334
                           (let ((__tmp61335 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp61335 '()))))
                      (declare (not safe))
                      (cons __tmp61336 __tmp61334))))
               (declare (not safe))
               (cons __tmp61337 __tmp61333)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61331
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp61332 __tmp61331))))
                                         (declare (not safe))
                                         (cons __tmp61338 __tmp61330))))
                                  (declare (not safe))
                                  (cons __tmp61329 '()))))
                           (declare (not safe))
                           (cons __tmp61339 __tmp61328))))
                    (declare (not safe))
                    (cons __tmp61327 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61340
                                                           __tmp61326))))
                                              (declare (not safe))
                                              (cons __tmp61348 __tmp61325))))
                                       (declare (not safe))
                                       (cons __tmp61354 __tmp61324)))
                                    (__tmp61133
                                     (let ((__tmp61134
                                            (let ((__tmp61322
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp61135
                                                   (let ((__tmp61321
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp61136
                                                          (let ((__tmp61308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61317
                                (let ((__tmp61320
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp61318
                                       (let ((__tmp61319
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp61319 '()))))
                                  (declare (not safe))
                                  (cons __tmp61320 __tmp61318)))
                               (__tmp61309
                                (let ((__tmp61314
                                       (let ((__tmp61316
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp61315
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp61316 __tmp61315)))
                                      (__tmp61310
                                       (let ((__tmp61311
                                              (let ((__tmp61313
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp61312
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp61313 __tmp61312))))
                                         (declare (not safe))
                                         (cons __tmp61311 '()))))
                                  (declare (not safe))
                                  (cons __tmp61314 __tmp61310))))
                           (declare (not safe))
                           (cons __tmp61317 __tmp61309)))
                        (__tmp61137
                         (let ((__tmp61138
                                (let ((__tmp61307 (gx#datum->syntax '#f 'let))
                                      (__tmp61139
                                       (let ((__tmp61299
                                              (let ((__tmp61306
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp61300
                                                     (let ((__tmp61301
                                                            (let ((__tmp61305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp61302
                           (let ((__tmp61303
                                  (let ((__tmp61304
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp61304 '()))))
                             (declare (not safe))
                             (cons _L58599_ __tmp61303))))
                      (declare (not safe))
                      (cons __tmp61305 __tmp61302))))
               (declare (not safe))
               (cons __tmp61301 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61306 __tmp61300)))
                                             (__tmp61140
                                              (let ((__tmp61141
                                                     (let ((__tmp61298
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp61142
                                                            (let ((__tmp61235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61291
                                  (let ((__tmp61297
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp61292
                                         (let ((__tmp61296
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp61293
                                                (let ((__tmp61294
                                                       (let ((__tmp61295
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp61295
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61294 '()))))
                                           (declare (not safe))
                                           (cons __tmp61296 __tmp61293))))
                                    (declare (not safe))
                                    (cons __tmp61297 __tmp61292)))
                                 (__tmp61236
                                  (let ((__tmp61237
                                         (let ((__tmp61290
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp61238
                                                (let ((__tmp61289
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp61239
                                                       (let ((__tmp61265
                                                              (let ((__tmp61288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp61266
                             (let ((__tmp61282
                                    (let ((__tmp61287
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp61283
                                           (let ((__tmp61284
                                                  (let ((__tmp61286
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp61285
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61286
                                                          __tmp61285))))
                                             (declare (not safe))
                                             (cons _L58599_ __tmp61284))))
                                      (declare (not safe))
                                      (cons __tmp61287 __tmp61283)))
                                   (__tmp61267
                                    (let ((__tmp61270
                                           (let ((__tmp61281
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61271
                                                  (let ((__tmp61272
                                                         (let ((__tmp61276
                                                                (let ((__tmp61280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp61277
                               (let ((__tmp61279
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp61278
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61279 __tmp61278))))
                          (declare (not safe))
                          (cons __tmp61280 __tmp61277)))
                       (__tmp61273
                        (let ((__tmp61274
                               (let ((__tmp61275
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58593_ '()))))
                                 (declare (not safe))
                                 (cons _L58594_ __tmp61275))))
                          (declare (not safe))
                          (cons __tmp61274 '()))))
                   (declare (not safe))
                   (cons __tmp61276 __tmp61273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58599_
                                                          __tmp61272))))
                                             (declare (not safe))
                                             (cons __tmp61281 __tmp61271)))
                                          (__tmp61268
                                           (let ((__tmp61269
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58590_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61269 '()))))
                                      (declare (not safe))
                                      (cons __tmp61270 __tmp61268))))
                               (declare (not safe))
                               (cons __tmp61282 __tmp61267))))
                        (declare (not safe))
                        (cons __tmp61288 __tmp61266)))
                     (__tmp61240
                      (let ((__tmp61241
                             (let ((__tmp61264 (gx#datum->syntax '#f 'begin))
                                   (__tmp61242
                                    (let ((__tmp61258
                                           (let ((__tmp61263
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61259
                                                  (let ((__tmp61260
                                                         (let ((__tmp61262
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp61261
                        (let () (declare (not safe)) (cons _L58595_ '()))))
                   (declare (not safe))
                   (cons __tmp61262 __tmp61261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58599_
                                                          __tmp61260))))
                                             (declare (not safe))
                                             (cons __tmp61263 __tmp61259)))
                                          (__tmp61243
                                           (let ((__tmp61246
                                                  (let ((__tmp61257
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp61247
                                                         (let ((__tmp61248
                                                                (let ((__tmp61252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61256 (gx#datum->syntax '#f 'fx+))
                                     (__tmp61253
                                      (let ((__tmp61255
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp61254
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp61255 __tmp61254))))
                                 (declare (not safe))
                                 (cons __tmp61256 __tmp61253)))
                              (__tmp61249
                               (let ((__tmp61250
                                      (let ((__tmp61251
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58593_ '()))))
                                        (declare (not safe))
                                        (cons _L58594_ __tmp61251))))
                                 (declare (not safe))
                                 (cons __tmp61250 '()))))
                          (declare (not safe))
                          (cons __tmp61252 __tmp61249))))
                   (declare (not safe))
                   (cons _L58599_ __tmp61248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61257
                                                          __tmp61247)))
                                                 (__tmp61244
                                                  (let ((__tmp61245
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61245 '()))))
                                             (declare (not safe))
                                             (cons __tmp61246 __tmp61244))))
                                      (declare (not safe))
                                      (cons __tmp61258 __tmp61243))))
                               (declare (not safe))
                               (cons __tmp61264 __tmp61242))))
                        (declare (not safe))
                        (cons __tmp61241 '()))))
                 (declare (not safe))
                 (cons __tmp61265 __tmp61240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61289
                                                        __tmp61239))))
                                           (declare (not safe))
                                           (cons __tmp61290 __tmp61238))))
                                    (declare (not safe))
                                    (cons __tmp61237 '()))))
                             (declare (not safe))
                             (cons __tmp61291 __tmp61236)))
                          (__tmp61143
                           (let ((__tmp61202
                                  (let ((__tmp61228
                                         (let ((__tmp61234
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp61229
                                                (let ((__tmp61233
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp61230
                                                       (let ((__tmp61231
                                                              (let ((__tmp61232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp61232 '()))))
                 (declare (not safe))
                 (cons __tmp61231 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61233
                                                        __tmp61230))))
                                           (declare (not safe))
                                           (cons __tmp61234 __tmp61229)))
                                        (__tmp61203
                                         (let ((__tmp61204
                                                (let ((__tmp61227
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp61205
                                                       (let ((__tmp61219
                                                              (let ((__tmp61226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp61220
                             (let ((__tmp61225 (gx#datum->syntax '#f 'start))
                                   (__tmp61221
                                    (let ((__tmp61224
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp61222
                                           (let ((__tmp61223
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp61223 '()))))
                                      (declare (not safe))
                                      (cons __tmp61224 __tmp61222))))
                               (declare (not safe))
                               (cons __tmp61225 __tmp61221))))
                        (declare (not safe))
                        (cons __tmp61226 __tmp61220)))
                     (__tmp61206
                      (let ((__tmp61214
                             (let ((__tmp61218 (gx#datum->syntax '#f 'fx+))
                                   (__tmp61215
                                    (let ((__tmp61217
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp61216
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp61217 __tmp61216))))
                               (declare (not safe))
                               (cons __tmp61218 __tmp61215)))
                            (__tmp61207
                             (let ((__tmp61208
                                    (let ((__tmp61213
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp61209
                                           (let ((__tmp61212
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp61210
                                                  (let ((__tmp61211
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61211 '()))))
                                             (declare (not safe))
                                             (cons __tmp61212 __tmp61210))))
                                      (declare (not safe))
                                      (cons __tmp61213 __tmp61209))))
                               (declare (not safe))
                               (cons __tmp61208 '()))))
                        (declare (not safe))
                        (cons __tmp61214 __tmp61207))))
                 (declare (not safe))
                 (cons __tmp61219 __tmp61206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61227
                                                        __tmp61205))))
                                           (declare (not safe))
                                           (cons __tmp61204 '()))))
                                    (declare (not safe))
                                    (cons __tmp61228 __tmp61203)))
                                 (__tmp61144
                                  (let ((__tmp61168
                                         (let ((__tmp61198
                                                (let ((__tmp61199
                                                       (let ((__tmp61200
                                                              (let ((__tmp61201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp61201 '()))))
                 (declare (not safe))
                 (cons _L58595_ __tmp61200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58596_ __tmp61199)))
                                               (__tmp61169
                                                (let ((__tmp61192
                                                       (let ((__tmp61197
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp61193
                                                              (let ((__tmp61194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61196 (gx#datum->syntax '#f 'probe))
                                   (__tmp61195
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58595_ '()))))
                               (declare (not safe))
                               (cons __tmp61196 __tmp61195))))
                        (declare (not safe))
                        (cons _L58599_ __tmp61194))))
                 (declare (not safe))
                 (cons __tmp61197 __tmp61193)))
              (__tmp61170
               (let ((__tmp61171
                      (let ((__tmp61191 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp61172
                             (let ((__tmp61173
                                    (let ((__tmp61186
                                           (let ((__tmp61190
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61187
                                                  (let ((__tmp61189
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp61188
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp61189
                                                          __tmp61188))))
                                             (declare (not safe))
                                             (cons __tmp61190 __tmp61187)))
                                          (__tmp61174
                                           (let ((__tmp61175
                                                  (let ((__tmp61176
                                                         (let ((__tmp61177
                                                                (let ((__tmp61185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp61178
                               (let ((__tmp61179
                                      (let ((__tmp61180
                                             (let ((__tmp61184
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61181
                                                    (let ((__tmp61183
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp61182
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61183
                                                            __tmp61182))))
                                               (declare (not safe))
                                               (cons __tmp61184 __tmp61181))))
                                        (declare (not safe))
                                        (cons __tmp61180 '()))))
                                 (declare (not safe))
                                 (cons _L58599_ __tmp61179))))
                          (declare (not safe))
                          (cons __tmp61185 __tmp61178))))
                   (declare (not safe))
                   (cons __tmp61177 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58594_
                                                          __tmp61176))))
                                             (declare (not safe))
                                             (cons __tmp61175 '()))))
                                      (declare (not safe))
                                      (cons __tmp61186 __tmp61174))))
                               (declare (not safe))
                               (cons _L58599_ __tmp61173))))
                        (declare (not safe))
                        (cons __tmp61191 __tmp61172))))
                 (declare (not safe))
                 (cons __tmp61171 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61192
                                                        __tmp61170))))
                                           (declare (not safe))
                                           (cons __tmp61198 __tmp61169)))
                                        (__tmp61145
                                         (let ((__tmp61146
                                                (let ((__tmp61167
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp61147
                                                       (let ((__tmp61148
                                                              (let ((__tmp61166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp61149
                             (let ((__tmp61158
                                    (let ((__tmp61165
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp61159
                                           (let ((__tmp61164
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp61160
                                                  (let ((__tmp61163
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp61161
                                                         (let ((__tmp61162
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp61162 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61163
                                                          __tmp61161))))
                                             (declare (not safe))
                                             (cons __tmp61164 __tmp61160))))
                                      (declare (not safe))
                                      (cons __tmp61165 __tmp61159)))
                                   (__tmp61150
                                    (let ((__tmp61153
                                           (let ((__tmp61157
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61154
                                                  (let ((__tmp61156
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp61155
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp61156
                                                          __tmp61155))))
                                             (declare (not safe))
                                             (cons __tmp61157 __tmp61154)))
                                          (__tmp61151
                                           (let ((__tmp61152
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp61152 '()))))
                                      (declare (not safe))
                                      (cons __tmp61153 __tmp61151))))
                               (declare (not safe))
                               (cons __tmp61158 __tmp61150))))
                        (declare (not safe))
                        (cons __tmp61166 __tmp61149))))
                 (declare (not safe))
                 (cons __tmp61148 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61167
                                                        __tmp61147))))
                                           (declare (not safe))
                                           (cons __tmp61146 '()))))
                                    (declare (not safe))
                                    (cons __tmp61168 __tmp61145))))
                             (declare (not safe))
                             (cons __tmp61202 __tmp61144))))
                      (declare (not safe))
                      (cons __tmp61235 __tmp61143))))
               (declare (not safe))
               (cons __tmp61298 __tmp61142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61141 '()))))
                                         (declare (not safe))
                                         (cons __tmp61299 __tmp61140))))
                                  (declare (not safe))
                                  (cons __tmp61307 __tmp61139))))
                           (declare (not safe))
                           (cons __tmp61138 '()))))
                    (declare (not safe))
                    (cons __tmp61308 __tmp61137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61321
                                                           __tmp61136))))
                                              (declare (not safe))
                                              (cons __tmp61322 __tmp61135))))
                                       (declare (not safe))
                                       (cons __tmp61134 '()))))
                                (declare (not safe))
                                (cons __tmp61323 __tmp61133))))
                         (declare (not safe))
                         (cons __tmp61363 __tmp61132)))
                     _hd5847658584_
                     _hd5847358574_
                     _hd5847058564_
                     _hd5846758554_
                     _hd5846458544_
                     _hd5846158534_
                     _hd5845858524_
                     _hd5845558514_
                     _hd5845258504_)
                    (_g5843758483_ _g5843858487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5843758483_
                                                     _g5843858487_))))
                                            (_g5843758483_ _g5843858487_))))
                                    (_g5843758483_ _g5843858487_))))
                            (_g5843758483_ _g5843858487_))))
                    (_g5843758483_ _g5843858487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5843758483_
                                                     _g5843858487_))))
                                            (_g5843758483_ _g5843858487_))))
                                    (_g5843758483_ _g5843858487_))))
                            (_g5843758483_ _g5843858487_))))
                    (_g5843758483_ _g5843858487_)))))
        (_g5843658636_ _$stx58433_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx58640_)
      (let* ((_g5864458678_
              (lambda (_g5864558674_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5864558674_)))
             (_g5864358789_
              (lambda (_g5864558682_)
                (if (gx#stx-pair? _g5864558682_)
                    (let ((_e5865458685_ (gx#syntax-e _g5864558682_)))
                      (let ((_hd5865358689_
                             (let ()
                               (declare (not safe))
                               (##car _e5865458685_)))
                            (_tl5865258692_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5865458685_))))
                        (if (gx#stx-pair? _tl5865258692_)
                            (let ((_e5865758695_ (gx#syntax-e _tl5865258692_)))
                              (let ((_hd5865658699_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5865758695_)))
                                    (_tl5865558702_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5865758695_))))
                                (if (gx#stx-pair? _tl5865558702_)
                                    (let ((_e5866058705_
                                           (gx#syntax-e _tl5865558702_)))
                                      (let ((_hd5865958709_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5866058705_)))
                                            (_tl5865858712_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5866058705_))))
                                        (if (gx#stx-pair? _tl5865858712_)
                                            (let ((_e5866358715_
                                                   (gx#syntax-e
                                                    _tl5865858712_)))
                                              (let ((_hd5866258719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5866358715_)))
                                                    (_tl5866158722_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5866358715_))))
                                                (if (gx#stx-pair?
                                                     _tl5866158722_)
                                                    (let ((_e5866658725_
                                                           (gx#syntax-e
                                                            _tl5866158722_)))
                                                      (let ((_hd5866558729_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5866658725_)))
                    (_tl5866458732_
                     (let () (declare (not safe)) (##cdr _e5866658725_))))
                (if (gx#stx-pair? _tl5866458732_)
                    (let ((_e5866958735_ (gx#syntax-e _tl5866458732_)))
                      (let ((_hd5866858739_
                             (let ()
                               (declare (not safe))
                               (##car _e5866958735_)))
                            (_tl5866758742_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5866958735_))))
                        (if (gx#stx-pair? _tl5866758742_)
                            (let ((_e5867258745_ (gx#syntax-e _tl5866758742_)))
                              (let ((_hd5867158749_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5867258745_)))
                                    (_tl5867058752_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5867258745_))))
                                (if (gx#stx-null? _tl5867058752_)
                                    ((lambda (_L58755_
                                              _L58757_
                                              _L58758_
                                              _L58759_
                                              _L58760_
                                              _L58761_)
                                       (let ((__tmp61525
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61364
                                              (let ((__tmp61485
                                                     (let ((__tmp61516
                                                            (let ((__tmp61524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61517
                           (let ((__tmp61518
                                  (let ((__tmp61523
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61519
                                         (let ((__tmp61521
                                                (let ((__tmp61522
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58757_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58759_ __tmp61522)))
                                               (__tmp61520
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58760_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61521 __tmp61520))))
                                    (declare (not safe))
                                    (cons __tmp61523 __tmp61519))))
                             (declare (not safe))
                             (cons __tmp61518 '()))))
                      (declare (not safe))
                      (cons __tmp61524 __tmp61517)))
                   (__tmp61486
                    (let ((__tmp61510
                           (let ((__tmp61515 (gx#datum->syntax '#f 'size))
                                 (__tmp61511
                                  (let ((__tmp61512
                                         (let ((__tmp61514
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61513
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58761_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61514 __tmp61513))))
                                    (declare (not safe))
                                    (cons __tmp61512 '()))))
                             (declare (not safe))
                             (cons __tmp61515 __tmp61511)))
                          (__tmp61487
                           (let ((__tmp61502
                                  (let ((__tmp61509
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61503
                                         (let ((__tmp61504
                                                (let ((__tmp61508
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61505
                                                       (let ((__tmp61507
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61506
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61507 __tmp61506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61508
                                                        __tmp61505))))
                                           (declare (not safe))
                                           (cons __tmp61504 '()))))
                                    (declare (not safe))
                                    (cons __tmp61509 __tmp61503)))
                                 (__tmp61488
                                  (let ((__tmp61489
                                         (let ((__tmp61501
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61490
                                                (let ((__tmp61491
                                                       (let ((__tmp61500
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61492
                                                              (let ((__tmp61494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61499
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61495
                                    (let ((__tmp61498
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61496
                                           (let ((__tmp61497
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61497 '()))))
                                      (declare (not safe))
                                      (cons __tmp61498 __tmp61496))))
                               (declare (not safe))
                               (cons __tmp61499 __tmp61495)))
                            (__tmp61493
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61494 __tmp61493))))
                 (declare (not safe))
                 (cons __tmp61500 __tmp61492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61491 '()))))
                                           (declare (not safe))
                                           (cons __tmp61501 __tmp61490))))
                                    (declare (not safe))
                                    (cons __tmp61489 '()))))
                             (declare (not safe))
                             (cons __tmp61502 __tmp61488))))
                      (declare (not safe))
                      (cons __tmp61510 __tmp61487))))
               (declare (not safe))
               (cons __tmp61516 __tmp61486)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61365
                                                     (let ((__tmp61366
                                                            (let ((__tmp61484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61367
                           (let ((__tmp61483 (gx#datum->syntax '#f 'loop))
                                 (__tmp61368
                                  (let ((__tmp61474
                                         (let ((__tmp61479
                                                (let ((__tmp61482
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61480
                                                       (let ((__tmp61481
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61481
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61482
                                                        __tmp61480)))
                                               (__tmp61475
                                                (let ((__tmp61476
                                                       (let ((__tmp61478
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61477
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61478 __tmp61477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61476 '()))))
                                           (declare (not safe))
                                           (cons __tmp61479 __tmp61475)))
                                        (__tmp61369
                                         (let ((__tmp61370
                                                (let ((__tmp61473
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61371
                                                       (let ((__tmp61465
                                                              (let ((__tmp61472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61466
                             (let ((__tmp61467
                                    (let ((__tmp61471
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61468
                                           (let ((__tmp61469
                                                  (let ((__tmp61470
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61470 '()))))
                                             (declare (not safe))
                                             (cons _L58761_ __tmp61469))))
                                      (declare (not safe))
                                      (cons __tmp61471 __tmp61468))))
                               (declare (not safe))
                               (cons __tmp61467 '()))))
                        (declare (not safe))
                        (cons __tmp61472 __tmp61466)))
                     (__tmp61372
                      (let ((__tmp61373
                             (let ((__tmp61464 (gx#datum->syntax '#f 'cond))
                                   (__tmp61374
                                    (let ((__tmp61453
                                           (let ((__tmp61457
                                                  (let ((__tmp61463
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61458
                                                         (let ((__tmp61462
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61459
                        (let ((__tmp61460
                               (let ((__tmp61461
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61461 '()))))
                          (declare (not safe))
                          (cons __tmp61460 '()))))
                   (declare (not safe))
                   (cons __tmp61462 __tmp61459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61463
                                                          __tmp61458)))
                                                 (__tmp61454
                                                  (let ((__tmp61455
                                                         (let ((__tmp61456
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp61456 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61455 '()))))
                                             (declare (not safe))
                                             (cons __tmp61457 __tmp61454)))
                                          (__tmp61375
                                           (let ((__tmp61427
                                                  (let ((__tmp61446
                                                         (let ((__tmp61452
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61447
                        (let ((__tmp61451 (gx#datum->syntax '#f 'k))
                              (__tmp61448
                               (let ((__tmp61449
                                      (let ((__tmp61450
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61450 '()))))
                                 (declare (not safe))
                                 (cons __tmp61449 '()))))
                          (declare (not safe))
                          (cons __tmp61451 __tmp61448))))
                   (declare (not safe))
                   (cons __tmp61452 __tmp61447)))
                (__tmp61428
                 (let ((__tmp61429
                        (let ((__tmp61445 (gx#datum->syntax '#f 'loop))
                              (__tmp61430
                               (let ((__tmp61437
                                      (let ((__tmp61444
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61438
                                             (let ((__tmp61443
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61439
                                                    (let ((__tmp61442
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61440
                                                           (let ((__tmp61441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61441 '()))))
              (declare (not safe))
              (cons __tmp61442 __tmp61440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61443 __tmp61439))))
                                        (declare (not safe))
                                        (cons __tmp61444 __tmp61438)))
                                     (__tmp61431
                                      (let ((__tmp61432
                                             (let ((__tmp61436
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61433
                                                    (let ((__tmp61435
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61434
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61435
                                                            __tmp61434))))
                                               (declare (not safe))
                                               (cons __tmp61436 __tmp61433))))
                                        (declare (not safe))
                                        (cons __tmp61432 '()))))
                                 (declare (not safe))
                                 (cons __tmp61437 __tmp61431))))
                          (declare (not safe))
                          (cons __tmp61445 __tmp61430))))
                   (declare (not safe))
                   (cons __tmp61429 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61446
                                                          __tmp61428)))
                                                 (__tmp61376
                                                  (let ((__tmp61398
                                                         (let ((__tmp61423
                                                                (let ((__tmp61424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61425
                                      (let ((__tmp61426
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61426 '()))))
                                 (declare (not safe))
                                 (cons _L58757_ __tmp61425))))
                          (declare (not safe))
                          (cons _L58758_ __tmp61424)))
                       (__tmp61399
                        (let ((__tmp61415
                               (let ((__tmp61422
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp61416
                                      (let ((__tmp61417
                                             (let ((__tmp61421
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp61418
                                                    (let ((__tmp61419
                                                           (let ((__tmp61420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp61420 '()))))
              (declare (not safe))
              (cons __tmp61419 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61421 __tmp61418))))
                                        (declare (not safe))
                                        (cons _L58761_ __tmp61417))))
                                 (declare (not safe))
                                 (cons __tmp61422 __tmp61416)))
                              (__tmp61400
                               (let ((__tmp61403
                                      (let ((__tmp61414
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp61404
                                             (let ((__tmp61405
                                                    (let ((__tmp61409
                                                           (let ((__tmp61413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61410
                          (let ((__tmp61412 (gx#datum->syntax '#f 'probe))
                                (__tmp61411
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61412 __tmp61411))))
                     (declare (not safe))
                     (cons __tmp61413 __tmp61410)))
                  (__tmp61406
                   (let ((__tmp61407
                          (let ((__tmp61408
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp61408 '()))))
                     (declare (not safe))
                     (cons __tmp61407 '()))))
              (declare (not safe))
              (cons __tmp61409 __tmp61406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58761_ __tmp61405))))
                                        (declare (not safe))
                                        (cons __tmp61414 __tmp61404)))
                                     (__tmp61401
                                      (let ((__tmp61402
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58755_ '()))))
                                        (declare (not safe))
                                        (cons __tmp61402 '()))))
                                 (declare (not safe))
                                 (cons __tmp61403 __tmp61401))))
                          (declare (not safe))
                          (cons __tmp61415 __tmp61400))))
                   (declare (not safe))
                   (cons __tmp61423 __tmp61399)))
                (__tmp61377
                 (let ((__tmp61378
                        (let ((__tmp61397 (gx#datum->syntax '#f 'else))
                              (__tmp61379
                               (let ((__tmp61380
                                      (let ((__tmp61396
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61381
                                             (let ((__tmp61388
                                                    (let ((__tmp61395
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61389
                                                           (let ((__tmp61394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61390
                          (let ((__tmp61393 (gx#datum->syntax '#f 'i))
                                (__tmp61391
                                 (let ((__tmp61392
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61392 '()))))
                            (declare (not safe))
                            (cons __tmp61393 __tmp61391))))
                     (declare (not safe))
                     (cons __tmp61394 __tmp61390))))
              (declare (not safe))
              (cons __tmp61395 __tmp61389)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61382
                                                    (let ((__tmp61383
                                                           (let ((__tmp61387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61384
                          (let ((__tmp61386 (gx#datum->syntax '#f 'i))
                                (__tmp61385
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61386 __tmp61385))))
                     (declare (not safe))
                     (cons __tmp61387 __tmp61384))))
              (declare (not safe))
              (cons __tmp61383 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61388 __tmp61382))))
                                        (declare (not safe))
                                        (cons __tmp61396 __tmp61381))))
                                 (declare (not safe))
                                 (cons __tmp61380 '()))))
                          (declare (not safe))
                          (cons __tmp61397 __tmp61379))))
                   (declare (not safe))
                   (cons __tmp61378 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61398
                                                          __tmp61377))))
                                             (declare (not safe))
                                             (cons __tmp61427 __tmp61376))))
                                      (declare (not safe))
                                      (cons __tmp61453 __tmp61375))))
                               (declare (not safe))
                               (cons __tmp61464 __tmp61374))))
                        (declare (not safe))
                        (cons __tmp61373 '()))))
                 (declare (not safe))
                 (cons __tmp61465 __tmp61372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61473
                                                        __tmp61371))))
                                           (declare (not safe))
                                           (cons __tmp61370 '()))))
                                    (declare (not safe))
                                    (cons __tmp61474 __tmp61369))))
                             (declare (not safe))
                             (cons __tmp61483 __tmp61368))))
                      (declare (not safe))
                      (cons __tmp61484 __tmp61367))))
               (declare (not safe))
               (cons __tmp61366 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61485 __tmp61365))))
                                         (declare (not safe))
                                         (cons __tmp61525 __tmp61364)))
                                     _hd5867158749_
                                     _hd5866858739_
                                     _hd5866558729_
                                     _hd5866258719_
                                     _hd5865958709_
                                     _hd5865658699_)
                                    (_g5864458678_ _g5864558682_))))
                            (_g5864458678_ _g5864558682_))))
                    (_g5864458678_ _g5864558682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5864458678_
                                                     _g5864558682_))))
                                            (_g5864458678_ _g5864558682_))))
                                    (_g5864458678_ _g5864558682_))))
                            (_g5864458678_ _g5864558682_))))
                    (_g5864458678_ _g5864558682_)))))
        (_g5864358789_ _$stx58640_)))))
