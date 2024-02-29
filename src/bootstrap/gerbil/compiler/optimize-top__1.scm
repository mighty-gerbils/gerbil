(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx118251_)
      (let* ((_g118255118284_
              (lambda (_g118256118280_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118256118280_))))
             (_g118254118385_
              (lambda (_g118256118288_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118256118288_))
                    (let ((_e118261118291_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118256118288_))))
                      (let ((_hd118260118295_
                             (let ()
                               (declare (not safe))
                               (##car _e118261118291_)))
                            (_tl118259118298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118261118291_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118259118298_))
                            (let ((_g129194_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118259118298_
                                      '0))))
                              (begin
                                (let ((_g129195_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129194_)
                                             (##vector-length _g129194_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129195_ 2)))
                                      (error "Context expects 2 values"
                                             _g129195_)))
                                (let ((_target118262118301_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129194_ 0)))
                                      (_tl118264118304_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129194_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118264118304_))
                                      (letrec ((_loop118265118307_
                                                (lambda (_hd118263118311_
                                                         _type-e118269118314_
                                                         _id118270118316_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118263118311_))
                                                      (let ((_e118266118319_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118263118311_))))
                (let ((_lp-hd118267118323_
                       (let () (declare (not safe)) (##car _e118266118319_)))
                      (_lp-tl118268118326_
                       (let () (declare (not safe)) (##cdr _e118266118319_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118267118323_))
                      (let ((_e118275118329_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118267118323_))))
                        (let ((_hd118274118333_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118275118329_)))
                              (_tl118273118336_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118275118329_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118273118336_))
                              (let ((_e118278118339_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118273118336_))))
                                (let ((_hd118277118343_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118278118339_)))
                                      (_tl118276118346_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118278118339_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118276118346_))
                                      (_loop118265118307_
                                       _lp-tl118268118326_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118277118343_
                                               _type-e118269118314_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118274118333_
                                               _id118270118316_)))
                                      (_g118255118284_ _g118256118288_))))
                              (_g118255118284_ _g118256118288_))))
                      (_g118255118284_ _g118256118288_))))
              (let ((_type-e118271118349_ (reverse _type-e118269118314_))
                    (_id118272118352_ (reverse _id118270118316_)))
                ((lambda (_L118355_ _L118357_)
                   (let ((__tmp129207
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129196
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118355_
                               _L118357_))
                            (let ((__tmp129197
                                   (lambda (_g118373118377_
                                            _g118374118380_
                                            _g118375118382_)
                                     (let ((__tmp129198
                                            (let ((__tmp129206
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129199
                                                   (let ((__tmp129205
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp129200
                                                          (let ((__tmp129202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129204
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129203
                                (let ()
                                  (declare (not safe))
                                  (cons _g118374118380_ '()))))
                           (declare (not safe))
                           (cons __tmp129204 __tmp129203)))
                        (__tmp129201
                         (let ()
                           (declare (not safe))
                           (cons _g118373118377_ '()))))
                    (declare (not safe))
                    (cons __tmp129202 __tmp129201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129205
                                                           __tmp129200))))
                                              (declare (not safe))
                                              (cons __tmp129206 __tmp129199))))
                                       (declare (not safe))
                                       (cons __tmp129198 _g118375118382_)))))
                              (declare (not safe))
                              (foldr2 __tmp129197 '() _L118355_ _L118357_)))))
                     (declare (not safe))
                     (cons __tmp129207 __tmp129196)))
                 _type-e118271118349_
                 _id118272118352_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118265118307_
                                         _target118262118301_
                                         '()
                                         '()))
                                      (_g118255118284_ _g118256118288_)))))
                            (_g118255118284_ _g118256118288_))))
                    (_g118255118284_ _g118256118288_)))))
        (_g118254118385_ _$stx118251_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx118390_)
      (let* ((_g118394118423_
              (lambda (_g118395118419_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118395118419_))))
             (_g118393118523_
              (lambda (_g118395118427_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118395118427_))
                    (let ((_e118400118430_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118395118427_))))
                      (let ((_hd118399118434_
                             (let ()
                               (declare (not safe))
                               (##car _e118400118430_)))
                            (_tl118398118437_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118400118430_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118398118437_))
                            (let ((_g129208_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118398118437_
                                      '0))))
                              (begin
                                (let ((_g129209_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129208_)
                                             (##vector-length _g129208_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129209_ 2)))
                                      (error "Context expects 2 values"
                                             _g129209_)))
                                (let ((_target118401118440_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129208_ 0)))
                                      (_tl118403118443_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129208_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118403118443_))
                                      (letrec ((_loop118404118446_
                                                (lambda (_hd118402118450_
                                                         _type-e118408118453_
                                                         _id118409118455_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118402118450_))
                                                      (let ((_e118405118458_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118402118450_))))
                (let ((_lp-hd118406118462_
                       (let () (declare (not safe)) (##car _e118405118458_)))
                      (_lp-tl118407118465_
                       (let () (declare (not safe)) (##cdr _e118405118458_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118406118462_))
                      (let ((_e118414118468_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118406118462_))))
                        (let ((_hd118413118472_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118414118468_)))
                              (_tl118412118475_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118414118468_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118412118475_))
                              (let ((_e118417118478_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118412118475_))))
                                (let ((_hd118416118482_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118417118478_)))
                                      (_tl118415118485_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118417118478_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118415118485_))
                                      (_loop118404118446_
                                       _lp-tl118407118465_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118416118482_
                                               _type-e118408118453_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118413118472_
                                               _id118409118455_)))
                                      (_g118394118423_ _g118395118427_))))
                              (_g118394118423_ _g118395118427_))))
                      (_g118394118423_ _g118395118427_))))
              (let ((_type-e118410118488_ (reverse _type-e118408118453_))
                    (_id118411118491_ (reverse _id118409118455_)))
                ((lambda (_L118494_ _L118496_)
                   (let ((__tmp129221
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129210
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118494_
                               _L118496_))
                            (let ((__tmp129211
                                   (lambda (_g118511118515_
                                            _g118512118518_
                                            _g118513118520_)
                                     (let ((__tmp129212
                                            (let ((__tmp129220
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129213
                                                   (let ((__tmp129219
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp129214
                                                          (let ((__tmp129216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129218
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129217
                                (let ()
                                  (declare (not safe))
                                  (cons _g118512118518_ '()))))
                           (declare (not safe))
                           (cons __tmp129218 __tmp129217)))
                        (__tmp129215
                         (let ()
                           (declare (not safe))
                           (cons _g118511118515_ '()))))
                    (declare (not safe))
                    (cons __tmp129216 __tmp129215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129219
                                                           __tmp129214))))
                                              (declare (not safe))
                                              (cons __tmp129220 __tmp129213))))
                                       (declare (not safe))
                                       (cons __tmp129212 _g118513118520_)))))
                              (declare (not safe))
                              (foldr2 __tmp129211 '() _L118494_ _L118496_)))))
                     (declare (not safe))
                     (cons __tmp129221 __tmp129210)))
                 _type-e118410118488_
                 _id118411118491_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118404118446_
                                         _target118401118440_
                                         '()
                                         '()))
                                      (_g118394118423_ _g118395118427_)))))
                            (_g118394118423_ _g118395118427_))))
                    (_g118394118423_ _g118395118427_)))))
        (_g118393118523_ _$stx118390_)))))
