(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx225855_)
      (let* ((_g225859225888_
              (lambda (_g225860225884_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g225860225884_))))
             (_g225858225989_
              (lambda (_g225860225892_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g225860225892_))
                    (let ((_e225865225895_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g225860225892_))))
                      (let ((_hd225864225899_
                             (let ()
                               (declare (not safe))
                               (##car _e225865225895_)))
                            (_tl225863225902_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225865225895_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl225863225902_))
                            (let ((_g241249_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl225863225902_
                                      '0))))
                              (begin
                                (let ((_g241250_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241249_)
                                             (##vector-length _g241249_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241250_ 2)))
                                      (error "Context expects 2 values"
                                             _g241250_)))
                                (let ((_target225866225905_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241249_ 0)))
                                      (_tl225868225908_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241249_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225868225908_))
                                      (letrec ((_loop225869225911_
                                                (lambda (_hd225867225915_
                                                         _type-e225873225918_
                                                         _id225874225920_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd225867225915_))
                                                      (let ((_e225870225923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd225867225915_))))
                (let ((_lp-hd225871225927_
                       (let () (declare (not safe)) (##car _e225870225923_)))
                      (_lp-tl225872225930_
                       (let () (declare (not safe)) (##cdr _e225870225923_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd225871225927_))
                      (let ((_e225879225933_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd225871225927_))))
                        (let ((_hd225878225937_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225879225933_)))
                              (_tl225877225940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225879225933_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225877225940_))
                              (let ((_e225882225943_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl225877225940_))))
                                (let ((_hd225881225947_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225882225943_)))
                                      (_tl225880225950_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225882225943_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225880225950_))
                                      (_loop225869225911_
                                       _lp-tl225872225930_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd225881225947_
                                               _type-e225873225918_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd225878225937_
                                               _id225874225920_)))
                                      (_g225859225888_ _g225860225892_))))
                              (_g225859225888_ _g225860225892_))))
                      (_g225859225888_ _g225860225892_))))
              (let ((_type-e225875225953_ (reverse _type-e225873225918_))
                    (_id225876225956_ (reverse _id225874225920_)))
                ((lambda (_L225959_ _L225961_)
                   (let ((__tmp241262
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241251
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L225959_
                               _L225961_))
                            (let ((__tmp241252
                                   (lambda (_g225977225981_
                                            _g225978225984_
                                            _g225979225986_)
                                     (let ((__tmp241253
                                            (let ((__tmp241261
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241254
                                                   (let ((__tmp241260
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp241255
                                                          (let ((__tmp241257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241259
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241258
                                (let ()
                                  (declare (not safe))
                                  (cons _g225978225984_ '()))))
                           (declare (not safe))
                           (cons __tmp241259 __tmp241258)))
                        (__tmp241256
                         (let ()
                           (declare (not safe))
                           (cons _g225977225981_ '()))))
                    (declare (not safe))
                    (cons __tmp241257 __tmp241256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241260
                                                           __tmp241255))))
                                              (declare (not safe))
                                              (cons __tmp241261 __tmp241254))))
                                       (declare (not safe))
                                       (cons __tmp241253 _g225979225986_)))))
                              (declare (not safe))
                              (foldr2 __tmp241252 '() _L225959_ _L225961_)))))
                     (declare (not safe))
                     (cons __tmp241262 __tmp241251)))
                 _type-e225875225953_
                 _id225876225956_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop225869225911_
                                         _target225866225905_
                                         '()
                                         '()))
                                      (_g225859225888_ _g225860225892_)))))
                            (_g225859225888_ _g225860225892_))))
                    (_g225859225888_ _g225860225892_)))))
        (_g225858225989_ _$stx225855_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx225994_)
      (let* ((_g225998226027_
              (lambda (_g225999226023_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g225999226023_))))
             (_g225997226127_
              (lambda (_g225999226031_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g225999226031_))
                    (let ((_e226004226034_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g225999226031_))))
                      (let ((_hd226003226038_
                             (let ()
                               (declare (not safe))
                               (##car _e226004226034_)))
                            (_tl226002226041_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226004226034_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226002226041_))
                            (let ((_g241263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226002226041_
                                      '0))))
                              (begin
                                (let ((_g241264_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241263_)
                                             (##vector-length _g241263_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241264_ 2)))
                                      (error "Context expects 2 values"
                                             _g241264_)))
                                (let ((_target226005226044_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241263_ 0)))
                                      (_tl226007226047_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241263_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226007226047_))
                                      (letrec ((_loop226008226050_
                                                (lambda (_hd226006226054_
                                                         _type-e226012226057_
                                                         _id226013226059_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226006226054_))
                                                      (let ((_e226009226062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226006226054_))))
                (let ((_lp-hd226010226066_
                       (let () (declare (not safe)) (##car _e226009226062_)))
                      (_lp-tl226011226069_
                       (let () (declare (not safe)) (##cdr _e226009226062_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226010226066_))
                      (let ((_e226018226072_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226010226066_))))
                        (let ((_hd226017226076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226018226072_)))
                              (_tl226016226079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226018226072_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226016226079_))
                              (let ((_e226021226082_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226016226079_))))
                                (let ((_hd226020226086_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226021226082_)))
                                      (_tl226019226089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226021226082_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226019226089_))
                                      (_loop226008226050_
                                       _lp-tl226011226069_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226020226086_
                                               _type-e226012226057_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226017226076_
                                               _id226013226059_)))
                                      (_g225998226027_ _g225999226031_))))
                              (_g225998226027_ _g225999226031_))))
                      (_g225998226027_ _g225999226031_))))
              (let ((_type-e226014226092_ (reverse _type-e226012226057_))
                    (_id226015226095_ (reverse _id226013226059_)))
                ((lambda (_L226098_ _L226100_)
                   (let ((__tmp241276
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241265
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226098_
                               _L226100_))
                            (let ((__tmp241266
                                   (lambda (_g226115226119_
                                            _g226116226122_
                                            _g226117226124_)
                                     (let ((__tmp241267
                                            (let ((__tmp241275
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241268
                                                   (let ((__tmp241274
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp241269
                                                          (let ((__tmp241271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241273
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241272
                                (let ()
                                  (declare (not safe))
                                  (cons _g226116226122_ '()))))
                           (declare (not safe))
                           (cons __tmp241273 __tmp241272)))
                        (__tmp241270
                         (let ()
                           (declare (not safe))
                           (cons _g226115226119_ '()))))
                    (declare (not safe))
                    (cons __tmp241271 __tmp241270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241274
                                                           __tmp241269))))
                                              (declare (not safe))
                                              (cons __tmp241275 __tmp241268))))
                                       (declare (not safe))
                                       (cons __tmp241267 _g226117226124_)))))
                              (declare (not safe))
                              (foldr2 __tmp241266 '() _L226098_ _L226100_)))))
                     (declare (not safe))
                     (cons __tmp241276 __tmp241265)))
                 _type-e226014226092_
                 _id226015226095_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226008226050_
                                         _target226005226044_
                                         '()
                                         '()))
                                      (_g225998226027_ _g225999226031_)))))
                            (_g225998226027_ _g225999226031_))))
                    (_g225998226027_ _g225999226031_)))))
        (_g225997226127_ _$stx225994_)))))
