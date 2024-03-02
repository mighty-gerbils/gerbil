(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx118256_)
      (let* ((_g118260118289_
              (lambda (_g118261118285_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118261118285_))))
             (_g118259118390_
              (lambda (_g118261118293_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118261118293_))
                    (let ((_e118266118296_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118261118293_))))
                      (let ((_hd118265118300_
                             (let ()
                               (declare (not safe))
                               (##car _e118266118296_)))
                            (_tl118264118303_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118266118296_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118264118303_))
                            (let ((_g129199_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118264118303_
                                      '0))))
                              (begin
                                (let ((_g129200_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129199_)
                                             (##vector-length _g129199_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129200_ 2)))
                                      (error "Context expects 2 values"
                                             _g129200_)))
                                (let ((_target118267118306_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129199_ 0)))
                                      (_tl118269118309_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129199_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118269118309_))
                                      (letrec ((_loop118270118312_
                                                (lambda (_hd118268118316_
                                                         _type-e118274118319_
                                                         _id118275118321_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118268118316_))
                                                      (let ((_e118271118324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118268118316_))))
                (let ((_lp-hd118272118328_
                       (let () (declare (not safe)) (##car _e118271118324_)))
                      (_lp-tl118273118331_
                       (let () (declare (not safe)) (##cdr _e118271118324_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118272118328_))
                      (let ((_e118280118334_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118272118328_))))
                        (let ((_hd118279118338_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118280118334_)))
                              (_tl118278118341_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118280118334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118278118341_))
                              (let ((_e118283118344_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118278118341_))))
                                (let ((_hd118282118348_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118283118344_)))
                                      (_tl118281118351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118283118344_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118281118351_))
                                      (_loop118270118312_
                                       _lp-tl118273118331_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118282118348_
                                               _type-e118274118319_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118279118338_
                                               _id118275118321_)))
                                      (_g118260118289_ _g118261118293_))))
                              (_g118260118289_ _g118261118293_))))
                      (_g118260118289_ _g118261118293_))))
              (let ((_type-e118276118354_ (reverse _type-e118274118319_))
                    (_id118277118357_ (reverse _id118275118321_)))
                ((lambda (_L118360_ _L118362_)
                   (let ((__tmp129212
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129201
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118360_
                               _L118362_))
                            (let ((__tmp129202
                                   (lambda (_g118378118382_
                                            _g118379118385_
                                            _g118380118387_)
                                     (let ((__tmp129203
                                            (let ((__tmp129211
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129204
                                                   (let ((__tmp129210
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp129205
                                                          (let ((__tmp129207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129209
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129208
                                (let ()
                                  (declare (not safe))
                                  (cons _g118379118385_ '()))))
                           (declare (not safe))
                           (cons __tmp129209 __tmp129208)))
                        (__tmp129206
                         (let ()
                           (declare (not safe))
                           (cons _g118378118382_ '()))))
                    (declare (not safe))
                    (cons __tmp129207 __tmp129206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129210
                                                           __tmp129205))))
                                              (declare (not safe))
                                              (cons __tmp129211 __tmp129204))))
                                       (declare (not safe))
                                       (cons __tmp129203 _g118380118387_)))))
                              (declare (not safe))
                              (foldr2 __tmp129202 '() _L118360_ _L118362_)))))
                     (declare (not safe))
                     (cons __tmp129212 __tmp129201)))
                 _type-e118276118354_
                 _id118277118357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118270118312_
                                         _target118267118306_
                                         '()
                                         '()))
                                      (_g118260118289_ _g118261118293_)))))
                            (_g118260118289_ _g118261118293_))))
                    (_g118260118289_ _g118261118293_)))))
        (_g118259118390_ _$stx118256_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx118395_)
      (let* ((_g118399118428_
              (lambda (_g118400118424_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118400118424_))))
             (_g118398118528_
              (lambda (_g118400118432_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118400118432_))
                    (let ((_e118405118435_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118400118432_))))
                      (let ((_hd118404118439_
                             (let ()
                               (declare (not safe))
                               (##car _e118405118435_)))
                            (_tl118403118442_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118405118435_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118403118442_))
                            (let ((_g129213_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118403118442_
                                      '0))))
                              (begin
                                (let ((_g129214_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129213_)
                                             (##vector-length _g129213_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129214_ 2)))
                                      (error "Context expects 2 values"
                                             _g129214_)))
                                (let ((_target118406118445_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129213_ 0)))
                                      (_tl118408118448_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129213_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118408118448_))
                                      (letrec ((_loop118409118451_
                                                (lambda (_hd118407118455_
                                                         _type-e118413118458_
                                                         _id118414118460_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118407118455_))
                                                      (let ((_e118410118463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118407118455_))))
                (let ((_lp-hd118411118467_
                       (let () (declare (not safe)) (##car _e118410118463_)))
                      (_lp-tl118412118470_
                       (let () (declare (not safe)) (##cdr _e118410118463_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118411118467_))
                      (let ((_e118419118473_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118411118467_))))
                        (let ((_hd118418118477_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118419118473_)))
                              (_tl118417118480_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118419118473_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118417118480_))
                              (let ((_e118422118483_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118417118480_))))
                                (let ((_hd118421118487_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118422118483_)))
                                      (_tl118420118490_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118422118483_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118420118490_))
                                      (_loop118409118451_
                                       _lp-tl118412118470_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118421118487_
                                               _type-e118413118458_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118418118477_
                                               _id118414118460_)))
                                      (_g118399118428_ _g118400118432_))))
                              (_g118399118428_ _g118400118432_))))
                      (_g118399118428_ _g118400118432_))))
              (let ((_type-e118415118493_ (reverse _type-e118413118458_))
                    (_id118416118496_ (reverse _id118414118460_)))
                ((lambda (_L118499_ _L118501_)
                   (let ((__tmp129226
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129215
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118499_
                               _L118501_))
                            (let ((__tmp129216
                                   (lambda (_g118516118520_
                                            _g118517118523_
                                            _g118518118525_)
                                     (let ((__tmp129217
                                            (let ((__tmp129225
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129218
                                                   (let ((__tmp129224
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp129219
                                                          (let ((__tmp129221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129223
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129222
                                (let ()
                                  (declare (not safe))
                                  (cons _g118517118523_ '()))))
                           (declare (not safe))
                           (cons __tmp129223 __tmp129222)))
                        (__tmp129220
                         (let ()
                           (declare (not safe))
                           (cons _g118516118520_ '()))))
                    (declare (not safe))
                    (cons __tmp129221 __tmp129220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129224
                                                           __tmp129219))))
                                              (declare (not safe))
                                              (cons __tmp129225 __tmp129218))))
                                       (declare (not safe))
                                       (cons __tmp129217 _g118518118525_)))))
                              (declare (not safe))
                              (foldr2 __tmp129216 '() _L118499_ _L118501_)))))
                     (declare (not safe))
                     (cons __tmp129226 __tmp129215)))
                 _type-e118415118493_
                 _id118416118496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118409118451_
                                         _target118406118445_
                                         '()
                                         '()))
                                      (_g118399118428_ _g118400118432_)))))
                            (_g118399118428_ _g118400118432_))))
                    (_g118399118428_ _g118400118432_)))))
        (_g118398118528_ _$stx118395_)))))
