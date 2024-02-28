(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx118244_)
      (let* ((_g118248118277_
              (lambda (_g118249118273_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118249118273_))))
             (_g118247118378_
              (lambda (_g118249118281_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118249118281_))
                    (let ((_e118254118284_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118249118281_))))
                      (let ((_hd118253118288_
                             (let ()
                               (declare (not safe))
                               (##car _e118254118284_)))
                            (_tl118252118291_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118254118284_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118252118291_))
                            (let ((_g129187_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118252118291_
                                      '0))))
                              (begin
                                (let ((_g129188_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129187_)
                                             (##vector-length _g129187_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129188_ 2)))
                                      (error "Context expects 2 values"
                                             _g129188_)))
                                (let ((_target118255118294_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129187_ 0)))
                                      (_tl118257118297_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129187_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118257118297_))
                                      (letrec ((_loop118258118300_
                                                (lambda (_hd118256118304_
                                                         _type-e118262118307_
                                                         _id118263118309_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118256118304_))
                                                      (let ((_e118259118312_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118256118304_))))
                (let ((_lp-hd118260118316_
                       (let () (declare (not safe)) (##car _e118259118312_)))
                      (_lp-tl118261118319_
                       (let () (declare (not safe)) (##cdr _e118259118312_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118260118316_))
                      (let ((_e118268118322_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118260118316_))))
                        (let ((_hd118267118326_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118268118322_)))
                              (_tl118266118329_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118268118322_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118266118329_))
                              (let ((_e118271118332_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118266118329_))))
                                (let ((_hd118270118336_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118271118332_)))
                                      (_tl118269118339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118271118332_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118269118339_))
                                      (_loop118258118300_
                                       _lp-tl118261118319_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118270118336_
                                               _type-e118262118307_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118267118326_
                                               _id118263118309_)))
                                      (_g118248118277_ _g118249118281_))))
                              (_g118248118277_ _g118249118281_))))
                      (_g118248118277_ _g118249118281_))))
              (let ((_type-e118264118342_ (reverse _type-e118262118307_))
                    (_id118265118345_ (reverse _id118263118309_)))
                ((lambda (_L118348_ _L118350_)
                   (let ((__tmp129200
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129189
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118348_
                               _L118350_))
                            (let ((__tmp129190
                                   (lambda (_g118366118370_
                                            _g118367118373_
                                            _g118368118375_)
                                     (let ((__tmp129191
                                            (let ((__tmp129199
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129192
                                                   (let ((__tmp129198
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp129193
                                                          (let ((__tmp129195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129197
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129196
                                (let ()
                                  (declare (not safe))
                                  (cons _g118367118373_ '()))))
                           (declare (not safe))
                           (cons __tmp129197 __tmp129196)))
                        (__tmp129194
                         (let ()
                           (declare (not safe))
                           (cons _g118366118370_ '()))))
                    (declare (not safe))
                    (cons __tmp129195 __tmp129194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129198
                                                           __tmp129193))))
                                              (declare (not safe))
                                              (cons __tmp129199 __tmp129192))))
                                       (declare (not safe))
                                       (cons __tmp129191 _g118368118375_)))))
                              (declare (not safe))
                              (foldr2 __tmp129190 '() _L118348_ _L118350_)))))
                     (declare (not safe))
                     (cons __tmp129200 __tmp129189)))
                 _type-e118264118342_
                 _id118265118345_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118258118300_
                                         _target118255118294_
                                         '()
                                         '()))
                                      (_g118248118277_ _g118249118281_)))))
                            (_g118248118277_ _g118249118281_))))
                    (_g118248118277_ _g118249118281_)))))
        (_g118247118378_ _$stx118244_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx118383_)
      (let* ((_g118387118416_
              (lambda (_g118388118412_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118388118412_))))
             (_g118386118516_
              (lambda (_g118388118420_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118388118420_))
                    (let ((_e118393118423_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118388118420_))))
                      (let ((_hd118392118427_
                             (let ()
                               (declare (not safe))
                               (##car _e118393118423_)))
                            (_tl118391118430_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118393118423_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118391118430_))
                            (let ((_g129201_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118391118430_
                                      '0))))
                              (begin
                                (let ((_g129202_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129201_)
                                             (##vector-length _g129201_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129202_ 2)))
                                      (error "Context expects 2 values"
                                             _g129202_)))
                                (let ((_target118394118433_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129201_ 0)))
                                      (_tl118396118436_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129201_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118396118436_))
                                      (letrec ((_loop118397118439_
                                                (lambda (_hd118395118443_
                                                         _type-e118401118446_
                                                         _id118402118448_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118395118443_))
                                                      (let ((_e118398118451_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118395118443_))))
                (let ((_lp-hd118399118455_
                       (let () (declare (not safe)) (##car _e118398118451_)))
                      (_lp-tl118400118458_
                       (let () (declare (not safe)) (##cdr _e118398118451_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118399118455_))
                      (let ((_e118407118461_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118399118455_))))
                        (let ((_hd118406118465_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118407118461_)))
                              (_tl118405118468_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118407118461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118405118468_))
                              (let ((_e118410118471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118405118468_))))
                                (let ((_hd118409118475_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118410118471_)))
                                      (_tl118408118478_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118410118471_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118408118478_))
                                      (_loop118397118439_
                                       _lp-tl118400118458_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118409118475_
                                               _type-e118401118446_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118406118465_
                                               _id118402118448_)))
                                      (_g118387118416_ _g118388118420_))))
                              (_g118387118416_ _g118388118420_))))
                      (_g118387118416_ _g118388118420_))))
              (let ((_type-e118403118481_ (reverse _type-e118401118446_))
                    (_id118404118484_ (reverse _id118402118448_)))
                ((lambda (_L118487_ _L118489_)
                   (let ((__tmp129214
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129203
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118487_
                               _L118489_))
                            (let ((__tmp129204
                                   (lambda (_g118504118508_
                                            _g118505118511_
                                            _g118506118513_)
                                     (let ((__tmp129205
                                            (let ((__tmp129213
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129206
                                                   (let ((__tmp129212
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp129207
                                                          (let ((__tmp129209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129211
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129210
                                (let ()
                                  (declare (not safe))
                                  (cons _g118505118511_ '()))))
                           (declare (not safe))
                           (cons __tmp129211 __tmp129210)))
                        (__tmp129208
                         (let ()
                           (declare (not safe))
                           (cons _g118504118508_ '()))))
                    (declare (not safe))
                    (cons __tmp129209 __tmp129208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129212
                                                           __tmp129207))))
                                              (declare (not safe))
                                              (cons __tmp129213 __tmp129206))))
                                       (declare (not safe))
                                       (cons __tmp129205 _g118506118513_)))))
                              (declare (not safe))
                              (foldr2 __tmp129204 '() _L118487_ _L118489_)))))
                     (declare (not safe))
                     (cons __tmp129214 __tmp129203)))
                 _type-e118403118481_
                 _id118404118484_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118397118439_
                                         _target118394118433_
                                         '()
                                         '()))
                                      (_g118387118416_ _g118388118420_)))))
                            (_g118387118416_ _g118388118420_))))
                    (_g118387118416_ _g118388118420_)))))
        (_g118386118516_ _$stx118383_)))))
