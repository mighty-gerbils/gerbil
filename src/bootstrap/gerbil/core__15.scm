(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34614_)
      (let* ((___stx4665146652_ _$stx34614_)
             (_g3461934638_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4665146652_))))
        (let ((___kont4665446655_
               (lambda ()
                 (let ((__tmp50240 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp50240 '()))))
              (___kont4665646657_
               (lambda (_L34665_ _L34667_ _L34668_)
                 (let ((__tmp50253 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp50241
                        (let ((__tmp50250
                               (let ((__tmp50251
                                      (let ((__tmp50252
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34668_ _L34665_))))
                                        (declare (not safe))
                                        (cons __tmp50252 '()))))
                                 (declare (not safe))
                                 (cons _L34667_ __tmp50251)))
                              (__tmp50242
                               (let ((__tmp50243
                                      (let ((__tmp50249
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp50244
                                             (let ((__tmp50245
                                                    (let ((__tmp50248
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp50246
                                                           (let ((__tmp50247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L34667_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp50247))))
              (declare (not safe))
              (cons __tmp50248 __tmp50246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50245 '()))))
                                        (declare (not safe))
                                        (cons __tmp50249 __tmp50244))))
                                 (declare (not safe))
                                 (cons __tmp50243 '()))))
                          (declare (not safe))
                          (cons __tmp50250 __tmp50242))))
                   (declare (not safe))
                   (cons __tmp50253 __tmp50241)))))
          (if (gx#stx-pair? ___stx4665146652_)
              (let ((_e3462334691_ (gx#syntax-e ___stx4665146652_)))
                (let ((_tl3462134698_
                       (let () (declare (not safe)) (##cdr _e3462334691_)))
                      (_hd3462234695_
                       (let () (declare (not safe)) (##car _e3462334691_))))
                  (if (gx#stx-null? _tl3462134698_)
                      (___kont4665446655_)
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
                              (___kont4665646657_
                               _tl3463034662_
                               _hd3463134659_
                               _hd3462234695_)))
                          (let () (declare (not safe)) (_g3461934638_))))))
              (let () (declare (not safe)) (_g3461934638_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34709_)
      (let* ((___stx4668146682_ _$stx34709_)
             (_g3471434754_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4668146682_))))
        (let ((___kont4668446685_
               (lambda (_L34892_ _L34894_)
                 (let ((__tmp50259 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50254
                        (let ((__tmp50255
                               (let ((__tmp50256
                                      (let ((__tmp50258
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp50257
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34892_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50258 __tmp50257))))
                                 (declare (not safe))
                                 (cons __tmp50256 '()))))
                          (declare (not safe))
                          (cons _L34894_ __tmp50255))))
                   (declare (not safe))
                   (cons __tmp50259 __tmp50254))))
              (___kont4668646687_
               (lambda (_L34821_ _L34823_ _L34824_ _L34825_)
                 (let ((__tmp50260
                        (let ((__tmp50261
                               (let ((__tmp50262
                                      (let ((__tmp50265
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50263
                                             (let ((__tmp50264
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
                                               (cons _L34823_ __tmp50264))))
                                        (declare (not safe))
                                        (cons __tmp50265 __tmp50263))))
                                 (declare (not safe))
                                 (cons __tmp50262 '()))))
                          (declare (not safe))
                          (cons _L34824_ __tmp50261))))
                   (declare (not safe))
                   (cons _L34825_ __tmp50260)))))
          (let* ((___match4673646737_
                  (lambda (_e3473334761_
                           _hd3473234765_
                           _tl3473134768_
                           _e3473634771_
                           _hd3473534775_
                           _tl3473434778_
                           _e3473934781_
                           _hd3473834785_
                           _tl3473734788_
                           ___splice4668846689_
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
                                            (___kont4668646687_
                                             _L34821_
                                             _L34823_
                                             _L34824_
                                             _L34825_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3471434754_)))))))))
                      (_loop3474334797_ _target3474034791_ '()))))
                 (___match4671046711_
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
                          (___kont4668446685_ _L34892_ _L34894_)
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
                                      (let ((___splice4668846689_
                                             (gx#syntax-split-splice
                                              _tl3472134879_
                                              '0)))
                                        (let ((_tl3474234794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4668846689_
                                                  '1)))
                                              (_target3474034791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4668846689_
                                                  '0))))
                                          (if (gx#stx-null? _tl3474234794_)
                                              (___match4673646737_
                                               _e3472034862_
                                               _hd3471934866_
                                               _tl3471834869_
                                               _e3472334872_
                                               _hd3472234876_
                                               _tl3472134879_
                                               _e3473934781_
                                               _hd3473834785_
                                               _tl3473734788_
                                               ___splice4668846689_
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
            (if (gx#stx-pair? ___stx4668146682_)
                (let ((_e3472034862_ (gx#syntax-e ___stx4668146682_)))
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
                                        (___match4671046711_
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
                                                    (let ((___splice4668846689_
                                                           (gx#syntax-split-splice
                                                            _tl3472134879_
                                                            '0)))
                                                      (let ((_tl3474234794_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4668846689_ '1)))
                    (_target3474034791_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4668846689_ '0))))
                (if (gx#stx-null? _tl3474234794_)
                    (___match4673646737_
                     _e3472034862_
                     _hd3471934866_
                     _tl3471834869_
                     _e3472334872_
                     _hd3472234876_
                     _tl3472134879_
                     _e3473934781_
                     _hd3473834785_
                     _tl3473734788_
                     ___splice4668846689_
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
                                            (let ((___splice4668846689_
                                                   (gx#syntax-split-splice
                                                    _tl3472134879_
                                                    '0)))
                                              (let ((_tl3474234794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4668846689_
                                                        '1)))
                                                    (_target3474034791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4668846689_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3474234794_)
                                                    (___match4673646737_
                                                     _e3472034862_
                                                     _hd3471934866_
                                                     _tl3471834869_
                                                     _e3472334872_
                                                     _hd3472234876_
                                                     _tl3472134879_
                                                     _e3473934781_
                                                     _hd3473834785_
                                                     _tl3473734788_
                                                     ___splice4668846689_
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
      (let* ((___stx4673946740_ _$stx34914_)
             (_g3491934959_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4673946740_))))
        (let ((___kont4674246743_
               (lambda (_L35097_ _L35099_)
                 (let ((__tmp50271 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50266
                        (let ((__tmp50267
                               (let ((__tmp50268
                                      (let ((__tmp50270
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp50269
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35097_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50270 __tmp50269))))
                                 (declare (not safe))
                                 (cons __tmp50268 '()))))
                          (declare (not safe))
                          (cons _L35099_ __tmp50267))))
                   (declare (not safe))
                   (cons __tmp50271 __tmp50266))))
              (___kont4674446745_
               (lambda (_L35026_ _L35028_ _L35029_ _L35030_)
                 (let ((__tmp50272
                        (let ((__tmp50273
                               (let ((__tmp50274
                                      (let ((__tmp50277
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50275
                                             (let ((__tmp50276
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
                                               (cons _L35028_ __tmp50276))))
                                        (declare (not safe))
                                        (cons __tmp50277 __tmp50275))))
                                 (declare (not safe))
                                 (cons __tmp50274 '()))))
                          (declare (not safe))
                          (cons _L35029_ __tmp50273))))
                   (declare (not safe))
                   (cons _L35030_ __tmp50272)))))
          (let* ((___match4679446795_
                  (lambda (_e3493834966_
                           _hd3493734970_
                           _tl3493634973_
                           _e3494134976_
                           _hd3494034980_
                           _tl3493934983_
                           _e3494434986_
                           _hd3494334990_
                           _tl3494234993_
                           ___splice4674646747_
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
                                            (___kont4674446745_
                                             _L35026_
                                             _L35028_
                                             _L35029_
                                             _L35030_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3491934959_)))))))))
                      (_loop3494835002_ _target3494534996_ '()))))
                 (___match4676846769_
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
                          (___kont4674246743_ _L35097_ _L35099_)
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
                                      (let ((___splice4674646747_
                                             (gx#syntax-split-splice
                                              _tl3492635084_
                                              '0)))
                                        (let ((_tl3494734999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4674646747_
                                                  '1)))
                                              (_target3494534996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4674646747_
                                                  '0))))
                                          (if (gx#stx-null? _tl3494734999_)
                                              (___match4679446795_
                                               _e3492535067_
                                               _hd3492435071_
                                               _tl3492335074_
                                               _e3492835077_
                                               _hd3492735081_
                                               _tl3492635084_
                                               _e3494434986_
                                               _hd3494334990_
                                               _tl3494234993_
                                               ___splice4674646747_
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
            (if (gx#stx-pair? ___stx4673946740_)
                (let ((_e3492535067_ (gx#syntax-e ___stx4673946740_)))
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
                                        (___match4676846769_
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
                                                    (let ((___splice4674646747_
                                                           (gx#syntax-split-splice
                                                            _tl3492635084_
                                                            '0)))
                                                      (let ((_tl3494734999_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4674646747_ '1)))
                    (_target3494534996_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4674646747_ '0))))
                (if (gx#stx-null? _tl3494734999_)
                    (___match4679446795_
                     _e3492535067_
                     _hd3492435071_
                     _tl3492335074_
                     _e3492835077_
                     _hd3492735081_
                     _tl3492635084_
                     _e3494434986_
                     _hd3494334990_
                     _tl3494234993_
                     ___splice4674646747_
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
                                            (let ((___splice4674646747_
                                                   (gx#syntax-split-splice
                                                    _tl3492635084_
                                                    '0)))
                                              (let ((_tl3494734999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4674646747_
                                                        '1)))
                                                    (_target3494534996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4674646747_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3494734999_)
                                                    (___match4679446795_
                                                     _e3492535067_
                                                     _hd3492435071_
                                                     _tl3492335074_
                                                     _e3492835077_
                                                     _hd3492735081_
                                                     _tl3492635084_
                                                     _e3494434986_
                                                     _hd3494334990_
                                                     _tl3494234993_
                                                     ___splice4674646747_
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
      (let* ((___stx4679746798_ _$stx35119_)
             (_g3512435164_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4679746798_))))
        (let ((___kont4680046801_
               (lambda (_L35302_ _L35304_)
                 (let ((__tmp50283 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50278
                        (let ((__tmp50279
                               (let ((__tmp50280
                                      (let ((__tmp50282
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp50281
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35302_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50282 __tmp50281))))
                                 (declare (not safe))
                                 (cons __tmp50280 '()))))
                          (declare (not safe))
                          (cons _L35304_ __tmp50279))))
                   (declare (not safe))
                   (cons __tmp50283 __tmp50278))))
              (___kont4680246803_
               (lambda (_L35231_ _L35233_ _L35234_ _L35235_)
                 (let ((__tmp50284
                        (let ((__tmp50285
                               (let ((__tmp50286
                                      (let ((__tmp50289
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50287
                                             (let ((__tmp50288
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
                                               (cons _L35233_ __tmp50288))))
                                        (declare (not safe))
                                        (cons __tmp50289 __tmp50287))))
                                 (declare (not safe))
                                 (cons __tmp50286 '()))))
                          (declare (not safe))
                          (cons _L35234_ __tmp50285))))
                   (declare (not safe))
                   (cons _L35235_ __tmp50284)))))
          (let* ((___match4685246853_
                  (lambda (_e3514335171_
                           _hd3514235175_
                           _tl3514135178_
                           _e3514635181_
                           _hd3514535185_
                           _tl3514435188_
                           _e3514935191_
                           _hd3514835195_
                           _tl3514735198_
                           ___splice4680446805_
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
                                            (___kont4680246803_
                                             _L35231_
                                             _L35233_
                                             _L35234_
                                             _L35235_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3512435164_)))))))))
                      (_loop3515335207_ _target3515035201_ '()))))
                 (___match4682646827_
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
                          (___kont4680046801_ _L35302_ _L35304_)
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
                                      (let ((___splice4680446805_
                                             (gx#syntax-split-splice
                                              _tl3513135289_
                                              '0)))
                                        (let ((_tl3515235204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4680446805_
                                                  '1)))
                                              (_target3515035201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4680446805_
                                                  '0))))
                                          (if (gx#stx-null? _tl3515235204_)
                                              (___match4685246853_
                                               _e3513035272_
                                               _hd3512935276_
                                               _tl3512835279_
                                               _e3513335282_
                                               _hd3513235286_
                                               _tl3513135289_
                                               _e3514935191_
                                               _hd3514835195_
                                               _tl3514735198_
                                               ___splice4680446805_
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
            (if (gx#stx-pair? ___stx4679746798_)
                (let ((_e3513035272_ (gx#syntax-e ___stx4679746798_)))
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
                                        (___match4682646827_
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
                                                    (let ((___splice4680446805_
                                                           (gx#syntax-split-splice
                                                            _tl3513135289_
                                                            '0)))
                                                      (let ((_tl3515235204_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4680446805_ '1)))
                    (_target3515035201_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4680446805_ '0))))
                (if (gx#stx-null? _tl3515235204_)
                    (___match4685246853_
                     _e3513035272_
                     _hd3512935276_
                     _tl3512835279_
                     _e3513335282_
                     _hd3513235286_
                     _tl3513135289_
                     _e3514935191_
                     _hd3514835195_
                     _tl3514735198_
                     ___splice4680446805_
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
                                            (let ((___splice4680446805_
                                                   (gx#syntax-split-splice
                                                    _tl3513135289_
                                                    '0)))
                                              (let ((_tl3515235204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4680446805_
                                                        '1)))
                                                    (_target3515035201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4680446805_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3515235204_)
                                                    (___match4685246853_
                                                     _e3513035272_
                                                     _hd3512935276_
                                                     _tl3512835279_
                                                     _e3513335282_
                                                     _hd3513235286_
                                                     _tl3513135289_
                                                     _e3514935191_
                                                     _hd3514835195_
                                                     _tl3514735198_
                                                     ___splice4680446805_
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
                             (let ((_g50290_
                                    (gx#syntax-split-splice
                                     _tl3533035361_
                                     '0)))
                               (begin
                                 (let ((_g50291_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50290_)
                                              (##vector-length _g50290_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50291_ 2)))
                                       (error "Context expects 2 values"
                                              _g50291_)))
                                 (let ((_target3533335364_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50290_ 0)))
                                       (_tl3533535367_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50290_ 1))))
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
                    (let ((__tmp50292
                           (let ((__tmp50293
                                  (foldr (lambda (_g3540935412_ _g3541035415_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3540935412_
                                                   _g3541035415_)))
                                         '()
                                         _L35394_)))
                             (declare (not safe))
                             (cons '1 __tmp50293))))
                      (declare (not safe))
                      (cons 'phi: __tmp50292)))
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
                             (let ((_g50294_
                                    (gx#syntax-split-splice
                                     _tl3542935460_
                                     '0)))
                               (begin
                                 (let ((_g50295_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50294_)
                                              (##vector-length _g50294_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50295_ 2)))
                                       (error "Context expects 2 values"
                                              _g50295_)))
                                 (let ((_target3543235463_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50294_ 0)))
                                       (_tl3543435466_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50294_ 1))))
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
                    (let ((__tmp50296
                           (let ((__tmp50297
                                  (foldr (lambda (_g3550835511_ _g3550935514_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3550835511_
                                                   _g3550935514_)))
                                         '()
                                         _L35493_)))
                             (declare (not safe))
                             (cons '-1 __tmp50297))))
                      (declare (not safe))
                      (cons 'phi: __tmp50296)))
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
                                     (let ((_g50298_
                                            (gx#syntax-split-splice
                                             _tl3553235573_
                                             '0)))
                                       (begin
                                         (let ((_g50299_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50298_)
                                                      (##vector-length
                                                       _g50298_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50299_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50299_)))
                                         (let ((_target3553535576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50298_ 0)))
                                               (_tl3553735579_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50298_ 1))))
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
                    (foldl _fold-e35659_
                           _r35664_
                           (gx#import-set-imports _in35662_))
                    _r35664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35659_)))
                                  (let ((__tmp50300
                                         (foldl _fold-e35666_
                                                '()
                                                _imports35656_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50300)))
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
                                     (let ((_g50301_
                                            (gx#syntax-split-splice
                                             _tl3568635727_
                                             '0)))
                                       (begin
                                         (let ((_g50302_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50301_)
                                                      (##vector-length
                                                       _g50301_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50302_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50302_)))
                                         (let ((_target3568935730_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50301_ 0)))
                                               (_tl3569135733_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50301_ 1))))
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
                    (foldl _fold-e35813_
                           _r35818_
                           (gx#import-set-imports _in35816_))
                    (let ()
                      (declare (not safe))
                      (cons _in35816_ _r35818_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35813_)))
                                  (let ((__tmp50303
                                         (foldl _fold-e35820_
                                                '()
                                                _imports35810_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50303)))
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
                (let ((__tmp50304 (make-symbol _pre35832_ _id35859_)))
                  (declare (not safe))
                  (cons __tmp50304 _mark35857_)))))
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
                                     (let ((_g50305_
                                            (gx#syntax-split-splice
                                             _tl3589235941_
                                             '0)))
                                       (begin
                                         (let ((_g50306_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50305_)
                                                      (##vector-length
                                                       _g50305_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50306_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50306_)))
                                         (let ((_target3589535944_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50305_ 0)))
                                               (_tl3589735947_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50305_ 1))))
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
                                (let* ((_keytab36036_ (make-hash-table))
                                       (_found36039_ (make-hash-table))
                                       (_g50307_
                                        (for-each
                                         (lambda (_id36042_ _new-id36044_)
                                           (hash-put!
                                            _keytab36036_
                                            (gx#core-identifier-key _id36042_)
                                            (gx#core-identifier-key
                                             _new-id36044_)))
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
                       (_$e36077_ (hash-get _keytab36036_ _name36074_)))
                  (if _$e36077_
                      ((lambda (_rename36081_)
                         (hash-put! _found36039_ _name36074_ '#t)
                         (let ((__tmp50308
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                   _in36070_
                                   _rename36081_))))
                           (declare (not safe))
                           (cons __tmp50308 _r36072_)))
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
                                     (if (hash-get
                                          _found36039_
                                          (gx#core-identifier-key _id36092_))
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
                                    (let ((__tmp50309
                                           (let ((__tmp50310
                                                  (_rename-e36194_
                                                   (gx#module-import-name
                                                    _in36200_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                              _in36200_
                                              __tmp50310))))
                                      (declare (not safe))
                                      (cons __tmp50309 _r36202_))
                                    (if (gx#import-set? _in36200_)
                                        (foldl _fold-e36197_
                                               _r36202_
                                               (gx#import-set-imports
                                                _in36200_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in36200_ _r36202_)))))))
                      _fold-e36197_)))
              (let ((__tmp50311 (foldl _fold-e36204_ '() _imports36188_)))
                (declare (not safe))
                (cons 'begin: __tmp50311)))
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
                   (let* ((___stx4685546856_ _mod36341_)
                          (_g3634436366_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4685546856_))))
                     (let ((___kont4685846859_
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
                           (___kont4686246863_
                            (lambda (_L36373_)
                              (gx#stx-identifier
                               _top36339_
                               _top36339_
                               '"/"
                               _L36373_))))
                       (let* ((_g3634336387_
                               (lambda ()
                                 (let ((_L36373_ ___stx4685546856_))
                                   (if (or (gx#identifier? _L36373_)
                                           (gx#stx-fixnum? _L36373_))
                                       (___kont4686246863_ _L36373_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3634436366_))))))
                              (___match4687846879_
                               (lambda (_e3635036394_
                                        _hd3634936398_
                                        _tl3634836401_
                                        ___splice4686046861_
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
                                                   (___kont4685846859_
                                                    _mod3635936430_
                                                    _hd3634936398_))))))
                                   (_loop3635436410_
                                    _target3635136404_
                                    '())))))
                         (if (gx#stx-pair? ___stx4685546856_)
                             (let ((_e3635036394_
                                    (gx#syntax-e ___stx4685546856_)))
                               (let ((_tl3634836401_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3635036394_)))
                                     (_hd3634936398_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3635036394_))))
                                 (if (gx#stx-pair/null? _tl3634836401_)
                                     (let ((___splice4686046861_
                                            (gx#syntax-split-splice
                                             _tl3634836401_
                                             '0)))
                                       (let ((_tl3635336407_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4686046861_
                                                 '1)))
                                             (_target3635136404_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4686046861_
                                                 '0))))
                                         (if (gx#stx-null? _tl3635336407_)
                                             (___match4687846879_
                                              _e3635036394_
                                              _hd3634936398_
                                              _tl3634836401_
                                              ___splice4686046861_
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
                                       (let ((_g50312_
                                              (gx#syntax-split-splice
                                               _tl3622736268_
                                               '0)))
                                         (begin
                                           (let ((_g50313_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50312_)
                                                        (##vector-length
                                                         _g50312_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50313_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50313_)))
                                           (let ((_target3623036271_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50312_ 0)))
                                                 (_tl3623236274_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50312_
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
                              (let ((__tmp50314
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
                                (cons 'begin: __tmp50314)))
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
                                     (let ((_g50315_
                                            (gx#syntax-split-splice
                                             _tl3649036531_
                                             '0)))
                                       (begin
                                         (let ((_g50316_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50315_)
                                                      (##vector-length
                                                       _g50315_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50316_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50316_)))
                                         (let ((_target3649336534_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50315_ 0)))
                                               (_tl3649536537_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50315_ 1))))
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
                    (foldl _fold-e36617_
                           _r36622_
                           (gx#export-set-exports _out36620_))
                    _r36622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36617_)))
                                  (let ((__tmp50317
                                         (foldl _fold-e36624_
                                                '()
                                                _exports36614_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50317)))
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
                                     (let ((_g50318_
                                            (gx#syntax-split-splice
                                             _tl3664936698_
                                             '0)))
                                       (begin
                                         (let ((_g50319_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50318_)
                                                      (##vector-length
                                                       _g50318_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50319_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50319_)))
                                         (let ((_target3665236701_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50318_ 0)))
                                               (_tl3665436704_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50318_ 1))))
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
                                (let* ((_keytab36793_ (make-hash-table))
                                       (_found36796_ (make-hash-table))
                                       (_g50320_
                                        (for-each
                                         (lambda (_id36799_ _new-id36801_)
                                           (hash-put!
                                            _keytab36793_
                                            (gx#core-identifier-key _id36799_)
                                            (gx#core-identifier-key
                                             _new-id36801_)))
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
                       (_$e36834_ (hash-get _keytab36793_ _name36831_)))
                  (if _$e36834_
                      ((lambda (_rename36838_)
                         (hash-put! _found36796_ _name36831_ '#t)
                         (let ((__tmp50321
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                   _out36827_
                                   _rename36838_))))
                           (declare (not safe))
                           (cons __tmp50321 _r36829_)))
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
                                     (if (hash-get
                                          _found36796_
                                          (gx#core-identifier-key _id36849_))
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
                                    (let ((__tmp50322
                                           (let ((__tmp50323
                                                  (_rename-e36951_
                                                   (gx#module-export-name
                                                    _out36957_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                              _out36957_
                                              __tmp50323))))
                                      (declare (not safe))
                                      (cons __tmp50322 _r36959_))
                                    (if (gx#export-set? _out36957_)
                                        (foldl _fold-e36954_
                                               _r36959_
                                               (gx#export-set-exports
                                                _out36957_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out36957_ _r36959_)))))))
                      _fold-e36954_)))
              (let ((__tmp50324 (foldl _fold-e36961_ '() _exports36945_)))
                (declare (not safe))
                (cons 'begin: __tmp50324)))
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
                         (let ((__tmp50325
                                (let ((__tmp50329
                                       (let ((__obj46958 _info37209_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj46958
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj46958
                                                '9
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              __obj46958
                                              'type-descriptor))))
                                      (__tmp50326
                                       (foldr cons
                                              (let ((__tmp50328
                                                     (let ((__obj46959
                                                            _info37209_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj46959
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj46959
                                                              '11
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj46959
                                                            'predicate))))
                                                    (__tmp50327
                                                     (foldr cons
                                                            (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?37207_
                               (foldr cons
                                      (map cdr
                                           (let ((__obj46960 _info37209_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj46960
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj46960
                                                    '15
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj46960
                                                  'unchecked-mutators))))
                                      (map cdr
                                           (let ((__obj46961 _info37209_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj46961
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj46961
                                                    '14
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj46961
                                                  'unchecked-accessors)))))
                               '())
                           (map cdr
                                (let ((__obj46962 _info37209_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj46962
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj46962
                                         '13
                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                       __obj46962
                                       'mutators)))))
                    (map cdr
                         (let ((__obj46963 _info37209_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj46963
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj46963
                                  '12
                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                __obj46963
                                'accessors)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50328 __tmp50327))
                                              (let ((_ctor37212_
                                                     (let ((__obj46964
                                                            _info37209_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj46964
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj46964
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj46964
                                                            'constructor)))))
                                                (if _ctor37212_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor37212_ '()))
                                                    '())))))
                                  (declare (not safe))
                                  (cons __tmp50329 __tmp50326))))
                           (declare (not safe))
                           (cons _id37205_ __tmp50325))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx36970_
                          _id37205_))))))
         (let* ((___stx4688146882_ _stx36970_)
                (_g3697737018_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4688146882_))))
           (let ((___kont4688446885_
                  (lambda (_L37166_ _L37168_)
                    (let ((__tmp50330
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
                      (cons 'begin: __tmp50330))))
                 (___kont4688846889_
                  (lambda (_L37065_)
                    (let ((__tmp50331
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
                      (cons 'begin: __tmp50331)))))
             (let* ((___match4693846939_
                     (lambda (_e3700337025_
                              _hd3700237029_
                              _tl3700137032_
                              ___splice4689046891_
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
                                         (___kont4688846889_
                                          _id3701237061_))))))
                         (_loop3700737041_ _target3700437035_ '()))))
                    (___match4692446925_
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
                              ___splice4688646887_
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
                                         (___kont4688446885_
                                          _id3699937162_
                                          _hd3698937130_))))))
                         (_loop3699437142_ _target3699137136_ '())))))
               (if (gx#stx-pair? ___stx4688146882_)
                   (let ((_e3698337102_ (gx#syntax-e ___stx4688146882_)))
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
                                                     (let ((___splice4688646887_
                                                            (gx#syntax-split-splice
                                                             _tl3698837133_
                                                             '0)))
                                                       (let ((_tl3699337139_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4688646887_ '1)))
                     (_target3699137136_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4688646887_ '0))))
                 (if (gx#stx-null? _tl3699337139_)
                     (___match4692446925_
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
                      ___splice4688646887_
                      _target3699137136_
                      _tl3699337139_)
                     (if (gx#stx-pair/null? _tl3698137109_)
                         (let ((___splice4689046891_
                                (gx#syntax-split-splice _tl3698137109_ '0)))
                           (let ((_tl3700637038_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4689046891_ '1)))
                                 (_target3700437035_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4689046891_ '0))))
                             (if (gx#stx-null? _tl3700637038_)
                                 (___match4693846939_
                                  _e3698337102_
                                  _hd3698237106_
                                  _tl3698137109_
                                  ___splice4689046891_
                                  _target3700437035_
                                  _tl3700637038_)
                                 (let ()
                                   (declare (not safe))
                                   (_g3697737018_)))))
                         (let () (declare (not safe)) (_g3697737018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl3698137109_)
                                                         (let ((___splice4689046891_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3698137109_
                         '0)))
                   (let ((_tl3700637038_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4689046891_ '1)))
                         (_target3700437035_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4689046891_ '0))))
                     (if (gx#stx-null? _tl3700637038_)
                         (___match4693846939_
                          _e3698337102_
                          _hd3698237106_
                          _tl3698137109_
                          ___splice4689046891_
                          _target3700437035_
                          _tl3700637038_)
                         (let () (declare (not safe)) (_g3697737018_)))))
                 (let () (declare (not safe)) (_g3697737018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl3698137109_)
                                                 (let ((___splice4689046891_
                                                        (gx#syntax-split-splice
                                                         _tl3698137109_
                                                         '0)))
                                                   (let ((_tl3700637038_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4689046891_
                                                             '1)))
                                                         (_target3700437035_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4689046891_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl3700637038_)
                                                         (___match4693846939_
                                                          _e3698337102_
                                                          _hd3698237106_
                                                          _tl3698137109_
                                                          ___splice4689046891_
                                                          _target3700437035_
                                                          _tl3700637038_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3697737018_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3697737018_))))
                                         (if (gx#stx-pair/null? _tl3698137109_)
                                             (let ((___splice4689046891_
                                                    (gx#syntax-split-splice
                                                     _tl3698137109_
                                                     '0)))
                                               (let ((_tl3700637038_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4689046891_
                                                         '1)))
                                                     (_target3700437035_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4689046891_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl3700637038_)
                                                     (___match4693846939_
                                                      _e3698337102_
                                                      _hd3698237106_
                                                      _tl3698137109_
                                                      ___splice4689046891_
                                                      _target3700437035_
                                                      _tl3700637038_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3697737018_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3697737018_)))))
                                   (if (gx#stx-pair/null? _tl3698137109_)
                                       (let ((___splice4689046891_
                                              (gx#syntax-split-splice
                                               _tl3698137109_
                                               '0)))
                                         (let ((_tl3700637038_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4689046891_
                                                   '1)))
                                               (_target3700437035_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4689046891_
                                                   '0))))
                                           (if (gx#stx-null? _tl3700637038_)
                                               (___match4693846939_
                                                _e3698337102_
                                                _hd3698237106_
                                                _tl3698137109_
                                                ___splice4689046891_
                                                _target3700437035_
                                                _tl3700637038_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3697737018_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g3697737018_))))))
                           (if (gx#stx-pair/null? _tl3698137109_)
                               (let ((___splice4689046891_
                                      (gx#syntax-split-splice
                                       _tl3698137109_
                                       '0)))
                                 (let ((_tl3700637038_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4689046891_
                                           '1)))
                                       (_target3700437035_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4689046891_
                                           '0))))
                                   (if (gx#stx-null? _tl3700637038_)
                                       (___match4693846939_
                                        _e3698337102_
                                        _hd3698237106_
                                        _tl3698137109_
                                        ___splice4689046891_
                                        _target3700437035_
                                        _tl3700637038_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3697737018_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g3697737018_))))))
                   (let () (declare (not safe)) (_g3697737018_)))))))))))
