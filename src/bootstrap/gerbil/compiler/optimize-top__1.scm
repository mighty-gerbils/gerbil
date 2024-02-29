(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx118264_)
      (let* ((_g118268118297_
              (lambda (_g118269118293_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118269118293_))))
             (_g118267118398_
              (lambda (_g118269118301_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118269118301_))
                    (let ((_e118274118304_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118269118301_))))
                      (let ((_hd118273118308_
                             (let ()
                               (declare (not safe))
                               (##car _e118274118304_)))
                            (_tl118272118311_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118274118304_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118272118311_))
                            (let ((_g129207_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118272118311_
                                      '0))))
                              (begin
                                (let ((_g129208_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129207_)
                                             (##vector-length _g129207_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129208_ 2)))
                                      (error "Context expects 2 values"
                                             _g129208_)))
                                (let ((_target118275118314_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129207_ 0)))
                                      (_tl118277118317_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129207_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118277118317_))
                                      (letrec ((_loop118278118320_
                                                (lambda (_hd118276118324_
                                                         _type-e118282118327_
                                                         _id118283118329_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118276118324_))
                                                      (let ((_e118279118332_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118276118324_))))
                (let ((_lp-hd118280118336_
                       (let () (declare (not safe)) (##car _e118279118332_)))
                      (_lp-tl118281118339_
                       (let () (declare (not safe)) (##cdr _e118279118332_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118280118336_))
                      (let ((_e118288118342_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118280118336_))))
                        (let ((_hd118287118346_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118288118342_)))
                              (_tl118286118349_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118288118342_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118286118349_))
                              (let ((_e118291118352_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118286118349_))))
                                (let ((_hd118290118356_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118291118352_)))
                                      (_tl118289118359_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118291118352_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118289118359_))
                                      (_loop118278118320_
                                       _lp-tl118281118339_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118290118356_
                                               _type-e118282118327_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118287118346_
                                               _id118283118329_)))
                                      (_g118268118297_ _g118269118301_))))
                              (_g118268118297_ _g118269118301_))))
                      (_g118268118297_ _g118269118301_))))
              (let ((_type-e118284118362_ (reverse _type-e118282118327_))
                    (_id118285118365_ (reverse _id118283118329_)))
                ((lambda (_L118368_ _L118370_)
                   (let ((__tmp129220
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129209
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118368_
                               _L118370_))
                            (let ((__tmp129210
                                   (lambda (_g118386118390_
                                            _g118387118393_
                                            _g118388118395_)
                                     (let ((__tmp129211
                                            (let ((__tmp129219
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129212
                                                   (let ((__tmp129218
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp129213
                                                          (let ((__tmp129215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129217
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129216
                                (let ()
                                  (declare (not safe))
                                  (cons _g118387118393_ '()))))
                           (declare (not safe))
                           (cons __tmp129217 __tmp129216)))
                        (__tmp129214
                         (let ()
                           (declare (not safe))
                           (cons _g118386118390_ '()))))
                    (declare (not safe))
                    (cons __tmp129215 __tmp129214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129218
                                                           __tmp129213))))
                                              (declare (not safe))
                                              (cons __tmp129219 __tmp129212))))
                                       (declare (not safe))
                                       (cons __tmp129211 _g118388118395_)))))
                              (declare (not safe))
                              (foldr2 __tmp129210 '() _L118368_ _L118370_)))))
                     (declare (not safe))
                     (cons __tmp129220 __tmp129209)))
                 _type-e118284118362_
                 _id118285118365_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118278118320_
                                         _target118275118314_
                                         '()
                                         '()))
                                      (_g118268118297_ _g118269118301_)))))
                            (_g118268118297_ _g118269118301_))))
                    (_g118268118297_ _g118269118301_)))))
        (_g118267118398_ _$stx118264_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx118403_)
      (let* ((_g118407118436_
              (lambda (_g118408118432_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118408118432_))))
             (_g118406118536_
              (lambda (_g118408118440_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118408118440_))
                    (let ((_e118413118443_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118408118440_))))
                      (let ((_hd118412118447_
                             (let ()
                               (declare (not safe))
                               (##car _e118413118443_)))
                            (_tl118411118450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118413118443_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118411118450_))
                            (let ((_g129221_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118411118450_
                                      '0))))
                              (begin
                                (let ((_g129222_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129221_)
                                             (##vector-length _g129221_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129222_ 2)))
                                      (error "Context expects 2 values"
                                             _g129222_)))
                                (let ((_target118414118453_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129221_ 0)))
                                      (_tl118416118456_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129221_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118416118456_))
                                      (letrec ((_loop118417118459_
                                                (lambda (_hd118415118463_
                                                         _type-e118421118466_
                                                         _id118422118468_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118415118463_))
                                                      (let ((_e118418118471_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118415118463_))))
                (let ((_lp-hd118419118475_
                       (let () (declare (not safe)) (##car _e118418118471_)))
                      (_lp-tl118420118478_
                       (let () (declare (not safe)) (##cdr _e118418118471_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118419118475_))
                      (let ((_e118427118481_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118419118475_))))
                        (let ((_hd118426118485_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118427118481_)))
                              (_tl118425118488_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118427118481_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118425118488_))
                              (let ((_e118430118491_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118425118488_))))
                                (let ((_hd118429118495_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118430118491_)))
                                      (_tl118428118498_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118430118491_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118428118498_))
                                      (_loop118417118459_
                                       _lp-tl118420118478_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118429118495_
                                               _type-e118421118466_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118426118485_
                                               _id118422118468_)))
                                      (_g118407118436_ _g118408118440_))))
                              (_g118407118436_ _g118408118440_))))
                      (_g118407118436_ _g118408118440_))))
              (let ((_type-e118423118501_ (reverse _type-e118421118466_))
                    (_id118424118504_ (reverse _id118422118468_)))
                ((lambda (_L118507_ _L118509_)
                   (let ((__tmp129234
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129223
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118507_
                               _L118509_))
                            (let ((__tmp129224
                                   (lambda (_g118524118528_
                                            _g118525118531_
                                            _g118526118533_)
                                     (let ((__tmp129225
                                            (let ((__tmp129233
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129226
                                                   (let ((__tmp129232
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp129227
                                                          (let ((__tmp129229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129231
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129230
                                (let ()
                                  (declare (not safe))
                                  (cons _g118525118531_ '()))))
                           (declare (not safe))
                           (cons __tmp129231 __tmp129230)))
                        (__tmp129228
                         (let ()
                           (declare (not safe))
                           (cons _g118524118528_ '()))))
                    (declare (not safe))
                    (cons __tmp129229 __tmp129228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129232
                                                           __tmp129227))))
                                              (declare (not safe))
                                              (cons __tmp129233 __tmp129226))))
                                       (declare (not safe))
                                       (cons __tmp129225 _g118526118533_)))))
                              (declare (not safe))
                              (foldr2 __tmp129224 '() _L118507_ _L118509_)))))
                     (declare (not safe))
                     (cons __tmp129234 __tmp129223)))
                 _type-e118423118501_
                 _id118424118504_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118417118459_
                                         _target118414118453_
                                         '()
                                         '()))
                                      (_g118407118436_ _g118408118440_)))))
                            (_g118407118436_ _g118408118440_))))
                    (_g118407118436_ _g118408118440_)))))
        (_g118406118536_ _$stx118403_)))))
