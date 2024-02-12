(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx228756_)
      (let* ((_g228760228789_
              (lambda (_g228761228785_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228761228785_))))
             (_g228759228890_
              (lambda (_g228761228793_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228761228793_))
                    (let ((_e228766228796_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228761228793_))))
                      (let ((_hd228765228800_
                             (let ()
                               (declare (not safe))
                               (##car _e228766228796_)))
                            (_tl228764228803_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228766228796_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228764228803_))
                            (let ((_g244250_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228764228803_
                                      '0))))
                              (begin
                                (let ((_g244251_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244250_)
                                             (##vector-length _g244250_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244251_ 2)))
                                      (error "Context expects 2 values"
                                             _g244251_)))
                                (let ((_target228767228806_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244250_ 0)))
                                      (_tl228769228809_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244250_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228769228809_))
                                      (letrec ((_loop228770228812_
                                                (lambda (_hd228768228816_
                                                         _type-e228774228819_
                                                         _id228775228821_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228768228816_))
                                                      (let ((_e228771228824_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228768228816_))))
                (let ((_lp-hd228772228828_
                       (let () (declare (not safe)) (##car _e228771228824_)))
                      (_lp-tl228773228831_
                       (let () (declare (not safe)) (##cdr _e228771228824_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228772228828_))
                      (let ((_e228780228834_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228772228828_))))
                        (let ((_hd228779228838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228780228834_)))
                              (_tl228778228841_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228780228834_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228778228841_))
                              (let ((_e228783228844_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228778228841_))))
                                (let ((_hd228782228848_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228783228844_)))
                                      (_tl228781228851_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228783228844_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228781228851_))
                                      (_loop228770228812_
                                       _lp-tl228773228831_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228782228848_
                                               _type-e228774228819_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228779228838_
                                               _id228775228821_)))
                                      (_g228760228789_ _g228761228793_))))
                              (_g228760228789_ _g228761228793_))))
                      (_g228760228789_ _g228761228793_))))
              (let ((_type-e228776228854_ (reverse _type-e228774228819_))
                    (_id228777228857_ (reverse _id228775228821_)))
                ((lambda (_L228860_ _L228862_)
                   (let ((__tmp244263
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244252
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228860_
                               _L228862_))
                            (let ((__tmp244253
                                   (lambda (_g228878228882_
                                            _g228879228885_
                                            _g228880228887_)
                                     (let ((__tmp244254
                                            (let ((__tmp244262
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244255
                                                   (let ((__tmp244261
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp244256
                                                          (let ((__tmp244258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244260
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244259
                                (let ()
                                  (declare (not safe))
                                  (cons _g228879228885_ '()))))
                           (declare (not safe))
                           (cons __tmp244260 __tmp244259)))
                        (__tmp244257
                         (let ()
                           (declare (not safe))
                           (cons _g228878228882_ '()))))
                    (declare (not safe))
                    (cons __tmp244258 __tmp244257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244261
                                                           __tmp244256))))
                                              (declare (not safe))
                                              (cons __tmp244262 __tmp244255))))
                                       (declare (not safe))
                                       (cons __tmp244254 _g228880228887_)))))
                              (declare (not safe))
                              (foldr2 __tmp244253 '() _L228860_ _L228862_)))))
                     (declare (not safe))
                     (cons __tmp244263 __tmp244252)))
                 _type-e228776228854_
                 _id228777228857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228770228812_
                                         _target228767228806_
                                         '()
                                         '()))
                                      (_g228760228789_ _g228761228793_)))))
                            (_g228760228789_ _g228761228793_))))
                    (_g228760228789_ _g228761228793_)))))
        (_g228759228890_ _$stx228756_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx228895_)
      (let* ((_g228899228928_
              (lambda (_g228900228924_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228900228924_))))
             (_g228898229028_
              (lambda (_g228900228932_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228900228932_))
                    (let ((_e228905228935_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228900228932_))))
                      (let ((_hd228904228939_
                             (let ()
                               (declare (not safe))
                               (##car _e228905228935_)))
                            (_tl228903228942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228905228935_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228903228942_))
                            (let ((_g244264_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228903228942_
                                      '0))))
                              (begin
                                (let ((_g244265_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244264_)
                                             (##vector-length _g244264_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244265_ 2)))
                                      (error "Context expects 2 values"
                                             _g244265_)))
                                (let ((_target228906228945_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244264_ 0)))
                                      (_tl228908228948_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244264_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228908228948_))
                                      (letrec ((_loop228909228951_
                                                (lambda (_hd228907228955_
                                                         _type-e228913228958_
                                                         _id228914228960_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228907228955_))
                                                      (let ((_e228910228963_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228907228955_))))
                (let ((_lp-hd228911228967_
                       (let () (declare (not safe)) (##car _e228910228963_)))
                      (_lp-tl228912228970_
                       (let () (declare (not safe)) (##cdr _e228910228963_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228911228967_))
                      (let ((_e228919228973_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228911228967_))))
                        (let ((_hd228918228977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228919228973_)))
                              (_tl228917228980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228919228973_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228917228980_))
                              (let ((_e228922228983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228917228980_))))
                                (let ((_hd228921228987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228922228983_)))
                                      (_tl228920228990_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228922228983_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228920228990_))
                                      (_loop228909228951_
                                       _lp-tl228912228970_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228921228987_
                                               _type-e228913228958_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228918228977_
                                               _id228914228960_)))
                                      (_g228899228928_ _g228900228932_))))
                              (_g228899228928_ _g228900228932_))))
                      (_g228899228928_ _g228900228932_))))
              (let ((_type-e228915228993_ (reverse _type-e228913228958_))
                    (_id228916228996_ (reverse _id228914228960_)))
                ((lambda (_L228999_ _L229001_)
                   (let ((__tmp244277
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244266
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228999_
                               _L229001_))
                            (let ((__tmp244267
                                   (lambda (_g229016229020_
                                            _g229017229023_
                                            _g229018229025_)
                                     (let ((__tmp244268
                                            (let ((__tmp244276
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244269
                                                   (let ((__tmp244275
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp244270
                                                          (let ((__tmp244272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244274
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244273
                                (let ()
                                  (declare (not safe))
                                  (cons _g229017229023_ '()))))
                           (declare (not safe))
                           (cons __tmp244274 __tmp244273)))
                        (__tmp244271
                         (let ()
                           (declare (not safe))
                           (cons _g229016229020_ '()))))
                    (declare (not safe))
                    (cons __tmp244272 __tmp244271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244275
                                                           __tmp244270))))
                                              (declare (not safe))
                                              (cons __tmp244276 __tmp244269))))
                                       (declare (not safe))
                                       (cons __tmp244268 _g229018229025_)))))
                              (declare (not safe))
                              (foldr2 __tmp244267 '() _L228999_ _L229001_)))))
                     (declare (not safe))
                     (cons __tmp244277 __tmp244266)))
                 _type-e228915228993_
                 _id228916228996_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228909228951_
                                         _target228906228945_
                                         '()
                                         '()))
                                      (_g228899228928_ _g228900228932_)))))
                            (_g228899228928_ _g228900228932_))))
                    (_g228899228928_ _g228900228932_)))))
        (_g228898229028_ _$stx228895_)))))
