(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34614_)
      (let* ((___stx4673246733_ _$stx34614_)
             (_g3461934638_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4673246733_))))
        (let ((___kont4673546736_
               (lambda ()
                 (let ((__tmp49651 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp49651 '()))))
              (___kont4673746738_
               (lambda (_L34665_ _L34667_ _L34668_)
                 (let ((__tmp49664 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp49652
                        (let ((__tmp49661
                               (let ((__tmp49662
                                      (let ((__tmp49663
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34668_ _L34665_))))
                                        (declare (not safe))
                                        (cons __tmp49663 '()))))
                                 (declare (not safe))
                                 (cons _L34667_ __tmp49662)))
                              (__tmp49653
                               (let ((__tmp49654
                                      (let ((__tmp49660
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp49655
                                             (let ((__tmp49656
                                                    (let ((__tmp49659
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp49657
                                                           (let ((__tmp49658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L34667_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp49658))))
              (declare (not safe))
              (cons __tmp49659 __tmp49657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49656 '()))))
                                        (declare (not safe))
                                        (cons __tmp49660 __tmp49655))))
                                 (declare (not safe))
                                 (cons __tmp49654 '()))))
                          (declare (not safe))
                          (cons __tmp49661 __tmp49653))))
                   (declare (not safe))
                   (cons __tmp49664 __tmp49652)))))
          (if (gx#stx-pair? ___stx4673246733_)
              (let ((_e3462134691_ (gx#syntax-e ___stx4673246733_)))
                (let ((_tl3462334698_
                       (let () (declare (not safe)) (##cdr _e3462134691_)))
                      (_hd3462234695_
                       (let () (declare (not safe)) (##car _e3462134691_))))
                  (if (gx#stx-null? _tl3462334698_)
                      (___kont4673546736_)
                      (if (gx#stx-pair? _tl3462334698_)
                          (let ((_e3463034655_ (gx#syntax-e _tl3462334698_)))
                            (let ((_tl3463234662_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3463034655_)))
                                  (_hd3463134659_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3463034655_))))
                              (___kont4673746738_
                               _tl3463234662_
                               _hd3463134659_
                               _hd3462234695_)))
                          (let () (declare (not safe)) (_g3461934638_))))))
              (let () (declare (not safe)) (_g3461934638_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34709_)
      (let* ((___stx4676246763_ _$stx34709_)
             (_g3471434754_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4676246763_))))
        (let ((___kont4676546766_
               (lambda (_L34892_ _L34894_)
                 (let ((__tmp49670 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp49665
                        (let ((__tmp49666
                               (let ((__tmp49667
                                      (let ((__tmp49669
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp49668
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34892_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49669 __tmp49668))))
                                 (declare (not safe))
                                 (cons __tmp49667 '()))))
                          (declare (not safe))
                          (cons _L34894_ __tmp49666))))
                   (declare (not safe))
                   (cons __tmp49670 __tmp49665))))
              (___kont4676746768_
               (lambda (_L34821_ _L34823_ _L34824_ _L34825_)
                 (let ((__tmp49671
                        (let ((__tmp49672
                               (let ((__tmp49673
                                      (let ((__tmp49677
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp49674
                                             (let ((__tmp49675
                                                    (let ((__tmp49676
                                                           (lambda (_g3484634849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3484734852_)
                     (let ()
                       (declare (not safe))
                       (cons _g3484634849_ _g3484734852_)))))
              (declare (not safe))
              (foldr1 __tmp49676 '() _L34821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34823_ __tmp49675))))
                                        (declare (not safe))
                                        (cons __tmp49677 __tmp49674))))
                                 (declare (not safe))
                                 (cons __tmp49673 '()))))
                          (declare (not safe))
                          (cons _L34824_ __tmp49672))))
                   (declare (not safe))
                   (cons _L34825_ __tmp49671)))))
          (let* ((___match4681746818_
                  (lambda (_e3473134761_
                           _hd3473234765_
                           _tl3473334768_
                           _e3473434771_
                           _hd3473534775_
                           _tl3473634778_
                           _e3473734781_
                           _hd3473834785_
                           _tl3473934788_
                           ___splice4676946770_
                           _target3474034791_
                           _tl3474234794_)
                    (letrec ((_loop3474334797_
                              (lambda (_hd3474134801_ _body3474734804_)
                                (if (gx#stx-pair? _hd3474134801_)
                                    (let ((_e3474434807_
                                           (gx#syntax-e _hd3474134801_)))
                                      (let ((_lp-tl3474634814_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3474434807_)))
                                            (_lp-hd3474534811_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3474434807_))))
                                        (_loop3474334797_
                                         _lp-tl3474634814_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3474534811_
                                                 _body3474734804_)))))
                                    (let ((_body3474834817_
                                           (reverse _body3474734804_)))
                                      (let ((_L34821_ _body3474834817_)
                                            (_L34823_ _tl3473934788_)
                                            (_L34824_ _hd3473834785_)
                                            (_L34825_ _hd3473234765_))
                                        (if (gx#identifier? _L34824_)
                                            (___kont4676746768_
                                             _L34821_
                                             _L34823_
                                             _L34824_
                                             _L34825_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3471434754_)))))))))
                      (_loop3474334797_ _target3474034791_ '()))))
                 (___match4679146792_
                  (lambda (_e3471834862_
                           _hd3471934866_
                           _tl3472034869_
                           _e3472134872_
                           _hd3472234876_
                           _tl3472334879_
                           _e3472434882_
                           _hd3472534886_
                           _tl3472634889_)
                    (let ((_L34892_ _hd3472534886_) (_L34894_ _hd3472234876_))
                      (if (gx#identifier? _L34894_)
                          (___kont4676546766_ _L34892_ _L34894_)
                          (if (gx#stx-pair? _hd3472234876_)
                              (let ((_e3473734781_
                                     (gx#syntax-e _hd3472234876_)))
                                (let ((_tl3473934788_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3473734781_)))
                                      (_hd3473834785_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3473734781_))))
                                  (if (gx#stx-pair/null? _tl3472334879_)
                                      (let ((___splice4676946770_
                                             (gx#syntax-split-splice
                                              _tl3472334879_
                                              '0)))
                                        (let ((_tl3474234794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4676946770_
                                                  '1)))
                                              (_target3474034791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4676946770_
                                                  '0))))
                                          (if (gx#stx-null? _tl3474234794_)
                                              (___match4681746818_
                                               _e3471834862_
                                               _hd3471934866_
                                               _tl3472034869_
                                               _e3472134872_
                                               _hd3472234876_
                                               _tl3472334879_
                                               _e3473734781_
                                               _hd3473834785_
                                               _tl3473934788_
                                               ___splice4676946770_
                                               _target3474034791_
                                               _tl3474234794_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3471434754_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3471434754_)))))
                              (let ()
                                (declare (not safe))
                                (_g3471434754_))))))))
            (if (gx#stx-pair? ___stx4676246763_)
                (let ((_e3471834862_ (gx#syntax-e ___stx4676246763_)))
                  (let ((_tl3472034869_
                         (let () (declare (not safe)) (##cdr _e3471834862_)))
                        (_hd3471934866_
                         (let () (declare (not safe)) (##car _e3471834862_))))
                    (if (gx#stx-pair? _tl3472034869_)
                        (let ((_e3472134872_ (gx#syntax-e _tl3472034869_)))
                          (let ((_tl3472334879_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3472134872_)))
                                (_hd3472234876_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3472134872_))))
                            (if (gx#stx-pair? _tl3472334879_)
                                (let ((_e3472434882_
                                       (gx#syntax-e _tl3472334879_)))
                                  (let ((_tl3472634889_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3472434882_)))
                                        (_hd3472534886_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3472434882_))))
                                    (if (gx#stx-null? _tl3472634889_)
                                        (___match4679146792_
                                         _e3471834862_
                                         _hd3471934866_
                                         _tl3472034869_
                                         _e3472134872_
                                         _hd3472234876_
                                         _tl3472334879_
                                         _e3472434882_
                                         _hd3472534886_
                                         _tl3472634889_)
                                        (if (gx#stx-pair? _hd3472234876_)
                                            (let ((_e3473734781_
                                                   (gx#syntax-e
                                                    _hd3472234876_)))
                                              (let ((_tl3473934788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3473734781_)))
                                                    (_hd3473834785_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3473734781_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3472334879_)
                                                    (let ((___splice4676946770_
                                                           (gx#syntax-split-splice
                                                            _tl3472334879_
                                                            '0)))
                                                      (let ((_tl3474234794_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4676946770_ '1)))
                    (_target3474034791_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4676946770_ '0))))
                (if (gx#stx-null? _tl3474234794_)
                    (___match4681746818_
                     _e3471834862_
                     _hd3471934866_
                     _tl3472034869_
                     _e3472134872_
                     _hd3472234876_
                     _tl3472334879_
                     _e3473734781_
                     _hd3473834785_
                     _tl3473934788_
                     ___splice4676946770_
                     _target3474034791_
                     _tl3474234794_)
                    (let () (declare (not safe)) (_g3471434754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3471434754_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3471434754_))))))
                                (if (gx#stx-pair? _hd3472234876_)
                                    (let ((_e3473734781_
                                           (gx#syntax-e _hd3472234876_)))
                                      (let ((_tl3473934788_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3473734781_)))
                                            (_hd3473834785_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3473734781_))))
                                        (if (gx#stx-pair/null? _tl3472334879_)
                                            (let ((___splice4676946770_
                                                   (gx#syntax-split-splice
                                                    _tl3472334879_
                                                    '0)))
                                              (let ((_tl3474234794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4676946770_
                                                        '1)))
                                                    (_target3474034791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4676946770_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3474234794_)
                                                    (___match4681746818_
                                                     _e3471834862_
                                                     _hd3471934866_
                                                     _tl3472034869_
                                                     _e3472134872_
                                                     _hd3472234876_
                                                     _tl3472334879_
                                                     _e3473734781_
                                                     _hd3473834785_
                                                     _tl3473934788_
                                                     ___splice4676946770_
                                                     _target3474034791_
                                                     _tl3474234794_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3471434754_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3471434754_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3471434754_))))))
                        (let () (declare (not safe)) (_g3471434754_)))))
                (let () (declare (not safe)) (_g3471434754_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34914_)
      (let* ((___stx4682046821_ _$stx34914_)
             (_g3491934959_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4682046821_))))
        (let ((___kont4682346824_
               (lambda (_L35097_ _L35099_)
                 (let ((__tmp49683 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp49678
                        (let ((__tmp49679
                               (let ((__tmp49680
                                      (let ((__tmp49682
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp49681
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35097_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49682 __tmp49681))))
                                 (declare (not safe))
                                 (cons __tmp49680 '()))))
                          (declare (not safe))
                          (cons _L35099_ __tmp49679))))
                   (declare (not safe))
                   (cons __tmp49683 __tmp49678))))
              (___kont4682546826_
               (lambda (_L35026_ _L35028_ _L35029_ _L35030_)
                 (let ((__tmp49684
                        (let ((__tmp49685
                               (let ((__tmp49686
                                      (let ((__tmp49690
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp49687
                                             (let ((__tmp49688
                                                    (let ((__tmp49689
                                                           (lambda (_g3505135054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3505235057_)
                     (let ()
                       (declare (not safe))
                       (cons _g3505135054_ _g3505235057_)))))
              (declare (not safe))
              (foldr1 __tmp49689 '() _L35026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35028_ __tmp49688))))
                                        (declare (not safe))
                                        (cons __tmp49690 __tmp49687))))
                                 (declare (not safe))
                                 (cons __tmp49686 '()))))
                          (declare (not safe))
                          (cons _L35029_ __tmp49685))))
                   (declare (not safe))
                   (cons _L35030_ __tmp49684)))))
          (let* ((___match4687546876_
                  (lambda (_e3493634966_
                           _hd3493734970_
                           _tl3493834973_
                           _e3493934976_
                           _hd3494034980_
                           _tl3494134983_
                           _e3494234986_
                           _hd3494334990_
                           _tl3494434993_
                           ___splice4682746828_
                           _target3494534996_
                           _tl3494734999_)
                    (letrec ((_loop3494835002_
                              (lambda (_hd3494635006_ _body3495235009_)
                                (if (gx#stx-pair? _hd3494635006_)
                                    (let ((_e3494935012_
                                           (gx#syntax-e _hd3494635006_)))
                                      (let ((_lp-tl3495135019_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3494935012_)))
                                            (_lp-hd3495035016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3494935012_))))
                                        (_loop3494835002_
                                         _lp-tl3495135019_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3495035016_
                                                 _body3495235009_)))))
                                    (let ((_body3495335022_
                                           (reverse _body3495235009_)))
                                      (let ((_L35026_ _body3495335022_)
                                            (_L35028_ _tl3494434993_)
                                            (_L35029_ _hd3494334990_)
                                            (_L35030_ _hd3493734970_))
                                        (if (gx#identifier? _L35029_)
                                            (___kont4682546826_
                                             _L35026_
                                             _L35028_
                                             _L35029_
                                             _L35030_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3491934959_)))))))))
                      (_loop3494835002_ _target3494534996_ '()))))
                 (___match4684946850_
                  (lambda (_e3492335067_
                           _hd3492435071_
                           _tl3492535074_
                           _e3492635077_
                           _hd3492735081_
                           _tl3492835084_
                           _e3492935087_
                           _hd3493035091_
                           _tl3493135094_)
                    (let ((_L35097_ _hd3493035091_) (_L35099_ _hd3492735081_))
                      (if (gx#identifier? _L35099_)
                          (___kont4682346824_ _L35097_ _L35099_)
                          (if (gx#stx-pair? _hd3492735081_)
                              (let ((_e3494234986_
                                     (gx#syntax-e _hd3492735081_)))
                                (let ((_tl3494434993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3494234986_)))
                                      (_hd3494334990_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3494234986_))))
                                  (if (gx#stx-pair/null? _tl3492835084_)
                                      (let ((___splice4682746828_
                                             (gx#syntax-split-splice
                                              _tl3492835084_
                                              '0)))
                                        (let ((_tl3494734999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4682746828_
                                                  '1)))
                                              (_target3494534996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4682746828_
                                                  '0))))
                                          (if (gx#stx-null? _tl3494734999_)
                                              (___match4687546876_
                                               _e3492335067_
                                               _hd3492435071_
                                               _tl3492535074_
                                               _e3492635077_
                                               _hd3492735081_
                                               _tl3492835084_
                                               _e3494234986_
                                               _hd3494334990_
                                               _tl3494434993_
                                               ___splice4682746828_
                                               _target3494534996_
                                               _tl3494734999_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3491934959_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3491934959_)))))
                              (let ()
                                (declare (not safe))
                                (_g3491934959_))))))))
            (if (gx#stx-pair? ___stx4682046821_)
                (let ((_e3492335067_ (gx#syntax-e ___stx4682046821_)))
                  (let ((_tl3492535074_
                         (let () (declare (not safe)) (##cdr _e3492335067_)))
                        (_hd3492435071_
                         (let () (declare (not safe)) (##car _e3492335067_))))
                    (if (gx#stx-pair? _tl3492535074_)
                        (let ((_e3492635077_ (gx#syntax-e _tl3492535074_)))
                          (let ((_tl3492835084_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3492635077_)))
                                (_hd3492735081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3492635077_))))
                            (if (gx#stx-pair? _tl3492835084_)
                                (let ((_e3492935087_
                                       (gx#syntax-e _tl3492835084_)))
                                  (let ((_tl3493135094_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3492935087_)))
                                        (_hd3493035091_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3492935087_))))
                                    (if (gx#stx-null? _tl3493135094_)
                                        (___match4684946850_
                                         _e3492335067_
                                         _hd3492435071_
                                         _tl3492535074_
                                         _e3492635077_
                                         _hd3492735081_
                                         _tl3492835084_
                                         _e3492935087_
                                         _hd3493035091_
                                         _tl3493135094_)
                                        (if (gx#stx-pair? _hd3492735081_)
                                            (let ((_e3494234986_
                                                   (gx#syntax-e
                                                    _hd3492735081_)))
                                              (let ((_tl3494434993_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3494234986_)))
                                                    (_hd3494334990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3494234986_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3492835084_)
                                                    (let ((___splice4682746828_
                                                           (gx#syntax-split-splice
                                                            _tl3492835084_
                                                            '0)))
                                                      (let ((_tl3494734999_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4682746828_ '1)))
                    (_target3494534996_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4682746828_ '0))))
                (if (gx#stx-null? _tl3494734999_)
                    (___match4687546876_
                     _e3492335067_
                     _hd3492435071_
                     _tl3492535074_
                     _e3492635077_
                     _hd3492735081_
                     _tl3492835084_
                     _e3494234986_
                     _hd3494334990_
                     _tl3494434993_
                     ___splice4682746828_
                     _target3494534996_
                     _tl3494734999_)
                    (let () (declare (not safe)) (_g3491934959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3491934959_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3491934959_))))))
                                (if (gx#stx-pair? _hd3492735081_)
                                    (let ((_e3494234986_
                                           (gx#syntax-e _hd3492735081_)))
                                      (let ((_tl3494434993_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3494234986_)))
                                            (_hd3494334990_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3494234986_))))
                                        (if (gx#stx-pair/null? _tl3492835084_)
                                            (let ((___splice4682746828_
                                                   (gx#syntax-split-splice
                                                    _tl3492835084_
                                                    '0)))
                                              (let ((_tl3494734999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4682746828_
                                                        '1)))
                                                    (_target3494534996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4682746828_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3494734999_)
                                                    (___match4687546876_
                                                     _e3492335067_
                                                     _hd3492435071_
                                                     _tl3492535074_
                                                     _e3492635077_
                                                     _hd3492735081_
                                                     _tl3492835084_
                                                     _e3494234986_
                                                     _hd3494334990_
                                                     _tl3494434993_
                                                     ___splice4682746828_
                                                     _target3494534996_
                                                     _tl3494734999_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3491934959_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3491934959_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3491934959_))))))
                        (let () (declare (not safe)) (_g3491934959_)))))
                (let () (declare (not safe)) (_g3491934959_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx35119_)
      (let* ((___stx4687846879_ _$stx35119_)
             (_g3512435164_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4687846879_))))
        (let ((___kont4688146882_
               (lambda (_L35302_ _L35304_)
                 (let ((__tmp49696 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp49691
                        (let ((__tmp49692
                               (let ((__tmp49693
                                      (let ((__tmp49695
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp49694
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35302_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49695 __tmp49694))))
                                 (declare (not safe))
                                 (cons __tmp49693 '()))))
                          (declare (not safe))
                          (cons _L35304_ __tmp49692))))
                   (declare (not safe))
                   (cons __tmp49696 __tmp49691))))
              (___kont4688346884_
               (lambda (_L35231_ _L35233_ _L35234_ _L35235_)
                 (let ((__tmp49697
                        (let ((__tmp49698
                               (let ((__tmp49699
                                      (let ((__tmp49703
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp49700
                                             (let ((__tmp49701
                                                    (let ((__tmp49702
                                                           (lambda (_g3525635259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3525735262_)
                     (let ()
                       (declare (not safe))
                       (cons _g3525635259_ _g3525735262_)))))
              (declare (not safe))
              (foldr1 __tmp49702 '() _L35231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35233_ __tmp49701))))
                                        (declare (not safe))
                                        (cons __tmp49703 __tmp49700))))
                                 (declare (not safe))
                                 (cons __tmp49699 '()))))
                          (declare (not safe))
                          (cons _L35234_ __tmp49698))))
                   (declare (not safe))
                   (cons _L35235_ __tmp49697)))))
          (let* ((___match4693346934_
                  (lambda (_e3514135171_
                           _hd3514235175_
                           _tl3514335178_
                           _e3514435181_
                           _hd3514535185_
                           _tl3514635188_
                           _e3514735191_
                           _hd3514835195_
                           _tl3514935198_
                           ___splice4688546886_
                           _target3515035201_
                           _tl3515235204_)
                    (letrec ((_loop3515335207_
                              (lambda (_hd3515135211_ _body3515735214_)
                                (if (gx#stx-pair? _hd3515135211_)
                                    (let ((_e3515435217_
                                           (gx#syntax-e _hd3515135211_)))
                                      (let ((_lp-tl3515635224_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3515435217_)))
                                            (_lp-hd3515535221_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3515435217_))))
                                        (_loop3515335207_
                                         _lp-tl3515635224_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3515535221_
                                                 _body3515735214_)))))
                                    (let ((_body3515835227_
                                           (reverse _body3515735214_)))
                                      (let ((_L35231_ _body3515835227_)
                                            (_L35233_ _tl3514935198_)
                                            (_L35234_ _hd3514835195_)
                                            (_L35235_ _hd3514235175_))
                                        (if (gx#identifier? _L35234_)
                                            (___kont4688346884_
                                             _L35231_
                                             _L35233_
                                             _L35234_
                                             _L35235_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3512435164_)))))))))
                      (_loop3515335207_ _target3515035201_ '()))))
                 (___match4690746908_
                  (lambda (_e3512835272_
                           _hd3512935276_
                           _tl3513035279_
                           _e3513135282_
                           _hd3513235286_
                           _tl3513335289_
                           _e3513435292_
                           _hd3513535296_
                           _tl3513635299_)
                    (let ((_L35302_ _hd3513535296_) (_L35304_ _hd3513235286_))
                      (if (gx#identifier? _L35304_)
                          (___kont4688146882_ _L35302_ _L35304_)
                          (if (gx#stx-pair? _hd3513235286_)
                              (let ((_e3514735191_
                                     (gx#syntax-e _hd3513235286_)))
                                (let ((_tl3514935198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3514735191_)))
                                      (_hd3514835195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3514735191_))))
                                  (if (gx#stx-pair/null? _tl3513335289_)
                                      (let ((___splice4688546886_
                                             (gx#syntax-split-splice
                                              _tl3513335289_
                                              '0)))
                                        (let ((_tl3515235204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4688546886_
                                                  '1)))
                                              (_target3515035201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4688546886_
                                                  '0))))
                                          (if (gx#stx-null? _tl3515235204_)
                                              (___match4693346934_
                                               _e3512835272_
                                               _hd3512935276_
                                               _tl3513035279_
                                               _e3513135282_
                                               _hd3513235286_
                                               _tl3513335289_
                                               _e3514735191_
                                               _hd3514835195_
                                               _tl3514935198_
                                               ___splice4688546886_
                                               _target3515035201_
                                               _tl3515235204_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3512435164_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3512435164_)))))
                              (let ()
                                (declare (not safe))
                                (_g3512435164_))))))))
            (if (gx#stx-pair? ___stx4687846879_)
                (let ((_e3512835272_ (gx#syntax-e ___stx4687846879_)))
                  (let ((_tl3513035279_
                         (let () (declare (not safe)) (##cdr _e3512835272_)))
                        (_hd3512935276_
                         (let () (declare (not safe)) (##car _e3512835272_))))
                    (if (gx#stx-pair? _tl3513035279_)
                        (let ((_e3513135282_ (gx#syntax-e _tl3513035279_)))
                          (let ((_tl3513335289_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3513135282_)))
                                (_hd3513235286_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3513135282_))))
                            (if (gx#stx-pair? _tl3513335289_)
                                (let ((_e3513435292_
                                       (gx#syntax-e _tl3513335289_)))
                                  (let ((_tl3513635299_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3513435292_)))
                                        (_hd3513535296_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3513435292_))))
                                    (if (gx#stx-null? _tl3513635299_)
                                        (___match4690746908_
                                         _e3512835272_
                                         _hd3512935276_
                                         _tl3513035279_
                                         _e3513135282_
                                         _hd3513235286_
                                         _tl3513335289_
                                         _e3513435292_
                                         _hd3513535296_
                                         _tl3513635299_)
                                        (if (gx#stx-pair? _hd3513235286_)
                                            (let ((_e3514735191_
                                                   (gx#syntax-e
                                                    _hd3513235286_)))
                                              (let ((_tl3514935198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3514735191_)))
                                                    (_hd3514835195_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3514735191_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3513335289_)
                                                    (let ((___splice4688546886_
                                                           (gx#syntax-split-splice
                                                            _tl3513335289_
                                                            '0)))
                                                      (let ((_tl3515235204_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4688546886_ '1)))
                    (_target3515035201_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4688546886_ '0))))
                (if (gx#stx-null? _tl3515235204_)
                    (___match4693346934_
                     _e3512835272_
                     _hd3512935276_
                     _tl3513035279_
                     _e3513135282_
                     _hd3513235286_
                     _tl3513335289_
                     _e3514735191_
                     _hd3514835195_
                     _tl3514935198_
                     ___splice4688546886_
                     _target3515035201_
                     _tl3515235204_)
                    (let () (declare (not safe)) (_g3512435164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3512435164_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3512435164_))))))
                                (if (gx#stx-pair? _hd3513235286_)
                                    (let ((_e3514735191_
                                           (gx#syntax-e _hd3513235286_)))
                                      (let ((_tl3514935198_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3514735191_)))
                                            (_hd3514835195_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3514735191_))))
                                        (if (gx#stx-pair/null? _tl3513335289_)
                                            (let ((___splice4688546886_
                                                   (gx#syntax-split-splice
                                                    _tl3513335289_
                                                    '0)))
                                              (let ((_tl3515235204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4688546886_
                                                        '1)))
                                                    (_target3515035201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4688546886_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3515235204_)
                                                    (___match4693346934_
                                                     _e3512835272_
                                                     _hd3512935276_
                                                     _tl3513035279_
                                                     _e3513135282_
                                                     _hd3513235286_
                                                     _tl3513335289_
                                                     _e3514735191_
                                                     _hd3514835195_
                                                     _tl3514935198_
                                                     ___splice4688546886_
                                                     _target3515035201_
                                                     _tl3515235204_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3512435164_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3512435164_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3512435164_))))))
                        (let () (declare (not safe)) (_g3512435164_)))))
                (let () (declare (not safe)) (_g3512435164_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx35324_)
       (let* ((_g3532735347_
               (lambda (_g3532835343_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3532835343_)))
              (_g3532635418_
               (lambda (_g3532835351_)
                 (if (gx#stx-pair? _g3532835351_)
                     (let ((_e3533035354_ (gx#syntax-e _g3532835351_)))
                       (let ((_hd3533135358_
                              (let ()
                                (declare (not safe))
                                (##car _e3533035354_)))
                             (_tl3533235361_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3533035354_))))
                         (if (gx#stx-pair/null? _tl3533235361_)
                             (let ((_g49704_
                                    (gx#syntax-split-splice
                                     _tl3533235361_
                                     '0)))
                               (begin
                                 (let ((_g49705_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49704_)
                                              (##vector-length _g49704_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49705_ 2)))
                                       (error "Context expects 2 values"
                                              _g49705_)))
                                 (let ((_target3533335364_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49704_ 0)))
                                       (_tl3533535367_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49704_ 1))))
                                   (if (gx#stx-null? _tl3533535367_)
                                       (letrec ((_loop3533635370_
                                                 (lambda (_hd3533435374_
                                                          _body3534035377_)
                                                   (if (gx#stx-pair?
                                                        _hd3533435374_)
                                                       (let ((_e3533735380_
                                                              (gx#syntax-e
                                                               _hd3533435374_)))
                                                         (let ((_lp-hd3533835384_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3533735380_)))
                       (_lp-tl3533935387_
                        (let () (declare (not safe)) (##cdr _e3533735380_))))
                   (_loop3533635370_
                    _lp-tl3533935387_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3533835384_ _body3534035377_)))))
               (let ((_body3534135390_ (reverse _body3534035377_)))
                 ((lambda (_L35394_)
                    (let ((__tmp49706
                           (let ((__tmp49707
                                  (let ((__tmp49708
                                         (lambda (_g3540935412_ _g3541035415_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3540935412_
                                                   _g3541035415_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp49708 '() _L35394_))))
                             (declare (not safe))
                             (cons '1 __tmp49707))))
                      (declare (not safe))
                      (cons 'phi: __tmp49706)))
                  _body3534135390_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3533635370_
                                          _target3533335364_
                                          '()))
                                       (_g3532735347_ _g3532835351_)))))
                             (_g3532735347_ _g3532835351_))))
                     (_g3532735347_ _g3532835351_)))))
         (_g3532635418_ _stx35324_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx35423_)
       (let* ((_g3542635446_
               (lambda (_g3542735442_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3542735442_)))
              (_g3542535517_
               (lambda (_g3542735450_)
                 (if (gx#stx-pair? _g3542735450_)
                     (let ((_e3542935453_ (gx#syntax-e _g3542735450_)))
                       (let ((_hd3543035457_
                              (let ()
                                (declare (not safe))
                                (##car _e3542935453_)))
                             (_tl3543135460_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3542935453_))))
                         (if (gx#stx-pair/null? _tl3543135460_)
                             (let ((_g49709_
                                    (gx#syntax-split-splice
                                     _tl3543135460_
                                     '0)))
                               (begin
                                 (let ((_g49710_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49709_)
                                              (##vector-length _g49709_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49710_ 2)))
                                       (error "Context expects 2 values"
                                              _g49710_)))
                                 (let ((_target3543235463_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49709_ 0)))
                                       (_tl3543435466_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49709_ 1))))
                                   (if (gx#stx-null? _tl3543435466_)
                                       (letrec ((_loop3543535469_
                                                 (lambda (_hd3543335473_
                                                          _body3543935476_)
                                                   (if (gx#stx-pair?
                                                        _hd3543335473_)
                                                       (let ((_e3543635479_
                                                              (gx#syntax-e
                                                               _hd3543335473_)))
                                                         (let ((_lp-hd3543735483_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3543635479_)))
                       (_lp-tl3543835486_
                        (let () (declare (not safe)) (##cdr _e3543635479_))))
                   (_loop3543535469_
                    _lp-tl3543835486_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3543735483_ _body3543935476_)))))
               (let ((_body3544035489_ (reverse _body3543935476_)))
                 ((lambda (_L35493_)
                    (let ((__tmp49711
                           (let ((__tmp49712
                                  (let ((__tmp49713
                                         (lambda (_g3550835511_ _g3550935514_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3550835511_
                                                   _g3550935514_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp49713 '() _L35493_))))
                             (declare (not safe))
                             (cons '-1 __tmp49712))))
                      (declare (not safe))
                      (cons 'phi: __tmp49711)))
                  _body3544035489_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3543535469_
                                          _target3543235463_
                                          '()))
                                       (_g3542635446_ _g3542735450_)))))
                             (_g3542635446_ _g3542735450_))))
                     (_g3542635446_ _g3542735450_)))))
         (_g3542535517_ _stx35423_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx35522_)
       (let* ((_g3552535549_
               (lambda (_g3552635545_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3552635545_)))
              (_g3552435671_
               (lambda (_g3552635553_)
                 (if (gx#stx-pair? _g3552635553_)
                     (let ((_e3552935556_ (gx#syntax-e _g3552635553_)))
                       (let ((_hd3553035560_
                              (let ()
                                (declare (not safe))
                                (##car _e3552935556_)))
                             (_tl3553135563_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3552935556_))))
                         (if (gx#stx-pair? _tl3553135563_)
                             (let ((_e3553235566_
                                    (gx#syntax-e _tl3553135563_)))
                               (let ((_hd3553335570_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3553235566_)))
                                     (_tl3553435573_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3553235566_))))
                                 (if (gx#stx-pair/null? _tl3553435573_)
                                     (let ((_g49714_
                                            (gx#syntax-split-splice
                                             _tl3553435573_
                                             '0)))
                                       (begin
                                         (let ((_g49715_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49714_)
                                                      (##vector-length
                                                       _g49714_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49715_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49715_)))
                                         (let ((_target3553535576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49714_ 0)))
                                               (_tl3553735579_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49714_ 1))))
                                           (if (gx#stx-null? _tl3553735579_)
                                               (letrec ((_loop3553835582_
                                                         (lambda (_hd3553635586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3554235589_)
                   (if (gx#stx-pair? _hd3553635586_)
                       (let ((_e3553935592_ (gx#syntax-e _hd3553635586_)))
                         (let ((_lp-hd3554035596_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3553935592_)))
                               (_lp-tl3554135599_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3553935592_))))
                           (_loop3553835582_
                            _lp-tl3554135599_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3554035596_ _id3554235589_)))))
                       (let ((_id3554335602_ (reverse _id3554235589_)))
                         ((lambda (_L35606_ _L35608_)
                            (if (gx#identifier-list?
                                 (let ((__tmp49716
                                        (lambda (_g3562535628_ _g3562635631_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3562535628_
                                                  _g3562635631_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp49716 '() _L35606_)))
                                (let* ((_keys35642_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp49717
                                                (lambda (_g3563335636_
                                                         _g3563435639_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3563335636_
                                                          _g3563435639_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp49717 '() _L35606_))))
                                       (_keytab35653_
                                        (let ((_ht35645_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3564735649_)
                                             (hash-put!
                                              _ht35645_
                                              _g3564735649_
                                              '#t))
                                           _keys35642_)
                                          _ht35645_))
                                       (_imports35656_
                                        (gx#core-expand-import-source
                                         _L35608_))
                                       (_fold-e35666_
                                        (letrec ((_fold-e35659_
                                                  (lambda (_in35662_ _r35664_)
                                                    (if (gx#module-import?
                                                         _in35662_)
                                                        (if (hash-get
                                                             _keytab35653_
                                                             (gx#module-import-name
                                                              _in35662_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in35662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r35664_))
                    _r35664_)
                (if (gx#import-set? _in35662_)
                    (let ((__tmp49718 (gx#import-set-imports _in35662_)))
                      (declare (not safe))
                      (foldl1 _fold-e35659_ _r35664_ __tmp49718))
                    _r35664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35659_)))
                                  (let ((__tmp49719
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35666_
                                                   '()
                                                   _imports35656_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp49719)))
                                (_g3552535549_ _g3552635553_)))
                          _id3554335602_
                          _hd3553335570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3553835582_
                                                  _target3553535576_
                                                  '()))
                                               (_g3552535549_
                                                _g3552635553_)))))
                                     (_g3552535549_ _g3552635553_))))
                             (_g3552535549_ _g3552635553_))))
                     (_g3552535549_ _g3552635553_)))))
         (_g3552435671_ _stx35522_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx35676_)
       (let* ((_g3567935703_
               (lambda (_g3568035699_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3568035699_)))
              (_g3567835825_
               (lambda (_g3568035707_)
                 (if (gx#stx-pair? _g3568035707_)
                     (let ((_e3568335710_ (gx#syntax-e _g3568035707_)))
                       (let ((_hd3568435714_
                              (let ()
                                (declare (not safe))
                                (##car _e3568335710_)))
                             (_tl3568535717_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3568335710_))))
                         (if (gx#stx-pair? _tl3568535717_)
                             (let ((_e3568635720_
                                    (gx#syntax-e _tl3568535717_)))
                               (let ((_hd3568735724_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3568635720_)))
                                     (_tl3568835727_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3568635720_))))
                                 (if (gx#stx-pair/null? _tl3568835727_)
                                     (let ((_g49720_
                                            (gx#syntax-split-splice
                                             _tl3568835727_
                                             '0)))
                                       (begin
                                         (let ((_g49721_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49720_)
                                                      (##vector-length
                                                       _g49720_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49721_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49721_)))
                                         (let ((_target3568935730_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49720_ 0)))
                                               (_tl3569135733_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49720_ 1))))
                                           (if (gx#stx-null? _tl3569135733_)
                                               (letrec ((_loop3569235736_
                                                         (lambda (_hd3569035740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3569635743_)
                   (if (gx#stx-pair? _hd3569035740_)
                       (let ((_e3569335746_ (gx#syntax-e _hd3569035740_)))
                         (let ((_lp-hd3569435750_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3569335746_)))
                               (_lp-tl3569535753_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3569335746_))))
                           (_loop3569235736_
                            _lp-tl3569535753_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3569435750_ _id3569635743_)))))
                       (let ((_id3569735756_ (reverse _id3569635743_)))
                         ((lambda (_L35760_ _L35762_)
                            (if (gx#identifier-list?
                                 (let ((__tmp49722
                                        (lambda (_g3577935782_ _g3578035785_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3577935782_
                                                  _g3578035785_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp49722 '() _L35760_)))
                                (let* ((_keys35796_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp49723
                                                (lambda (_g3578735790_
                                                         _g3578835793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3578735790_
                                                          _g3578835793_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp49723 '() _L35760_))))
                                       (_keytab35807_
                                        (let ((_ht35799_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3580135803_)
                                             (hash-put!
                                              _ht35799_
                                              _g3580135803_
                                              '#t))
                                           _keys35796_)
                                          _ht35799_))
                                       (_imports35810_
                                        (gx#core-expand-import-source
                                         _L35762_))
                                       (_fold-e35820_
                                        (letrec ((_fold-e35813_
                                                  (lambda (_in35816_ _r35818_)
                                                    (if (gx#module-import?
                                                         _in35816_)
                                                        (if (hash-get
                                                             _keytab35807_
                                                             (gx#module-import-name
                                                              _in35816_))
                                                            _r35818_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in35816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r35818_)))
                (if (gx#import-set? _in35816_)
                    (let ((__tmp49724 (gx#import-set-imports _in35816_)))
                      (declare (not safe))
                      (foldl1 _fold-e35813_ _r35818_ __tmp49724))
                    (let ()
                      (declare (not safe))
                      (cons _in35816_ _r35818_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35813_)))
                                  (let ((__tmp49725
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35820_
                                                   '()
                                                   _imports35810_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp49725)))
                                (_g3567935703_ _g3568035707_)))
                          _id3569735756_
                          _hd3568735724_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3569235736_
                                                  _target3568935730_
                                                  '()))
                                               (_g3567935703_
                                                _g3568035707_)))))
                                     (_g3567935703_ _g3568035707_))))
                             (_g3567935703_ _g3568035707_))))
                     (_g3567935703_ _g3568035707_)))))
         (_g3567835825_ _stx35676_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35877_ _rename35879_)
      (gx#make-module-import
       (gx#module-import-source _in35877_)
       _rename35879_
       (gx#module-import-phi _in35877_)
       (gx#module-import-weak? _in35877_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35830_ _pre35832_)
      (let* ((_name3583335841_ _name35830_)
             (_else3583535853_
              (lambda () (make-symbol _pre35832_ _name35830_)))
             (_K3583735861_
              (lambda (_mark35857_ _id35859_)
                (let ((__tmp49726 (make-symbol _pre35832_ _id35859_)))
                  (declare (not safe))
                  (cons __tmp49726 _mark35857_)))))
        (if (let () (declare (not safe)) (##pair? _name3583335841_))
            (let ((_hd3583835865_
                   (let () (declare (not safe)) (##car _name3583335841_)))
                  (_tl3583935868_
                   (let () (declare (not safe)) (##cdr _name3583335841_))))
              (let* ((_id35871_ _hd3583835865_) (_mark35874_ _tl3583935868_))
                (declare (not safe))
                (_K3583735861_ _mark35874_ _id35871_)))
            (let () (declare (not safe)) (_else3583535853_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35881_)
       (let* ((_g3588435917_
               (lambda (_g3588535913_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3588535913_)))
              (_g3588336103_
               (lambda (_g3588535921_)
                 (if (gx#stx-pair? _g3588535921_)
                     (let ((_e3588935924_ (gx#syntax-e _g3588535921_)))
                       (let ((_hd3589035928_
                              (let ()
                                (declare (not safe))
                                (##car _e3588935924_)))
                             (_tl3589135931_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3588935924_))))
                         (if (gx#stx-pair? _tl3589135931_)
                             (let ((_e3589235934_
                                    (gx#syntax-e _tl3589135931_)))
                               (let ((_hd3589335938_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3589235934_)))
                                     (_tl3589435941_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3589235934_))))
                                 (if (gx#stx-pair/null? _tl3589435941_)
                                     (let ((_g49727_
                                            (gx#syntax-split-splice
                                             _tl3589435941_
                                             '0)))
                                       (begin
                                         (let ((_g49728_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49727_)
                                                      (##vector-length
                                                       _g49727_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49728_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49728_)))
                                         (let ((_target3589535944_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49727_ 0)))
                                               (_tl3589735947_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49727_ 1))))
                                           (if (gx#stx-null? _tl3589735947_)
                                               (letrec ((_loop3589835950_
                                                         (lambda (_hd3589635954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3590235957_
                          _id3590335959_)
                   (if (gx#stx-pair? _hd3589635954_)
                       (let ((_e3589935962_ (gx#syntax-e _hd3589635954_)))
                         (let ((_lp-hd3590035966_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3589935962_)))
                               (_lp-tl3590135969_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3589935962_))))
                           (if (gx#stx-pair? _lp-hd3590035966_)
                               (let ((_e3590635972_
                                      (gx#syntax-e _lp-hd3590035966_)))
                                 (let ((_hd3590735976_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3590635972_)))
                                       (_tl3590835979_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3590635972_))))
                                   (if (gx#stx-pair? _tl3590835979_)
                                       (let ((_e3590935982_
                                              (gx#syntax-e _tl3590835979_)))
                                         (let ((_hd3591035986_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3590935982_)))
                                               (_tl3591135989_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3590935982_))))
                                           (if (gx#stx-null? _tl3591135989_)
                                               (_loop3589835950_
                                                _lp-tl3590135969_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3591035986_
                                                        _new-id3590235957_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3590735976_
                                                        _id3590335959_)))
                                               (_g3588435917_ _g3588535921_))))
                                       (_g3588435917_ _g3588535921_))))
                               (_g3588435917_ _g3588535921_))))
                       (let ((_new-id3590435992_ (reverse _new-id3590235957_))
                             (_id3590535995_ (reverse _id3590335959_)))
                         ((lambda (_L35998_ _L36000_ _L36001_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp49729
                                             (lambda (_g3601936022_
                                                      _g3602036025_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3601936022_
                                                       _g3602036025_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp49729 '() _L36000_)))
                                     (gx#identifier-list?
                                      (let ((__tmp49730
                                             (lambda (_g3602736030_
                                                      _g3602836033_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3602736030_
                                                       _g3602836033_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp49730 '() _L35998_))))
                                (let* ((_keytab36036_ (make-hash-table))
                                       (_found36039_ (make-hash-table))
                                       (_g49731_
                                        (for-each
                                         (lambda (_id36042_ _new-id36044_)
                                           (hash-put!
                                            _keytab36036_
                                            (gx#core-identifier-key _id36042_)
                                            (gx#core-identifier-key
                                             _new-id36044_)))
                                         (let ((__tmp49732
                                                (lambda (_g3604536048_
                                                         _g3604636051_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3604536048_
                                                          _g3604636051_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp49732 '() _L36000_))
                                         (let ((__tmp49733
                                                (lambda (_g3605336056_
                                                         _g3605436059_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3605336056_
                                                          _g3605436059_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp49733 '() _L35998_))))
                                       (_imports36064_
                                        (gx#core-expand-import-source
                                         _L36001_))
                                       (_fold-e36084_
                                        (letrec ((_fold-e36067_
                                                  (lambda (_in36070_ _r36072_)
                                                    (if (gx#module-import?
                                                         _in36070_)
                                                        (let* ((_name36074_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in36070_))
                       (_$e36077_ (hash-get _keytab36036_ _name36074_)))
                  (if _$e36077_
                      ((lambda (_rename36081_)
                         (hash-put! _found36039_ _name36074_ '#t)
                         (let ((__tmp49734
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                   _in36070_
                                   _rename36081_))))
                           (declare (not safe))
                           (cons __tmp49734 _r36072_)))
                       _$e36077_)
                      (let () (declare (not safe)) (cons _in36070_ _r36072_))))
                (if (gx#import-set? _in36070_)
                    (let ((__tmp49735 (gx#import-set-imports _in36070_)))
                      (declare (not safe))
                      (foldl1 _fold-e36067_ _r36072_ __tmp49735))
                    (let ()
                      (declare (not safe))
                      (cons _in36070_ _r36072_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36067_))
                                       (_new-imports36087_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e36084_
                                                  '()
                                                  _imports36064_))))
                                  (for-each
                                   (lambda (_id36092_)
                                     (if (hash-get
                                          _found36039_
                                          (gx#core-identifier-key _id36092_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx35881_
                                          _id36092_)))
                                   (let ((__tmp49736
                                          (lambda (_g3609436097_ _g3609536100_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3609436097_
                                                    _g3609536100_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp49736 '() _L36000_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports36087_)))
                                (_g3588435917_ _g3588535921_)))
                          _new-id3590435992_
                          _id3590535995_
                          _hd3589335938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3589835950_
                                                  _target3589535944_
                                                  '()
                                                  '()))
                                               (_g3588435917_
                                                _g3588535921_)))))
                                     (_g3588435917_ _g3588535921_))))
                             (_g3588435917_ _g3588535921_))))
                     (_g3588435917_ _g3588535921_)))))
         (_g3588336103_ _stx35881_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx36109_)
       (let* ((_g3611236130_
               (lambda (_g3611336126_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3611336126_)))
              (_g3611136209_
               (lambda (_g3611336134_)
                 (if (gx#stx-pair? _g3611336134_)
                     (let ((_e3611636137_ (gx#syntax-e _g3611336134_)))
                       (let ((_hd3611736141_
                              (let ()
                                (declare (not safe))
                                (##car _e3611636137_)))
                             (_tl3611836144_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3611636137_))))
                         (if (gx#stx-pair? _tl3611836144_)
                             (let ((_e3611936147_
                                    (gx#syntax-e _tl3611836144_)))
                               (let ((_hd3612036151_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3611936147_)))
                                     (_tl3612136154_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3611936147_))))
                                 (if (gx#stx-pair? _tl3612136154_)
                                     (let ((_e3612236157_
                                            (gx#syntax-e _tl3612136154_)))
                                       (let ((_hd3612336161_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3612236157_)))
                                             (_tl3612436164_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3612236157_))))
                                         (if (gx#stx-null? _tl3612436164_)
                                             ((lambda (_L36167_ _L36169_)
                                                (if (gx#identifier? _L36167_)
                                                    (let* ((_pre36185_
                                                            (gx#stx-e
                                                             _L36167_))
                                                           (_imports36188_
                                                            (gx#core-expand-import-source
                                                             _L36169_))
                                                           (_rename-e36194_
                                                            (lambda (_name36191_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36191_
                         _pre36185_))))
                   (_fold-e36204_
                    (letrec ((_fold-e36197_
                              (lambda (_in36200_ _r36202_)
                                (if (gx#module-import? _in36200_)
                                    (let ((__tmp49737
                                           (let ((__tmp49738
                                                  (_rename-e36194_
                                                   (gx#module-import-name
                                                    _in36200_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                              _in36200_
                                              __tmp49738))))
                                      (declare (not safe))
                                      (cons __tmp49737 _r36202_))
                                    (if (gx#import-set? _in36200_)
                                        (let ((__tmp49739
                                               (gx#import-set-imports
                                                _in36200_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36197_
                                                  _r36202_
                                                  __tmp49739))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in36200_ _r36202_)))))))
                      _fold-e36197_)))
              (let ((__tmp49740
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36204_ '() _imports36188_))))
                (declare (not safe))
                (cons 'begin: __tmp49740)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3611236130_
                                                     _g3611336134_)))
                                              _hd3612336161_
                                              _hd3612036151_)
                                             (_g3611236130_ _g3611336134_))))
                                     (_g3611236130_ _g3611336134_))))
                             (_g3611236130_ _g3611336134_))))
                     (_g3611236130_ _g3611336134_)))))
         (_g3611136209_ _stx36109_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx36213_)
       (letrec ((_flatten36216_
                 (lambda (_list-of-lists36471_)
                   (let ((__tmp49741
                          (lambda (_v36474_ _acc36476_)
                            (if (let () (declare (not safe)) (null? _v36474_))
                                _acc36476_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v36474_))
                                    (append (_flatten36216_ _v36474_)
                                            _acc36476_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v36474_ _acc36476_)))))))
                     (declare (not safe))
                     (foldr1 __tmp49741 '() _list-of-lists36471_))))
                (_expand-path36218_
                 (lambda (_top36339_ _mod36341_)
                   (let* ((___stx4693646937_ _mod36341_)
                          (_g3634436366_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4693646937_))))
                     (let ((___kont4693946940_
                            (lambda (_L36434_ _L36436_)
                              (map (lambda (_mod36451_)
                                     (gx#stx-identifier
                                      _top36339_
                                      _top36339_
                                      '"/"
                                      _mod36451_))
                                   (_flatten36216_
                                    (map (lambda (_g3645336455_)
                                           (_expand-path36218_
                                            _L36436_
                                            _g3645336455_))
                                         (let ((__tmp49742
                                                (lambda (_g3645836461_
                                                         _g3645936464_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3645836461_
                                                          _g3645936464_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp49742
                                                   '()
                                                   _L36434_)))))))
                           (___kont4694346944_
                            (lambda (_L36373_)
                              (gx#stx-identifier
                               _top36339_
                               _top36339_
                               '"/"
                               _L36373_))))
                       (let* ((_g3634336387_
                               (lambda ()
                                 (let ((_L36373_ ___stx4693646937_))
                                   (if (or (gx#identifier? _L36373_)
                                           (gx#stx-fixnum? _L36373_))
                                       (___kont4694346944_ _L36373_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3634436366_))))))
                              (___match4695946960_
                               (lambda (_e3634836394_
                                        _hd3634936398_
                                        _tl3635036401_
                                        ___splice4694146942_
                                        _target3635136404_
                                        _tl3635336407_)
                                 (letrec ((_loop3635436410_
                                           (lambda (_hd3635236414_
                                                    _mod3635836417_)
                                             (if (gx#stx-pair? _hd3635236414_)
                                                 (let ((_e3635536420_
                                                        (gx#syntax-e
                                                         _hd3635236414_)))
                                                   (let ((_lp-tl3635736427_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3635536420_)))
                                                         (_lp-hd3635636424_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3635536420_))))
                                                     (_loop3635436410_
                                                      _lp-tl3635736427_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd3635636424_
                                                              _mod3635836417_)))))
                                                 (let ((_mod3635936430_
                                                        (reverse _mod3635836417_)))
                                                   (___kont4693946940_
                                                    _mod3635936430_
                                                    _hd3634936398_))))))
                                   (_loop3635436410_
                                    _target3635136404_
                                    '())))))
                         (if (gx#stx-pair? ___stx4693646937_)
                             (let ((_e3634836394_
                                    (gx#syntax-e ___stx4693646937_)))
                               (let ((_tl3635036401_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3634836394_)))
                                     (_hd3634936398_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3634836394_))))
                                 (if (gx#stx-pair/null? _tl3635036401_)
                                     (let ((___splice4694146942_
                                            (gx#syntax-split-splice
                                             _tl3635036401_
                                             '0)))
                                       (let ((_tl3635336407_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4694146942_
                                                 '1)))
                                             (_target3635136404_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4694146942_
                                                 '0))))
                                         (if (gx#stx-null? _tl3635336407_)
                                             (___match4695946960_
                                              _e3634836394_
                                              _hd3634936398_
                                              _tl3635036401_
                                              ___splice4694146942_
                                              _target3635136404_
                                              _tl3635336407_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3634336387_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3634336387_)))))
                             (let ()
                               (declare (not safe))
                               (_g3634336387_)))))))))
         (let* ((_g3622036244_
                 (lambda (_g3622136240_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g3622136240_)))
                (_g3621936335_
                 (lambda (_g3622136248_)
                   (if (gx#stx-pair? _g3622136248_)
                       (let ((_e3622436251_ (gx#syntax-e _g3622136248_)))
                         (let ((_hd3622536255_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3622436251_)))
                               (_tl3622636258_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3622436251_))))
                           (if (gx#stx-pair? _tl3622636258_)
                               (let ((_e3622736261_
                                      (gx#syntax-e _tl3622636258_)))
                                 (let ((_hd3622836265_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3622736261_)))
                                       (_tl3622936268_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3622736261_))))
                                   (if (gx#stx-pair/null? _tl3622936268_)
                                       (let ((_g49743_
                                              (gx#syntax-split-splice
                                               _tl3622936268_
                                               '0)))
                                         (begin
                                           (let ((_g49744_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49743_)
                                                        (##vector-length
                                                         _g49743_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49744_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49744_)))
                                           (let ((_target3623036271_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g49743_ 0)))
                                                 (_tl3623236274_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g49743_
                                                     1))))
                                             (if (gx#stx-null? _tl3623236274_)
                                                 (letrec ((_loop3623336277_
                                                           (lambda (_hd3623136281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3623736284_)
                     (if (gx#stx-pair? _hd3623136281_)
                         (let ((_e3623436287_ (gx#syntax-e _hd3623136281_)))
                           (let ((_lp-hd3623536291_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3623436287_)))
                                 (_lp-tl3623636294_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3623436287_))))
                             (_loop3623336277_
                              _lp-tl3623636294_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd3623536291_ _mod3623736284_)))))
                         (let ((_mod3623836297_ (reverse _mod3623736284_)))
                           ((lambda (_L36301_ _L36303_)
                              (let ((__tmp49745
                                     (_flatten36216_
                                      (map (lambda (_g3632136323_)
                                             (_expand-path36218_
                                              _L36303_
                                              _g3632136323_))
                                           (let ((__tmp49746
                                                  (lambda (_g3632636329_
                                                           _g3632736332_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3632636329_
                                                            _g3632736332_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp49746
                                                     '()
                                                     _L36301_))))))
                                (declare (not safe))
                                (cons 'begin: __tmp49745)))
                            _mod3623836297_
                            _hd3622836265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3623336277_
                                                    _target3623036271_
                                                    '()))
                                                 (_g3622036244_
                                                  _g3622136248_)))))
                                       (_g3622036244_ _g3622136248_))))
                               (_g3622036244_ _g3622136248_))))
                       (_g3622036244_ _g3622136248_)))))
           (_g3621936335_ _stx36213_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx36480_)
       (let* ((_g3648336507_
               (lambda (_g3648436503_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3648436503_)))
              (_g3648236629_
               (lambda (_g3648436511_)
                 (if (gx#stx-pair? _g3648436511_)
                     (let ((_e3648736514_ (gx#syntax-e _g3648436511_)))
                       (let ((_hd3648836518_
                              (let ()
                                (declare (not safe))
                                (##car _e3648736514_)))
                             (_tl3648936521_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3648736514_))))
                         (if (gx#stx-pair? _tl3648936521_)
                             (let ((_e3649036524_
                                    (gx#syntax-e _tl3648936521_)))
                               (let ((_hd3649136528_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3649036524_)))
                                     (_tl3649236531_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3649036524_))))
                                 (if (gx#stx-pair/null? _tl3649236531_)
                                     (let ((_g49747_
                                            (gx#syntax-split-splice
                                             _tl3649236531_
                                             '0)))
                                       (begin
                                         (let ((_g49748_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49747_)
                                                      (##vector-length
                                                       _g49747_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49748_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49748_)))
                                         (let ((_target3649336534_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49747_ 0)))
                                               (_tl3649536537_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49747_ 1))))
                                           (if (gx#stx-null? _tl3649536537_)
                                               (letrec ((_loop3649636540_
                                                         (lambda (_hd3649436544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3650036547_)
                   (if (gx#stx-pair? _hd3649436544_)
                       (let ((_e3649736550_ (gx#syntax-e _hd3649436544_)))
                         (let ((_lp-hd3649836554_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3649736550_)))
                               (_lp-tl3649936557_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3649736550_))))
                           (_loop3649636540_
                            _lp-tl3649936557_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3649836554_ _id3650036547_)))))
                       (let ((_id3650136560_ (reverse _id3650036547_)))
                         ((lambda (_L36564_ _L36566_)
                            (if (gx#identifier-list?
                                 (let ((__tmp49749
                                        (lambda (_g3658336586_ _g3658436589_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3658336586_
                                                  _g3658436589_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp49749 '() _L36564_)))
                                (let* ((_keys36600_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp49750
                                                (lambda (_g3659136594_
                                                         _g3659236597_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3659136594_
                                                          _g3659236597_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp49750 '() _L36564_))))
                                       (_keytab36611_
                                        (let ((_ht36603_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3660536607_)
                                             (hash-put!
                                              _ht36603_
                                              _g3660536607_
                                              '#t))
                                           _keys36600_)
                                          _ht36603_))
                                       (_exports36614_
                                        (gx#core-expand-export-source
                                         _L36566_))
                                       (_fold-e36624_
                                        (letrec ((_fold-e36617_
                                                  (lambda (_out36620_ _r36622_)
                                                    (if (gx#module-export?
                                                         _out36620_)
                                                        (if (hash-get
                                                             _keytab36611_
                                                             (gx#module-export-name
                                                              _out36620_))
                                                            _r36622_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _out36620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r36622_)))
                (if (gx#export-set? _out36620_)
                    (let ((__tmp49751 (gx#export-set-exports _out36620_)))
                      (declare (not safe))
                      (foldl1 _fold-e36617_ _r36622_ __tmp49751))
                    _r36622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36617_)))
                                  (let ((__tmp49752
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e36624_
                                                   '()
                                                   _exports36614_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp49752)))
                                (_g3648336507_ _g3648436511_)))
                          _id3650136560_
                          _hd3649136528_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3649636540_
                                                  _target3649336534_
                                                  '()))
                                               (_g3648336507_
                                                _g3648436511_)))))
                                     (_g3648336507_ _g3648436511_))))
                             (_g3648336507_ _g3648436511_))))
                     (_g3648336507_ _g3648436511_)))))
         (_g3648236629_ _stx36480_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out36634_ _rename36636_)
      (gx#make-module-export
       (gx#module-export-context _out36634_)
       (gx#module-export-key _out36634_)
       (gx#module-export-phi _out36634_)
       _rename36636_
       (gx#module-export-weak? _out36634_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx36638_)
       (let* ((_g3664136674_
               (lambda (_g3664236670_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3664236670_)))
              (_g3664036860_
               (lambda (_g3664236678_)
                 (if (gx#stx-pair? _g3664236678_)
                     (let ((_e3664636681_ (gx#syntax-e _g3664236678_)))
                       (let ((_hd3664736685_
                              (let ()
                                (declare (not safe))
                                (##car _e3664636681_)))
                             (_tl3664836688_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3664636681_))))
                         (if (gx#stx-pair? _tl3664836688_)
                             (let ((_e3664936691_
                                    (gx#syntax-e _tl3664836688_)))
                               (let ((_hd3665036695_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3664936691_)))
                                     (_tl3665136698_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3664936691_))))
                                 (if (gx#stx-pair/null? _tl3665136698_)
                                     (let ((_g49753_
                                            (gx#syntax-split-splice
                                             _tl3665136698_
                                             '0)))
                                       (begin
                                         (let ((_g49754_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49753_)
                                                      (##vector-length
                                                       _g49753_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49754_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49754_)))
                                         (let ((_target3665236701_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49753_ 0)))
                                               (_tl3665436704_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g49753_ 1))))
                                           (if (gx#stx-null? _tl3665436704_)
                                               (letrec ((_loop3665536707_
                                                         (lambda (_hd3665336711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3665936714_
                          _id3666036716_)
                   (if (gx#stx-pair? _hd3665336711_)
                       (let ((_e3665636719_ (gx#syntax-e _hd3665336711_)))
                         (let ((_lp-hd3665736723_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3665636719_)))
                               (_lp-tl3665836726_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3665636719_))))
                           (if (gx#stx-pair? _lp-hd3665736723_)
                               (let ((_e3666336729_
                                      (gx#syntax-e _lp-hd3665736723_)))
                                 (let ((_hd3666436733_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3666336729_)))
                                       (_tl3666536736_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3666336729_))))
                                   (if (gx#stx-pair? _tl3666536736_)
                                       (let ((_e3666636739_
                                              (gx#syntax-e _tl3666536736_)))
                                         (let ((_hd3666736743_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3666636739_)))
                                               (_tl3666836746_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3666636739_))))
                                           (if (gx#stx-null? _tl3666836746_)
                                               (_loop3665536707_
                                                _lp-tl3665836726_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3666736743_
                                                        _new-id3665936714_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3666436733_
                                                        _id3666036716_)))
                                               (_g3664136674_ _g3664236678_))))
                                       (_g3664136674_ _g3664236678_))))
                               (_g3664136674_ _g3664236678_))))
                       (let ((_new-id3666136749_ (reverse _new-id3665936714_))
                             (_id3666236752_ (reverse _id3666036716_)))
                         ((lambda (_L36755_ _L36757_ _L36758_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp49755
                                             (lambda (_g3677636779_
                                                      _g3677736782_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3677636779_
                                                       _g3677736782_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp49755 '() _L36757_)))
                                     (gx#identifier-list?
                                      (let ((__tmp49756
                                             (lambda (_g3678436787_
                                                      _g3678536790_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3678436787_
                                                       _g3678536790_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp49756 '() _L36755_))))
                                (let* ((_keytab36793_ (make-hash-table))
                                       (_found36796_ (make-hash-table))
                                       (_g49757_
                                        (for-each
                                         (lambda (_id36799_ _new-id36801_)
                                           (hash-put!
                                            _keytab36793_
                                            (gx#core-identifier-key _id36799_)
                                            (gx#core-identifier-key
                                             _new-id36801_)))
                                         (let ((__tmp49758
                                                (lambda (_g3680236805_
                                                         _g3680336808_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3680236805_
                                                          _g3680336808_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp49758 '() _L36757_))
                                         (let ((__tmp49759
                                                (lambda (_g3681036813_
                                                         _g3681136816_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3681036813_
                                                          _g3681136816_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp49759 '() _L36755_))))
                                       (_exports36821_
                                        (gx#core-expand-export-source
                                         _L36758_))
                                       (_fold-e36841_
                                        (letrec ((_fold-e36824_
                                                  (lambda (_out36827_ _r36829_)
                                                    (if (gx#module-export?
                                                         _out36827_)
                                                        (let* ((_name36831_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36827_))
                       (_$e36834_ (hash-get _keytab36793_ _name36831_)))
                  (if _$e36834_
                      ((lambda (_rename36838_)
                         (hash-put! _found36796_ _name36831_ '#t)
                         (let ((__tmp49760
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                   _out36827_
                                   _rename36838_))))
                           (declare (not safe))
                           (cons __tmp49760 _r36829_)))
                       _$e36834_)
                      (let ()
                        (declare (not safe))
                        (cons _out36827_ _r36829_))))
                (if (gx#export-set? _out36827_)
                    (let ((__tmp49761 (gx#export-set-exports _out36827_)))
                      (declare (not safe))
                      (foldl1 _fold-e36824_ _r36829_ __tmp49761))
                    (let ()
                      (declare (not safe))
                      (cons _out36827_ _r36829_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36824_))
                                       (_new-exports36844_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e36841_
                                                  '()
                                                  _exports36821_))))
                                  (for-each
                                   (lambda (_id36849_)
                                     (if (hash-get
                                          _found36796_
                                          (gx#core-identifier-key _id36849_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx36638_
                                          _id36849_)))
                                   (let ((__tmp49762
                                          (lambda (_g3685136854_ _g3685236857_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3685136854_
                                                    _g3685236857_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp49762 '() _L36757_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports36844_)))
                                (_g3664136674_ _g3664236678_)))
                          _new-id3666136749_
                          _id3666236752_
                          _hd3665036695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3665536707_
                                                  _target3665236701_
                                                  '()
                                                  '()))
                                               (_g3664136674_
                                                _g3664236678_)))))
                                     (_g3664136674_ _g3664236678_))))
                             (_g3664136674_ _g3664236678_))))
                     (_g3664136674_ _g3664236678_)))))
         (_g3664036860_ _stx36638_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36866_)
       (let* ((_g3686936887_
               (lambda (_g3687036883_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3687036883_)))
              (_g3686836966_
               (lambda (_g3687036891_)
                 (if (gx#stx-pair? _g3687036891_)
                     (let ((_e3687336894_ (gx#syntax-e _g3687036891_)))
                       (let ((_hd3687436898_
                              (let ()
                                (declare (not safe))
                                (##car _e3687336894_)))
                             (_tl3687536901_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3687336894_))))
                         (if (gx#stx-pair? _tl3687536901_)
                             (let ((_e3687636904_
                                    (gx#syntax-e _tl3687536901_)))
                               (let ((_hd3687736908_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3687636904_)))
                                     (_tl3687836911_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3687636904_))))
                                 (if (gx#stx-pair? _tl3687836911_)
                                     (let ((_e3687936914_
                                            (gx#syntax-e _tl3687836911_)))
                                       (let ((_hd3688036918_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3687936914_)))
                                             (_tl3688136921_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3687936914_))))
                                         (if (gx#stx-null? _tl3688136921_)
                                             ((lambda (_L36924_ _L36926_)
                                                (if (gx#identifier? _L36924_)
                                                    (let* ((_pre36942_
                                                            (gx#stx-e
                                                             _L36924_))
                                                           (_exports36945_
                                                            (gx#core-expand-export-source
                                                             _L36926_))
                                                           (_rename-e36951_
                                                            (lambda (_name36948_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36948_
                         _pre36942_))))
                   (_fold-e36961_
                    (letrec ((_fold-e36954_
                              (lambda (_out36957_ _r36959_)
                                (if (gx#module-export? _out36957_)
                                    (let ((__tmp49763
                                           (let ((__tmp49764
                                                  (_rename-e36951_
                                                   (gx#module-export-name
                                                    _out36957_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                              _out36957_
                                              __tmp49764))))
                                      (declare (not safe))
                                      (cons __tmp49763 _r36959_))
                                    (if (gx#export-set? _out36957_)
                                        (let ((__tmp49765
                                               (gx#export-set-exports
                                                _out36957_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36954_
                                                  _r36959_
                                                  __tmp49765))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out36957_ _r36959_)))))))
                      _fold-e36954_)))
              (let ((__tmp49766
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36961_ '() _exports36945_))))
                (declare (not safe))
                (cons 'begin: __tmp49766)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3686936887_
                                                     _g3687036891_)))
                                              _hd3688036918_
                                              _hd3687736908_)
                                             (_g3686936887_ _g3687036891_))))
                                     (_g3686936887_ _g3687036891_))))
                             (_g3686936887_ _g3687036891_))))
                     (_g3686936887_ _g3687036891_)))))
         (_g3686836966_ _stx36866_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36970_)
       (letrec ((_identifiers36973_
                 (lambda (_id37205_ _unchecked?37207_)
                   (let ((_info37209_ (gx#syntax-local-value _id37205_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            _info37209_))
                         (let ((__tmp49767
                                (let ((__tmp49779
                                       (let ((__obj47039 _info37209_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj47039
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj47039
                                                '9
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              __obj47039
                                              'type-descriptor))))
                                      (__tmp49768
                                       (let ((__tmp49770
                                              (let ((__tmp49778
                                                     (let ((__obj47040
                                                            _info37209_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47040
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47040
                                                              '11
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47040
                                                            'predicate))))
                                                    (__tmp49771
                                                     (let ((__tmp49773
                                                            (let ((__tmp49775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?37207_
                               (let ((__tmp49777
                                      (map cdr
                                           (let ((__obj47041 _info37209_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47041
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47041
                                                    '15
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47041
                                                  'unchecked-mutators)))))
                                     (__tmp49776
                                      (map cdr
                                           (let ((__obj47042 _info37209_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47042
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47042
                                                    '14
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47042
                                                  'unchecked-accessors))))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp49777 __tmp49776))
                               '()))
                          (__tmp49774
                           (map cdr
                                (let ((__obj47043 _info37209_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj47043
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj47043
                                         '13
                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                       __obj47043
                                       'mutators))))))
                      (declare (not safe))
                      (foldr1 cons __tmp49775 __tmp49774)))
                   (__tmp49772
                    (map cdr
                         (let ((__obj47044 _info37209_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj47044
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj47044
                                  '12
                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                __obj47044
                                'accessors))))))
               (declare (not safe))
               (foldr1 cons __tmp49773 __tmp49772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49778 __tmp49771)))
                                             (__tmp49769
                                              (let ((_ctor37212_
                                                     (let ((__obj47045
                                                            _info37209_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47045
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47045
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47045
                                                            'constructor)))))
                                                (if _ctor37212_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor37212_ '()))
                                                    '()))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp49770 __tmp49769))))
                                  (declare (not safe))
                                  (cons __tmp49779 __tmp49768))))
                           (declare (not safe))
                           (cons _id37205_ __tmp49767))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx36970_
                          _id37205_))))))
         (let* ((___stx4696246963_ _stx36970_)
                (_g3697737018_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4696246963_))))
           (let ((___kont4696546966_
                  (lambda (_L37166_ _L37168_)
                    (let ((__tmp49780
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3718737189_)
                               (_identifiers36973_
                                _g3718737189_
                                (gx#stx-e _L37168_)))
                             (let ((__tmp49781
                                    (lambda (_g3719237195_ _g3719337198_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3719237195_ _g3719337198_)))))
                               (declare (not safe))
                               (foldr1 __tmp49781 '() _L37166_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp49780))))
                 (___kont4696946970_
                  (lambda (_L37065_)
                    (let ((__tmp49782
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3708137083_)
                               (_identifiers36973_ _g3708137083_ '#f))
                             (let ((__tmp49783
                                    (lambda (_g3708637089_ _g3708737092_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3708637089_ _g3708737092_)))))
                               (declare (not safe))
                               (foldr1 __tmp49783 '() _L37065_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp49782)))))
             (let* ((___match4701947020_
                     (lambda (_e3700137025_
                              _hd3700237029_
                              _tl3700337032_
                              ___splice4697146972_
                              _target3700437035_
                              _tl3700637038_)
                       (letrec ((_loop3700737041_
                                 (lambda (_hd3700537045_ _id3701137048_)
                                   (if (gx#stx-pair? _hd3700537045_)
                                       (let ((_e3700837051_
                                              (gx#syntax-e _hd3700537045_)))
                                         (let ((_lp-tl3701037058_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3700837051_)))
                                               (_lp-hd3700937055_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3700837051_))))
                                           (_loop3700737041_
                                            _lp-tl3701037058_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3700937055_
                                                    _id3701137048_)))))
                                       (let ((_id3701237061_
                                              (reverse _id3701137048_)))
                                         (___kont4696946970_
                                          _id3701237061_))))))
                         (_loop3700737041_ _target3700437035_ '()))))
                    (___match4700547006_
                     (lambda (_e3698137102_
                              _hd3698237106_
                              _tl3698337109_
                              _e3698437112_
                              _hd3698537116_
                              _tl3698637119_
                              _e3698737122_
                              _e3698837126_
                              _hd3698937130_
                              _tl3699037133_
                              ___splice4696746968_
                              _target3699137136_
                              _tl3699337139_)
                       (letrec ((_loop3699437142_
                                 (lambda (_hd3699237146_ _id3699837149_)
                                   (if (gx#stx-pair? _hd3699237146_)
                                       (let ((_e3699537152_
                                              (gx#syntax-e _hd3699237146_)))
                                         (let ((_lp-tl3699737159_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3699537152_)))
                                               (_lp-hd3699637156_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3699537152_))))
                                           (_loop3699437142_
                                            _lp-tl3699737159_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3699637156_
                                                    _id3699837149_)))))
                                       (let ((_id3699937162_
                                              (reverse _id3699837149_)))
                                         (___kont4696546966_
                                          _id3699937162_
                                          _hd3698937130_))))))
                         (_loop3699437142_ _target3699137136_ '())))))
               (if (gx#stx-pair? ___stx4696246963_)
                   (let ((_e3698137102_ (gx#syntax-e ___stx4696246963_)))
                     (let ((_tl3698337109_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3698137102_)))
                           (_hd3698237106_
                            (let ()
                              (declare (not safe))
                              (##car _e3698137102_))))
                       (if (gx#stx-pair? _tl3698337109_)
                           (let ((_e3698437112_ (gx#syntax-e _tl3698337109_)))
                             (let ((_tl3698637119_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3698437112_)))
                                   (_hd3698537116_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3698437112_))))
                               (if (gx#stx-datum? _hd3698537116_)
                                   (let ((_e3698737122_
                                          (gx#stx-e _hd3698537116_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3698737122_ 'unchecked:))
                                         (if (gx#stx-pair? _tl3698637119_)
                                             (let ((_e3698837126_
                                                    (gx#syntax-e
                                                     _tl3698637119_)))
                                               (let ((_tl3699037133_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3698837126_)))
                                                     (_hd3698937130_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3698837126_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl3699037133_)
                                                     (let ((___splice4696746968_
                                                            (gx#syntax-split-splice
                                                             _tl3699037133_
                                                             '0)))
                                                       (let ((_tl3699337139_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4696746968_ '1)))
                     (_target3699137136_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4696746968_ '0))))
                 (if (gx#stx-null? _tl3699337139_)
                     (___match4700547006_
                      _e3698137102_
                      _hd3698237106_
                      _tl3698337109_
                      _e3698437112_
                      _hd3698537116_
                      _tl3698637119_
                      _e3698737122_
                      _e3698837126_
                      _hd3698937130_
                      _tl3699037133_
                      ___splice4696746968_
                      _target3699137136_
                      _tl3699337139_)
                     (if (gx#stx-pair/null? _tl3698337109_)
                         (let ((___splice4697146972_
                                (gx#syntax-split-splice _tl3698337109_ '0)))
                           (let ((_tl3700637038_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4697146972_ '1)))
                                 (_target3700437035_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4697146972_ '0))))
                             (if (gx#stx-null? _tl3700637038_)
                                 (___match4701947020_
                                  _e3698137102_
                                  _hd3698237106_
                                  _tl3698337109_
                                  ___splice4697146972_
                                  _target3700437035_
                                  _tl3700637038_)
                                 (let ()
                                   (declare (not safe))
                                   (_g3697737018_)))))
                         (let () (declare (not safe)) (_g3697737018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl3698337109_)
                                                         (let ((___splice4697146972_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3698337109_
                         '0)))
                   (let ((_tl3700637038_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4697146972_ '1)))
                         (_target3700437035_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4697146972_ '0))))
                     (if (gx#stx-null? _tl3700637038_)
                         (___match4701947020_
                          _e3698137102_
                          _hd3698237106_
                          _tl3698337109_
                          ___splice4697146972_
                          _target3700437035_
                          _tl3700637038_)
                         (let () (declare (not safe)) (_g3697737018_)))))
                 (let () (declare (not safe)) (_g3697737018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl3698337109_)
                                                 (let ((___splice4697146972_
                                                        (gx#syntax-split-splice
                                                         _tl3698337109_
                                                         '0)))
                                                   (let ((_tl3700637038_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4697146972_
                                                             '1)))
                                                         (_target3700437035_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4697146972_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl3700637038_)
                                                         (___match4701947020_
                                                          _e3698137102_
                                                          _hd3698237106_
                                                          _tl3698337109_
                                                          ___splice4697146972_
                                                          _target3700437035_
                                                          _tl3700637038_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3697737018_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3697737018_))))
                                         (if (gx#stx-pair/null? _tl3698337109_)
                                             (let ((___splice4697146972_
                                                    (gx#syntax-split-splice
                                                     _tl3698337109_
                                                     '0)))
                                               (let ((_tl3700637038_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4697146972_
                                                         '1)))
                                                     (_target3700437035_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4697146972_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl3700637038_)
                                                     (___match4701947020_
                                                      _e3698137102_
                                                      _hd3698237106_
                                                      _tl3698337109_
                                                      ___splice4697146972_
                                                      _target3700437035_
                                                      _tl3700637038_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3697737018_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3697737018_)))))
                                   (if (gx#stx-pair/null? _tl3698337109_)
                                       (let ((___splice4697146972_
                                              (gx#syntax-split-splice
                                               _tl3698337109_
                                               '0)))
                                         (let ((_tl3700637038_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4697146972_
                                                   '1)))
                                               (_target3700437035_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4697146972_
                                                   '0))))
                                           (if (gx#stx-null? _tl3700637038_)
                                               (___match4701947020_
                                                _e3698137102_
                                                _hd3698237106_
                                                _tl3698337109_
                                                ___splice4697146972_
                                                _target3700437035_
                                                _tl3700637038_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3697737018_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g3697737018_))))))
                           (if (gx#stx-pair/null? _tl3698337109_)
                               (let ((___splice4697146972_
                                      (gx#syntax-split-splice
                                       _tl3698337109_
                                       '0)))
                                 (let ((_tl3700637038_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4697146972_
                                           '1)))
                                       (_target3700437035_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4697146972_
                                           '0))))
                                   (if (gx#stx-null? _tl3700637038_)
                                       (___match4701947020_
                                        _e3698137102_
                                        _hd3698237106_
                                        _tl3698337109_
                                        ___splice4697146972_
                                        _target3700437035_
                                        _tl3700637038_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3697737018_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g3697737018_))))))
                   (let () (declare (not safe)) (_g3697737018_)))))))))))
