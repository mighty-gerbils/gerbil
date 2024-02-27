(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34614_)
      (let* ((___stx4933849339_ _$stx34614_)
             (_g3461934638_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4933849339_))))
        (let ((___kont4934149342_
               (lambda ()
                 (let ((__tmp52908 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp52908 '()))))
              (___kont4934349344_
               (lambda (_L34665_ _L34667_ _L34668_)
                 (let ((__tmp52921 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp52909
                        (let ((__tmp52918
                               (let ((__tmp52919
                                      (let ((__tmp52920
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34668_ _L34665_))))
                                        (declare (not safe))
                                        (cons __tmp52920 '()))))
                                 (declare (not safe))
                                 (cons _L34667_ __tmp52919)))
                              (__tmp52910
                               (let ((__tmp52911
                                      (let ((__tmp52917
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp52912
                                             (let ((__tmp52913
                                                    (let ((__tmp52916
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp52914
                                                           (let ((__tmp52915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L34667_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp52915))))
              (declare (not safe))
              (cons __tmp52916 __tmp52914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp52913 '()))))
                                        (declare (not safe))
                                        (cons __tmp52917 __tmp52912))))
                                 (declare (not safe))
                                 (cons __tmp52911 '()))))
                          (declare (not safe))
                          (cons __tmp52918 __tmp52910))))
                   (declare (not safe))
                   (cons __tmp52921 __tmp52909)))))
          (if (gx#stx-pair? ___stx4933849339_)
              (let ((_e3462334691_ (gx#syntax-e ___stx4933849339_)))
                (let ((_tl3462134698_
                       (let () (declare (not safe)) (##cdr _e3462334691_)))
                      (_hd3462234695_
                       (let () (declare (not safe)) (##car _e3462334691_))))
                  (if (gx#stx-null? _tl3462134698_)
                      (___kont4934149342_)
                      (if (gx#stx-pair? _tl3462134698_)
                          (let ((_e3463234655_ (gx#syntax-e _tl3462134698_)))
                            (let ((_tl3463034662_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3463234655_)))
                                  (_hd3463134659_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3463234655_))))
                              (___kont4934349344_
                               _tl3463034662_
                               _hd3463134659_
                               _hd3462234695_)))
                          (let () (declare (not safe)) (_g3461934638_))))))
              (let () (declare (not safe)) (_g3461934638_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34709_)
      (let* ((___stx4936849369_ _$stx34709_)
             (_g3471434754_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4936849369_))))
        (let ((___kont4937149372_
               (lambda (_L34892_ _L34894_)
                 (let ((__tmp52927 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp52922
                        (let ((__tmp52923
                               (let ((__tmp52924
                                      (let ((__tmp52926
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp52925
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34892_ '()))))
                                        (declare (not safe))
                                        (cons __tmp52926 __tmp52925))))
                                 (declare (not safe))
                                 (cons __tmp52924 '()))))
                          (declare (not safe))
                          (cons _L34894_ __tmp52923))))
                   (declare (not safe))
                   (cons __tmp52927 __tmp52922))))
              (___kont4937349374_
               (lambda (_L34821_ _L34823_ _L34824_ _L34825_)
                 (let ((__tmp52928
                        (let ((__tmp52929
                               (let ((__tmp52930
                                      (let ((__tmp52933
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp52931
                                             (let ((__tmp52932
                                                    (foldr (lambda (_g3484634849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3484734852_)
                     (let ()
                       (declare (not safe))
                       (cons _g3484634849_ _g3484734852_)))
                   '()
                   _L34821_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34823_ __tmp52932))))
                                        (declare (not safe))
                                        (cons __tmp52933 __tmp52931))))
                                 (declare (not safe))
                                 (cons __tmp52930 '()))))
                          (declare (not safe))
                          (cons _L34824_ __tmp52929))))
                   (declare (not safe))
                   (cons _L34825_ __tmp52928)))))
          (let* ((___match4942349424_
                  (lambda (_e3473334761_
                           _hd3473234765_
                           _tl3473134768_
                           _e3473634771_
                           _hd3473534775_
                           _tl3473434778_
                           _e3473934781_
                           _hd3473834785_
                           _tl3473734788_
                           ___splice4937549376_
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
                                            (_L34823_ _tl3473734788_)
                                            (_L34824_ _hd3473834785_)
                                            (_L34825_ _hd3473234765_))
                                        (if (gx#identifier? _L34824_)
                                            (___kont4937349374_
                                             _L34821_
                                             _L34823_
                                             _L34824_
                                             _L34825_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3471434754_)))))))))
                      (_loop3474334797_ _target3474034791_ '()))))
                 (___match4939749398_
                  (lambda (_e3472034862_
                           _hd3471934866_
                           _tl3471834869_
                           _e3472334872_
                           _hd3472234876_
                           _tl3472134879_
                           _e3472634882_
                           _hd3472534886_
                           _tl3472434889_)
                    (let ((_L34892_ _hd3472534886_) (_L34894_ _hd3472234876_))
                      (if (gx#identifier? _L34894_)
                          (___kont4937149372_ _L34892_ _L34894_)
                          (if (gx#stx-pair? _hd3472234876_)
                              (let ((_e3473934781_
                                     (gx#syntax-e _hd3472234876_)))
                                (let ((_tl3473734788_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3473934781_)))
                                      (_hd3473834785_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3473934781_))))
                                  (if (gx#stx-pair/null? _tl3472134879_)
                                      (let ((___splice4937549376_
                                             (gx#syntax-split-splice
                                              _tl3472134879_
                                              '0)))
                                        (let ((_tl3474234794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4937549376_
                                                  '1)))
                                              (_target3474034791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4937549376_
                                                  '0))))
                                          (if (gx#stx-null? _tl3474234794_)
                                              (___match4942349424_
                                               _e3472034862_
                                               _hd3471934866_
                                               _tl3471834869_
                                               _e3472334872_
                                               _hd3472234876_
                                               _tl3472134879_
                                               _e3473934781_
                                               _hd3473834785_
                                               _tl3473734788_
                                               ___splice4937549376_
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
            (if (gx#stx-pair? ___stx4936849369_)
                (let ((_e3472034862_ (gx#syntax-e ___stx4936849369_)))
                  (let ((_tl3471834869_
                         (let () (declare (not safe)) (##cdr _e3472034862_)))
                        (_hd3471934866_
                         (let () (declare (not safe)) (##car _e3472034862_))))
                    (if (gx#stx-pair? _tl3471834869_)
                        (let ((_e3472334872_ (gx#syntax-e _tl3471834869_)))
                          (let ((_tl3472134879_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3472334872_)))
                                (_hd3472234876_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3472334872_))))
                            (if (gx#stx-pair? _tl3472134879_)
                                (let ((_e3472634882_
                                       (gx#syntax-e _tl3472134879_)))
                                  (let ((_tl3472434889_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3472634882_)))
                                        (_hd3472534886_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3472634882_))))
                                    (if (gx#stx-null? _tl3472434889_)
                                        (___match4939749398_
                                         _e3472034862_
                                         _hd3471934866_
                                         _tl3471834869_
                                         _e3472334872_
                                         _hd3472234876_
                                         _tl3472134879_
                                         _e3472634882_
                                         _hd3472534886_
                                         _tl3472434889_)
                                        (if (gx#stx-pair? _hd3472234876_)
                                            (let ((_e3473934781_
                                                   (gx#syntax-e
                                                    _hd3472234876_)))
                                              (let ((_tl3473734788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3473934781_)))
                                                    (_hd3473834785_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3473934781_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3472134879_)
                                                    (let ((___splice4937549376_
                                                           (gx#syntax-split-splice
                                                            _tl3472134879_
                                                            '0)))
                                                      (let ((_tl3474234794_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4937549376_ '1)))
                    (_target3474034791_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4937549376_ '0))))
                (if (gx#stx-null? _tl3474234794_)
                    (___match4942349424_
                     _e3472034862_
                     _hd3471934866_
                     _tl3471834869_
                     _e3472334872_
                     _hd3472234876_
                     _tl3472134879_
                     _e3473934781_
                     _hd3473834785_
                     _tl3473734788_
                     ___splice4937549376_
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
                                    (let ((_e3473934781_
                                           (gx#syntax-e _hd3472234876_)))
                                      (let ((_tl3473734788_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3473934781_)))
                                            (_hd3473834785_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3473934781_))))
                                        (if (gx#stx-pair/null? _tl3472134879_)
                                            (let ((___splice4937549376_
                                                   (gx#syntax-split-splice
                                                    _tl3472134879_
                                                    '0)))
                                              (let ((_tl3474234794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4937549376_
                                                        '1)))
                                                    (_target3474034791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4937549376_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3474234794_)
                                                    (___match4942349424_
                                                     _e3472034862_
                                                     _hd3471934866_
                                                     _tl3471834869_
                                                     _e3472334872_
                                                     _hd3472234876_
                                                     _tl3472134879_
                                                     _e3473934781_
                                                     _hd3473834785_
                                                     _tl3473734788_
                                                     ___splice4937549376_
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
      (let* ((___stx4942649427_ _$stx34914_)
             (_g3491934959_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4942649427_))))
        (let ((___kont4942949430_
               (lambda (_L35097_ _L35099_)
                 (let ((__tmp52939 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp52934
                        (let ((__tmp52935
                               (let ((__tmp52936
                                      (let ((__tmp52938
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp52937
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35097_ '()))))
                                        (declare (not safe))
                                        (cons __tmp52938 __tmp52937))))
                                 (declare (not safe))
                                 (cons __tmp52936 '()))))
                          (declare (not safe))
                          (cons _L35099_ __tmp52935))))
                   (declare (not safe))
                   (cons __tmp52939 __tmp52934))))
              (___kont4943149432_
               (lambda (_L35026_ _L35028_ _L35029_ _L35030_)
                 (let ((__tmp52940
                        (let ((__tmp52941
                               (let ((__tmp52942
                                      (let ((__tmp52945
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp52943
                                             (let ((__tmp52944
                                                    (foldr (lambda (_g3505135054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3505235057_)
                     (let ()
                       (declare (not safe))
                       (cons _g3505135054_ _g3505235057_)))
                   '()
                   _L35026_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35028_ __tmp52944))))
                                        (declare (not safe))
                                        (cons __tmp52945 __tmp52943))))
                                 (declare (not safe))
                                 (cons __tmp52942 '()))))
                          (declare (not safe))
                          (cons _L35029_ __tmp52941))))
                   (declare (not safe))
                   (cons _L35030_ __tmp52940)))))
          (let* ((___match4948149482_
                  (lambda (_e3493834966_
                           _hd3493734970_
                           _tl3493634973_
                           _e3494134976_
                           _hd3494034980_
                           _tl3493934983_
                           _e3494434986_
                           _hd3494334990_
                           _tl3494234993_
                           ___splice4943349434_
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
                                            (_L35028_ _tl3494234993_)
                                            (_L35029_ _hd3494334990_)
                                            (_L35030_ _hd3493734970_))
                                        (if (gx#identifier? _L35029_)
                                            (___kont4943149432_
                                             _L35026_
                                             _L35028_
                                             _L35029_
                                             _L35030_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3491934959_)))))))))
                      (_loop3494835002_ _target3494534996_ '()))))
                 (___match4945549456_
                  (lambda (_e3492535067_
                           _hd3492435071_
                           _tl3492335074_
                           _e3492835077_
                           _hd3492735081_
                           _tl3492635084_
                           _e3493135087_
                           _hd3493035091_
                           _tl3492935094_)
                    (let ((_L35097_ _hd3493035091_) (_L35099_ _hd3492735081_))
                      (if (gx#identifier? _L35099_)
                          (___kont4942949430_ _L35097_ _L35099_)
                          (if (gx#stx-pair? _hd3492735081_)
                              (let ((_e3494434986_
                                     (gx#syntax-e _hd3492735081_)))
                                (let ((_tl3494234993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3494434986_)))
                                      (_hd3494334990_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3494434986_))))
                                  (if (gx#stx-pair/null? _tl3492635084_)
                                      (let ((___splice4943349434_
                                             (gx#syntax-split-splice
                                              _tl3492635084_
                                              '0)))
                                        (let ((_tl3494734999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4943349434_
                                                  '1)))
                                              (_target3494534996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4943349434_
                                                  '0))))
                                          (if (gx#stx-null? _tl3494734999_)
                                              (___match4948149482_
                                               _e3492535067_
                                               _hd3492435071_
                                               _tl3492335074_
                                               _e3492835077_
                                               _hd3492735081_
                                               _tl3492635084_
                                               _e3494434986_
                                               _hd3494334990_
                                               _tl3494234993_
                                               ___splice4943349434_
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
            (if (gx#stx-pair? ___stx4942649427_)
                (let ((_e3492535067_ (gx#syntax-e ___stx4942649427_)))
                  (let ((_tl3492335074_
                         (let () (declare (not safe)) (##cdr _e3492535067_)))
                        (_hd3492435071_
                         (let () (declare (not safe)) (##car _e3492535067_))))
                    (if (gx#stx-pair? _tl3492335074_)
                        (let ((_e3492835077_ (gx#syntax-e _tl3492335074_)))
                          (let ((_tl3492635084_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3492835077_)))
                                (_hd3492735081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3492835077_))))
                            (if (gx#stx-pair? _tl3492635084_)
                                (let ((_e3493135087_
                                       (gx#syntax-e _tl3492635084_)))
                                  (let ((_tl3492935094_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3493135087_)))
                                        (_hd3493035091_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3493135087_))))
                                    (if (gx#stx-null? _tl3492935094_)
                                        (___match4945549456_
                                         _e3492535067_
                                         _hd3492435071_
                                         _tl3492335074_
                                         _e3492835077_
                                         _hd3492735081_
                                         _tl3492635084_
                                         _e3493135087_
                                         _hd3493035091_
                                         _tl3492935094_)
                                        (if (gx#stx-pair? _hd3492735081_)
                                            (let ((_e3494434986_
                                                   (gx#syntax-e
                                                    _hd3492735081_)))
                                              (let ((_tl3494234993_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3494434986_)))
                                                    (_hd3494334990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3494434986_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3492635084_)
                                                    (let ((___splice4943349434_
                                                           (gx#syntax-split-splice
                                                            _tl3492635084_
                                                            '0)))
                                                      (let ((_tl3494734999_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4943349434_ '1)))
                    (_target3494534996_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4943349434_ '0))))
                (if (gx#stx-null? _tl3494734999_)
                    (___match4948149482_
                     _e3492535067_
                     _hd3492435071_
                     _tl3492335074_
                     _e3492835077_
                     _hd3492735081_
                     _tl3492635084_
                     _e3494434986_
                     _hd3494334990_
                     _tl3494234993_
                     ___splice4943349434_
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
                                    (let ((_e3494434986_
                                           (gx#syntax-e _hd3492735081_)))
                                      (let ((_tl3494234993_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3494434986_)))
                                            (_hd3494334990_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3494434986_))))
                                        (if (gx#stx-pair/null? _tl3492635084_)
                                            (let ((___splice4943349434_
                                                   (gx#syntax-split-splice
                                                    _tl3492635084_
                                                    '0)))
                                              (let ((_tl3494734999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4943349434_
                                                        '1)))
                                                    (_target3494534996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4943349434_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3494734999_)
                                                    (___match4948149482_
                                                     _e3492535067_
                                                     _hd3492435071_
                                                     _tl3492335074_
                                                     _e3492835077_
                                                     _hd3492735081_
                                                     _tl3492635084_
                                                     _e3494434986_
                                                     _hd3494334990_
                                                     _tl3494234993_
                                                     ___splice4943349434_
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
      (let* ((___stx4948449485_ _$stx35119_)
             (_g3512435164_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4948449485_))))
        (let ((___kont4948749488_
               (lambda (_L35302_ _L35304_)
                 (let ((__tmp52951 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp52946
                        (let ((__tmp52947
                               (let ((__tmp52948
                                      (let ((__tmp52950
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp52949
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35302_ '()))))
                                        (declare (not safe))
                                        (cons __tmp52950 __tmp52949))))
                                 (declare (not safe))
                                 (cons __tmp52948 '()))))
                          (declare (not safe))
                          (cons _L35304_ __tmp52947))))
                   (declare (not safe))
                   (cons __tmp52951 __tmp52946))))
              (___kont4948949490_
               (lambda (_L35231_ _L35233_ _L35234_ _L35235_)
                 (let ((__tmp52952
                        (let ((__tmp52953
                               (let ((__tmp52954
                                      (let ((__tmp52957
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp52955
                                             (let ((__tmp52956
                                                    (foldr (lambda (_g3525635259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3525735262_)
                     (let ()
                       (declare (not safe))
                       (cons _g3525635259_ _g3525735262_)))
                   '()
                   _L35231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35233_ __tmp52956))))
                                        (declare (not safe))
                                        (cons __tmp52957 __tmp52955))))
                                 (declare (not safe))
                                 (cons __tmp52954 '()))))
                          (declare (not safe))
                          (cons _L35234_ __tmp52953))))
                   (declare (not safe))
                   (cons _L35235_ __tmp52952)))))
          (let* ((___match4953949540_
                  (lambda (_e3514335171_
                           _hd3514235175_
                           _tl3514135178_
                           _e3514635181_
                           _hd3514535185_
                           _tl3514435188_
                           _e3514935191_
                           _hd3514835195_
                           _tl3514735198_
                           ___splice4949149492_
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
                                            (_L35233_ _tl3514735198_)
                                            (_L35234_ _hd3514835195_)
                                            (_L35235_ _hd3514235175_))
                                        (if (gx#identifier? _L35234_)
                                            (___kont4948949490_
                                             _L35231_
                                             _L35233_
                                             _L35234_
                                             _L35235_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3512435164_)))))))))
                      (_loop3515335207_ _target3515035201_ '()))))
                 (___match4951349514_
                  (lambda (_e3513035272_
                           _hd3512935276_
                           _tl3512835279_
                           _e3513335282_
                           _hd3513235286_
                           _tl3513135289_
                           _e3513635292_
                           _hd3513535296_
                           _tl3513435299_)
                    (let ((_L35302_ _hd3513535296_) (_L35304_ _hd3513235286_))
                      (if (gx#identifier? _L35304_)
                          (___kont4948749488_ _L35302_ _L35304_)
                          (if (gx#stx-pair? _hd3513235286_)
                              (let ((_e3514935191_
                                     (gx#syntax-e _hd3513235286_)))
                                (let ((_tl3514735198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3514935191_)))
                                      (_hd3514835195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3514935191_))))
                                  (if (gx#stx-pair/null? _tl3513135289_)
                                      (let ((___splice4949149492_
                                             (gx#syntax-split-splice
                                              _tl3513135289_
                                              '0)))
                                        (let ((_tl3515235204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4949149492_
                                                  '1)))
                                              (_target3515035201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4949149492_
                                                  '0))))
                                          (if (gx#stx-null? _tl3515235204_)
                                              (___match4953949540_
                                               _e3513035272_
                                               _hd3512935276_
                                               _tl3512835279_
                                               _e3513335282_
                                               _hd3513235286_
                                               _tl3513135289_
                                               _e3514935191_
                                               _hd3514835195_
                                               _tl3514735198_
                                               ___splice4949149492_
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
            (if (gx#stx-pair? ___stx4948449485_)
                (let ((_e3513035272_ (gx#syntax-e ___stx4948449485_)))
                  (let ((_tl3512835279_
                         (let () (declare (not safe)) (##cdr _e3513035272_)))
                        (_hd3512935276_
                         (let () (declare (not safe)) (##car _e3513035272_))))
                    (if (gx#stx-pair? _tl3512835279_)
                        (let ((_e3513335282_ (gx#syntax-e _tl3512835279_)))
                          (let ((_tl3513135289_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3513335282_)))
                                (_hd3513235286_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3513335282_))))
                            (if (gx#stx-pair? _tl3513135289_)
                                (let ((_e3513635292_
                                       (gx#syntax-e _tl3513135289_)))
                                  (let ((_tl3513435299_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3513635292_)))
                                        (_hd3513535296_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3513635292_))))
                                    (if (gx#stx-null? _tl3513435299_)
                                        (___match4951349514_
                                         _e3513035272_
                                         _hd3512935276_
                                         _tl3512835279_
                                         _e3513335282_
                                         _hd3513235286_
                                         _tl3513135289_
                                         _e3513635292_
                                         _hd3513535296_
                                         _tl3513435299_)
                                        (if (gx#stx-pair? _hd3513235286_)
                                            (let ((_e3514935191_
                                                   (gx#syntax-e
                                                    _hd3513235286_)))
                                              (let ((_tl3514735198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3514935191_)))
                                                    (_hd3514835195_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3514935191_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3513135289_)
                                                    (let ((___splice4949149492_
                                                           (gx#syntax-split-splice
                                                            _tl3513135289_
                                                            '0)))
                                                      (let ((_tl3515235204_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4949149492_ '1)))
                    (_target3515035201_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4949149492_ '0))))
                (if (gx#stx-null? _tl3515235204_)
                    (___match4953949540_
                     _e3513035272_
                     _hd3512935276_
                     _tl3512835279_
                     _e3513335282_
                     _hd3513235286_
                     _tl3513135289_
                     _e3514935191_
                     _hd3514835195_
                     _tl3514735198_
                     ___splice4949149492_
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
                                    (let ((_e3514935191_
                                           (gx#syntax-e _hd3513235286_)))
                                      (let ((_tl3514735198_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3514935191_)))
                                            (_hd3514835195_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3514935191_))))
                                        (if (gx#stx-pair/null? _tl3513135289_)
                                            (let ((___splice4949149492_
                                                   (gx#syntax-split-splice
                                                    _tl3513135289_
                                                    '0)))
                                              (let ((_tl3515235204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4949149492_
                                                        '1)))
                                                    (_target3515035201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4949149492_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3515235204_)
                                                    (___match4953949540_
                                                     _e3513035272_
                                                     _hd3512935276_
                                                     _tl3512835279_
                                                     _e3513335282_
                                                     _hd3513235286_
                                                     _tl3513135289_
                                                     _e3514935191_
                                                     _hd3514835195_
                                                     _tl3514735198_
                                                     ___splice4949149492_
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
                     (let ((_e3533235354_ (gx#syntax-e _g3532835351_)))
                       (let ((_hd3533135358_
                              (let ()
                                (declare (not safe))
                                (##car _e3533235354_)))
                             (_tl3533035361_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3533235354_))))
                         (if (gx#stx-pair/null? _tl3533035361_)
                             (let ((_g52958_
                                    (gx#syntax-split-splice
                                     _tl3533035361_
                                     '0)))
                               (begin
                                 (let ((_g52959_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g52958_)
                                              (##vector-length _g52958_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g52959_ 2)))
                                       (error "Context expects 2 values"
                                              _g52959_)))
                                 (let ((_target3533335364_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g52958_ 0)))
                                       (_tl3533535367_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g52958_ 1))))
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
                    (let ((__tmp52960
                           (let ((__tmp52961
                                  (foldr (lambda (_g3540935412_ _g3541035415_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3540935412_
                                                   _g3541035415_)))
                                         '()
                                         _L35394_)))
                             (declare (not safe))
                             (cons '1 __tmp52961))))
                      (declare (not safe))
                      (cons 'phi: __tmp52960)))
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
                     (let ((_e3543135453_ (gx#syntax-e _g3542735450_)))
                       (let ((_hd3543035457_
                              (let ()
                                (declare (not safe))
                                (##car _e3543135453_)))
                             (_tl3542935460_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3543135453_))))
                         (if (gx#stx-pair/null? _tl3542935460_)
                             (let ((_g52962_
                                    (gx#syntax-split-splice
                                     _tl3542935460_
                                     '0)))
                               (begin
                                 (let ((_g52963_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g52962_)
                                              (##vector-length _g52962_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g52963_ 2)))
                                       (error "Context expects 2 values"
                                              _g52963_)))
                                 (let ((_target3543235463_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g52962_ 0)))
                                       (_tl3543435466_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g52962_ 1))))
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
                    (let ((__tmp52964
                           (let ((__tmp52965
                                  (foldr (lambda (_g3550835511_ _g3550935514_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3550835511_
                                                   _g3550935514_)))
                                         '()
                                         _L35493_)))
                             (declare (not safe))
                             (cons '-1 __tmp52965))))
                      (declare (not safe))
                      (cons 'phi: __tmp52964)))
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
                     (let ((_e3553135556_ (gx#syntax-e _g3552635553_)))
                       (let ((_hd3553035560_
                              (let ()
                                (declare (not safe))
                                (##car _e3553135556_)))
                             (_tl3552935563_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3553135556_))))
                         (if (gx#stx-pair? _tl3552935563_)
                             (let ((_e3553435566_
                                    (gx#syntax-e _tl3552935563_)))
                               (let ((_hd3553335570_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3553435566_)))
                                     (_tl3553235573_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3553435566_))))
                                 (if (gx#stx-pair/null? _tl3553235573_)
                                     (let ((_g52966_
                                            (gx#syntax-split-splice
                                             _tl3553235573_
                                             '0)))
                                       (begin
                                         (let ((_g52967_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g52966_)
                                                      (##vector-length
                                                       _g52966_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g52967_ 2)))
                                               (error "Context expects 2 values"
                                                      _g52967_)))
                                         (let ((_target3553535576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52966_ 0)))
                                               (_tl3553735579_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52966_ 1))))
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
                                 (foldr (lambda (_g3562535628_ _g3562635631_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3562535628_
                                                  _g3562635631_)))
                                        '()
                                        _L35606_))
                                (let* ((_keys35642_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3563335636_
                                                         _g3563435639_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3563335636_
                                                          _g3563435639_)))
                                                '()
                                                _L35606_)))
                                       (_keytab35653_
                                        (let ((_ht35645_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g3564735649_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht35645_
                                                _g3564735649_
                                                '#t)))
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
                                                        (if (let ((__tmp52968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35662_)))
                      (declare (not safe))
                      (hash-get _keytab35653_ __tmp52968))
                    (let () (declare (not safe)) (cons _in35662_ _r35664_))
                    _r35664_)
                (if (gx#import-set? _in35662_)
                    (foldl _fold-e35659_
                           _r35664_
                           (gx#import-set-imports _in35662_))
                    _r35664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35659_)))
                                  (let ((__tmp52969
                                         (foldl _fold-e35666_
                                                '()
                                                _imports35656_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp52969)))
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
                     (let ((_e3568535710_ (gx#syntax-e _g3568035707_)))
                       (let ((_hd3568435714_
                              (let ()
                                (declare (not safe))
                                (##car _e3568535710_)))
                             (_tl3568335717_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3568535710_))))
                         (if (gx#stx-pair? _tl3568335717_)
                             (let ((_e3568835720_
                                    (gx#syntax-e _tl3568335717_)))
                               (let ((_hd3568735724_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3568835720_)))
                                     (_tl3568635727_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3568835720_))))
                                 (if (gx#stx-pair/null? _tl3568635727_)
                                     (let ((_g52970_
                                            (gx#syntax-split-splice
                                             _tl3568635727_
                                             '0)))
                                       (begin
                                         (let ((_g52971_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g52970_)
                                                      (##vector-length
                                                       _g52970_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g52971_ 2)))
                                               (error "Context expects 2 values"
                                                      _g52971_)))
                                         (let ((_target3568935730_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52970_ 0)))
                                               (_tl3569135733_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52970_ 1))))
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
                                 (foldr (lambda (_g3577935782_ _g3578035785_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3577935782_
                                                  _g3578035785_)))
                                        '()
                                        _L35760_))
                                (let* ((_keys35796_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3578735790_
                                                         _g3578835793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3578735790_
                                                          _g3578835793_)))
                                                '()
                                                _L35760_)))
                                       (_keytab35807_
                                        (let ((_ht35799_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g3580135803_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht35799_
                                                _g3580135803_
                                                '#t)))
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
                                                        (if (let ((__tmp52972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35816_)))
                      (declare (not safe))
                      (hash-get _keytab35807_ __tmp52972))
                    _r35818_
                    (let () (declare (not safe)) (cons _in35816_ _r35818_)))
                (if (gx#import-set? _in35816_)
                    (foldl _fold-e35813_
                           _r35818_
                           (gx#import-set-imports _in35816_))
                    (let ()
                      (declare (not safe))
                      (cons _in35816_ _r35818_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35813_)))
                                  (let ((__tmp52973
                                         (foldl _fold-e35820_
                                                '()
                                                _imports35810_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp52973)))
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
                (let ((__tmp52974 (make-symbol _pre35832_ _id35859_)))
                  (declare (not safe))
                  (cons __tmp52974 _mark35857_)))))
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
                     (let ((_e3589135924_ (gx#syntax-e _g3588535921_)))
                       (let ((_hd3589035928_
                              (let ()
                                (declare (not safe))
                                (##car _e3589135924_)))
                             (_tl3588935931_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3589135924_))))
                         (if (gx#stx-pair? _tl3588935931_)
                             (let ((_e3589435934_
                                    (gx#syntax-e _tl3588935931_)))
                               (let ((_hd3589335938_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3589435934_)))
                                     (_tl3589235941_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3589435934_))))
                                 (if (gx#stx-pair/null? _tl3589235941_)
                                     (let ((_g52975_
                                            (gx#syntax-split-splice
                                             _tl3589235941_
                                             '0)))
                                       (begin
                                         (let ((_g52976_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g52975_)
                                                      (##vector-length
                                                       _g52975_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g52976_ 2)))
                                               (error "Context expects 2 values"
                                                      _g52976_)))
                                         (let ((_target3589535944_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52975_ 0)))
                                               (_tl3589735947_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52975_ 1))))
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
                               (let ((_e3590835972_
                                      (gx#syntax-e _lp-hd3590035966_)))
                                 (let ((_hd3590735976_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3590835972_)))
                                       (_tl3590635979_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3590835972_))))
                                   (if (gx#stx-pair? _tl3590635979_)
                                       (let ((_e3591135982_
                                              (gx#syntax-e _tl3590635979_)))
                                         (let ((_hd3591035986_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3591135982_)))
                                               (_tl3590935989_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3591135982_))))
                                           (if (gx#stx-null? _tl3590935989_)
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
                                      (foldr (lambda (_g3601936022_
                                                      _g3602036025_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3601936022_
                                                       _g3602036025_)))
                                             '()
                                             _L36000_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3602736030_
                                                      _g3602836033_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3602736030_
                                                       _g3602836033_)))
                                             '()
                                             _L35998_)))
                                (let* ((_keytab36036_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_found36039_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_g52979_
                                        (for-each
                                         (lambda (_id36042_ _new-id36044_)
                                           (let ((__tmp52978
                                                  (gx#core-identifier-key
                                                   _id36042_))
                                                 (__tmp52977
                                                  (gx#core-identifier-key
                                                   _new-id36044_)))
                                             (declare (not safe))
                                             (hash-put!
                                              _keytab36036_
                                              __tmp52978
                                              __tmp52977)))
                                         (foldr (lambda (_g3604536048_
                                                         _g3604636051_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3604536048_
                                                          _g3604636051_)))
                                                '()
                                                _L36000_)
                                         (foldr (lambda (_g3605336056_
                                                         _g3605436059_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3605336056_
                                                          _g3605436059_)))
                                                '()
                                                _L35998_)))
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
                       (_$e36077_
                        (let ()
                          (declare (not safe))
                          (hash-get _keytab36036_ _name36074_))))
                  (if _$e36077_
                      ((lambda (_rename36081_)
                         (let ()
                           (declare (not safe))
                           (hash-put! _found36039_ _name36074_ '#t))
                         (let ((__tmp52980
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                   _in36070_
                                   _rename36081_))))
                           (declare (not safe))
                           (cons __tmp52980 _r36072_)))
                       _$e36077_)
                      (let () (declare (not safe)) (cons _in36070_ _r36072_))))
                (if (gx#import-set? _in36070_)
                    (foldl _fold-e36067_
                           _r36072_
                           (gx#import-set-imports _in36070_))
                    (let ()
                      (declare (not safe))
                      (cons _in36070_ _r36072_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36067_))
                                       (_new-imports36087_
                                        (foldl _fold-e36084_
                                               '()
                                               _imports36064_)))
                                  (for-each
                                   (lambda (_id36092_)
                                     (if (let ((__tmp52981
                                                (gx#core-identifier-key
                                                 _id36092_)))
                                           (declare (not safe))
                                           (hash-get _found36039_ __tmp52981))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx35881_
                                          _id36092_)))
                                   (foldr (lambda (_g3609436097_ _g3609536100_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3609436097_
                                                    _g3609536100_)))
                                          '()
                                          _L36000_))
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
                     (let ((_e3611836137_ (gx#syntax-e _g3611336134_)))
                       (let ((_hd3611736141_
                              (let ()
                                (declare (not safe))
                                (##car _e3611836137_)))
                             (_tl3611636144_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3611836137_))))
                         (if (gx#stx-pair? _tl3611636144_)
                             (let ((_e3612136147_
                                    (gx#syntax-e _tl3611636144_)))
                               (let ((_hd3612036151_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3612136147_)))
                                     (_tl3611936154_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3612136147_))))
                                 (if (gx#stx-pair? _tl3611936154_)
                                     (let ((_e3612436157_
                                            (gx#syntax-e _tl3611936154_)))
                                       (let ((_hd3612336161_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3612436157_)))
                                             (_tl3612236164_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3612436157_))))
                                         (if (gx#stx-null? _tl3612236164_)
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
                                    (let ((__tmp52982
                                           (let ((__tmp52983
                                                  (_rename-e36194_
                                                   (gx#module-import-name
                                                    _in36200_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                              _in36200_
                                              __tmp52983))))
                                      (declare (not safe))
                                      (cons __tmp52982 _r36202_))
                                    (if (gx#import-set? _in36200_)
                                        (foldl _fold-e36197_
                                               _r36202_
                                               (gx#import-set-imports
                                                _in36200_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in36200_ _r36202_)))))))
                      _fold-e36197_)))
              (let ((__tmp52984 (foldl _fold-e36204_ '() _imports36188_)))
                (declare (not safe))
                (cons 'begin: __tmp52984)))
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
                   (foldr (lambda (_v36474_ _acc36476_)
                            (if (let () (declare (not safe)) (null? _v36474_))
                                _acc36476_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v36474_))
                                    (append (_flatten36216_ _v36474_)
                                            _acc36476_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v36474_ _acc36476_)))))
                          '()
                          _list-of-lists36471_)))
                (_expand-path36218_
                 (lambda (_top36339_ _mod36341_)
                   (let* ((___stx4954249543_ _mod36341_)
                          (_g3634436366_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4954249543_))))
                     (let ((___kont4954549546_
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
                                         (foldr (lambda (_g3645836461_
                                                         _g3645936464_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3645836461_
                                                          _g3645936464_)))
                                                '()
                                                _L36434_))))))
                           (___kont4954949550_
                            (lambda (_L36373_)
                              (gx#stx-identifier
                               _top36339_
                               _top36339_
                               '"/"
                               _L36373_))))
                       (let* ((_g3634336387_
                               (lambda ()
                                 (let ((_L36373_ ___stx4954249543_))
                                   (if (or (gx#identifier? _L36373_)
                                           (gx#stx-fixnum? _L36373_))
                                       (___kont4954949550_ _L36373_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3634436366_))))))
                              (___match4956549566_
                               (lambda (_e3635036394_
                                        _hd3634936398_
                                        _tl3634836401_
                                        ___splice4954749548_
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
                                                   (___kont4954549546_
                                                    _mod3635936430_
                                                    _hd3634936398_))))))
                                   (_loop3635436410_
                                    _target3635136404_
                                    '())))))
                         (if (gx#stx-pair? ___stx4954249543_)
                             (let ((_e3635036394_
                                    (gx#syntax-e ___stx4954249543_)))
                               (let ((_tl3634836401_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3635036394_)))
                                     (_hd3634936398_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3635036394_))))
                                 (if (gx#stx-pair/null? _tl3634836401_)
                                     (let ((___splice4954749548_
                                            (gx#syntax-split-splice
                                             _tl3634836401_
                                             '0)))
                                       (let ((_tl3635336407_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4954749548_
                                                 '1)))
                                             (_target3635136404_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4954749548_
                                                 '0))))
                                         (if (gx#stx-null? _tl3635336407_)
                                             (___match4956549566_
                                              _e3635036394_
                                              _hd3634936398_
                                              _tl3634836401_
                                              ___splice4954749548_
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
                       (let ((_e3622636251_ (gx#syntax-e _g3622136248_)))
                         (let ((_hd3622536255_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3622636251_)))
                               (_tl3622436258_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3622636251_))))
                           (if (gx#stx-pair? _tl3622436258_)
                               (let ((_e3622936261_
                                      (gx#syntax-e _tl3622436258_)))
                                 (let ((_hd3622836265_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3622936261_)))
                                       (_tl3622736268_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3622936261_))))
                                   (if (gx#stx-pair/null? _tl3622736268_)
                                       (let ((_g52985_
                                              (gx#syntax-split-splice
                                               _tl3622736268_
                                               '0)))
                                         (begin
                                           (let ((_g52986_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g52985_)
                                                        (##vector-length
                                                         _g52985_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g52986_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g52986_)))
                                           (let ((_target3623036271_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g52985_ 0)))
                                                 (_tl3623236274_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g52985_
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
                              (let ((__tmp52987
                                     (_flatten36216_
                                      (map (lambda (_g3632136323_)
                                             (_expand-path36218_
                                              _L36303_
                                              _g3632136323_))
                                           (foldr (lambda (_g3632636329_
                                                           _g3632736332_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3632636329_
                                                            _g3632736332_)))
                                                  '()
                                                  _L36301_)))))
                                (declare (not safe))
                                (cons 'begin: __tmp52987)))
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
                     (let ((_e3648936514_ (gx#syntax-e _g3648436511_)))
                       (let ((_hd3648836518_
                              (let ()
                                (declare (not safe))
                                (##car _e3648936514_)))
                             (_tl3648736521_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3648936514_))))
                         (if (gx#stx-pair? _tl3648736521_)
                             (let ((_e3649236524_
                                    (gx#syntax-e _tl3648736521_)))
                               (let ((_hd3649136528_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3649236524_)))
                                     (_tl3649036531_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3649236524_))))
                                 (if (gx#stx-pair/null? _tl3649036531_)
                                     (let ((_g52988_
                                            (gx#syntax-split-splice
                                             _tl3649036531_
                                             '0)))
                                       (begin
                                         (let ((_g52989_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g52988_)
                                                      (##vector-length
                                                       _g52988_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g52989_ 2)))
                                               (error "Context expects 2 values"
                                                      _g52989_)))
                                         (let ((_target3649336534_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52988_ 0)))
                                               (_tl3649536537_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52988_ 1))))
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
                                 (foldr (lambda (_g3658336586_ _g3658436589_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3658336586_
                                                  _g3658436589_)))
                                        '()
                                        _L36564_))
                                (let* ((_keys36600_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3659136594_
                                                         _g3659236597_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3659136594_
                                                          _g3659236597_)))
                                                '()
                                                _L36564_)))
                                       (_keytab36611_
                                        (let ((_ht36603_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g3660536607_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht36603_
                                                _g3660536607_
                                                '#t)))
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
                                                        (if (let ((__tmp52990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-export-name _out36620_)))
                      (declare (not safe))
                      (hash-get _keytab36611_ __tmp52990))
                    _r36622_
                    (let () (declare (not safe)) (cons _out36620_ _r36622_)))
                (if (gx#export-set? _out36620_)
                    (foldl _fold-e36617_
                           _r36622_
                           (gx#export-set-exports _out36620_))
                    _r36622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36617_)))
                                  (let ((__tmp52991
                                         (foldl _fold-e36624_
                                                '()
                                                _exports36614_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp52991)))
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
                     (let ((_e3664836681_ (gx#syntax-e _g3664236678_)))
                       (let ((_hd3664736685_
                              (let ()
                                (declare (not safe))
                                (##car _e3664836681_)))
                             (_tl3664636688_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3664836681_))))
                         (if (gx#stx-pair? _tl3664636688_)
                             (let ((_e3665136691_
                                    (gx#syntax-e _tl3664636688_)))
                               (let ((_hd3665036695_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3665136691_)))
                                     (_tl3664936698_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3665136691_))))
                                 (if (gx#stx-pair/null? _tl3664936698_)
                                     (let ((_g52992_
                                            (gx#syntax-split-splice
                                             _tl3664936698_
                                             '0)))
                                       (begin
                                         (let ((_g52993_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g52992_)
                                                      (##vector-length
                                                       _g52992_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g52993_ 2)))
                                               (error "Context expects 2 values"
                                                      _g52993_)))
                                         (let ((_target3665236701_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52992_ 0)))
                                               (_tl3665436704_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g52992_ 1))))
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
                               (let ((_e3666536729_
                                      (gx#syntax-e _lp-hd3665736723_)))
                                 (let ((_hd3666436733_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3666536729_)))
                                       (_tl3666336736_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3666536729_))))
                                   (if (gx#stx-pair? _tl3666336736_)
                                       (let ((_e3666836739_
                                              (gx#syntax-e _tl3666336736_)))
                                         (let ((_hd3666736743_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3666836739_)))
                                               (_tl3666636746_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3666836739_))))
                                           (if (gx#stx-null? _tl3666636746_)
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
                                      (foldr (lambda (_g3677636779_
                                                      _g3677736782_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3677636779_
                                                       _g3677736782_)))
                                             '()
                                             _L36757_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3678436787_
                                                      _g3678536790_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3678436787_
                                                       _g3678536790_)))
                                             '()
                                             _L36755_)))
                                (let* ((_keytab36793_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_found36796_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_g52996_
                                        (for-each
                                         (lambda (_id36799_ _new-id36801_)
                                           (let ((__tmp52995
                                                  (gx#core-identifier-key
                                                   _id36799_))
                                                 (__tmp52994
                                                  (gx#core-identifier-key
                                                   _new-id36801_)))
                                             (declare (not safe))
                                             (hash-put!
                                              _keytab36793_
                                              __tmp52995
                                              __tmp52994)))
                                         (foldr (lambda (_g3680236805_
                                                         _g3680336808_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3680236805_
                                                          _g3680336808_)))
                                                '()
                                                _L36757_)
                                         (foldr (lambda (_g3681036813_
                                                         _g3681136816_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3681036813_
                                                          _g3681136816_)))
                                                '()
                                                _L36755_)))
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
                       (_$e36834_
                        (let ()
                          (declare (not safe))
                          (hash-get _keytab36793_ _name36831_))))
                  (if _$e36834_
                      ((lambda (_rename36838_)
                         (let ()
                           (declare (not safe))
                           (hash-put! _found36796_ _name36831_ '#t))
                         (let ((__tmp52997
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                   _out36827_
                                   _rename36838_))))
                           (declare (not safe))
                           (cons __tmp52997 _r36829_)))
                       _$e36834_)
                      (let ()
                        (declare (not safe))
                        (cons _out36827_ _r36829_))))
                (if (gx#export-set? _out36827_)
                    (foldl _fold-e36824_
                           _r36829_
                           (gx#export-set-exports _out36827_))
                    (let ()
                      (declare (not safe))
                      (cons _out36827_ _r36829_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36824_))
                                       (_new-exports36844_
                                        (foldl _fold-e36841_
                                               '()
                                               _exports36821_)))
                                  (for-each
                                   (lambda (_id36849_)
                                     (if (let ((__tmp52998
                                                (gx#core-identifier-key
                                                 _id36849_)))
                                           (declare (not safe))
                                           (hash-get _found36796_ __tmp52998))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx36638_
                                          _id36849_)))
                                   (foldr (lambda (_g3685136854_ _g3685236857_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3685136854_
                                                    _g3685236857_)))
                                          '()
                                          _L36757_))
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
                     (let ((_e3687536894_ (gx#syntax-e _g3687036891_)))
                       (let ((_hd3687436898_
                              (let ()
                                (declare (not safe))
                                (##car _e3687536894_)))
                             (_tl3687336901_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3687536894_))))
                         (if (gx#stx-pair? _tl3687336901_)
                             (let ((_e3687836904_
                                    (gx#syntax-e _tl3687336901_)))
                               (let ((_hd3687736908_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3687836904_)))
                                     (_tl3687636911_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3687836904_))))
                                 (if (gx#stx-pair? _tl3687636911_)
                                     (let ((_e3688136914_
                                            (gx#syntax-e _tl3687636911_)))
                                       (let ((_hd3688036918_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3688136914_)))
                                             (_tl3687936921_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3688136914_))))
                                         (if (gx#stx-null? _tl3687936921_)
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
                                    (let ((__tmp52999
                                           (let ((__tmp53000
                                                  (_rename-e36951_
                                                   (gx#module-export-name
                                                    _out36957_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                              _out36957_
                                              __tmp53000))))
                                      (declare (not safe))
                                      (cons __tmp52999 _r36959_))
                                    (if (gx#export-set? _out36957_)
                                        (foldl _fold-e36954_
                                               _r36959_
                                               (gx#export-set-exports
                                                _out36957_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out36957_ _r36959_)))))))
                      _fold-e36954_)))
              (let ((__tmp53001 (foldl _fold-e36961_ '() _exports36945_)))
                (declare (not safe))
                (cons 'begin: __tmp53001)))
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
                         (let ((__tmp53002
                                (let ((__tmp53006
                                       (let ((__obj49645 _info37209_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj49645
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj49645
                                                '9
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              __obj49645
                                              'type-descriptor))))
                                      (__tmp53003
                                       (foldr cons
                                              (let ((__tmp53005
                                                     (let ((__obj49646
                                                            _info37209_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj49646
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj49646
                                                              '11
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj49646
                                                            'predicate))))
                                                    (__tmp53004
                                                     (foldr cons
                                                            (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?37207_
                               (foldr cons
                                      (map cdr
                                           (let ((__obj49647 _info37209_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj49647
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj49647
                                                    '15
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj49647
                                                  'unchecked-mutators))))
                                      (map cdr
                                           (let ((__obj49648 _info37209_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj49648
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj49648
                                                    '14
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj49648
                                                  'unchecked-accessors)))))
                               '())
                           (map cdr
                                (let ((__obj49649 _info37209_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj49649
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj49649
                                         '13
                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                       __obj49649
                                       'mutators)))))
                    (map cdr
                         (let ((__obj49650 _info37209_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj49650
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj49650
                                  '12
                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                __obj49650
                                'accessors)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp53005 __tmp53004))
                                              (let ((_ctor37212_
                                                     (let ((__obj49651
                                                            _info37209_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj49651
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj49651
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj49651
                                                            'constructor)))))
                                                (if _ctor37212_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor37212_ '()))
                                                    '())))))
                                  (declare (not safe))
                                  (cons __tmp53006 __tmp53003))))
                           (declare (not safe))
                           (cons _id37205_ __tmp53002))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx36970_
                          _id37205_))))))
         (let* ((___stx4956849569_ _stx36970_)
                (_g3697737018_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4956849569_))))
           (let ((___kont4957149572_
                  (lambda (_L37166_ _L37168_)
                    (let ((__tmp53007
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3718737189_)
                               (_identifiers36973_
                                _g3718737189_
                                (gx#stx-e _L37168_)))
                             (foldr (lambda (_g3719237195_ _g3719337198_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3719237195_ _g3719337198_)))
                                    '()
                                    _L37166_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp53007))))
                 (___kont4957549576_
                  (lambda (_L37065_)
                    (let ((__tmp53008
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3708137083_)
                               (_identifiers36973_ _g3708137083_ '#f))
                             (foldr (lambda (_g3708637089_ _g3708737092_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3708637089_ _g3708737092_)))
                                    '()
                                    _L37065_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp53008)))))
             (let* ((___match4962549626_
                     (lambda (_e3700337025_
                              _hd3700237029_
                              _tl3700137032_
                              ___splice4957749578_
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
                                         (___kont4957549576_
                                          _id3701237061_))))))
                         (_loop3700737041_ _target3700437035_ '()))))
                    (___match4961149612_
                     (lambda (_e3698337102_
                              _hd3698237106_
                              _tl3698137109_
                              _e3698637112_
                              _hd3698537116_
                              _tl3698437119_
                              _e3698737122_
                              _e3699037126_
                              _hd3698937130_
                              _tl3698837133_
                              ___splice4957349574_
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
                                         (___kont4957149572_
                                          _id3699937162_
                                          _hd3698937130_))))))
                         (_loop3699437142_ _target3699137136_ '())))))
               (if (gx#stx-pair? ___stx4956849569_)
                   (let ((_e3698337102_ (gx#syntax-e ___stx4956849569_)))
                     (let ((_tl3698137109_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3698337102_)))
                           (_hd3698237106_
                            (let ()
                              (declare (not safe))
                              (##car _e3698337102_))))
                       (if (gx#stx-pair? _tl3698137109_)
                           (let ((_e3698637112_ (gx#syntax-e _tl3698137109_)))
                             (let ((_tl3698437119_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3698637112_)))
                                   (_hd3698537116_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3698637112_))))
                               (if (gx#stx-datum? _hd3698537116_)
                                   (let ((_e3698737122_
                                          (gx#stx-e _hd3698537116_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3698737122_ 'unchecked:))
                                         (if (gx#stx-pair? _tl3698437119_)
                                             (let ((_e3699037126_
                                                    (gx#syntax-e
                                                     _tl3698437119_)))
                                               (let ((_tl3698837133_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3699037126_)))
                                                     (_hd3698937130_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3699037126_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl3698837133_)
                                                     (let ((___splice4957349574_
                                                            (gx#syntax-split-splice
                                                             _tl3698837133_
                                                             '0)))
                                                       (let ((_tl3699337139_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4957349574_ '1)))
                     (_target3699137136_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4957349574_ '0))))
                 (if (gx#stx-null? _tl3699337139_)
                     (___match4961149612_
                      _e3698337102_
                      _hd3698237106_
                      _tl3698137109_
                      _e3698637112_
                      _hd3698537116_
                      _tl3698437119_
                      _e3698737122_
                      _e3699037126_
                      _hd3698937130_
                      _tl3698837133_
                      ___splice4957349574_
                      _target3699137136_
                      _tl3699337139_)
                     (if (gx#stx-pair/null? _tl3698137109_)
                         (let ((___splice4957749578_
                                (gx#syntax-split-splice _tl3698137109_ '0)))
                           (let ((_tl3700637038_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4957749578_ '1)))
                                 (_target3700437035_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4957749578_ '0))))
                             (if (gx#stx-null? _tl3700637038_)
                                 (___match4962549626_
                                  _e3698337102_
                                  _hd3698237106_
                                  _tl3698137109_
                                  ___splice4957749578_
                                  _target3700437035_
                                  _tl3700637038_)
                                 (let ()
                                   (declare (not safe))
                                   (_g3697737018_)))))
                         (let () (declare (not safe)) (_g3697737018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl3698137109_)
                                                         (let ((___splice4957749578_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3698137109_
                         '0)))
                   (let ((_tl3700637038_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4957749578_ '1)))
                         (_target3700437035_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4957749578_ '0))))
                     (if (gx#stx-null? _tl3700637038_)
                         (___match4962549626_
                          _e3698337102_
                          _hd3698237106_
                          _tl3698137109_
                          ___splice4957749578_
                          _target3700437035_
                          _tl3700637038_)
                         (let () (declare (not safe)) (_g3697737018_)))))
                 (let () (declare (not safe)) (_g3697737018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl3698137109_)
                                                 (let ((___splice4957749578_
                                                        (gx#syntax-split-splice
                                                         _tl3698137109_
                                                         '0)))
                                                   (let ((_tl3700637038_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4957749578_
                                                             '1)))
                                                         (_target3700437035_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4957749578_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl3700637038_)
                                                         (___match4962549626_
                                                          _e3698337102_
                                                          _hd3698237106_
                                                          _tl3698137109_
                                                          ___splice4957749578_
                                                          _target3700437035_
                                                          _tl3700637038_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3697737018_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3697737018_))))
                                         (if (gx#stx-pair/null? _tl3698137109_)
                                             (let ((___splice4957749578_
                                                    (gx#syntax-split-splice
                                                     _tl3698137109_
                                                     '0)))
                                               (let ((_tl3700637038_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4957749578_
                                                         '1)))
                                                     (_target3700437035_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4957749578_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl3700637038_)
                                                     (___match4962549626_
                                                      _e3698337102_
                                                      _hd3698237106_
                                                      _tl3698137109_
                                                      ___splice4957749578_
                                                      _target3700437035_
                                                      _tl3700637038_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3697737018_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3697737018_)))))
                                   (if (gx#stx-pair/null? _tl3698137109_)
                                       (let ((___splice4957749578_
                                              (gx#syntax-split-splice
                                               _tl3698137109_
                                               '0)))
                                         (let ((_tl3700637038_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4957749578_
                                                   '1)))
                                               (_target3700437035_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4957749578_
                                                   '0))))
                                           (if (gx#stx-null? _tl3700637038_)
                                               (___match4962549626_
                                                _e3698337102_
                                                _hd3698237106_
                                                _tl3698137109_
                                                ___splice4957749578_
                                                _target3700437035_
                                                _tl3700637038_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3697737018_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g3697737018_))))))
                           (if (gx#stx-pair/null? _tl3698137109_)
                               (let ((___splice4957749578_
                                      (gx#syntax-split-splice
                                       _tl3698137109_
                                       '0)))
                                 (let ((_tl3700637038_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4957749578_
                                           '1)))
                                       (_target3700437035_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4957749578_
                                           '0))))
                                   (if (gx#stx-null? _tl3700637038_)
                                       (___match4962549626_
                                        _e3698337102_
                                        _hd3698237106_
                                        _tl3698137109_
                                        ___splice4957749578_
                                        _target3700437035_
                                        _tl3700637038_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3697737018_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g3697737018_))))))
                   (let () (declare (not safe)) (_g3697737018_)))))))))))
