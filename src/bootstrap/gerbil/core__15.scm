(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34433_)
      (let* ((___stx4695146952_ _$stx34433_)
             (_g3443834457_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4695146952_))))
        (let ((___kont4695446955_
               (lambda ()
                 (let ((__tmp50728 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp50728 '()))))
              (___kont4695646957_
               (lambda (_L34484_ _L34486_ _L34487_)
                 (let ((__tmp50741 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp50729
                        (let ((__tmp50738
                               (let ((__tmp50739
                                      (let ((__tmp50740
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34487_ _L34484_))))
                                        (declare (not safe))
                                        (cons __tmp50740 '()))))
                                 (declare (not safe))
                                 (cons _L34486_ __tmp50739)))
                              (__tmp50730
                               (let ((__tmp50731
                                      (let ((__tmp50737
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp50732
                                             (let ((__tmp50733
                                                    (let ((__tmp50736
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp50734
                                                           (let ((__tmp50735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L34486_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp50735))))
              (declare (not safe))
              (cons __tmp50736 __tmp50734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50733 '()))))
                                        (declare (not safe))
                                        (cons __tmp50737 __tmp50732))))
                                 (declare (not safe))
                                 (cons __tmp50731 '()))))
                          (declare (not safe))
                          (cons __tmp50738 __tmp50730))))
                   (declare (not safe))
                   (cons __tmp50741 __tmp50729)))))
          (if (gx#stx-pair? ___stx4695146952_)
              (let ((_e3444234510_ (gx#syntax-e ___stx4695146952_)))
                (let ((_tl3444034517_
                       (let () (declare (not safe)) (##cdr _e3444234510_)))
                      (_hd3444134514_
                       (let () (declare (not safe)) (##car _e3444234510_))))
                  (if (gx#stx-null? _tl3444034517_)
                      (___kont4695446955_)
                      (if (gx#stx-pair? _tl3444034517_)
                          (let ((_e3445134474_ (gx#syntax-e _tl3444034517_)))
                            (let ((_tl3444934481_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3445134474_)))
                                  (_hd3445034478_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3445134474_))))
                              (___kont4695646957_
                               _tl3444934481_
                               _hd3445034478_
                               _hd3444134514_)))
                          (let () (declare (not safe)) (_g3443834457_))))))
              (let () (declare (not safe)) (_g3443834457_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34528_)
      (let* ((___stx4698146982_ _$stx34528_)
             (_g3453334573_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4698146982_))))
        (let ((___kont4698446985_
               (lambda (_L34711_ _L34713_)
                 (let ((__tmp50747 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50742
                        (let ((__tmp50743
                               (let ((__tmp50744
                                      (let ((__tmp50746
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp50745
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34711_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50746 __tmp50745))))
                                 (declare (not safe))
                                 (cons __tmp50744 '()))))
                          (declare (not safe))
                          (cons _L34713_ __tmp50743))))
                   (declare (not safe))
                   (cons __tmp50747 __tmp50742))))
              (___kont4698646987_
               (lambda (_L34640_ _L34642_ _L34643_ _L34644_)
                 (let ((__tmp50748
                        (let ((__tmp50749
                               (let ((__tmp50750
                                      (let ((__tmp50754
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50751
                                             (let ((__tmp50752
                                                    (let ((__tmp50753
                                                           (lambda (_g3466534668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3466634671_)
                     (let ()
                       (declare (not safe))
                       (cons _g3466534668_ _g3466634671_)))))
              (declare (not safe))
              (foldr1 __tmp50753 '() _L34640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34642_ __tmp50752))))
                                        (declare (not safe))
                                        (cons __tmp50754 __tmp50751))))
                                 (declare (not safe))
                                 (cons __tmp50750 '()))))
                          (declare (not safe))
                          (cons _L34643_ __tmp50749))))
                   (declare (not safe))
                   (cons _L34644_ __tmp50748)))))
          (let* ((___match4703647037_
                  (lambda (_e3455234580_
                           _hd3455134584_
                           _tl3455034587_
                           _e3455534590_
                           _hd3455434594_
                           _tl3455334597_
                           _e3455834600_
                           _hd3455734604_
                           _tl3455634607_
                           ___splice4698846989_
                           _target3455934610_
                           _tl3456134613_)
                    (letrec ((_loop3456234616_
                              (lambda (_hd3456034620_ _body3456634623_)
                                (if (gx#stx-pair? _hd3456034620_)
                                    (let ((_e3456334626_
                                           (gx#syntax-e _hd3456034620_)))
                                      (let ((_lp-tl3456534633_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3456334626_)))
                                            (_lp-hd3456434630_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3456334626_))))
                                        (_loop3456234616_
                                         _lp-tl3456534633_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3456434630_
                                                 _body3456634623_)))))
                                    (let ((_body3456734636_
                                           (reverse _body3456634623_)))
                                      (let ((_L34640_ _body3456734636_)
                                            (_L34642_ _tl3455634607_)
                                            (_L34643_ _hd3455734604_)
                                            (_L34644_ _hd3455134584_))
                                        (if (gx#identifier? _L34643_)
                                            (___kont4698646987_
                                             _L34640_
                                             _L34642_
                                             _L34643_
                                             _L34644_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3453334573_)))))))))
                      (_loop3456234616_ _target3455934610_ '()))))
                 (___match4701047011_
                  (lambda (_e3453934681_
                           _hd3453834685_
                           _tl3453734688_
                           _e3454234691_
                           _hd3454134695_
                           _tl3454034698_
                           _e3454534701_
                           _hd3454434705_
                           _tl3454334708_)
                    (let ((_L34711_ _hd3454434705_) (_L34713_ _hd3454134695_))
                      (if (gx#identifier? _L34713_)
                          (___kont4698446985_ _L34711_ _L34713_)
                          (if (gx#stx-pair? _hd3454134695_)
                              (let ((_e3455834600_
                                     (gx#syntax-e _hd3454134695_)))
                                (let ((_tl3455634607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3455834600_)))
                                      (_hd3455734604_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3455834600_))))
                                  (if (gx#stx-pair/null? _tl3454034698_)
                                      (let ((___splice4698846989_
                                             (gx#syntax-split-splice
                                              _tl3454034698_
                                              '0)))
                                        (let ((_tl3456134613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4698846989_
                                                  '1)))
                                              (_target3455934610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4698846989_
                                                  '0))))
                                          (if (gx#stx-null? _tl3456134613_)
                                              (___match4703647037_
                                               _e3453934681_
                                               _hd3453834685_
                                               _tl3453734688_
                                               _e3454234691_
                                               _hd3454134695_
                                               _tl3454034698_
                                               _e3455834600_
                                               _hd3455734604_
                                               _tl3455634607_
                                               ___splice4698846989_
                                               _target3455934610_
                                               _tl3456134613_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3453334573_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3453334573_)))))
                              (let ()
                                (declare (not safe))
                                (_g3453334573_))))))))
            (if (gx#stx-pair? ___stx4698146982_)
                (let ((_e3453934681_ (gx#syntax-e ___stx4698146982_)))
                  (let ((_tl3453734688_
                         (let () (declare (not safe)) (##cdr _e3453934681_)))
                        (_hd3453834685_
                         (let () (declare (not safe)) (##car _e3453934681_))))
                    (if (gx#stx-pair? _tl3453734688_)
                        (let ((_e3454234691_ (gx#syntax-e _tl3453734688_)))
                          (let ((_tl3454034698_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3454234691_)))
                                (_hd3454134695_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3454234691_))))
                            (if (gx#stx-pair? _tl3454034698_)
                                (let ((_e3454534701_
                                       (gx#syntax-e _tl3454034698_)))
                                  (let ((_tl3454334708_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3454534701_)))
                                        (_hd3454434705_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3454534701_))))
                                    (if (gx#stx-null? _tl3454334708_)
                                        (___match4701047011_
                                         _e3453934681_
                                         _hd3453834685_
                                         _tl3453734688_
                                         _e3454234691_
                                         _hd3454134695_
                                         _tl3454034698_
                                         _e3454534701_
                                         _hd3454434705_
                                         _tl3454334708_)
                                        (if (gx#stx-pair? _hd3454134695_)
                                            (let ((_e3455834600_
                                                   (gx#syntax-e
                                                    _hd3454134695_)))
                                              (let ((_tl3455634607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3455834600_)))
                                                    (_hd3455734604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3455834600_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3454034698_)
                                                    (let ((___splice4698846989_
                                                           (gx#syntax-split-splice
                                                            _tl3454034698_
                                                            '0)))
                                                      (let ((_tl3456134613_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4698846989_ '1)))
                    (_target3455934610_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4698846989_ '0))))
                (if (gx#stx-null? _tl3456134613_)
                    (___match4703647037_
                     _e3453934681_
                     _hd3453834685_
                     _tl3453734688_
                     _e3454234691_
                     _hd3454134695_
                     _tl3454034698_
                     _e3455834600_
                     _hd3455734604_
                     _tl3455634607_
                     ___splice4698846989_
                     _target3455934610_
                     _tl3456134613_)
                    (let () (declare (not safe)) (_g3453334573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3453334573_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3453334573_))))))
                                (if (gx#stx-pair? _hd3454134695_)
                                    (let ((_e3455834600_
                                           (gx#syntax-e _hd3454134695_)))
                                      (let ((_tl3455634607_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3455834600_)))
                                            (_hd3455734604_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3455834600_))))
                                        (if (gx#stx-pair/null? _tl3454034698_)
                                            (let ((___splice4698846989_
                                                   (gx#syntax-split-splice
                                                    _tl3454034698_
                                                    '0)))
                                              (let ((_tl3456134613_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4698846989_
                                                        '1)))
                                                    (_target3455934610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4698846989_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3456134613_)
                                                    (___match4703647037_
                                                     _e3453934681_
                                                     _hd3453834685_
                                                     _tl3453734688_
                                                     _e3454234691_
                                                     _hd3454134695_
                                                     _tl3454034698_
                                                     _e3455834600_
                                                     _hd3455734604_
                                                     _tl3455634607_
                                                     ___splice4698846989_
                                                     _target3455934610_
                                                     _tl3456134613_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3453334573_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3453334573_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3453334573_))))))
                        (let () (declare (not safe)) (_g3453334573_)))))
                (let () (declare (not safe)) (_g3453334573_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34733_)
      (let* ((___stx4703947040_ _$stx34733_)
             (_g3473834778_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4703947040_))))
        (let ((___kont4704247043_
               (lambda (_L34916_ _L34918_)
                 (let ((__tmp50760 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50755
                        (let ((__tmp50756
                               (let ((__tmp50757
                                      (let ((__tmp50759
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp50758
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34916_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50759 __tmp50758))))
                                 (declare (not safe))
                                 (cons __tmp50757 '()))))
                          (declare (not safe))
                          (cons _L34918_ __tmp50756))))
                   (declare (not safe))
                   (cons __tmp50760 __tmp50755))))
              (___kont4704447045_
               (lambda (_L34845_ _L34847_ _L34848_ _L34849_)
                 (let ((__tmp50761
                        (let ((__tmp50762
                               (let ((__tmp50763
                                      (let ((__tmp50767
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50764
                                             (let ((__tmp50765
                                                    (let ((__tmp50766
                                                           (lambda (_g3487034873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3487134876_)
                     (let ()
                       (declare (not safe))
                       (cons _g3487034873_ _g3487134876_)))))
              (declare (not safe))
              (foldr1 __tmp50766 '() _L34845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34847_ __tmp50765))))
                                        (declare (not safe))
                                        (cons __tmp50767 __tmp50764))))
                                 (declare (not safe))
                                 (cons __tmp50763 '()))))
                          (declare (not safe))
                          (cons _L34848_ __tmp50762))))
                   (declare (not safe))
                   (cons _L34849_ __tmp50761)))))
          (let* ((___match4709447095_
                  (lambda (_e3475734785_
                           _hd3475634789_
                           _tl3475534792_
                           _e3476034795_
                           _hd3475934799_
                           _tl3475834802_
                           _e3476334805_
                           _hd3476234809_
                           _tl3476134812_
                           ___splice4704647047_
                           _target3476434815_
                           _tl3476634818_)
                    (letrec ((_loop3476734821_
                              (lambda (_hd3476534825_ _body3477134828_)
                                (if (gx#stx-pair? _hd3476534825_)
                                    (let ((_e3476834831_
                                           (gx#syntax-e _hd3476534825_)))
                                      (let ((_lp-tl3477034838_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3476834831_)))
                                            (_lp-hd3476934835_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3476834831_))))
                                        (_loop3476734821_
                                         _lp-tl3477034838_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3476934835_
                                                 _body3477134828_)))))
                                    (let ((_body3477234841_
                                           (reverse _body3477134828_)))
                                      (let ((_L34845_ _body3477234841_)
                                            (_L34847_ _tl3476134812_)
                                            (_L34848_ _hd3476234809_)
                                            (_L34849_ _hd3475634789_))
                                        (if (gx#identifier? _L34848_)
                                            (___kont4704447045_
                                             _L34845_
                                             _L34847_
                                             _L34848_
                                             _L34849_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3473834778_)))))))))
                      (_loop3476734821_ _target3476434815_ '()))))
                 (___match4706847069_
                  (lambda (_e3474434886_
                           _hd3474334890_
                           _tl3474234893_
                           _e3474734896_
                           _hd3474634900_
                           _tl3474534903_
                           _e3475034906_
                           _hd3474934910_
                           _tl3474834913_)
                    (let ((_L34916_ _hd3474934910_) (_L34918_ _hd3474634900_))
                      (if (gx#identifier? _L34918_)
                          (___kont4704247043_ _L34916_ _L34918_)
                          (if (gx#stx-pair? _hd3474634900_)
                              (let ((_e3476334805_
                                     (gx#syntax-e _hd3474634900_)))
                                (let ((_tl3476134812_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3476334805_)))
                                      (_hd3476234809_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3476334805_))))
                                  (if (gx#stx-pair/null? _tl3474534903_)
                                      (let ((___splice4704647047_
                                             (gx#syntax-split-splice
                                              _tl3474534903_
                                              '0)))
                                        (let ((_tl3476634818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4704647047_
                                                  '1)))
                                              (_target3476434815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4704647047_
                                                  '0))))
                                          (if (gx#stx-null? _tl3476634818_)
                                              (___match4709447095_
                                               _e3474434886_
                                               _hd3474334890_
                                               _tl3474234893_
                                               _e3474734896_
                                               _hd3474634900_
                                               _tl3474534903_
                                               _e3476334805_
                                               _hd3476234809_
                                               _tl3476134812_
                                               ___splice4704647047_
                                               _target3476434815_
                                               _tl3476634818_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3473834778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3473834778_)))))
                              (let ()
                                (declare (not safe))
                                (_g3473834778_))))))))
            (if (gx#stx-pair? ___stx4703947040_)
                (let ((_e3474434886_ (gx#syntax-e ___stx4703947040_)))
                  (let ((_tl3474234893_
                         (let () (declare (not safe)) (##cdr _e3474434886_)))
                        (_hd3474334890_
                         (let () (declare (not safe)) (##car _e3474434886_))))
                    (if (gx#stx-pair? _tl3474234893_)
                        (let ((_e3474734896_ (gx#syntax-e _tl3474234893_)))
                          (let ((_tl3474534903_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3474734896_)))
                                (_hd3474634900_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3474734896_))))
                            (if (gx#stx-pair? _tl3474534903_)
                                (let ((_e3475034906_
                                       (gx#syntax-e _tl3474534903_)))
                                  (let ((_tl3474834913_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3475034906_)))
                                        (_hd3474934910_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3475034906_))))
                                    (if (gx#stx-null? _tl3474834913_)
                                        (___match4706847069_
                                         _e3474434886_
                                         _hd3474334890_
                                         _tl3474234893_
                                         _e3474734896_
                                         _hd3474634900_
                                         _tl3474534903_
                                         _e3475034906_
                                         _hd3474934910_
                                         _tl3474834913_)
                                        (if (gx#stx-pair? _hd3474634900_)
                                            (let ((_e3476334805_
                                                   (gx#syntax-e
                                                    _hd3474634900_)))
                                              (let ((_tl3476134812_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3476334805_)))
                                                    (_hd3476234809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3476334805_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3474534903_)
                                                    (let ((___splice4704647047_
                                                           (gx#syntax-split-splice
                                                            _tl3474534903_
                                                            '0)))
                                                      (let ((_tl3476634818_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4704647047_ '1)))
                    (_target3476434815_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4704647047_ '0))))
                (if (gx#stx-null? _tl3476634818_)
                    (___match4709447095_
                     _e3474434886_
                     _hd3474334890_
                     _tl3474234893_
                     _e3474734896_
                     _hd3474634900_
                     _tl3474534903_
                     _e3476334805_
                     _hd3476234809_
                     _tl3476134812_
                     ___splice4704647047_
                     _target3476434815_
                     _tl3476634818_)
                    (let () (declare (not safe)) (_g3473834778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3473834778_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3473834778_))))))
                                (if (gx#stx-pair? _hd3474634900_)
                                    (let ((_e3476334805_
                                           (gx#syntax-e _hd3474634900_)))
                                      (let ((_tl3476134812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3476334805_)))
                                            (_hd3476234809_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3476334805_))))
                                        (if (gx#stx-pair/null? _tl3474534903_)
                                            (let ((___splice4704647047_
                                                   (gx#syntax-split-splice
                                                    _tl3474534903_
                                                    '0)))
                                              (let ((_tl3476634818_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4704647047_
                                                        '1)))
                                                    (_target3476434815_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4704647047_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3476634818_)
                                                    (___match4709447095_
                                                     _e3474434886_
                                                     _hd3474334890_
                                                     _tl3474234893_
                                                     _e3474734896_
                                                     _hd3474634900_
                                                     _tl3474534903_
                                                     _e3476334805_
                                                     _hd3476234809_
                                                     _tl3476134812_
                                                     ___splice4704647047_
                                                     _target3476434815_
                                                     _tl3476634818_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3473834778_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3473834778_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3473834778_))))))
                        (let () (declare (not safe)) (_g3473834778_)))))
                (let () (declare (not safe)) (_g3473834778_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx34938_)
      (let* ((___stx4709747098_ _$stx34938_)
             (_g3494334983_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4709747098_))))
        (let ((___kont4710047101_
               (lambda (_L35121_ _L35123_)
                 (let ((__tmp50773 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50768
                        (let ((__tmp50769
                               (let ((__tmp50770
                                      (let ((__tmp50772
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp50771
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35121_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50772 __tmp50771))))
                                 (declare (not safe))
                                 (cons __tmp50770 '()))))
                          (declare (not safe))
                          (cons _L35123_ __tmp50769))))
                   (declare (not safe))
                   (cons __tmp50773 __tmp50768))))
              (___kont4710247103_
               (lambda (_L35050_ _L35052_ _L35053_ _L35054_)
                 (let ((__tmp50774
                        (let ((__tmp50775
                               (let ((__tmp50776
                                      (let ((__tmp50780
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50777
                                             (let ((__tmp50778
                                                    (let ((__tmp50779
                                                           (lambda (_g3507535078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3507635081_)
                     (let ()
                       (declare (not safe))
                       (cons _g3507535078_ _g3507635081_)))))
              (declare (not safe))
              (foldr1 __tmp50779 '() _L35050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35052_ __tmp50778))))
                                        (declare (not safe))
                                        (cons __tmp50780 __tmp50777))))
                                 (declare (not safe))
                                 (cons __tmp50776 '()))))
                          (declare (not safe))
                          (cons _L35053_ __tmp50775))))
                   (declare (not safe))
                   (cons _L35054_ __tmp50774)))))
          (let* ((___match4715247153_
                  (lambda (_e3496234990_
                           _hd3496134994_
                           _tl3496034997_
                           _e3496535000_
                           _hd3496435004_
                           _tl3496335007_
                           _e3496835010_
                           _hd3496735014_
                           _tl3496635017_
                           ___splice4710447105_
                           _target3496935020_
                           _tl3497135023_)
                    (letrec ((_loop3497235026_
                              (lambda (_hd3497035030_ _body3497635033_)
                                (if (gx#stx-pair? _hd3497035030_)
                                    (let ((_e3497335036_
                                           (gx#syntax-e _hd3497035030_)))
                                      (let ((_lp-tl3497535043_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3497335036_)))
                                            (_lp-hd3497435040_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3497335036_))))
                                        (_loop3497235026_
                                         _lp-tl3497535043_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3497435040_
                                                 _body3497635033_)))))
                                    (let ((_body3497735046_
                                           (reverse _body3497635033_)))
                                      (let ((_L35050_ _body3497735046_)
                                            (_L35052_ _tl3496635017_)
                                            (_L35053_ _hd3496735014_)
                                            (_L35054_ _hd3496134994_))
                                        (if (gx#identifier? _L35053_)
                                            (___kont4710247103_
                                             _L35050_
                                             _L35052_
                                             _L35053_
                                             _L35054_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3494334983_)))))))))
                      (_loop3497235026_ _target3496935020_ '()))))
                 (___match4712647127_
                  (lambda (_e3494935091_
                           _hd3494835095_
                           _tl3494735098_
                           _e3495235101_
                           _hd3495135105_
                           _tl3495035108_
                           _e3495535111_
                           _hd3495435115_
                           _tl3495335118_)
                    (let ((_L35121_ _hd3495435115_) (_L35123_ _hd3495135105_))
                      (if (gx#identifier? _L35123_)
                          (___kont4710047101_ _L35121_ _L35123_)
                          (if (gx#stx-pair? _hd3495135105_)
                              (let ((_e3496835010_
                                     (gx#syntax-e _hd3495135105_)))
                                (let ((_tl3496635017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3496835010_)))
                                      (_hd3496735014_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3496835010_))))
                                  (if (gx#stx-pair/null? _tl3495035108_)
                                      (let ((___splice4710447105_
                                             (gx#syntax-split-splice
                                              _tl3495035108_
                                              '0)))
                                        (let ((_tl3497135023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4710447105_
                                                  '1)))
                                              (_target3496935020_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4710447105_
                                                  '0))))
                                          (if (gx#stx-null? _tl3497135023_)
                                              (___match4715247153_
                                               _e3494935091_
                                               _hd3494835095_
                                               _tl3494735098_
                                               _e3495235101_
                                               _hd3495135105_
                                               _tl3495035108_
                                               _e3496835010_
                                               _hd3496735014_
                                               _tl3496635017_
                                               ___splice4710447105_
                                               _target3496935020_
                                               _tl3497135023_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3494334983_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3494334983_)))))
                              (let ()
                                (declare (not safe))
                                (_g3494334983_))))))))
            (if (gx#stx-pair? ___stx4709747098_)
                (let ((_e3494935091_ (gx#syntax-e ___stx4709747098_)))
                  (let ((_tl3494735098_
                         (let () (declare (not safe)) (##cdr _e3494935091_)))
                        (_hd3494835095_
                         (let () (declare (not safe)) (##car _e3494935091_))))
                    (if (gx#stx-pair? _tl3494735098_)
                        (let ((_e3495235101_ (gx#syntax-e _tl3494735098_)))
                          (let ((_tl3495035108_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3495235101_)))
                                (_hd3495135105_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3495235101_))))
                            (if (gx#stx-pair? _tl3495035108_)
                                (let ((_e3495535111_
                                       (gx#syntax-e _tl3495035108_)))
                                  (let ((_tl3495335118_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3495535111_)))
                                        (_hd3495435115_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3495535111_))))
                                    (if (gx#stx-null? _tl3495335118_)
                                        (___match4712647127_
                                         _e3494935091_
                                         _hd3494835095_
                                         _tl3494735098_
                                         _e3495235101_
                                         _hd3495135105_
                                         _tl3495035108_
                                         _e3495535111_
                                         _hd3495435115_
                                         _tl3495335118_)
                                        (if (gx#stx-pair? _hd3495135105_)
                                            (let ((_e3496835010_
                                                   (gx#syntax-e
                                                    _hd3495135105_)))
                                              (let ((_tl3496635017_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3496835010_)))
                                                    (_hd3496735014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3496835010_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3495035108_)
                                                    (let ((___splice4710447105_
                                                           (gx#syntax-split-splice
                                                            _tl3495035108_
                                                            '0)))
                                                      (let ((_tl3497135023_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4710447105_ '1)))
                    (_target3496935020_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4710447105_ '0))))
                (if (gx#stx-null? _tl3497135023_)
                    (___match4715247153_
                     _e3494935091_
                     _hd3494835095_
                     _tl3494735098_
                     _e3495235101_
                     _hd3495135105_
                     _tl3495035108_
                     _e3496835010_
                     _hd3496735014_
                     _tl3496635017_
                     ___splice4710447105_
                     _target3496935020_
                     _tl3497135023_)
                    (let () (declare (not safe)) (_g3494334983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3494334983_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3494334983_))))))
                                (if (gx#stx-pair? _hd3495135105_)
                                    (let ((_e3496835010_
                                           (gx#syntax-e _hd3495135105_)))
                                      (let ((_tl3496635017_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3496835010_)))
                                            (_hd3496735014_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3496835010_))))
                                        (if (gx#stx-pair/null? _tl3495035108_)
                                            (let ((___splice4710447105_
                                                   (gx#syntax-split-splice
                                                    _tl3495035108_
                                                    '0)))
                                              (let ((_tl3497135023_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4710447105_
                                                        '1)))
                                                    (_target3496935020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4710447105_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3497135023_)
                                                    (___match4715247153_
                                                     _e3494935091_
                                                     _hd3494835095_
                                                     _tl3494735098_
                                                     _e3495235101_
                                                     _hd3495135105_
                                                     _tl3495035108_
                                                     _e3496835010_
                                                     _hd3496735014_
                                                     _tl3496635017_
                                                     ___splice4710447105_
                                                     _target3496935020_
                                                     _tl3497135023_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3494334983_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3494334983_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3494334983_))))))
                        (let () (declare (not safe)) (_g3494334983_)))))
                (let () (declare (not safe)) (_g3494334983_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx35143_)
       (let* ((_g3514635166_
               (lambda (_g3514735162_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3514735162_)))
              (_g3514535237_
               (lambda (_g3514735170_)
                 (if (gx#stx-pair? _g3514735170_)
                     (let ((_e3515135173_ (gx#syntax-e _g3514735170_)))
                       (let ((_hd3515035177_
                              (let ()
                                (declare (not safe))
                                (##car _e3515135173_)))
                             (_tl3514935180_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3515135173_))))
                         (if (gx#stx-pair/null? _tl3514935180_)
                             (let ((_g50781_
                                    (gx#syntax-split-splice
                                     _tl3514935180_
                                     '0)))
                               (begin
                                 (let ((_g50782_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50781_)
                                              (##vector-length _g50781_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50782_ 2)))
                                       (error "Context expects 2 values"
                                              _g50782_)))
                                 (let ((_target3515235183_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50781_ 0)))
                                       (_tl3515435186_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50781_ 1))))
                                   (if (gx#stx-null? _tl3515435186_)
                                       (letrec ((_loop3515535189_
                                                 (lambda (_hd3515335193_
                                                          _body3515935196_)
                                                   (if (gx#stx-pair?
                                                        _hd3515335193_)
                                                       (let ((_e3515635199_
                                                              (gx#syntax-e
                                                               _hd3515335193_)))
                                                         (let ((_lp-hd3515735203_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3515635199_)))
                       (_lp-tl3515835206_
                        (let () (declare (not safe)) (##cdr _e3515635199_))))
                   (_loop3515535189_
                    _lp-tl3515835206_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3515735203_ _body3515935196_)))))
               (let ((_body3516035209_ (reverse _body3515935196_)))
                 ((lambda (_L35213_)
                    (let ((__tmp50783
                           (let ((__tmp50784
                                  (let ((__tmp50785
                                         (lambda (_g3522835231_ _g3522935234_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3522835231_
                                                   _g3522935234_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp50785 '() _L35213_))))
                             (declare (not safe))
                             (cons '1 __tmp50784))))
                      (declare (not safe))
                      (cons 'phi: __tmp50783)))
                  _body3516035209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3515535189_
                                          _target3515235183_
                                          '()))
                                       (_g3514635166_ _g3514735170_)))))
                             (_g3514635166_ _g3514735170_))))
                     (_g3514635166_ _g3514735170_)))))
         (_g3514535237_ _stx35143_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx35242_)
       (let* ((_g3524535265_
               (lambda (_g3524635261_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3524635261_)))
              (_g3524435336_
               (lambda (_g3524635269_)
                 (if (gx#stx-pair? _g3524635269_)
                     (let ((_e3525035272_ (gx#syntax-e _g3524635269_)))
                       (let ((_hd3524935276_
                              (let ()
                                (declare (not safe))
                                (##car _e3525035272_)))
                             (_tl3524835279_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3525035272_))))
                         (if (gx#stx-pair/null? _tl3524835279_)
                             (let ((_g50786_
                                    (gx#syntax-split-splice
                                     _tl3524835279_
                                     '0)))
                               (begin
                                 (let ((_g50787_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50786_)
                                              (##vector-length _g50786_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50787_ 2)))
                                       (error "Context expects 2 values"
                                              _g50787_)))
                                 (let ((_target3525135282_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50786_ 0)))
                                       (_tl3525335285_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50786_ 1))))
                                   (if (gx#stx-null? _tl3525335285_)
                                       (letrec ((_loop3525435288_
                                                 (lambda (_hd3525235292_
                                                          _body3525835295_)
                                                   (if (gx#stx-pair?
                                                        _hd3525235292_)
                                                       (let ((_e3525535298_
                                                              (gx#syntax-e
                                                               _hd3525235292_)))
                                                         (let ((_lp-hd3525635302_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3525535298_)))
                       (_lp-tl3525735305_
                        (let () (declare (not safe)) (##cdr _e3525535298_))))
                   (_loop3525435288_
                    _lp-tl3525735305_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3525635302_ _body3525835295_)))))
               (let ((_body3525935308_ (reverse _body3525835295_)))
                 ((lambda (_L35312_)
                    (let ((__tmp50788
                           (let ((__tmp50789
                                  (let ((__tmp50790
                                         (lambda (_g3532735330_ _g3532835333_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3532735330_
                                                   _g3532835333_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp50790 '() _L35312_))))
                             (declare (not safe))
                             (cons '-1 __tmp50789))))
                      (declare (not safe))
                      (cons 'phi: __tmp50788)))
                  _body3525935308_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3525435288_
                                          _target3525135282_
                                          '()))
                                       (_g3524535265_ _g3524635269_)))))
                             (_g3524535265_ _g3524635269_))))
                     (_g3524535265_ _g3524635269_)))))
         (_g3524435336_ _stx35242_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx35341_)
       (let* ((_g3534435368_
               (lambda (_g3534535364_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3534535364_)))
              (_g3534335490_
               (lambda (_g3534535372_)
                 (if (gx#stx-pair? _g3534535372_)
                     (let ((_e3535035375_ (gx#syntax-e _g3534535372_)))
                       (let ((_hd3534935379_
                              (let ()
                                (declare (not safe))
                                (##car _e3535035375_)))
                             (_tl3534835382_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3535035375_))))
                         (if (gx#stx-pair? _tl3534835382_)
                             (let ((_e3535335385_
                                    (gx#syntax-e _tl3534835382_)))
                               (let ((_hd3535235389_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3535335385_)))
                                     (_tl3535135392_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3535335385_))))
                                 (if (gx#stx-pair/null? _tl3535135392_)
                                     (let ((_g50791_
                                            (gx#syntax-split-splice
                                             _tl3535135392_
                                             '0)))
                                       (begin
                                         (let ((_g50792_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50791_)
                                                      (##vector-length
                                                       _g50791_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50792_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50792_)))
                                         (let ((_target3535435395_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50791_ 0)))
                                               (_tl3535635398_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50791_ 1))))
                                           (if (gx#stx-null? _tl3535635398_)
                                               (letrec ((_loop3535735401_
                                                         (lambda (_hd3535535405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3536135408_)
                   (if (gx#stx-pair? _hd3535535405_)
                       (let ((_e3535835411_ (gx#syntax-e _hd3535535405_)))
                         (let ((_lp-hd3535935415_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3535835411_)))
                               (_lp-tl3536035418_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3535835411_))))
                           (_loop3535735401_
                            _lp-tl3536035418_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3535935415_ _id3536135408_)))))
                       (let ((_id3536235421_ (reverse _id3536135408_)))
                         ((lambda (_L35425_ _L35427_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50797
                                        (lambda (_g3544435447_ _g3544535450_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3544435447_
                                                  _g3544535450_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50797 '() _L35425_)))
                                (let* ((_keys35461_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50793
                                                (lambda (_g3545235455_
                                                         _g3545335458_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3545235455_
                                                          _g3545335458_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50793 '() _L35425_))))
                                       (_keytab35472_
                                        (let ((_ht35464_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3546635468_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht35464_
                                                _g3546635468_
                                                '#t)))
                                           _keys35461_)
                                          _ht35464_))
                                       (_imports35475_
                                        (gx#core-expand-import-source
                                         _L35427_))
                                       (_fold-e35485_
                                        (letrec ((_fold-e35478_
                                                  (lambda (_in35481_ _r35483_)
                                                    (if (gx#module-import?
                                                         _in35481_)
                                                        (if (let ((__tmp50795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35481_)))
                      (declare (not safe))
                      (table-ref _keytab35472_ __tmp50795 '#f))
                    (let () (declare (not safe)) (cons _in35481_ _r35483_))
                    _r35483_)
                (if (gx#import-set? _in35481_)
                    (let ((__tmp50794 (gx#import-set-imports _in35481_)))
                      (declare (not safe))
                      (foldl1 _fold-e35478_ _r35483_ __tmp50794))
                    _r35483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35478_)))
                                  (let ((__tmp50796
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35485_
                                                   '()
                                                   _imports35475_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50796)))
                                (_g3534435368_ _g3534535372_)))
                          _id3536235421_
                          _hd3535235389_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3535735401_
                                                  _target3535435395_
                                                  '()))
                                               (_g3534435368_
                                                _g3534535372_)))))
                                     (_g3534435368_ _g3534535372_))))
                             (_g3534435368_ _g3534535372_))))
                     (_g3534435368_ _g3534535372_)))))
         (_g3534335490_ _stx35341_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx35495_)
       (let* ((_g3549835522_
               (lambda (_g3549935518_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3549935518_)))
              (_g3549735644_
               (lambda (_g3549935526_)
                 (if (gx#stx-pair? _g3549935526_)
                     (let ((_e3550435529_ (gx#syntax-e _g3549935526_)))
                       (let ((_hd3550335533_
                              (let ()
                                (declare (not safe))
                                (##car _e3550435529_)))
                             (_tl3550235536_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3550435529_))))
                         (if (gx#stx-pair? _tl3550235536_)
                             (let ((_e3550735539_
                                    (gx#syntax-e _tl3550235536_)))
                               (let ((_hd3550635543_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3550735539_)))
                                     (_tl3550535546_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3550735539_))))
                                 (if (gx#stx-pair/null? _tl3550535546_)
                                     (let ((_g50798_
                                            (gx#syntax-split-splice
                                             _tl3550535546_
                                             '0)))
                                       (begin
                                         (let ((_g50799_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50798_)
                                                      (##vector-length
                                                       _g50798_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50799_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50799_)))
                                         (let ((_target3550835549_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50798_ 0)))
                                               (_tl3551035552_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50798_ 1))))
                                           (if (gx#stx-null? _tl3551035552_)
                                               (letrec ((_loop3551135555_
                                                         (lambda (_hd3550935559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3551535562_)
                   (if (gx#stx-pair? _hd3550935559_)
                       (let ((_e3551235565_ (gx#syntax-e _hd3550935559_)))
                         (let ((_lp-hd3551335569_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3551235565_)))
                               (_lp-tl3551435572_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3551235565_))))
                           (_loop3551135555_
                            _lp-tl3551435572_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3551335569_ _id3551535562_)))))
                       (let ((_id3551635575_ (reverse _id3551535562_)))
                         ((lambda (_L35579_ _L35581_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50804
                                        (lambda (_g3559835601_ _g3559935604_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3559835601_
                                                  _g3559935604_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50804 '() _L35579_)))
                                (let* ((_keys35615_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50800
                                                (lambda (_g3560635609_
                                                         _g3560735612_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3560635609_
                                                          _g3560735612_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50800 '() _L35579_))))
                                       (_keytab35626_
                                        (let ((_ht35618_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3562035622_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht35618_
                                                _g3562035622_
                                                '#t)))
                                           _keys35615_)
                                          _ht35618_))
                                       (_imports35629_
                                        (gx#core-expand-import-source
                                         _L35581_))
                                       (_fold-e35639_
                                        (letrec ((_fold-e35632_
                                                  (lambda (_in35635_ _r35637_)
                                                    (if (gx#module-import?
                                                         _in35635_)
                                                        (if (let ((__tmp50802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35635_)))
                      (declare (not safe))
                      (table-ref _keytab35626_ __tmp50802 '#f))
                    _r35637_
                    (let () (declare (not safe)) (cons _in35635_ _r35637_)))
                (if (gx#import-set? _in35635_)
                    (let ((__tmp50801 (gx#import-set-imports _in35635_)))
                      (declare (not safe))
                      (foldl1 _fold-e35632_ _r35637_ __tmp50801))
                    (let ()
                      (declare (not safe))
                      (cons _in35635_ _r35637_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35632_)))
                                  (let ((__tmp50803
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35639_
                                                   '()
                                                   _imports35629_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50803)))
                                (_g3549835522_ _g3549935526_)))
                          _id3551635575_
                          _hd3550635543_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3551135555_
                                                  _target3550835549_
                                                  '()))
                                               (_g3549835522_
                                                _g3549935526_)))))
                                     (_g3549835522_ _g3549935526_))))
                             (_g3549835522_ _g3549935526_))))
                     (_g3549835522_ _g3549935526_)))))
         (_g3549735644_ _stx35495_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35696_ _rename35698_)
      (gx#make-module-import
       (gx#module-import-source _in35696_)
       _rename35698_
       (gx#module-import-phi _in35696_)
       (gx#module-import-weak? _in35696_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35649_ _pre35651_)
      (let* ((_name3565235660_ _name35649_)
             (_else3565435672_
              (lambda () (make-symbol _pre35651_ _name35649_)))
             (_K3565635680_
              (lambda (_mark35676_ _id35678_)
                (let ((__tmp50805 (make-symbol _pre35651_ _id35678_)))
                  (declare (not safe))
                  (cons __tmp50805 _mark35676_)))))
        (if (let () (declare (not safe)) (##pair? _name3565235660_))
            (let ((_hd3565735684_
                   (let () (declare (not safe)) (##car _name3565235660_)))
                  (_tl3565835687_
                   (let () (declare (not safe)) (##cdr _name3565235660_))))
              (let* ((_id35690_ _hd3565735684_) (_mark35693_ _tl3565835687_))
                (declare (not safe))
                (_K3565635680_ _mark35693_ _id35690_)))
            (let () (declare (not safe)) (_else3565435672_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35700_)
       (let* ((_g3570335736_
               (lambda (_g3570435732_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3570435732_)))
              (_g3570235922_
               (lambda (_g3570435740_)
                 (if (gx#stx-pair? _g3570435740_)
                     (let ((_e3571035743_ (gx#syntax-e _g3570435740_)))
                       (let ((_hd3570935747_
                              (let ()
                                (declare (not safe))
                                (##car _e3571035743_)))
                             (_tl3570835750_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3571035743_))))
                         (if (gx#stx-pair? _tl3570835750_)
                             (let ((_e3571335753_
                                    (gx#syntax-e _tl3570835750_)))
                               (let ((_hd3571235757_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3571335753_)))
                                     (_tl3571135760_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3571335753_))))
                                 (if (gx#stx-pair/null? _tl3571135760_)
                                     (let ((_g50806_
                                            (gx#syntax-split-splice
                                             _tl3571135760_
                                             '0)))
                                       (begin
                                         (let ((_g50807_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50806_)
                                                      (##vector-length
                                                       _g50806_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50807_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50807_)))
                                         (let ((_target3571435763_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50806_ 0)))
                                               (_tl3571635766_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50806_ 1))))
                                           (if (gx#stx-null? _tl3571635766_)
                                               (letrec ((_loop3571735769_
                                                         (lambda (_hd3571535773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3572135776_
                          _id3572235778_)
                   (if (gx#stx-pair? _hd3571535773_)
                       (let ((_e3571835781_ (gx#syntax-e _hd3571535773_)))
                         (let ((_lp-hd3571935785_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3571835781_)))
                               (_lp-tl3572035788_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3571835781_))))
                           (if (gx#stx-pair? _lp-hd3571935785_)
                               (let ((_e3572735791_
                                      (gx#syntax-e _lp-hd3571935785_)))
                                 (let ((_hd3572635795_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3572735791_)))
                                       (_tl3572535798_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3572735791_))))
                                   (if (gx#stx-pair? _tl3572535798_)
                                       (let ((_e3573035801_
                                              (gx#syntax-e _tl3572535798_)))
                                         (let ((_hd3572935805_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3573035801_)))
                                               (_tl3572835808_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3573035801_))))
                                           (if (gx#stx-null? _tl3572835808_)
                                               (_loop3571735769_
                                                _lp-tl3572035788_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3572935805_
                                                        _new-id3572135776_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3572635795_
                                                        _id3572235778_)))
                                               (_g3570335736_ _g3570435740_))))
                                       (_g3570335736_ _g3570435740_))))
                               (_g3570335736_ _g3570435740_))))
                       (let ((_new-id3572335811_ (reverse _new-id3572135776_))
                             (_id3572435814_ (reverse _id3572235778_)))
                         ((lambda (_L35817_ _L35819_ _L35820_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp50818
                                             (lambda (_g3583835841_
                                                      _g3583935844_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3583835841_
                                                       _g3583935844_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50818 '() _L35819_)))
                                     (gx#identifier-list?
                                      (let ((__tmp50817
                                             (lambda (_g3584635849_
                                                      _g3584735852_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3584635849_
                                                       _g3584735852_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50817 '() _L35817_))))
                                (let* ((_keytab35855_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_found35858_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_g50812_
                                        (for-each
                                         (lambda (_id35861_ _new-id35863_)
                                           (let ((__tmp50809
                                                  (gx#core-identifier-key
                                                   _id35861_))
                                                 (__tmp50808
                                                  (gx#core-identifier-key
                                                   _new-id35863_)))
                                             (declare (not safe))
                                             (table-set!
                                              _keytab35855_
                                              __tmp50809
                                              __tmp50808)))
                                         (let ((__tmp50810
                                                (lambda (_g3586435867_
                                                         _g3586535870_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3586435867_
                                                          _g3586535870_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50810 '() _L35819_))
                                         (let ((__tmp50811
                                                (lambda (_g3587235875_
                                                         _g3587335878_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3587235875_
                                                          _g3587335878_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50811 '() _L35817_))))
                                       (_imports35883_
                                        (gx#core-expand-import-source
                                         _L35820_))
                                       (_fold-e35903_
                                        (letrec ((_fold-e35886_
                                                  (lambda (_in35889_ _r35891_)
                                                    (if (gx#module-import?
                                                         _in35889_)
                                                        (let* ((_name35893_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35889_))
                       (_$e35896_
                        (let ()
                          (declare (not safe))
                          (table-ref _keytab35855_ _name35893_ '#f))))
                  (if _$e35896_
                      ((lambda (_rename35900_)
                         (let ()
                           (declare (not safe))
                           (table-set! _found35858_ _name35893_ '#t))
                         (let ((__tmp50814
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                   _in35889_
                                   _rename35900_))))
                           (declare (not safe))
                           (cons __tmp50814 _r35891_)))
                       _$e35896_)
                      (let () (declare (not safe)) (cons _in35889_ _r35891_))))
                (if (gx#import-set? _in35889_)
                    (let ((__tmp50813 (gx#import-set-imports _in35889_)))
                      (declare (not safe))
                      (foldl1 _fold-e35886_ _r35891_ __tmp50813))
                    (let ()
                      (declare (not safe))
                      (cons _in35889_ _r35891_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35886_))
                                       (_new-imports35906_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e35903_
                                                  '()
                                                  _imports35883_))))
                                  (for-each
                                   (lambda (_id35911_)
                                     (if (let ((__tmp50815
                                                (gx#core-identifier-key
                                                 _id35911_)))
                                           (declare (not safe))
                                           (table-ref
                                            _found35858_
                                            __tmp50815
                                            '#f))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx35700_
                                          _id35911_)))
                                   (let ((__tmp50816
                                          (lambda (_g3591335916_ _g3591435919_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3591335916_
                                                    _g3591435919_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50816 '() _L35819_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports35906_)))
                                (_g3570335736_ _g3570435740_)))
                          _new-id3572335811_
                          _id3572435814_
                          _hd3571235757_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3571735769_
                                                  _target3571435763_
                                                  '()
                                                  '()))
                                               (_g3570335736_
                                                _g3570435740_)))))
                                     (_g3570335736_ _g3570435740_))))
                             (_g3570335736_ _g3570435740_))))
                     (_g3570335736_ _g3570435740_)))))
         (_g3570235922_ _stx35700_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx35928_)
       (let* ((_g3593135949_
               (lambda (_g3593235945_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3593235945_)))
              (_g3593036028_
               (lambda (_g3593235953_)
                 (if (gx#stx-pair? _g3593235953_)
                     (let ((_e3593735956_ (gx#syntax-e _g3593235953_)))
                       (let ((_hd3593635960_
                              (let ()
                                (declare (not safe))
                                (##car _e3593735956_)))
                             (_tl3593535963_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3593735956_))))
                         (if (gx#stx-pair? _tl3593535963_)
                             (let ((_e3594035966_
                                    (gx#syntax-e _tl3593535963_)))
                               (let ((_hd3593935970_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3594035966_)))
                                     (_tl3593835973_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3594035966_))))
                                 (if (gx#stx-pair? _tl3593835973_)
                                     (let ((_e3594335976_
                                            (gx#syntax-e _tl3593835973_)))
                                       (let ((_hd3594235980_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3594335976_)))
                                             (_tl3594135983_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3594335976_))))
                                         (if (gx#stx-null? _tl3594135983_)
                                             ((lambda (_L35986_ _L35988_)
                                                (if (gx#identifier? _L35986_)
                                                    (let* ((_pre36004_
                                                            (gx#stx-e
                                                             _L35986_))
                                                           (_imports36007_
                                                            (gx#core-expand-import-source
                                                             _L35988_))
                                                           (_rename-e36013_
                                                            (lambda (_name36010_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36010_
                         _pre36004_))))
                   (_fold-e36023_
                    (letrec ((_fold-e36016_
                              (lambda (_in36019_ _r36021_)
                                (if (gx#module-import? _in36019_)
                                    (let ((__tmp50820
                                           (let ((__tmp50821
                                                  (_rename-e36013_
                                                   (gx#module-import-name
                                                    _in36019_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                              _in36019_
                                              __tmp50821))))
                                      (declare (not safe))
                                      (cons __tmp50820 _r36021_))
                                    (if (gx#import-set? _in36019_)
                                        (let ((__tmp50819
                                               (gx#import-set-imports
                                                _in36019_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36016_
                                                  _r36021_
                                                  __tmp50819))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in36019_ _r36021_)))))))
                      _fold-e36016_)))
              (let ((__tmp50822
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36023_ '() _imports36007_))))
                (declare (not safe))
                (cons 'begin: __tmp50822)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3593135949_
                                                     _g3593235953_)))
                                              _hd3594235980_
                                              _hd3593935970_)
                                             (_g3593135949_ _g3593235953_))))
                                     (_g3593135949_ _g3593235953_))))
                             (_g3593135949_ _g3593235953_))))
                     (_g3593135949_ _g3593235953_)))))
         (_g3593036028_ _stx35928_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx36032_)
       (letrec ((_flatten36035_
                 (lambda (_list-of-lists36290_)
                   (let ((__tmp50823
                          (lambda (_v36293_ _acc36295_)
                            (if (let () (declare (not safe)) (null? _v36293_))
                                _acc36295_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v36293_))
                                    (append (_flatten36035_ _v36293_)
                                            _acc36295_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v36293_ _acc36295_)))))))
                     (declare (not safe))
                     (foldr1 __tmp50823 '() _list-of-lists36290_))))
                (_expand-path36037_
                 (lambda (_top36158_ _mod36160_)
                   (let* ((___stx4715547156_ _mod36160_)
                          (_g3616336185_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4715547156_))))
                     (let ((___kont4715847159_
                            (lambda (_L36253_ _L36255_)
                              (map (lambda (_mod36270_)
                                     (gx#stx-identifier
                                      _top36158_
                                      _top36158_
                                      '"/"
                                      _mod36270_))
                                   (_flatten36035_
                                    (map (lambda (_g3627236274_)
                                           (_expand-path36037_
                                            _L36255_
                                            _g3627236274_))
                                         (let ((__tmp50824
                                                (lambda (_g3627736280_
                                                         _g3627836283_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3627736280_
                                                          _g3627836283_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50824
                                                   '()
                                                   _L36253_)))))))
                           (___kont4716247163_
                            (lambda (_L36192_)
                              (gx#stx-identifier
                               _top36158_
                               _top36158_
                               '"/"
                               _L36192_))))
                       (let* ((_g3616236206_
                               (lambda ()
                                 (let ((_L36192_ ___stx4715547156_))
                                   (if (or (gx#identifier? _L36192_)
                                           (gx#stx-fixnum? _L36192_))
                                       (___kont4716247163_ _L36192_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3616336185_))))))
                              (___match4717847179_
                               (lambda (_e3616936213_
                                        _hd3616836217_
                                        _tl3616736220_
                                        ___splice4716047161_
                                        _target3617036223_
                                        _tl3617236226_)
                                 (letrec ((_loop3617336229_
                                           (lambda (_hd3617136233_
                                                    _mod3617736236_)
                                             (if (gx#stx-pair? _hd3617136233_)
                                                 (let ((_e3617436239_
                                                        (gx#syntax-e
                                                         _hd3617136233_)))
                                                   (let ((_lp-tl3617636246_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3617436239_)))
                                                         (_lp-hd3617536243_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3617436239_))))
                                                     (_loop3617336229_
                                                      _lp-tl3617636246_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd3617536243_
                                                              _mod3617736236_)))))
                                                 (let ((_mod3617836249_
                                                        (reverse _mod3617736236_)))
                                                   (___kont4715847159_
                                                    _mod3617836249_
                                                    _hd3616836217_))))))
                                   (_loop3617336229_
                                    _target3617036223_
                                    '())))))
                         (if (gx#stx-pair? ___stx4715547156_)
                             (let ((_e3616936213_
                                    (gx#syntax-e ___stx4715547156_)))
                               (let ((_tl3616736220_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3616936213_)))
                                     (_hd3616836217_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3616936213_))))
                                 (if (gx#stx-pair/null? _tl3616736220_)
                                     (let ((___splice4716047161_
                                            (gx#syntax-split-splice
                                             _tl3616736220_
                                             '0)))
                                       (let ((_tl3617236226_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4716047161_
                                                 '1)))
                                             (_target3617036223_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4716047161_
                                                 '0))))
                                         (if (gx#stx-null? _tl3617236226_)
                                             (___match4717847179_
                                              _e3616936213_
                                              _hd3616836217_
                                              _tl3616736220_
                                              ___splice4716047161_
                                              _target3617036223_
                                              _tl3617236226_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3616236206_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3616236206_)))))
                             (let ()
                               (declare (not safe))
                               (_g3616236206_)))))))))
         (let* ((_g3603936063_
                 (lambda (_g3604036059_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g3604036059_)))
                (_g3603836154_
                 (lambda (_g3604036067_)
                   (if (gx#stx-pair? _g3604036067_)
                       (let ((_e3604536070_ (gx#syntax-e _g3604036067_)))
                         (let ((_hd3604436074_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3604536070_)))
                               (_tl3604336077_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3604536070_))))
                           (if (gx#stx-pair? _tl3604336077_)
                               (let ((_e3604836080_
                                      (gx#syntax-e _tl3604336077_)))
                                 (let ((_hd3604736084_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3604836080_)))
                                       (_tl3604636087_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3604836080_))))
                                   (if (gx#stx-pair/null? _tl3604636087_)
                                       (let ((_g50825_
                                              (gx#syntax-split-splice
                                               _tl3604636087_
                                               '0)))
                                         (begin
                                           (let ((_g50826_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50825_)
                                                        (##vector-length
                                                         _g50825_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50826_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50826_)))
                                           (let ((_target3604936090_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50825_ 0)))
                                                 (_tl3605136093_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50825_
                                                     1))))
                                             (if (gx#stx-null? _tl3605136093_)
                                                 (letrec ((_loop3605236096_
                                                           (lambda (_hd3605036100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3605636103_)
                     (if (gx#stx-pair? _hd3605036100_)
                         (let ((_e3605336106_ (gx#syntax-e _hd3605036100_)))
                           (let ((_lp-hd3605436110_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3605336106_)))
                                 (_lp-tl3605536113_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3605336106_))))
                             (_loop3605236096_
                              _lp-tl3605536113_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd3605436110_ _mod3605636103_)))))
                         (let ((_mod3605736116_ (reverse _mod3605636103_)))
                           ((lambda (_L36120_ _L36122_)
                              (let ((__tmp50827
                                     (_flatten36035_
                                      (map (lambda (_g3614036142_)
                                             (_expand-path36037_
                                              _L36122_
                                              _g3614036142_))
                                           (let ((__tmp50828
                                                  (lambda (_g3614536148_
                                                           _g3614636151_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3614536148_
                                                            _g3614636151_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50828
                                                     '()
                                                     _L36120_))))))
                                (declare (not safe))
                                (cons 'begin: __tmp50827)))
                            _mod3605736116_
                            _hd3604736084_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3605236096_
                                                    _target3604936090_
                                                    '()))
                                                 (_g3603936063_
                                                  _g3604036067_)))))
                                       (_g3603936063_ _g3604036067_))))
                               (_g3603936063_ _g3604036067_))))
                       (_g3603936063_ _g3604036067_)))))
           (_g3603836154_ _stx36032_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx36299_)
       (let* ((_g3630236326_
               (lambda (_g3630336322_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3630336322_)))
              (_g3630136448_
               (lambda (_g3630336330_)
                 (if (gx#stx-pair? _g3630336330_)
                     (let ((_e3630836333_ (gx#syntax-e _g3630336330_)))
                       (let ((_hd3630736337_
                              (let ()
                                (declare (not safe))
                                (##car _e3630836333_)))
                             (_tl3630636340_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3630836333_))))
                         (if (gx#stx-pair? _tl3630636340_)
                             (let ((_e3631136343_
                                    (gx#syntax-e _tl3630636340_)))
                               (let ((_hd3631036347_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3631136343_)))
                                     (_tl3630936350_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3631136343_))))
                                 (if (gx#stx-pair/null? _tl3630936350_)
                                     (let ((_g50829_
                                            (gx#syntax-split-splice
                                             _tl3630936350_
                                             '0)))
                                       (begin
                                         (let ((_g50830_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50829_)
                                                      (##vector-length
                                                       _g50829_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50830_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50830_)))
                                         (let ((_target3631236353_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50829_ 0)))
                                               (_tl3631436356_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50829_ 1))))
                                           (if (gx#stx-null? _tl3631436356_)
                                               (letrec ((_loop3631536359_
                                                         (lambda (_hd3631336363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3631936366_)
                   (if (gx#stx-pair? _hd3631336363_)
                       (let ((_e3631636369_ (gx#syntax-e _hd3631336363_)))
                         (let ((_lp-hd3631736373_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3631636369_)))
                               (_lp-tl3631836376_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3631636369_))))
                           (_loop3631536359_
                            _lp-tl3631836376_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3631736373_ _id3631936366_)))))
                       (let ((_id3632036379_ (reverse _id3631936366_)))
                         ((lambda (_L36383_ _L36385_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50835
                                        (lambda (_g3640236405_ _g3640336408_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3640236405_
                                                  _g3640336408_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50835 '() _L36383_)))
                                (let* ((_keys36419_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50831
                                                (lambda (_g3641036413_
                                                         _g3641136416_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3641036413_
                                                          _g3641136416_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50831 '() _L36383_))))
                                       (_keytab36430_
                                        (let ((_ht36422_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3642436426_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht36422_
                                                _g3642436426_
                                                '#t)))
                                           _keys36419_)
                                          _ht36422_))
                                       (_exports36433_
                                        (gx#core-expand-export-source
                                         _L36385_))
                                       (_fold-e36443_
                                        (letrec ((_fold-e36436_
                                                  (lambda (_out36439_ _r36441_)
                                                    (if (gx#module-export?
                                                         _out36439_)
                                                        (if (let ((__tmp50833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-export-name _out36439_)))
                      (declare (not safe))
                      (table-ref _keytab36430_ __tmp50833 '#f))
                    _r36441_
                    (let () (declare (not safe)) (cons _out36439_ _r36441_)))
                (if (gx#export-set? _out36439_)
                    (let ((__tmp50832 (gx#export-set-exports _out36439_)))
                      (declare (not safe))
                      (foldl1 _fold-e36436_ _r36441_ __tmp50832))
                    _r36441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36436_)))
                                  (let ((__tmp50834
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e36443_
                                                   '()
                                                   _exports36433_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50834)))
                                (_g3630236326_ _g3630336330_)))
                          _id3632036379_
                          _hd3631036347_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3631536359_
                                                  _target3631236353_
                                                  '()))
                                               (_g3630236326_
                                                _g3630336330_)))))
                                     (_g3630236326_ _g3630336330_))))
                             (_g3630236326_ _g3630336330_))))
                     (_g3630236326_ _g3630336330_)))))
         (_g3630136448_ _stx36299_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out36453_ _rename36455_)
      (gx#make-module-export
       (gx#module-export-context _out36453_)
       (gx#module-export-key _out36453_)
       (gx#module-export-phi _out36453_)
       _rename36455_
       (gx#module-export-weak? _out36453_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx36457_)
       (let* ((_g3646036493_
               (lambda (_g3646136489_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3646136489_)))
              (_g3645936679_
               (lambda (_g3646136497_)
                 (if (gx#stx-pair? _g3646136497_)
                     (let ((_e3646736500_ (gx#syntax-e _g3646136497_)))
                       (let ((_hd3646636504_
                              (let ()
                                (declare (not safe))
                                (##car _e3646736500_)))
                             (_tl3646536507_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3646736500_))))
                         (if (gx#stx-pair? _tl3646536507_)
                             (let ((_e3647036510_
                                    (gx#syntax-e _tl3646536507_)))
                               (let ((_hd3646936514_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3647036510_)))
                                     (_tl3646836517_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3647036510_))))
                                 (if (gx#stx-pair/null? _tl3646836517_)
                                     (let ((_g50836_
                                            (gx#syntax-split-splice
                                             _tl3646836517_
                                             '0)))
                                       (begin
                                         (let ((_g50837_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50836_)
                                                      (##vector-length
                                                       _g50836_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50837_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50837_)))
                                         (let ((_target3647136520_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50836_ 0)))
                                               (_tl3647336523_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50836_ 1))))
                                           (if (gx#stx-null? _tl3647336523_)
                                               (letrec ((_loop3647436526_
                                                         (lambda (_hd3647236530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3647836533_
                          _id3647936535_)
                   (if (gx#stx-pair? _hd3647236530_)
                       (let ((_e3647536538_ (gx#syntax-e _hd3647236530_)))
                         (let ((_lp-hd3647636542_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3647536538_)))
                               (_lp-tl3647736545_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3647536538_))))
                           (if (gx#stx-pair? _lp-hd3647636542_)
                               (let ((_e3648436548_
                                      (gx#syntax-e _lp-hd3647636542_)))
                                 (let ((_hd3648336552_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3648436548_)))
                                       (_tl3648236555_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3648436548_))))
                                   (if (gx#stx-pair? _tl3648236555_)
                                       (let ((_e3648736558_
                                              (gx#syntax-e _tl3648236555_)))
                                         (let ((_hd3648636562_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3648736558_)))
                                               (_tl3648536565_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3648736558_))))
                                           (if (gx#stx-null? _tl3648536565_)
                                               (_loop3647436526_
                                                _lp-tl3647736545_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3648636562_
                                                        _new-id3647836533_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3648336552_
                                                        _id3647936535_)))
                                               (_g3646036493_ _g3646136497_))))
                                       (_g3646036493_ _g3646136497_))))
                               (_g3646036493_ _g3646136497_))))
                       (let ((_new-id3648036568_ (reverse _new-id3647836533_))
                             (_id3648136571_ (reverse _id3647936535_)))
                         ((lambda (_L36574_ _L36576_ _L36577_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp50848
                                             (lambda (_g3659536598_
                                                      _g3659636601_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3659536598_
                                                       _g3659636601_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50848 '() _L36576_)))
                                     (gx#identifier-list?
                                      (let ((__tmp50847
                                             (lambda (_g3660336606_
                                                      _g3660436609_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3660336606_
                                                       _g3660436609_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50847 '() _L36574_))))
                                (let* ((_keytab36612_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_found36615_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_g50842_
                                        (for-each
                                         (lambda (_id36618_ _new-id36620_)
                                           (let ((__tmp50839
                                                  (gx#core-identifier-key
                                                   _id36618_))
                                                 (__tmp50838
                                                  (gx#core-identifier-key
                                                   _new-id36620_)))
                                             (declare (not safe))
                                             (table-set!
                                              _keytab36612_
                                              __tmp50839
                                              __tmp50838)))
                                         (let ((__tmp50840
                                                (lambda (_g3662136624_
                                                         _g3662236627_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3662136624_
                                                          _g3662236627_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50840 '() _L36576_))
                                         (let ((__tmp50841
                                                (lambda (_g3662936632_
                                                         _g3663036635_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3662936632_
                                                          _g3663036635_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50841 '() _L36574_))))
                                       (_exports36640_
                                        (gx#core-expand-export-source
                                         _L36577_))
                                       (_fold-e36660_
                                        (letrec ((_fold-e36643_
                                                  (lambda (_out36646_ _r36648_)
                                                    (if (gx#module-export?
                                                         _out36646_)
                                                        (let* ((_name36650_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36646_))
                       (_$e36653_
                        (let ()
                          (declare (not safe))
                          (table-ref _keytab36612_ _name36650_ '#f))))
                  (if _$e36653_
                      ((lambda (_rename36657_)
                         (let ()
                           (declare (not safe))
                           (table-set! _found36615_ _name36650_ '#t))
                         (let ((__tmp50844
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                   _out36646_
                                   _rename36657_))))
                           (declare (not safe))
                           (cons __tmp50844 _r36648_)))
                       _$e36653_)
                      (let ()
                        (declare (not safe))
                        (cons _out36646_ _r36648_))))
                (if (gx#export-set? _out36646_)
                    (let ((__tmp50843 (gx#export-set-exports _out36646_)))
                      (declare (not safe))
                      (foldl1 _fold-e36643_ _r36648_ __tmp50843))
                    (let ()
                      (declare (not safe))
                      (cons _out36646_ _r36648_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36643_))
                                       (_new-exports36663_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e36660_
                                                  '()
                                                  _exports36640_))))
                                  (for-each
                                   (lambda (_id36668_)
                                     (if (let ((__tmp50845
                                                (gx#core-identifier-key
                                                 _id36668_)))
                                           (declare (not safe))
                                           (table-ref
                                            _found36615_
                                            __tmp50845
                                            '#f))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx36457_
                                          _id36668_)))
                                   (let ((__tmp50846
                                          (lambda (_g3667036673_ _g3667136676_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3667036673_
                                                    _g3667136676_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50846 '() _L36576_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports36663_)))
                                (_g3646036493_ _g3646136497_)))
                          _new-id3648036568_
                          _id3648136571_
                          _hd3646936514_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3647436526_
                                                  _target3647136520_
                                                  '()
                                                  '()))
                                               (_g3646036493_
                                                _g3646136497_)))))
                                     (_g3646036493_ _g3646136497_))))
                             (_g3646036493_ _g3646136497_))))
                     (_g3646036493_ _g3646136497_)))))
         (_g3645936679_ _stx36457_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36685_)
       (let* ((_g3668836706_
               (lambda (_g3668936702_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3668936702_)))
              (_g3668736785_
               (lambda (_g3668936710_)
                 (if (gx#stx-pair? _g3668936710_)
                     (let ((_e3669436713_ (gx#syntax-e _g3668936710_)))
                       (let ((_hd3669336717_
                              (let ()
                                (declare (not safe))
                                (##car _e3669436713_)))
                             (_tl3669236720_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3669436713_))))
                         (if (gx#stx-pair? _tl3669236720_)
                             (let ((_e3669736723_
                                    (gx#syntax-e _tl3669236720_)))
                               (let ((_hd3669636727_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3669736723_)))
                                     (_tl3669536730_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3669736723_))))
                                 (if (gx#stx-pair? _tl3669536730_)
                                     (let ((_e3670036733_
                                            (gx#syntax-e _tl3669536730_)))
                                       (let ((_hd3669936737_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3670036733_)))
                                             (_tl3669836740_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3670036733_))))
                                         (if (gx#stx-null? _tl3669836740_)
                                             ((lambda (_L36743_ _L36745_)
                                                (if (gx#identifier? _L36743_)
                                                    (let* ((_pre36761_
                                                            (gx#stx-e
                                                             _L36743_))
                                                           (_exports36764_
                                                            (gx#core-expand-export-source
                                                             _L36745_))
                                                           (_rename-e36770_
                                                            (lambda (_name36767_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36767_
                         _pre36761_))))
                   (_fold-e36780_
                    (letrec ((_fold-e36773_
                              (lambda (_out36776_ _r36778_)
                                (if (gx#module-export? _out36776_)
                                    (let ((__tmp50850
                                           (let ((__tmp50851
                                                  (_rename-e36770_
                                                   (gx#module-export-name
                                                    _out36776_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                              _out36776_
                                              __tmp50851))))
                                      (declare (not safe))
                                      (cons __tmp50850 _r36778_))
                                    (if (gx#export-set? _out36776_)
                                        (let ((__tmp50849
                                               (gx#export-set-exports
                                                _out36776_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36773_
                                                  _r36778_
                                                  __tmp50849))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out36776_ _r36778_)))))))
                      _fold-e36773_)))
              (let ((__tmp50852
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36780_ '() _exports36764_))))
                (declare (not safe))
                (cons 'begin: __tmp50852)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3668836706_
                                                     _g3668936710_)))
                                              _hd3669936737_
                                              _hd3669636727_)
                                             (_g3668836706_ _g3668936710_))))
                                     (_g3668836706_ _g3668936710_))))
                             (_g3668836706_ _g3668936710_))))
                     (_g3668836706_ _g3668936710_)))))
         (_g3668736785_ _stx36685_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36789_)
       (letrec ((_identifiers36792_
                 (lambda (_id37024_ _unchecked?37026_)
                   (let ((_info37028_ (gx#syntax-local-value _id37024_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            _info37028_))
                         (let ((__tmp50853
                                (let ((__tmp50865
                                       (let ((__obj47258 _info37028_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj47258
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj47258
                                                '8
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              __obj47258
                                              'type-descriptor))))
                                      (__tmp50854
                                       (let ((__tmp50856
                                              (let ((__tmp50864
                                                     (let ((__obj47259
                                                            _info37028_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47259
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47259
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47259
                                                            'predicate))))
                                                    (__tmp50857
                                                     (let ((__tmp50859
                                                            (let ((__tmp50861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?37026_
                               (let ((__tmp50863
                                      (map cdr
                                           (let ((__obj47260 _info37028_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47260
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47260
                                                    '14
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47260
                                                  'unchecked-mutators)))))
                                     (__tmp50862
                                      (map cdr
                                           (let ((__obj47261 _info37028_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47261
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47261
                                                    '13
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47261
                                                  'unchecked-accessors))))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp50863 __tmp50862))
                               '()))
                          (__tmp50860
                           (map cdr
                                (let ((__obj47262 _info37028_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj47262
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj47262
                                         '12
                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                       __obj47262
                                       'mutators))))))
                      (declare (not safe))
                      (foldr1 cons __tmp50861 __tmp50860)))
                   (__tmp50858
                    (map cdr
                         (let ((__obj47263 _info37028_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj47263
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj47263
                                  '11
                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                __obj47263
                                'accessors))))))
               (declare (not safe))
               (foldr1 cons __tmp50859 __tmp50858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50864 __tmp50857)))
                                             (__tmp50855
                                              (let ((_ctor37031_
                                                     (let ((__obj47264
                                                            _info37028_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47264
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47264
                                                              '9
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47264
                                                            'constructor)))))
                                                (if _ctor37031_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor37031_ '()))
                                                    '()))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp50856 __tmp50855))))
                                  (declare (not safe))
                                  (cons __tmp50865 __tmp50854))))
                           (declare (not safe))
                           (cons _id37024_ __tmp50853))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx36789_
                          _id37024_))))))
         (let* ((___stx4718147182_ _stx36789_)
                (_g3679636837_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4718147182_))))
           (let ((___kont4718447185_
                  (lambda (_L36985_ _L36987_)
                    (let ((__tmp50866
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3700637008_)
                               (_identifiers36792_
                                _g3700637008_
                                (gx#stx-e _L36987_)))
                             (let ((__tmp50867
                                    (lambda (_g3701137014_ _g3701237017_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3701137014_ _g3701237017_)))))
                               (declare (not safe))
                               (foldr1 __tmp50867 '() _L36985_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp50866))))
                 (___kont4718847189_
                  (lambda (_L36884_)
                    (let ((__tmp50868
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3690036902_)
                               (_identifiers36792_ _g3690036902_ '#f))
                             (let ((__tmp50869
                                    (lambda (_g3690536908_ _g3690636911_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3690536908_ _g3690636911_)))))
                               (declare (not safe))
                               (foldr1 __tmp50869 '() _L36884_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp50868)))))
             (let* ((___match4723847239_
                     (lambda (_e3682236844_
                              _hd3682136848_
                              _tl3682036851_
                              ___splice4719047191_
                              _target3682336854_
                              _tl3682536857_)
                       (letrec ((_loop3682636860_
                                 (lambda (_hd3682436864_ _id3683036867_)
                                   (if (gx#stx-pair? _hd3682436864_)
                                       (let ((_e3682736870_
                                              (gx#syntax-e _hd3682436864_)))
                                         (let ((_lp-tl3682936877_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3682736870_)))
                                               (_lp-hd3682836874_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3682736870_))))
                                           (_loop3682636860_
                                            _lp-tl3682936877_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3682836874_
                                                    _id3683036867_)))))
                                       (let ((_id3683136880_
                                              (reverse _id3683036867_)))
                                         (___kont4718847189_
                                          _id3683136880_))))))
                         (_loop3682636860_ _target3682336854_ '()))))
                    (___match4722447225_
                     (lambda (_e3680236921_
                              _hd3680136925_
                              _tl3680036928_
                              _e3680536931_
                              _hd3680436935_
                              _tl3680336938_
                              _e3680636941_
                              _e3680936945_
                              _hd3680836949_
                              _tl3680736952_
                              ___splice4718647187_
                              _target3681036955_
                              _tl3681236958_)
                       (letrec ((_loop3681336961_
                                 (lambda (_hd3681136965_ _id3681736968_)
                                   (if (gx#stx-pair? _hd3681136965_)
                                       (let ((_e3681436971_
                                              (gx#syntax-e _hd3681136965_)))
                                         (let ((_lp-tl3681636978_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3681436971_)))
                                               (_lp-hd3681536975_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3681436971_))))
                                           (_loop3681336961_
                                            _lp-tl3681636978_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3681536975_
                                                    _id3681736968_)))))
                                       (let ((_id3681836981_
                                              (reverse _id3681736968_)))
                                         (___kont4718447185_
                                          _id3681836981_
                                          _hd3680836949_))))))
                         (_loop3681336961_ _target3681036955_ '())))))
               (if (gx#stx-pair? ___stx4718147182_)
                   (let ((_e3680236921_ (gx#syntax-e ___stx4718147182_)))
                     (let ((_tl3680036928_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3680236921_)))
                           (_hd3680136925_
                            (let ()
                              (declare (not safe))
                              (##car _e3680236921_))))
                       (if (gx#stx-pair? _tl3680036928_)
                           (let ((_e3680536931_ (gx#syntax-e _tl3680036928_)))
                             (let ((_tl3680336938_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3680536931_)))
                                   (_hd3680436935_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3680536931_))))
                               (if (gx#stx-datum? _hd3680436935_)
                                   (let ((_e3680636941_
                                          (gx#stx-e _hd3680436935_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3680636941_ 'unchecked:))
                                         (if (gx#stx-pair? _tl3680336938_)
                                             (let ((_e3680936945_
                                                    (gx#syntax-e
                                                     _tl3680336938_)))
                                               (let ((_tl3680736952_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3680936945_)))
                                                     (_hd3680836949_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3680936945_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl3680736952_)
                                                     (let ((___splice4718647187_
                                                            (gx#syntax-split-splice
                                                             _tl3680736952_
                                                             '0)))
                                                       (let ((_tl3681236958_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4718647187_ '1)))
                     (_target3681036955_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4718647187_ '0))))
                 (if (gx#stx-null? _tl3681236958_)
                     (___match4722447225_
                      _e3680236921_
                      _hd3680136925_
                      _tl3680036928_
                      _e3680536931_
                      _hd3680436935_
                      _tl3680336938_
                      _e3680636941_
                      _e3680936945_
                      _hd3680836949_
                      _tl3680736952_
                      ___splice4718647187_
                      _target3681036955_
                      _tl3681236958_)
                     (if (gx#stx-pair/null? _tl3680036928_)
                         (let ((___splice4719047191_
                                (gx#syntax-split-splice _tl3680036928_ '0)))
                           (let ((_tl3682536857_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4719047191_ '1)))
                                 (_target3682336854_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4719047191_ '0))))
                             (if (gx#stx-null? _tl3682536857_)
                                 (___match4723847239_
                                  _e3680236921_
                                  _hd3680136925_
                                  _tl3680036928_
                                  ___splice4719047191_
                                  _target3682336854_
                                  _tl3682536857_)
                                 (let ()
                                   (declare (not safe))
                                   (_g3679636837_)))))
                         (let () (declare (not safe)) (_g3679636837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl3680036928_)
                                                         (let ((___splice4719047191_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3680036928_
                         '0)))
                   (let ((_tl3682536857_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4719047191_ '1)))
                         (_target3682336854_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4719047191_ '0))))
                     (if (gx#stx-null? _tl3682536857_)
                         (___match4723847239_
                          _e3680236921_
                          _hd3680136925_
                          _tl3680036928_
                          ___splice4719047191_
                          _target3682336854_
                          _tl3682536857_)
                         (let () (declare (not safe)) (_g3679636837_)))))
                 (let () (declare (not safe)) (_g3679636837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl3680036928_)
                                                 (let ((___splice4719047191_
                                                        (gx#syntax-split-splice
                                                         _tl3680036928_
                                                         '0)))
                                                   (let ((_tl3682536857_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4719047191_
                                                             '1)))
                                                         (_target3682336854_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4719047191_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl3682536857_)
                                                         (___match4723847239_
                                                          _e3680236921_
                                                          _hd3680136925_
                                                          _tl3680036928_
                                                          ___splice4719047191_
                                                          _target3682336854_
                                                          _tl3682536857_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3679636837_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3679636837_))))
                                         (if (gx#stx-pair/null? _tl3680036928_)
                                             (let ((___splice4719047191_
                                                    (gx#syntax-split-splice
                                                     _tl3680036928_
                                                     '0)))
                                               (let ((_tl3682536857_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4719047191_
                                                         '1)))
                                                     (_target3682336854_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4719047191_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl3682536857_)
                                                     (___match4723847239_
                                                      _e3680236921_
                                                      _hd3680136925_
                                                      _tl3680036928_
                                                      ___splice4719047191_
                                                      _target3682336854_
                                                      _tl3682536857_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3679636837_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3679636837_)))))
                                   (if (gx#stx-pair/null? _tl3680036928_)
                                       (let ((___splice4719047191_
                                              (gx#syntax-split-splice
                                               _tl3680036928_
                                               '0)))
                                         (let ((_tl3682536857_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4719047191_
                                                   '1)))
                                               (_target3682336854_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4719047191_
                                                   '0))))
                                           (if (gx#stx-null? _tl3682536857_)
                                               (___match4723847239_
                                                _e3680236921_
                                                _hd3680136925_
                                                _tl3680036928_
                                                ___splice4719047191_
                                                _target3682336854_
                                                _tl3682536857_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3679636837_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g3679636837_))))))
                           (if (gx#stx-pair/null? _tl3680036928_)
                               (let ((___splice4719047191_
                                      (gx#syntax-split-splice
                                       _tl3680036928_
                                       '0)))
                                 (let ((_tl3682536857_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4719047191_
                                           '1)))
                                       (_target3682336854_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4719047191_
                                           '0))))
                                   (if (gx#stx-null? _tl3682536857_)
                                       (___match4723847239_
                                        _e3680236921_
                                        _hd3680136925_
                                        _tl3680036928_
                                        ___splice4719047191_
                                        _target3682336854_
                                        _tl3682536857_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3679636837_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g3679636837_))))))
                   (let () (declare (not safe)) (_g3679636837_)))))))))))
