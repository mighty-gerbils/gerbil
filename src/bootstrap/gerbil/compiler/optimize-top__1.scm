(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx118254_)
      (let* ((_g118258118287_
              (lambda (_g118259118283_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118259118283_))))
             (_g118257118388_
              (lambda (_g118259118291_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118259118291_))
                    (let ((_e118264118294_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118259118291_))))
                      (let ((_hd118263118298_
                             (let ()
                               (declare (not safe))
                               (##car _e118264118294_)))
                            (_tl118262118301_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118264118294_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118262118301_))
                            (let ((_g129197_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118262118301_
                                      '0))))
                              (begin
                                (let ((_g129198_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129197_)
                                             (##vector-length _g129197_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129198_ 2)))
                                      (error "Context expects 2 values"
                                             _g129198_)))
                                (let ((_target118265118304_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129197_ 0)))
                                      (_tl118267118307_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129197_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118267118307_))
                                      (letrec ((_loop118268118310_
                                                (lambda (_hd118266118314_
                                                         _type-e118272118317_
                                                         _id118273118319_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118266118314_))
                                                      (let ((_e118269118322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118266118314_))))
                (let ((_lp-hd118270118326_
                       (let () (declare (not safe)) (##car _e118269118322_)))
                      (_lp-tl118271118329_
                       (let () (declare (not safe)) (##cdr _e118269118322_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118270118326_))
                      (let ((_e118278118332_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118270118326_))))
                        (let ((_hd118277118336_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118278118332_)))
                              (_tl118276118339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118278118332_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118276118339_))
                              (let ((_e118281118342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118276118339_))))
                                (let ((_hd118280118346_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118281118342_)))
                                      (_tl118279118349_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118281118342_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118279118349_))
                                      (_loop118268118310_
                                       _lp-tl118271118329_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118280118346_
                                               _type-e118272118317_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118277118336_
                                               _id118273118319_)))
                                      (_g118258118287_ _g118259118291_))))
                              (_g118258118287_ _g118259118291_))))
                      (_g118258118287_ _g118259118291_))))
              (let ((_type-e118274118352_ (reverse _type-e118272118317_))
                    (_id118275118355_ (reverse _id118273118319_)))
                ((lambda (_L118358_ _L118360_)
                   (let ((__tmp129210
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129199
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118358_
                               _L118360_))
                            (let ((__tmp129200
                                   (lambda (_g118376118380_
                                            _g118377118383_
                                            _g118378118385_)
                                     (let ((__tmp129201
                                            (let ((__tmp129209
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129202
                                                   (let ((__tmp129208
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp129203
                                                          (let ((__tmp129205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129207
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129206
                                (let ()
                                  (declare (not safe))
                                  (cons _g118377118383_ '()))))
                           (declare (not safe))
                           (cons __tmp129207 __tmp129206)))
                        (__tmp129204
                         (let ()
                           (declare (not safe))
                           (cons _g118376118380_ '()))))
                    (declare (not safe))
                    (cons __tmp129205 __tmp129204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129208
                                                           __tmp129203))))
                                              (declare (not safe))
                                              (cons __tmp129209 __tmp129202))))
                                       (declare (not safe))
                                       (cons __tmp129201 _g118378118385_)))))
                              (declare (not safe))
                              (foldr2 __tmp129200 '() _L118358_ _L118360_)))))
                     (declare (not safe))
                     (cons __tmp129210 __tmp129199)))
                 _type-e118274118352_
                 _id118275118355_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118268118310_
                                         _target118265118304_
                                         '()
                                         '()))
                                      (_g118258118287_ _g118259118291_)))))
                            (_g118258118287_ _g118259118291_))))
                    (_g118258118287_ _g118259118291_)))))
        (_g118257118388_ _$stx118254_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx118393_)
      (let* ((_g118397118426_
              (lambda (_g118398118422_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118398118422_))))
             (_g118396118526_
              (lambda (_g118398118430_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118398118430_))
                    (let ((_e118403118433_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118398118430_))))
                      (let ((_hd118402118437_
                             (let ()
                               (declare (not safe))
                               (##car _e118403118433_)))
                            (_tl118401118440_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118403118433_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118401118440_))
                            (let ((_g129211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118401118440_
                                      '0))))
                              (begin
                                (let ((_g129212_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129211_)
                                             (##vector-length _g129211_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129212_ 2)))
                                      (error "Context expects 2 values"
                                             _g129212_)))
                                (let ((_target118404118443_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129211_ 0)))
                                      (_tl118406118446_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129211_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118406118446_))
                                      (letrec ((_loop118407118449_
                                                (lambda (_hd118405118453_
                                                         _type-e118411118456_
                                                         _id118412118458_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118405118453_))
                                                      (let ((_e118408118461_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118405118453_))))
                (let ((_lp-hd118409118465_
                       (let () (declare (not safe)) (##car _e118408118461_)))
                      (_lp-tl118410118468_
                       (let () (declare (not safe)) (##cdr _e118408118461_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118409118465_))
                      (let ((_e118417118471_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118409118465_))))
                        (let ((_hd118416118475_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118417118471_)))
                              (_tl118415118478_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118417118471_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118415118478_))
                              (let ((_e118420118481_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118415118478_))))
                                (let ((_hd118419118485_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118420118481_)))
                                      (_tl118418118488_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118420118481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118418118488_))
                                      (_loop118407118449_
                                       _lp-tl118410118468_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118419118485_
                                               _type-e118411118456_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118416118475_
                                               _id118412118458_)))
                                      (_g118397118426_ _g118398118430_))))
                              (_g118397118426_ _g118398118430_))))
                      (_g118397118426_ _g118398118430_))))
              (let ((_type-e118413118491_ (reverse _type-e118411118456_))
                    (_id118414118494_ (reverse _id118412118458_)))
                ((lambda (_L118497_ _L118499_)
                   (let ((__tmp129224
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129213
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118497_
                               _L118499_))
                            (let ((__tmp129214
                                   (lambda (_g118514118518_
                                            _g118515118521_
                                            _g118516118523_)
                                     (let ((__tmp129215
                                            (let ((__tmp129223
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129216
                                                   (let ((__tmp129222
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp129217
                                                          (let ((__tmp129219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129221
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129220
                                (let ()
                                  (declare (not safe))
                                  (cons _g118515118521_ '()))))
                           (declare (not safe))
                           (cons __tmp129221 __tmp129220)))
                        (__tmp129218
                         (let ()
                           (declare (not safe))
                           (cons _g118514118518_ '()))))
                    (declare (not safe))
                    (cons __tmp129219 __tmp129218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129222
                                                           __tmp129217))))
                                              (declare (not safe))
                                              (cons __tmp129223 __tmp129216))))
                                       (declare (not safe))
                                       (cons __tmp129215 _g118516118523_)))))
                              (declare (not safe))
                              (foldr2 __tmp129214 '() _L118497_ _L118499_)))))
                     (declare (not safe))
                     (cons __tmp129224 __tmp129213)))
                 _type-e118413118491_
                 _id118414118494_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118407118449_
                                         _target118404118443_
                                         '()
                                         '()))
                                      (_g118397118426_ _g118398118430_)))))
                            (_g118397118426_ _g118398118430_))))
                    (_g118397118426_ _g118398118430_)))))
        (_g118396118526_ _$stx118393_)))))
