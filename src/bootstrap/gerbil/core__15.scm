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
                 (let ((__tmp53154 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp53154 '()))))
              (___kont4934349344_
               (lambda (_L34665_ _L34667_ _L34668_)
                 (let ((__tmp53167 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp53155
                        (let ((__tmp53164
                               (let ((__tmp53165
                                      (let ((__tmp53166
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34668_ _L34665_))))
                                        (declare (not safe))
                                        (cons __tmp53166 '()))))
                                 (declare (not safe))
                                 (cons _L34667_ __tmp53165)))
                              (__tmp53156
                               (let ((__tmp53157
                                      (let ((__tmp53163
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp53158
                                             (let ((__tmp53159
                                                    (let ((__tmp53162
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp53160
                                                           (let ((__tmp53161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L34667_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp53161))))
              (declare (not safe))
              (cons __tmp53162 __tmp53160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp53159 '()))))
                                        (declare (not safe))
                                        (cons __tmp53163 __tmp53158))))
                                 (declare (not safe))
                                 (cons __tmp53157 '()))))
                          (declare (not safe))
                          (cons __tmp53164 __tmp53156))))
                   (declare (not safe))
                   (cons __tmp53167 __tmp53155)))))
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
                 (let ((__tmp53173 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp53168
                        (let ((__tmp53169
                               (let ((__tmp53170
                                      (let ((__tmp53172
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp53171
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34892_ '()))))
                                        (declare (not safe))
                                        (cons __tmp53172 __tmp53171))))
                                 (declare (not safe))
                                 (cons __tmp53170 '()))))
                          (declare (not safe))
                          (cons _L34894_ __tmp53169))))
                   (declare (not safe))
                   (cons __tmp53173 __tmp53168))))
              (___kont4937349374_
               (lambda (_L34821_ _L34823_ _L34824_ _L34825_)
                 (let ((__tmp53174
                        (let ((__tmp53175
                               (let ((__tmp53176
                                      (let ((__tmp53180
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp53177
                                             (let ((__tmp53178
                                                    (let ((__tmp53179
                                                           (lambda (_g3484634849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3484734852_)
                     (let ()
                       (declare (not safe))
                       (cons _g3484634849_ _g3484734852_)))))
              (declare (not safe))
              (foldr1 __tmp53179 '() _L34821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34823_ __tmp53178))))
                                        (declare (not safe))
                                        (cons __tmp53180 __tmp53177))))
                                 (declare (not safe))
                                 (cons __tmp53176 '()))))
                          (declare (not safe))
                          (cons _L34824_ __tmp53175))))
                   (declare (not safe))
                   (cons _L34825_ __tmp53174)))))
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
                 (let ((__tmp53186 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp53181
                        (let ((__tmp53182
                               (let ((__tmp53183
                                      (let ((__tmp53185
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp53184
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35097_ '()))))
                                        (declare (not safe))
                                        (cons __tmp53185 __tmp53184))))
                                 (declare (not safe))
                                 (cons __tmp53183 '()))))
                          (declare (not safe))
                          (cons _L35099_ __tmp53182))))
                   (declare (not safe))
                   (cons __tmp53186 __tmp53181))))
              (___kont4943149432_
               (lambda (_L35026_ _L35028_ _L35029_ _L35030_)
                 (let ((__tmp53187
                        (let ((__tmp53188
                               (let ((__tmp53189
                                      (let ((__tmp53193
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp53190
                                             (let ((__tmp53191
                                                    (let ((__tmp53192
                                                           (lambda (_g3505135054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3505235057_)
                     (let ()
                       (declare (not safe))
                       (cons _g3505135054_ _g3505235057_)))))
              (declare (not safe))
              (foldr1 __tmp53192 '() _L35026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35028_ __tmp53191))))
                                        (declare (not safe))
                                        (cons __tmp53193 __tmp53190))))
                                 (declare (not safe))
                                 (cons __tmp53189 '()))))
                          (declare (not safe))
                          (cons _L35029_ __tmp53188))))
                   (declare (not safe))
                   (cons _L35030_ __tmp53187)))))
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
                 (let ((__tmp53199 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp53194
                        (let ((__tmp53195
                               (let ((__tmp53196
                                      (let ((__tmp53198
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp53197
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35302_ '()))))
                                        (declare (not safe))
                                        (cons __tmp53198 __tmp53197))))
                                 (declare (not safe))
                                 (cons __tmp53196 '()))))
                          (declare (not safe))
                          (cons _L35304_ __tmp53195))))
                   (declare (not safe))
                   (cons __tmp53199 __tmp53194))))
              (___kont4948949490_
               (lambda (_L35231_ _L35233_ _L35234_ _L35235_)
                 (let ((__tmp53200
                        (let ((__tmp53201
                               (let ((__tmp53202
                                      (let ((__tmp53206
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp53203
                                             (let ((__tmp53204
                                                    (let ((__tmp53205
                                                           (lambda (_g3525635259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3525735262_)
                     (let ()
                       (declare (not safe))
                       (cons _g3525635259_ _g3525735262_)))))
              (declare (not safe))
              (foldr1 __tmp53205 '() _L35231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35233_ __tmp53204))))
                                        (declare (not safe))
                                        (cons __tmp53206 __tmp53203))))
                                 (declare (not safe))
                                 (cons __tmp53202 '()))))
                          (declare (not safe))
                          (cons _L35234_ __tmp53201))))
                   (declare (not safe))
                   (cons _L35235_ __tmp53200)))))
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
                             (let ((_g53207_
                                    (gx#syntax-split-splice
                                     _tl3533035361_
                                     '0)))
                               (begin
                                 (let ((_g53208_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g53207_)
                                              (##vector-length _g53207_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g53208_ 2)))
                                       (error "Context expects 2 values"
                                              _g53208_)))
                                 (let ((_target3533335364_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g53207_ 0)))
                                       (_tl3533535367_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g53207_ 1))))
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
                    (let ((__tmp53209
                           (let ((__tmp53210
                                  (let ((__tmp53211
                                         (lambda (_g3540935412_ _g3541035415_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3540935412_
                                                   _g3541035415_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp53211 '() _L35394_))))
                             (declare (not safe))
                             (cons '1 __tmp53210))))
                      (declare (not safe))
                      (cons 'phi: __tmp53209)))
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
                             (let ((_g53212_
                                    (gx#syntax-split-splice
                                     _tl3542935460_
                                     '0)))
                               (begin
                                 (let ((_g53213_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g53212_)
                                              (##vector-length _g53212_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g53213_ 2)))
                                       (error "Context expects 2 values"
                                              _g53213_)))
                                 (let ((_target3543235463_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g53212_ 0)))
                                       (_tl3543435466_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g53212_ 1))))
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
                    (let ((__tmp53214
                           (let ((__tmp53215
                                  (let ((__tmp53216
                                         (lambda (_g3550835511_ _g3550935514_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3550835511_
                                                   _g3550935514_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp53216 '() _L35493_))))
                             (declare (not safe))
                             (cons '-1 __tmp53215))))
                      (declare (not safe))
                      (cons 'phi: __tmp53214)))
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
                                     (let ((_g53217_
                                            (gx#syntax-split-splice
                                             _tl3553235573_
                                             '0)))
                                       (begin
                                         (let ((_g53218_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53217_)
                                                      (##vector-length
                                                       _g53217_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53218_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53218_)))
                                         (let ((_target3553535576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53217_ 0)))
                                               (_tl3553735579_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53217_ 1))))
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
                                 (let ((__tmp53223
                                        (lambda (_g3562535628_ _g3562635631_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3562535628_
                                                  _g3562635631_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp53223 '() _L35606_)))
                                (let* ((_keys35642_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp53219
                                                (lambda (_g3563335636_
                                                         _g3563435639_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3563335636_
                                                          _g3563435639_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53219 '() _L35606_))))
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
                                                        (if (let ((__tmp53221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35662_)))
                      (declare (not safe))
                      (hash-get _keytab35653_ __tmp53221))
                    (let () (declare (not safe)) (cons _in35662_ _r35664_))
                    _r35664_)
                (if (gx#import-set? _in35662_)
                    (let ((__tmp53220 (gx#import-set-imports _in35662_)))
                      (declare (not safe))
                      (foldl1 _fold-e35659_ _r35664_ __tmp53220))
                    _r35664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35659_)))
                                  (let ((__tmp53222
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35666_
                                                   '()
                                                   _imports35656_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp53222)))
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
                                     (let ((_g53224_
                                            (gx#syntax-split-splice
                                             _tl3568635727_
                                             '0)))
                                       (begin
                                         (let ((_g53225_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53224_)
                                                      (##vector-length
                                                       _g53224_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53225_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53225_)))
                                         (let ((_target3568935730_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53224_ 0)))
                                               (_tl3569135733_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53224_ 1))))
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
                                 (let ((__tmp53230
                                        (lambda (_g3577935782_ _g3578035785_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3577935782_
                                                  _g3578035785_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp53230 '() _L35760_)))
                                (let* ((_keys35796_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp53226
                                                (lambda (_g3578735790_
                                                         _g3578835793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3578735790_
                                                          _g3578835793_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53226 '() _L35760_))))
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
                                                        (if (let ((__tmp53228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35816_)))
                      (declare (not safe))
                      (hash-get _keytab35807_ __tmp53228))
                    _r35818_
                    (let () (declare (not safe)) (cons _in35816_ _r35818_)))
                (if (gx#import-set? _in35816_)
                    (let ((__tmp53227 (gx#import-set-imports _in35816_)))
                      (declare (not safe))
                      (foldl1 _fold-e35813_ _r35818_ __tmp53227))
                    (let ()
                      (declare (not safe))
                      (cons _in35816_ _r35818_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35813_)))
                                  (let ((__tmp53229
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35820_
                                                   '()
                                                   _imports35810_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp53229)))
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
              (lambda ()
                (let ()
                  (declare (not safe))
                  (make-symbol__1 _pre35832_ _name35830_))))
             (_K3583735861_
              (lambda (_mark35857_ _id35859_)
                (let ((__tmp53231
                       (let ()
                         (declare (not safe))
                         (make-symbol__1 _pre35832_ _id35859_))))
                  (declare (not safe))
                  (cons __tmp53231 _mark35857_)))))
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
                                     (let ((_g53232_
                                            (gx#syntax-split-splice
                                             _tl3589235941_
                                             '0)))
                                       (begin
                                         (let ((_g53233_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53232_)
                                                      (##vector-length
                                                       _g53232_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53233_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53233_)))
                                         (let ((_target3589535944_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53232_ 0)))
                                               (_tl3589735947_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53232_ 1))))
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
                                      (let ((__tmp53244
                                             (lambda (_g3601936022_
                                                      _g3602036025_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3601936022_
                                                       _g3602036025_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp53244 '() _L36000_)))
                                     (gx#identifier-list?
                                      (let ((__tmp53243
                                             (lambda (_g3602736030_
                                                      _g3602836033_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3602736030_
                                                       _g3602836033_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp53243 '() _L35998_))))
                                (let* ((_keytab36036_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_found36039_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_g53238_
                                        (for-each
                                         (lambda (_id36042_ _new-id36044_)
                                           (let ((__tmp53235
                                                  (gx#core-identifier-key
                                                   _id36042_))
                                                 (__tmp53234
                                                  (gx#core-identifier-key
                                                   _new-id36044_)))
                                             (declare (not safe))
                                             (hash-put!
                                              _keytab36036_
                                              __tmp53235
                                              __tmp53234)))
                                         (let ((__tmp53236
                                                (lambda (_g3604536048_
                                                         _g3604636051_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3604536048_
                                                          _g3604636051_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53236 '() _L36000_))
                                         (let ((__tmp53237
                                                (lambda (_g3605336056_
                                                         _g3605436059_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3605336056_
                                                          _g3605436059_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53237 '() _L35998_))))
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
                         (let ((__tmp53240
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                   _in36070_
                                   _rename36081_))))
                           (declare (not safe))
                           (cons __tmp53240 _r36072_)))
                       _$e36077_)
                      (let () (declare (not safe)) (cons _in36070_ _r36072_))))
                (if (gx#import-set? _in36070_)
                    (let ((__tmp53239 (gx#import-set-imports _in36070_)))
                      (declare (not safe))
                      (foldl1 _fold-e36067_ _r36072_ __tmp53239))
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
                                     (if (let ((__tmp53241
                                                (gx#core-identifier-key
                                                 _id36092_)))
                                           (declare (not safe))
                                           (hash-get _found36039_ __tmp53241))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx35881_
                                          _id36092_)))
                                   (let ((__tmp53242
                                          (lambda (_g3609436097_ _g3609536100_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3609436097_
                                                    _g3609536100_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp53242 '() _L36000_)))
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
                                    (let ((__tmp53246
                                           (let ((__tmp53247
                                                  (_rename-e36194_
                                                   (gx#module-import-name
                                                    _in36200_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                              _in36200_
                                              __tmp53247))))
                                      (declare (not safe))
                                      (cons __tmp53246 _r36202_))
                                    (if (gx#import-set? _in36200_)
                                        (let ((__tmp53245
                                               (gx#import-set-imports
                                                _in36200_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36197_
                                                  _r36202_
                                                  __tmp53245))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in36200_ _r36202_)))))))
                      _fold-e36197_)))
              (let ((__tmp53248
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36204_ '() _imports36188_))))
                (declare (not safe))
                (cons 'begin: __tmp53248)))
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
                   (let ((__tmp53249
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
                     (foldr1 __tmp53249 '() _list-of-lists36471_))))
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
                                         (let ((__tmp53250
                                                (lambda (_g3645836461_
                                                         _g3645936464_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3645836461_
                                                          _g3645936464_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53250
                                                   '()
                                                   _L36434_)))))))
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
                                       (let ((_g53251_
                                              (gx#syntax-split-splice
                                               _tl3622736268_
                                               '0)))
                                         (begin
                                           (let ((_g53252_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g53251_)
                                                        (##vector-length
                                                         _g53251_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g53252_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g53252_)))
                                           (let ((_target3623036271_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g53251_ 0)))
                                                 (_tl3623236274_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g53251_
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
                              (let ((__tmp53253
                                     (_flatten36216_
                                      (map (lambda (_g3632136323_)
                                             (_expand-path36218_
                                              _L36303_
                                              _g3632136323_))
                                           (let ((__tmp53254
                                                  (lambda (_g3632636329_
                                                           _g3632736332_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3632636329_
                                                            _g3632736332_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp53254
                                                     '()
                                                     _L36301_))))))
                                (declare (not safe))
                                (cons 'begin: __tmp53253)))
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
                                     (let ((_g53255_
                                            (gx#syntax-split-splice
                                             _tl3649036531_
                                             '0)))
                                       (begin
                                         (let ((_g53256_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53255_)
                                                      (##vector-length
                                                       _g53255_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53256_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53256_)))
                                         (let ((_target3649336534_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53255_ 0)))
                                               (_tl3649536537_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53255_ 1))))
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
                                 (let ((__tmp53261
                                        (lambda (_g3658336586_ _g3658436589_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3658336586_
                                                  _g3658436589_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp53261 '() _L36564_)))
                                (let* ((_keys36600_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp53257
                                                (lambda (_g3659136594_
                                                         _g3659236597_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3659136594_
                                                          _g3659236597_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53257 '() _L36564_))))
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
                                                        (if (let ((__tmp53259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-export-name _out36620_)))
                      (declare (not safe))
                      (hash-get _keytab36611_ __tmp53259))
                    _r36622_
                    (let () (declare (not safe)) (cons _out36620_ _r36622_)))
                (if (gx#export-set? _out36620_)
                    (let ((__tmp53258 (gx#export-set-exports _out36620_)))
                      (declare (not safe))
                      (foldl1 _fold-e36617_ _r36622_ __tmp53258))
                    _r36622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36617_)))
                                  (let ((__tmp53260
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e36624_
                                                   '()
                                                   _exports36614_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp53260)))
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
                                     (let ((_g53262_
                                            (gx#syntax-split-splice
                                             _tl3664936698_
                                             '0)))
                                       (begin
                                         (let ((_g53263_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53262_)
                                                      (##vector-length
                                                       _g53262_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53263_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53263_)))
                                         (let ((_target3665236701_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53262_ 0)))
                                               (_tl3665436704_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53262_ 1))))
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
                                      (let ((__tmp53274
                                             (lambda (_g3677636779_
                                                      _g3677736782_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3677636779_
                                                       _g3677736782_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp53274 '() _L36757_)))
                                     (gx#identifier-list?
                                      (let ((__tmp53273
                                             (lambda (_g3678436787_
                                                      _g3678536790_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3678436787_
                                                       _g3678536790_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp53273 '() _L36755_))))
                                (let* ((_keytab36793_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_found36796_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_g53268_
                                        (for-each
                                         (lambda (_id36799_ _new-id36801_)
                                           (let ((__tmp53265
                                                  (gx#core-identifier-key
                                                   _id36799_))
                                                 (__tmp53264
                                                  (gx#core-identifier-key
                                                   _new-id36801_)))
                                             (declare (not safe))
                                             (hash-put!
                                              _keytab36793_
                                              __tmp53265
                                              __tmp53264)))
                                         (let ((__tmp53266
                                                (lambda (_g3680236805_
                                                         _g3680336808_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3680236805_
                                                          _g3680336808_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53266 '() _L36757_))
                                         (let ((__tmp53267
                                                (lambda (_g3681036813_
                                                         _g3681136816_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3681036813_
                                                          _g3681136816_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53267 '() _L36755_))))
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
                         (let ((__tmp53270
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                   _out36827_
                                   _rename36838_))))
                           (declare (not safe))
                           (cons __tmp53270 _r36829_)))
                       _$e36834_)
                      (let ()
                        (declare (not safe))
                        (cons _out36827_ _r36829_))))
                (if (gx#export-set? _out36827_)
                    (let ((__tmp53269 (gx#export-set-exports _out36827_)))
                      (declare (not safe))
                      (foldl1 _fold-e36824_ _r36829_ __tmp53269))
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
                                     (if (let ((__tmp53271
                                                (gx#core-identifier-key
                                                 _id36849_)))
                                           (declare (not safe))
                                           (hash-get _found36796_ __tmp53271))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx36638_
                                          _id36849_)))
                                   (let ((__tmp53272
                                          (lambda (_g3685136854_ _g3685236857_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3685136854_
                                                    _g3685236857_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp53272 '() _L36757_)))
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
                                    (let ((__tmp53276
                                           (let ((__tmp53277
                                                  (_rename-e36951_
                                                   (gx#module-export-name
                                                    _out36957_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                              _out36957_
                                              __tmp53277))))
                                      (declare (not safe))
                                      (cons __tmp53276 _r36959_))
                                    (if (gx#export-set? _out36957_)
                                        (let ((__tmp53275
                                               (gx#export-set-exports
                                                _out36957_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36954_
                                                  _r36959_
                                                  __tmp53275))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out36957_ _r36959_)))))))
                      _fold-e36954_)))
              (let ((__tmp53278
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36961_ '() _exports36945_))))
                (declare (not safe))
                (cons 'begin: __tmp53278)))
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
                         (let ((__tmp53279
                                (let ((__tmp53291
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
                                      (__tmp53280
                                       (let ((__tmp53282
                                              (let ((__tmp53290
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
                                                    (__tmp53283
                                                     (let ((__tmp53285
                                                            (let ((__tmp53287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?37207_
                               (let ((__tmp53289
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
                                                  'unchecked-mutators)))))
                                     (__tmp53288
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
                                                  'unchecked-accessors))))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp53289 __tmp53288))
                               '()))
                          (__tmp53286
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
                                       'mutators))))))
                      (declare (not safe))
                      (foldr1 cons __tmp53287 __tmp53286)))
                   (__tmp53284
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
                                'accessors))))))
               (declare (not safe))
               (foldr1 cons __tmp53285 __tmp53284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp53290 __tmp53283)))
                                             (__tmp53281
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
                                                    '()))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp53282 __tmp53281))))
                                  (declare (not safe))
                                  (cons __tmp53291 __tmp53280))))
                           (declare (not safe))
                           (cons _id37205_ __tmp53279))
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
                    (let ((__tmp53292
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3718737189_)
                               (_identifiers36973_
                                _g3718737189_
                                (gx#stx-e _L37168_)))
                             (let ((__tmp53293
                                    (lambda (_g3719237195_ _g3719337198_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3719237195_ _g3719337198_)))))
                               (declare (not safe))
                               (foldr1 __tmp53293 '() _L37166_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp53292))))
                 (___kont4957549576_
                  (lambda (_L37065_)
                    (let ((__tmp53294
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3708137083_)
                               (_identifiers36973_ _g3708137083_ '#f))
                             (let ((__tmp53295
                                    (lambda (_g3708637089_ _g3708737092_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3708637089_ _g3708737092_)))))
                               (declare (not safe))
                               (foldr1 __tmp53295 '() _L37065_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp53294)))))
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
