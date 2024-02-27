(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx157791_)
      (let* ((_g157795157813_
              (lambda (_g157796157809_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157796157809_))))
             (_g157794157868_
              (lambda (_g157796157817_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157796157817_))
                    (let ((_e157801157820_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157796157817_))))
                      (let ((_hd157800157824_
                             (let ()
                               (declare (not safe))
                               (##car _e157801157820_)))
                            (_tl157799157827_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157801157820_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157799157827_))
                            (let ((_e157804157830_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157799157827_))))
                              (let ((_hd157803157834_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157804157830_)))
                                    (_tl157802157837_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157804157830_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157802157837_))
                                    (let ((_e157807157840_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157802157837_))))
                                      (let ((_hd157806157844_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157807157840_)))
                                            (_tl157805157847_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157807157840_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157805157847_))
                                            ((lambda (_L157850_ _L157852_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L157852_))
                                                   (let ((__tmp161332
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161327
                                                          (let ((__tmp161329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161331
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161330
                                (let ()
                                  (declare (not safe))
                                  (cons _L157852_ '()))))
                           (declare (not safe))
                           (cons __tmp161331 __tmp161330)))
                        (__tmp161328
                         (let () (declare (not safe)) (cons _L157850_ '()))))
                    (declare (not safe))
                    (cons __tmp161329 __tmp161328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161332
                                                           __tmp161327))
                                                   (_g157795157813_
                                                    _g157796157817_)))
                                             _hd157806157844_
                                             _hd157803157834_)
                                            (_g157795157813_
                                             _g157796157817_))))
                                    (_g157795157813_ _g157796157817_))))
                            (_g157795157813_ _g157796157817_))))
                    (_g157795157813_ _g157796157817_)))))
        (_g157794157868_ _$stx157791_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx157872_)
      (let* ((_g157876157905_
              (lambda (_g157877157901_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157877157901_))))
             (_g157875158005_
              (lambda (_g157877157909_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157877157909_))
                    (let ((_e157882157912_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157877157909_))))
                      (let ((_hd157881157916_
                             (let ()
                               (declare (not safe))
                               (##car _e157882157912_)))
                            (_tl157880157919_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157882157912_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl157880157919_))
                            (let ((_g161333_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl157880157919_
                                      '0))))
                              (begin
                                (let ((_g161334_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161333_)
                                             (##vector-length _g161333_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161334_ 2)))
                                      (error "Context expects 2 values"
                                             _g161334_)))
                                (let ((_target157883157922_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161333_ 0)))
                                      (_tl157885157925_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161333_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157885157925_))
                                      (letrec ((_loop157886157928_
                                                (lambda (_hd157884157932_
                                                         _type157890157935_
                                                         _symbol157891157937_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd157884157932_))
                                                      (let ((_e157887157940_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd157884157932_))))
                (let ((_lp-hd157888157944_
                       (let () (declare (not safe)) (##car _e157887157940_)))
                      (_lp-tl157889157947_
                       (let () (declare (not safe)) (##cdr _e157887157940_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd157888157944_))
                      (let ((_e157896157950_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd157888157944_))))
                        (let ((_hd157895157954_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157896157950_)))
                              (_tl157894157957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157896157950_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157894157957_))
                              (let ((_e157899157960_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl157894157957_))))
                                (let ((_hd157898157964_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157899157960_)))
                                      (_tl157897157967_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157899157960_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157897157967_))
                                      (_loop157886157928_
                                       _lp-tl157889157947_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd157898157964_
                                               _type157890157935_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd157895157954_
                                               _symbol157891157937_)))
                                      (_g157876157905_ _g157877157909_))))
                              (_g157876157905_ _g157877157909_))))
                      (_g157876157905_ _g157877157909_))))
              (let ((_type157892157970_ (reverse _type157890157935_))
                    (_symbol157893157973_ (reverse _symbol157891157937_)))
                ((lambda (_L157976_ _L157978_)
                   (let ((__tmp161341
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161335
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L157976_
                               _L157978_))
                            (let ((__tmp161336
                                   (lambda (_g157993157997_
                                            _g157994158000_
                                            _g157995158002_)
                                     (let ((__tmp161337
                                            (let ((__tmp161340
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161338
                                                   (let ((__tmp161339
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g157993157997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g157994158000_
                                                           __tmp161339))))
                                              (declare (not safe))
                                              (cons __tmp161340 __tmp161338))))
                                       (declare (not safe))
                                       (cons __tmp161337 _g157995158002_)))))
                              (declare (not safe))
                              (foldr2 __tmp161336 '() _L157976_ _L157978_)))))
                     (declare (not safe))
                     (cons __tmp161341 __tmp161335)))
                 _type157892157970_
                 _symbol157893157973_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop157886157928_
                                         _target157883157922_
                                         '()
                                         '()))
                                      (_g157876157905_ _g157877157909_)))))
                            (_g157876157905_ _g157877157909_))))
                    (_g157876157905_ _g157877157909_)))))
        (_g157875158005_ _$stx157872_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158010_)
      (let* ((___stx160892160893_ _$stx158010_)
             (_g158015158057_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160892160893_)))))
        (let ((___kont160895160896_
               (lambda (_L158185_ _L158187_ _L158188_ _L158189_)
                 (let ((__tmp161355
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161342
                        (let ((__tmp161352
                               (let ((__tmp161354
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161353
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158189_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161354 __tmp161353)))
                              (__tmp161343
                               (let ((__tmp161349
                                      (let ((__tmp161351
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161350
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158188_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161351 __tmp161350)))
                                     (__tmp161344
                                      (let ((__tmp161346
                                             (let ((__tmp161348
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161347
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158187_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161348 __tmp161347)))
                                            (__tmp161345
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158185_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161346 __tmp161345))))
                                 (declare (not safe))
                                 (cons __tmp161349 __tmp161344))))
                          (declare (not safe))
                          (cons __tmp161352 __tmp161343))))
                   (declare (not safe))
                   (cons __tmp161355 __tmp161342))))
              (___kont160897160898_
               (lambda (_L158104_ _L158106_ _L158107_ _L158108_)
                 (let ((__tmp161356
                        (let ((__tmp161357
                               (let ((__tmp161358
                                      (let ((__tmp161359
                                             (let ((__tmp161360
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161360 '()))))
                                        (declare (not safe))
                                        (cons _L158104_ __tmp161359))))
                                 (declare (not safe))
                                 (cons _L158106_ __tmp161358))))
                          (declare (not safe))
                          (cons _L158107_ __tmp161357))))
                   (declare (not safe))
                   (cons _L158108_ __tmp161356)))))
          (let ((___match160931160932_
                 (lambda (_e158023158135_
                          _hd158022158139_
                          _tl158021158142_
                          _e158026158145_
                          _hd158025158149_
                          _tl158024158152_
                          _e158029158155_
                          _hd158028158159_
                          _tl158027158162_
                          _e158032158165_
                          _hd158031158169_
                          _tl158030158172_
                          _e158035158175_
                          _hd158034158179_
                          _tl158033158182_)
                   (let ((_L158185_ _hd158034158179_)
                         (_L158187_ _hd158031158169_)
                         (_L158188_ _hd158028158159_)
                         (_L158189_ _hd158025158149_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158189_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158188_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158187_)))
                         (___kont160895160896_
                          _L158185_
                          _L158187_
                          _L158188_
                          _L158189_)
                         (let () (declare (not safe)) (_g158015158057_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx160892160893_))
                (let ((_e158023158135_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx160892160893_))))
                  (let ((_tl158021158142_
                         (let () (declare (not safe)) (##cdr _e158023158135_)))
                        (_hd158022158139_
                         (let ()
                           (declare (not safe))
                           (##car _e158023158135_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158021158142_))
                        (let ((_e158026158145_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158021158142_))))
                          (let ((_tl158024158152_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158026158145_)))
                                (_hd158025158149_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158026158145_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158024158152_))
                                (let ((_e158029158155_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158024158152_))))
                                  (let ((_tl158027158162_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158029158155_)))
                                        (_hd158028158159_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158029158155_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158027158162_))
                                        (let ((_e158032158165_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158027158162_))))
                                          (let ((_tl158030158172_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158032158165_)))
                                                (_hd158031158169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158032158165_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158030158172_))
                                                (let ((_e158035158175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158030158172_))))
                                                  (let ((_tl158033158182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158035158175_)))
                                                        (_hd158034158179_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158035158175_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158033158182_))
                                                        (___match160931160932_
                                                         _e158023158135_
                                                         _hd158022158139_
                                                         _tl158021158142_
                                                         _e158026158145_
                                                         _hd158025158149_
                                                         _tl158024158152_
                                                         _e158029158155_
                                                         _hd158028158159_
                                                         _tl158027158162_
                                                         _e158032158165_
                                                         _hd158031158169_
                                                         _tl158030158172_
                                                         _e158035158175_
                                                         _hd158034158179_
                                                         _tl158033158182_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158015158057_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158030158172_))
                                                    (___kont160897160898_
                                                     _hd158031158169_
                                                     _hd158028158159_
                                                     _hd158025158149_
                                                     _hd158022158139_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158015158057_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158015158057_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158015158057_)))))
                        (let () (declare (not safe)) (_g158015158057_)))))
                (let () (declare (not safe)) (_g158015158057_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158214_)
      (let* ((_g158218158253_
              (lambda (_g158219158249_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158219158249_))))
             (_g158217158372_
              (lambda (_g158219158257_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158219158257_))
                    (let ((_e158225158260_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158219158257_))))
                      (let ((_hd158224158264_
                             (let ()
                               (declare (not safe))
                               (##car _e158225158260_)))
                            (_tl158223158267_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158225158260_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158223158267_))
                            (let ((_g161361_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158223158267_
                                      '0))))
                              (begin
                                (let ((_g161362_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161361_)
                                             (##vector-length _g161361_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161362_ 2)))
                                      (error "Context expects 2 values"
                                             _g161362_)))
                                (let ((_target158226158270_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161361_ 0)))
                                      (_tl158228158273_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161361_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158228158273_))
                                      (letrec ((_loop158229158276_
                                                (lambda (_hd158227158280_
                                                         _symbol158233158283_
                                                         _method158234158285_
                                                         _type-t158235158287_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158227158280_))
                                                      (let ((_e158230158290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158227158280_))))
                (let ((_lp-hd158231158294_
                       (let () (declare (not safe)) (##car _e158230158290_)))
                      (_lp-tl158232158297_
                       (let () (declare (not safe)) (##cdr _e158230158290_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158231158294_))
                      (let ((_e158241158300_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158231158294_))))
                        (let ((_hd158240158304_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158241158300_)))
                              (_tl158239158307_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158241158300_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158239158307_))
                              (let ((_e158244158310_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158239158307_))))
                                (let ((_hd158243158314_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158244158310_)))
                                      (_tl158242158317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158244158310_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158242158317_))
                                      (let ((_e158247158320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158242158317_))))
                                        (let ((_hd158246158324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158247158320_)))
                                              (_tl158245158327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158247158320_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158245158327_))
                                              (_loop158229158276_
                                               _lp-tl158232158297_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158246158324_
                                                       _symbol158233158283_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158243158314_
                                                       _method158234158285_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158240158304_
                                                       _type-t158235158287_)))
                                              (_g158218158253_
                                               _g158219158257_))))
                                      (_g158218158253_ _g158219158257_))))
                              (_g158218158253_ _g158219158257_))))
                      (_g158218158253_ _g158219158257_))))
              (let ((_symbol158236158330_ (reverse _symbol158233158283_))
                    (_method158237158333_ (reverse _method158234158285_))
                    (_type-t158238158335_ (reverse _type-t158235158287_)))
                ((lambda (_L158338_ _L158340_ _L158341_)
                   (let ((__tmp161370
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161363
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158338_
                               _L158340_
                               _L158341_))
                            (let ((__tmp161364
                                   (lambda (_g158357158362_
                                            _g158358158365_
                                            _g158359158367_
                                            _g158360158369_)
                                     (let ((__tmp161365
                                            (let ((__tmp161369
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161366
                                                   (let ((__tmp161367
                                                          (let ((__tmp161368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158357158362_ '()))))
                    (declare (not safe))
                    (cons _g158358158365_ __tmp161368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158359158367_
                                                           __tmp161367))))
                                              (declare (not safe))
                                              (cons __tmp161369 __tmp161366))))
                                       (declare (not safe))
                                       (cons __tmp161365 _g158360158369_)))))
                              (declare (not safe))
                              (foldr* __tmp161364
                                      '()
                                      _L158338_
                                      _L158340_
                                      _L158341_)))))
                     (declare (not safe))
                     (cons __tmp161370 __tmp161363)))
                 _symbol158236158330_
                 _method158237158333_
                 _type-t158238158335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158229158276_
                                         _target158226158270_
                                         '()
                                         '()
                                         '()))
                                      (_g158218158253_ _g158219158257_)))))
                            (_g158218158253_ _g158219158257_))))
                    (_g158218158253_ _g158219158257_)))))
        (_g158217158372_ _$stx158214_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158377_)
      (let* ((_g158381158414_
              (lambda (_g158382158410_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158382158410_))))
             (_g158380158528_
              (lambda (_g158382158418_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158382158418_))
                    (let ((_e158388158421_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158382158418_))))
                      (let ((_hd158387158425_
                             (let ()
                               (declare (not safe))
                               (##car _e158388158421_)))
                            (_tl158386158428_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158388158421_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158386158428_))
                            (let ((_e158391158431_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158386158428_))))
                              (let ((_hd158390158435_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158391158431_)))
                                    (_tl158389158438_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158391158431_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158389158438_))
                                    (let ((_g161371_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158389158438_
                                              '0))))
                                      (begin
                                        (let ((_g161372_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161371_)
                                                     (##vector-length
                                                      _g161371_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161372_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161372_)))
                                        (let ((_target158392158441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161371_ 0)))
                                              (_tl158394158444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161371_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158394158444_))
                                              (letrec ((_loop158395158447_
                                                        (lambda (_hd158393158451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158399158454_
                         _method158400158456_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158393158451_))
                      (let ((_e158396158459_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158393158451_))))
                        (let ((_lp-hd158397158463_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158396158459_)))
                              (_lp-tl158398158466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158396158459_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158397158463_))
                              (let ((_e158405158469_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158397158463_))))
                                (let ((_hd158404158473_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158405158469_)))
                                      (_tl158403158476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158405158469_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158403158476_))
                                      (let ((_e158408158479_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158403158476_))))
                                        (let ((_hd158407158483_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158408158479_)))
                                              (_tl158406158486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158408158479_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158406158486_))
                                              (_loop158395158447_
                                               _lp-tl158398158466_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158407158483_
                                                       _symbol158399158454_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158404158473_
                                                       _method158400158456_)))
                                              (_g158381158414_
                                               _g158382158418_))))
                                      (_g158381158414_ _g158382158418_))))
                              (_g158381158414_ _g158382158418_))))
                      (let ((_symbol158401158489_
                             (reverse _symbol158399158454_))
                            (_method158402158492_
                             (reverse _method158400158456_)))
                        ((lambda (_L158495_ _L158497_ _L158498_)
                           (let ((__tmp161380
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161373
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158495_
                                       _L158497_))
                                    (let ((__tmp161374
                                           (lambda (_g158516158520_
                                                    _g158517158523_
                                                    _g158518158525_)
                                             (let ((__tmp161375
                                                    (let ((__tmp161379
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161376
                                                           (let ((__tmp161377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161378
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158516158520_ '()))))
                            (declare (not safe))
                            (cons _g158517158523_ __tmp161378))))
                     (declare (not safe))
                     (cons _L158498_ __tmp161377))))
              (declare (not safe))
              (cons __tmp161379 __tmp161376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161375
                                                     _g158518158525_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161374
                                              '()
                                              _L158495_
                                              _L158497_)))))
                             (declare (not safe))
                             (cons __tmp161380 __tmp161373)))
                         _symbol158401158489_
                         _method158402158492_
                         _hd158390158435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158395158447_
                                                 _target158392158441_
                                                 '()
                                                 '()))
                                              (_g158381158414_
                                               _g158382158418_)))))
                                    (_g158381158414_ _g158382158418_))))
                            (_g158381158414_ _g158382158418_))))
                    (_g158381158414_ _g158382158418_)))))
        (_g158380158528_ _$stx158377_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158533_)
      (let* ((_g158537158551_
              (lambda (_g158538158547_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158538158547_))))
             (_g158536158592_
              (lambda (_g158538158555_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158538158555_))
                    (let ((_e158542158558_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158538158555_))))
                      (let ((_hd158541158562_
                             (let ()
                               (declare (not safe))
                               (##car _e158542158558_)))
                            (_tl158540158565_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158542158558_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158540158565_))
                            (let ((_e158545158568_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158540158565_))))
                              (let ((_hd158544158572_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158545158568_)))
                                    (_tl158543158575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158545158568_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158543158575_))
                                    ((lambda (_L158578_)
                                       (let ((__tmp161385
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161381
                                              (let ((__tmp161382
                                                     (let ((__tmp161384
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161383
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161384 __tmp161383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161382 '()))))
                                         (declare (not safe))
                                         (cons __tmp161385 __tmp161381)))
                                     _hd158544158572_)
                                    (_g158537158551_ _g158538158555_))))
                            (_g158537158551_ _g158538158555_))))
                    (_g158537158551_ _g158538158555_)))))
        (_g158536158592_ _$stx158533_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158596_)
      (let* ((_g158600158650_
              (lambda (_g158601158646_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158601158646_))))
             (_g158599158817_
              (lambda (_g158601158654_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158601158654_))
                    (let ((_e158614158657_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158601158654_))))
                      (let ((_hd158613158661_
                             (let ()
                               (declare (not safe))
                               (##car _e158614158657_)))
                            (_tl158612158664_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158614158657_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158612158664_))
                            (let ((_e158617158667_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158612158664_))))
                              (let ((_hd158616158671_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158617158667_)))
                                    (_tl158615158674_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158617158667_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158615158674_))
                                    (let ((_e158620158677_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158615158674_))))
                                      (let ((_hd158619158681_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158620158677_)))
                                            (_tl158618158684_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158620158677_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158618158684_))
                                            (let ((_e158623158687_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158618158684_))))
                                              (let ((_hd158622158691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158623158687_)))
                                                    (_tl158621158694_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158623158687_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158621158694_))
                                                    (let ((_e158626158697_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158621158694_))))
                                                      (let ((_hd158625158701_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158626158697_)))
                    (_tl158624158704_
                     (let () (declare (not safe)) (##cdr _e158626158697_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158624158704_))
                    (let ((_e158629158707_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158624158704_))))
                      (let ((_hd158628158711_
                             (let ()
                               (declare (not safe))
                               (##car _e158629158707_)))
                            (_tl158627158714_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158629158707_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158627158714_))
                            (let ((_e158632158717_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158627158714_))))
                              (let ((_hd158631158721_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158632158717_)))
                                    (_tl158630158724_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158632158717_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158630158724_))
                                    (let ((_e158635158727_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158630158724_))))
                                      (let ((_hd158634158731_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158635158727_)))
                                            (_tl158633158734_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158635158727_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158633158734_))
                                            (let ((_e158638158737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158633158734_))))
                                              (let ((_hd158637158741_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158638158737_)))
                                                    (_tl158636158744_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158638158737_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158636158744_))
                                                    (let ((_e158641158747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158636158744_))))
                                                      (let ((_hd158640158751_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158641158747_)))
                    (_tl158639158754_
                     (let () (declare (not safe)) (##cdr _e158641158747_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158639158754_))
                    (let ((_e158644158757_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158639158754_))))
                      (let ((_hd158643158761_
                             (let ()
                               (declare (not safe))
                               (##car _e158644158757_)))
                            (_tl158642158764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158644158757_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158642158764_))
                            ((lambda (_L158767_
                                      _L158769_
                                      _L158770_
                                      _L158771_
                                      _L158772_
                                      _L158773_
                                      _L158774_
                                      _L158775_
                                      _L158776_
                                      _L158777_)
                               (let ((__tmp161420
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp161386
                                      (let ((__tmp161417
                                             (let ((__tmp161419
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161418
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158777_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161419 __tmp161418)))
                                            (__tmp161387
                                             (let ((__tmp161414
                                                    (let ((__tmp161416
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp161415
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L158776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp161416 __tmp161415)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp161388
                                                    (let ((__tmp161411
                                                           (let ((__tmp161413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161412
                          (let () (declare (not safe)) (cons _L158775_ '()))))
                     (declare (not safe))
                     (cons __tmp161413 __tmp161412)))
                  (__tmp161389
                   (let ((__tmp161408
                          (let ((__tmp161410
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp161409
                                 (let ()
                                   (declare (not safe))
                                   (cons _L158774_ '()))))
                            (declare (not safe))
                            (cons __tmp161410 __tmp161409)))
                         (__tmp161390
                          (let ((__tmp161405
                                 (let ((__tmp161407
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp161406
                                        (let ()
                                          (declare (not safe))
                                          (cons _L158773_ '()))))
                                   (declare (not safe))
                                   (cons __tmp161407 __tmp161406)))
                                (__tmp161391
                                 (let ((__tmp161402
                                        (let ((__tmp161404
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp161403
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L158772_ '()))))
                                          (declare (not safe))
                                          (cons __tmp161404 __tmp161403)))
                                       (__tmp161392
                                        (let ((__tmp161393
                                               (let ((__tmp161394
                                                      (let ((__tmp161399
                                                             (let ((__tmp161401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161400
                            (let ()
                              (declare (not safe))
                              (cons _L158769_ '()))))
                       (declare (not safe))
                       (cons __tmp161401 __tmp161400)))
                    (__tmp161395
                     (let ((__tmp161396
                            (let ((__tmp161398
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161397
                                   (let ()
                                     (declare (not safe))
                                     (cons _L158767_ '()))))
                              (declare (not safe))
                              (cons __tmp161398 __tmp161397))))
                       (declare (not safe))
                       (cons __tmp161396 '()))))
                (declare (not safe))
                (cons __tmp161399 __tmp161395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L158770_
                                                       __tmp161394))))
                                          (declare (not safe))
                                          (cons _L158771_ __tmp161393))))
                                   (declare (not safe))
                                   (cons __tmp161402 __tmp161392))))
                            (declare (not safe))
                            (cons __tmp161405 __tmp161391))))
                     (declare (not safe))
                     (cons __tmp161408 __tmp161390))))
              (declare (not safe))
              (cons __tmp161411 __tmp161389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161414
                                                     __tmp161388))))
                                        (declare (not safe))
                                        (cons __tmp161417 __tmp161387))))
                                 (declare (not safe))
                                 (cons __tmp161420 __tmp161386)))
                             _hd158643158761_
                             _hd158640158751_
                             _hd158637158741_
                             _hd158634158731_
                             _hd158631158721_
                             _hd158628158711_
                             _hd158625158701_
                             _hd158622158691_
                             _hd158619158681_
                             _hd158616158671_)
                            (_g158600158650_ _g158601158654_))))
                    (_g158600158650_ _g158601158654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158600158650_
                                                     _g158601158654_))))
                                            (_g158600158650_
                                             _g158601158654_))))
                                    (_g158600158650_ _g158601158654_))))
                            (_g158600158650_ _g158601158654_))))
                    (_g158600158650_ _g158601158654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158600158650_
                                                     _g158601158654_))))
                                            (_g158600158650_
                                             _g158601158654_))))
                                    (_g158600158650_ _g158601158654_))))
                            (_g158600158650_ _g158601158654_))))
                    (_g158600158650_ _g158601158654_)))))
        (_g158599158817_ _$stx158596_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx158821_)
      (let* ((_g158825158839_
              (lambda (_g158826158835_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158826158835_))))
             (_g158824158880_
              (lambda (_g158826158843_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158826158843_))
                    (let ((_e158830158846_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158826158843_))))
                      (let ((_hd158829158850_
                             (let ()
                               (declare (not safe))
                               (##car _e158830158846_)))
                            (_tl158828158853_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158830158846_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158828158853_))
                            (let ((_e158833158856_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158828158853_))))
                              (let ((_hd158832158860_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158833158856_)))
                                    (_tl158831158863_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158833158856_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158831158863_))
                                    ((lambda (_L158866_)
                                       (let ((__tmp161425
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161421
                                              (let ((__tmp161422
                                                     (let ((__tmp161424
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161423
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161424 __tmp161423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161422 '()))))
                                         (declare (not safe))
                                         (cons __tmp161425 __tmp161421)))
                                     _hd158832158860_)
                                    (_g158825158839_ _g158826158843_))))
                            (_g158825158839_ _g158826158843_))))
                    (_g158825158839_ _g158826158843_)))))
        (_g158824158880_ _$stx158821_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx158884_)
      (let* ((_g158888158902_
              (lambda (_g158889158898_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158889158898_))))
             (_g158887158943_
              (lambda (_g158889158906_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158889158906_))
                    (let ((_e158893158909_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158889158906_))))
                      (let ((_hd158892158913_
                             (let ()
                               (declare (not safe))
                               (##car _e158893158909_)))
                            (_tl158891158916_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158893158909_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158891158916_))
                            (let ((_e158896158919_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158891158916_))))
                              (let ((_hd158895158923_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158896158919_)))
                                    (_tl158894158926_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158896158919_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158894158926_))
                                    ((lambda (_L158929_)
                                       (let ((__tmp161430
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161426
                                              (let ((__tmp161427
                                                     (let ((__tmp161429
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161428
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161429 __tmp161428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161427 '()))))
                                         (declare (not safe))
                                         (cons __tmp161430 __tmp161426)))
                                     _hd158895158923_)
                                    (_g158888158902_ _g158889158906_))))
                            (_g158888158902_ _g158889158906_))))
                    (_g158888158902_ _g158889158906_)))))
        (_g158887158943_ _$stx158884_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx158947_)
      (let* ((_g158951158973_
              (lambda (_g158952158969_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158952158969_))))
             (_g158950159042_
              (lambda (_g158952158977_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158952158977_))
                    (let ((_e158958158980_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158952158977_))))
                      (let ((_hd158957158984_
                             (let ()
                               (declare (not safe))
                               (##car _e158958158980_)))
                            (_tl158956158987_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158958158980_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158956158987_))
                            (let ((_e158961158990_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158956158987_))))
                              (let ((_hd158960158994_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158961158990_)))
                                    (_tl158959158997_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158961158990_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158959158997_))
                                    (let ((_e158964159000_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158959158997_))))
                                      (let ((_hd158963159004_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158964159000_)))
                                            (_tl158962159007_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158964159000_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158962159007_))
                                            (let ((_e158967159010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158962159007_))))
                                              (let ((_hd158966159014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158967159010_)))
                                                    (_tl158965159017_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158967159010_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158965159017_))
                                                    ((lambda (_L159020_
                                                              _L159022_
                                                              _L159023_)
                                                       (let ((__tmp161440
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161431
                      (let ((__tmp161437
                             (let ((__tmp161439
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161438
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159023_ '()))))
                               (declare (not safe))
                               (cons __tmp161439 __tmp161438)))
                            (__tmp161432
                             (let ((__tmp161434
                                    (let ((__tmp161436
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161435
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159022_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161436 __tmp161435)))
                                   (__tmp161433
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159020_ '()))))
                               (declare (not safe))
                               (cons __tmp161434 __tmp161433))))
                        (declare (not safe))
                        (cons __tmp161437 __tmp161432))))
                 (declare (not safe))
                 (cons __tmp161440 __tmp161431)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd158966159014_
                                                     _hd158963159004_
                                                     _hd158960158994_)
                                                    (_g158951158973_
                                                     _g158952158977_))))
                                            (_g158951158973_
                                             _g158952158977_))))
                                    (_g158951158973_ _g158952158977_))))
                            (_g158951158973_ _g158952158977_))))
                    (_g158951158973_ _g158952158977_)))))
        (_g158950159042_ _$stx158947_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159046_)
      (let* ((_g159050159072_
              (lambda (_g159051159068_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159051159068_))))
             (_g159049159141_
              (lambda (_g159051159076_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159051159076_))
                    (let ((_e159057159079_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159051159076_))))
                      (let ((_hd159056159083_
                             (let ()
                               (declare (not safe))
                               (##car _e159057159079_)))
                            (_tl159055159086_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159057159079_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159055159086_))
                            (let ((_e159060159089_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159055159086_))))
                              (let ((_hd159059159093_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159060159089_)))
                                    (_tl159058159096_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159060159089_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159058159096_))
                                    (let ((_e159063159099_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159058159096_))))
                                      (let ((_hd159062159103_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159063159099_)))
                                            (_tl159061159106_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159063159099_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159061159106_))
                                            (let ((_e159066159109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159061159106_))))
                                              (let ((_hd159065159113_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159066159109_)))
                                                    (_tl159064159116_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159066159109_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159064159116_))
                                                    ((lambda (_L159119_
                                                              _L159121_
                                                              _L159122_)
                                                       (let ((__tmp161450
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161441
                      (let ((__tmp161447
                             (let ((__tmp161449
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161448
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159122_ '()))))
                               (declare (not safe))
                               (cons __tmp161449 __tmp161448)))
                            (__tmp161442
                             (let ((__tmp161444
                                    (let ((__tmp161446
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161445
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159121_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161446 __tmp161445)))
                                   (__tmp161443
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159119_ '()))))
                               (declare (not safe))
                               (cons __tmp161444 __tmp161443))))
                        (declare (not safe))
                        (cons __tmp161447 __tmp161442))))
                 (declare (not safe))
                 (cons __tmp161450 __tmp161441)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159065159113_
                                                     _hd159062159103_
                                                     _hd159059159093_)
                                                    (_g159050159072_
                                                     _g159051159076_))))
                                            (_g159050159072_
                                             _g159051159076_))))
                                    (_g159050159072_ _g159051159076_))))
                            (_g159050159072_ _g159051159076_))))
                    (_g159050159072_ _g159051159076_)))))
        (_g159049159141_ _$stx159046_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159145_)
      (let* ((___stx160960160961_ _$stx159145_)
             (_g159153159221_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160960160961_)))))
        (let ((___kont160963160964_
               (lambda (_L159499_ _L159501_)
                 (let ((__tmp161466
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161451
                        (let ((__tmp161462
                               (let ((__tmp161465
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161463
                                      (let ((__tmp161464
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161464 '()))))
                                 (declare (not safe))
                                 (cons __tmp161465 __tmp161463)))
                              (__tmp161452
                               (let ((__tmp161459
                                      (let ((__tmp161461
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161460
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159501_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161461 __tmp161460)))
                                     (__tmp161453
                                      (let ((__tmp161454
                                             (let ((__tmp161455
                                                    (let ((__tmp161456
                                                           (let ((__tmp161458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161457
                          (let () (declare (not safe)) (cons _L159499_ '()))))
                     (declare (not safe))
                     (cons __tmp161458 __tmp161457))))
              (declare (not safe))
              (cons __tmp161456 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159499_ __tmp161455))))
                                        (declare (not safe))
                                        (cons '#f __tmp161454))))
                                 (declare (not safe))
                                 (cons __tmp161459 __tmp161453))))
                          (declare (not safe))
                          (cons __tmp161462 __tmp161452))))
                   (declare (not safe))
                   (cons __tmp161466 __tmp161451))))
              (___kont160965160966_
               (lambda (_L159430_ _L159432_)
                 (let ((__tmp161467
                        (let ((__tmp161468
                               (let ((__tmp161469
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159430_ __tmp161469))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161468))))
                   (declare (not safe))
                   (cons _L159432_ __tmp161467))))
              (___kont160967160968_
               (lambda (_L159369_ _L159371_)
                 (let ((__tmp161483
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161470
                        (let ((__tmp161479
                               (let ((__tmp161482
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161480
                                      (let ((__tmp161481
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161481 '()))))
                                 (declare (not safe))
                                 (cons __tmp161482 __tmp161480)))
                              (__tmp161471
                               (let ((__tmp161476
                                      (let ((__tmp161478
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161477
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159371_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161478 __tmp161477)))
                                     (__tmp161472
                                      (let ((__tmp161473
                                             (let ((__tmp161475
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161474
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159369_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161475
                                                     __tmp161474))))
                                        (declare (not safe))
                                        (cons __tmp161473 '()))))
                                 (declare (not safe))
                                 (cons __tmp161476 __tmp161472))))
                          (declare (not safe))
                          (cons __tmp161479 __tmp161471))))
                   (declare (not safe))
                   (cons __tmp161483 __tmp161470))))
              (___kont160969160970_
               (lambda (_L159301_ _L159303_)
                 (let ((__tmp161497
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161484
                        (let ((__tmp161493
                               (let ((__tmp161496
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161494
                                      (let ((__tmp161495
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161495 '()))))
                                 (declare (not safe))
                                 (cons __tmp161496 __tmp161494)))
                              (__tmp161485
                               (let ((__tmp161490
                                      (let ((__tmp161492
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161491
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159303_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161492 __tmp161491)))
                                     (__tmp161486
                                      (let ((__tmp161487
                                             (let ((__tmp161489
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161488
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159301_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161489
                                                     __tmp161488))))
                                        (declare (not safe))
                                        (cons __tmp161487 '()))))
                                 (declare (not safe))
                                 (cons __tmp161490 __tmp161486))))
                          (declare (not safe))
                          (cons __tmp161493 __tmp161485))))
                   (declare (not safe))
                   (cons __tmp161497 __tmp161484))))
              (___kont160971160972_
               (lambda (_L159248_ _L159250_)
                 (let ((__tmp161498
                        (let ((__tmp161499
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159248_ __tmp161499))))
                   (declare (not safe))
                   (cons _L159250_ __tmp161498)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx160960160961_))
              (let ((_e159159159455_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx160960160961_))))
                (let ((_tl159157159462_
                       (let () (declare (not safe)) (##cdr _e159159159455_)))
                      (_hd159158159459_
                       (let () (declare (not safe)) (##car _e159159159455_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159157159462_))
                      (let ((_e159162159465_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159157159462_))))
                        (let ((_tl159160159472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159162159465_)))
                              (_hd159161159469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159162159465_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159160159472_))
                              (let ((_e159165159475_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159160159472_))))
                                (let ((_tl159163159482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159165159475_)))
                                      (_hd159164159479_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159165159475_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159164159479_))
                                      (let ((_e159166159485_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159164159479_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159166159485_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159163159482_))
                                                (let ((_e159169159489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159163159482_))))
                                                  (let ((_tl159167159496_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159169159489_)))
                                                        (_hd159168159493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159169159489_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159167159496_))
                                                        (___kont160963160964_
                                                         _hd159168159493_
                                                         _hd159161159469_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159161159469_))
                                                            (let ((_e159178159416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159161159469_))))
                      (declare (not safe))
                      (_g159153159221_))
                    (let () (declare (not safe)) (_g159153159221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159161159469_))
                                                    (let ((_e159178159416_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159161159469_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159178159416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159163159482_))
                      (___kont160965160966_ _hd159164159479_ _hd159158159459_)
                      (let () (declare (not safe)) (_g159153159221_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159163159482_))
                      (___kont160969160970_ _hd159164159479_ _hd159161159469_)
                      (let () (declare (not safe)) (_g159153159221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159163159482_))
                                                        (___kont160969160970_
                                                         _hd159164159479_
                                                         _hd159161159469_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159153159221_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159161159469_))
                                                (let ((_e159178159416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159161159469_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159178159416_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159163159482_))
                                                          (___kont160965160966_
                                                           _hd159164159479_
                                                           _hd159158159459_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159163159482_))
                      (let ((_e159196159359_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159163159482_))))
                        (let ((_tl159194159366_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159196159359_)))
                              (_hd159195159363_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159196159359_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159194159366_))
                              (___kont160967160968_
                               _hd159195159363_
                               _hd159164159479_)
                              (let ()
                                (declare (not safe))
                                (_g159153159221_)))))
                      (let () (declare (not safe)) (_g159153159221_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159163159482_))
                  (___kont160969160970_ _hd159164159479_ _hd159161159469_)
                  (let () (declare (not safe)) (_g159153159221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159163159482_))
                                                    (___kont160969160970_
                                                     _hd159164159479_
                                                     _hd159161159469_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159153159221_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159161159469_))
                                          (let ((_e159178159416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159161159469_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159178159416_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159163159482_))
                                                    (___kont160965160966_
                                                     _hd159164159479_
                                                     _hd159158159459_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159163159482_))
                                                        (let ((_e159196159359_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159163159482_))))
                  (let ((_tl159194159366_
                         (let () (declare (not safe)) (##cdr _e159196159359_)))
                        (_hd159195159363_
                         (let ()
                           (declare (not safe))
                           (##car _e159196159359_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159194159366_))
                        (___kont160967160968_
                         _hd159195159363_
                         _hd159164159479_)
                        (let () (declare (not safe)) (_g159153159221_)))))
                (let () (declare (not safe)) (_g159153159221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159163159482_))
                                                    (___kont160969160970_
                                                     _hd159164159479_
                                                     _hd159161159469_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159153159221_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159163159482_))
                                              (___kont160969160970_
                                               _hd159164159479_
                                               _hd159161159469_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159153159221_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159161159469_))
                                  (let ((_e159178159416_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159161159469_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159160159472_))
                                        (___kont160971160972_
                                         _hd159161159469_
                                         _hd159158159459_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159153159221_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159160159472_))
                                      (___kont160971160972_
                                       _hd159161159469_
                                       _hd159158159459_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159153159221_)))))))
                      (let () (declare (not safe)) (_g159153159221_)))))
              (let () (declare (not safe)) (_g159153159221_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159523_)
      (let* ((___stx161100161101_ _$stx159523_)
             (_g159528159583_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161100161101_)))))
        (let ((___kont161103161104_
               (lambda (_L159768_ _L159770_)
                 (let ((__tmp161515
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161500
                        (let ((__tmp161511
                               (let ((__tmp161514
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161512
                                      (let ((__tmp161513
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161513 '()))))
                                 (declare (not safe))
                                 (cons __tmp161514 __tmp161512)))
                              (__tmp161501
                               (let ((__tmp161502
                                      (let ((__tmp161510
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161503
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159768_
                                                  _L159770_))
                                               (let ((__tmp161504
                                                      (lambda (_g159787159791_
                                                               _g159788159794_
                                                               _g159789159796_)
                                                        (let ((__tmp161505
                                                               (let ((__tmp161509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161506
                              (let ((__tmp161507
                                     (let ((__tmp161508
                                            (let ()
                                              (declare (not safe))
                                              (cons _g159787159791_ '()))))
                                       (declare (not safe))
                                       (cons _g159788159794_ __tmp161508))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161507))))
                         (declare (not safe))
                         (cons __tmp161509 __tmp161506))))
                  (declare (not safe))
                  (cons __tmp161505 _g159789159796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161504
                                                         '()
                                                         _L159768_
                                                         _L159770_)))))
                                        (declare (not safe))
                                        (cons __tmp161510 __tmp161503))))
                                 (declare (not safe))
                                 (cons __tmp161502 '()))))
                          (declare (not safe))
                          (cons __tmp161511 __tmp161501))))
                   (declare (not safe))
                   (cons __tmp161515 __tmp161500))))
              (___kont161107161108_
               (lambda (_L159654_ _L159656_)
                 (let ((__tmp161530
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161516
                        (let ((__tmp161526
                               (let ((__tmp161529
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161527
                                      (let ((__tmp161528
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161528 '()))))
                                 (declare (not safe))
                                 (cons __tmp161529 __tmp161527)))
                              (__tmp161517
                               (let ((__tmp161518
                                      (let ((__tmp161525
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161519
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159654_
                                                  _L159656_))
                                               (let ((__tmp161520
                                                      (lambda (_g159671159675_
                                                               _g159672159678_
                                                               _g159673159680_)
                                                        (let ((__tmp161521
                                                               (let ((__tmp161524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161522
                              (let ((__tmp161523
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159671159675_ '()))))
                                (declare (not safe))
                                (cons _g159672159678_ __tmp161523))))
                         (declare (not safe))
                         (cons __tmp161524 __tmp161522))))
                  (declare (not safe))
                  (cons __tmp161521 _g159673159680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161520
                                                         '()
                                                         _L159654_
                                                         _L159656_)))))
                                        (declare (not safe))
                                        (cons __tmp161525 __tmp161519))))
                                 (declare (not safe))
                                 (cons __tmp161518 '()))))
                          (declare (not safe))
                          (cons __tmp161526 __tmp161517))))
                   (declare (not safe))
                   (cons __tmp161530 __tmp161516)))))
          (let* ((___match161151161152_
                  (lambda (_e159560159590_
                           _hd159559159594_
                           _tl159558159597_
                           ___splice161109161110_
                           _target159561159600_
                           _tl159563159603_)
                    (letrec ((_loop159564159606_
                              (lambda (_hd159562159610_
                                       _dispatch159568159613_
                                       _arity159569159615_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159562159610_))
                                    (let ((_e159565159618_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159562159610_))))
                                      (let ((_lp-tl159567159625_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159565159618_)))
                                            (_lp-hd159566159622_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159565159618_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159566159622_))
                                            (let ((_e159574159628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159566159622_))))
                                              (let ((_tl159572159635_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159574159628_)))
                                                    (_hd159573159632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159574159628_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159572159635_))
                                                    (let ((_e159577159638_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159572159635_))))
                                                      (let ((_tl159575159645_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159577159638_)))
                    (_hd159576159642_
                     (let () (declare (not safe)) (##car _e159577159638_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159575159645_))
                    (_loop159564159606_
                     _lp-tl159567159625_
                     (let ()
                       (declare (not safe))
                       (cons _hd159576159642_ _dispatch159568159613_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159573159632_ _arity159569159615_)))
                    (let () (declare (not safe)) (_g159528159583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159528159583_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159528159583_)))))
                                    (let ((_arity159571159651_
                                           (reverse _arity159569159615_))
                                          (_dispatch159570159648_
                                           (reverse _dispatch159568159613_)))
                                      (___kont161107161108_
                                       _dispatch159570159648_
                                       _arity159571159651_))))))
                      (_loop159564159606_ _target159561159600_ '() '()))))
                 (___match161143161144_
                  (lambda (_e159560159590_ _hd159559159594_ _tl159558159597_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159558159597_))
                        (let ((___splice161109161110_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159558159597_
                                  '0))))
                          (let ((_tl159563159603_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161109161110_ '1)))
                                (_target159561159600_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161109161110_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159563159603_))
                                (___match161151161152_
                                 _e159560159590_
                                 _hd159559159594_
                                 _tl159558159597_
                                 ___splice161109161110_
                                 _target159561159600_
                                 _tl159563159603_)
                                (let ()
                                  (declare (not safe))
                                  (_g159528159583_)))))
                        (let () (declare (not safe)) (_g159528159583_)))))
                 (___match161137161138_
                  (lambda (_e159534159690_
                           _hd159533159694_
                           _tl159532159697_
                           _e159537159700_
                           _hd159536159704_
                           _tl159535159707_
                           _e159538159710_
                           ___splice161105161106_
                           _target159539159714_
                           _tl159541159717_)
                    (letrec ((_loop159542159720_
                              (lambda (_hd159540159724_
                                       _dispatch159546159727_
                                       _arity159547159729_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159540159724_))
                                    (let ((_e159543159732_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159540159724_))))
                                      (let ((_lp-tl159545159739_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159543159732_)))
                                            (_lp-hd159544159736_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159543159732_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159544159736_))
                                            (let ((_e159552159742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159544159736_))))
                                              (let ((_tl159550159749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159552159742_)))
                                                    (_hd159551159746_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159552159742_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159550159749_))
                                                    (let ((_e159555159752_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159550159749_))))
                                                      (let ((_tl159553159759_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159555159752_)))
                    (_hd159554159756_
                     (let () (declare (not safe)) (##car _e159555159752_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159553159759_))
                    (_loop159542159720_
                     _lp-tl159545159739_
                     (let ()
                       (declare (not safe))
                       (cons _hd159554159756_ _dispatch159546159727_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159551159746_ _arity159547159729_)))
                    (___match161143161144_
                     _e159534159690_
                     _hd159533159694_
                     _tl159532159697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161143161144_
                                                     _e159534159690_
                                                     _hd159533159694_
                                                     _tl159532159697_))))
                                            (___match161143161144_
                                             _e159534159690_
                                             _hd159533159694_
                                             _tl159532159697_))))
                                    (let ((_arity159549159765_
                                           (reverse _arity159547159729_))
                                          (_dispatch159548159762_
                                           (reverse _dispatch159546159727_)))
                                      (___kont161103161104_
                                       _dispatch159548159762_
                                       _arity159549159765_))))))
                      (_loop159542159720_ _target159539159714_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161100161101_))
                (let ((_e159534159690_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161100161101_))))
                  (let ((_tl159532159697_
                         (let () (declare (not safe)) (##cdr _e159534159690_)))
                        (_hd159533159694_
                         (let ()
                           (declare (not safe))
                           (##car _e159534159690_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159532159697_))
                        (let ((_e159537159700_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159532159697_))))
                          (let ((_tl159535159707_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159537159700_)))
                                (_hd159536159704_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159537159700_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159536159704_))
                                (let ((_e159538159710_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159536159704_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159538159710_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159535159707_))
                                          (let ((___splice161105161106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159535159707_
                                                    '0))))
                                            (let ((_tl159541159717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161105161106_
                                                      '1)))
                                                  (_target159539159714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161105161106_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159541159717_))
                                                  (___match161137161138_
                                                   _e159534159690_
                                                   _hd159533159694_
                                                   _tl159532159697_
                                                   _e159537159700_
                                                   _hd159536159704_
                                                   _tl159535159707_
                                                   _e159538159710_
                                                   ___splice161105161106_
                                                   _target159539159714_
                                                   _tl159541159717_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159532159697_))
                                                      (let ((___splice161109161110_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159532159697_ '0))))
                (let ((_tl159563159603_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161109161110_ '1)))
                      (_target159561159600_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161109161110_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159563159603_))
                      (___match161151161152_
                       _e159534159690_
                       _hd159533159694_
                       _tl159532159697_
                       ___splice161109161110_
                       _target159561159600_
                       _tl159563159603_)
                      (let () (declare (not safe)) (_g159528159583_)))))
              (let () (declare (not safe)) (_g159528159583_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159532159697_))
                                              (let ((___splice161109161110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159532159697_
                                                        '0))))
                                                (let ((_tl159563159603_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161109161110_
                                                          '1)))
                                                      (_target159561159600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161109161110_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159563159603_))
                                                      (___match161151161152_
                                                       _e159534159690_
                                                       _hd159533159694_
                                                       _tl159532159697_
                                                       ___splice161109161110_
                                                       _target159561159600_
                                                       _tl159563159603_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159528159583_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159528159583_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159532159697_))
                                          (let ((___splice161109161110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159532159697_
                                                    '0))))
                                            (let ((_tl159563159603_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161109161110_
                                                      '1)))
                                                  (_target159561159600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161109161110_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159563159603_))
                                                  (___match161151161152_
                                                   _e159534159690_
                                                   _hd159533159694_
                                                   _tl159532159697_
                                                   ___splice161109161110_
                                                   _target159561159600_
                                                   _tl159563159603_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159528159583_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159528159583_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159532159697_))
                                    (let ((___splice161109161110_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159532159697_
                                              '0))))
                                      (let ((_tl159563159603_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161109161110_
                                                '1)))
                                            (_target159561159600_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161109161110_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159563159603_))
                                            (___match161151161152_
                                             _e159534159690_
                                             _hd159533159694_
                                             _tl159532159697_
                                             ___splice161109161110_
                                             _target159561159600_
                                             _tl159563159603_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159528159583_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159528159583_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159532159697_))
                            (let ((___splice161109161110_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159532159697_
                                      '0))))
                              (let ((_tl159563159603_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161109161110_
                                        '1)))
                                    (_target159561159600_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161109161110_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159563159603_))
                                    (___match161151161152_
                                     _e159534159690_
                                     _hd159533159694_
                                     _tl159532159697_
                                     ___splice161109161110_
                                     _target159561159600_
                                     _tl159563159603_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159528159583_)))))
                            (let () (declare (not safe)) (_g159528159583_))))))
                (let () (declare (not safe)) (_g159528159583_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx159805_)
      (let* ((_g159809159827_
              (lambda (_g159810159823_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159810159823_))))
             (_g159808159882_
              (lambda (_g159810159831_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159810159831_))
                    (let ((_e159815159834_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159810159831_))))
                      (let ((_hd159814159838_
                             (let ()
                               (declare (not safe))
                               (##car _e159815159834_)))
                            (_tl159813159841_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159815159834_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159813159841_))
                            (let ((_e159818159844_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159813159841_))))
                              (let ((_hd159817159848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159818159844_)))
                                    (_tl159816159851_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159818159844_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159816159851_))
                                    (let ((_e159821159854_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159816159851_))))
                                      (let ((_hd159820159858_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159821159854_)))
                                            (_tl159819159861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159821159854_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159819159861_))
                                            ((lambda (_L159864_ _L159866_)
                                               (let ((__tmp161544
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161531
                                                      (let ((__tmp161540
                                                             (let ((__tmp161543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161541
                            (let ((__tmp161542
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161542 '()))))
                       (declare (not safe))
                       (cons __tmp161543 __tmp161541)))
                    (__tmp161532
                     (let ((__tmp161537
                            (let ((__tmp161539
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161538
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159866_ '()))))
                              (declare (not safe))
                              (cons __tmp161539 __tmp161538)))
                           (__tmp161533
                            (let ((__tmp161534
                                   (let ((__tmp161536
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161535
                                          (let ()
                                            (declare (not safe))
                                            (cons _L159864_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161536 __tmp161535))))
                              (declare (not safe))
                              (cons __tmp161534 '()))))
                       (declare (not safe))
                       (cons __tmp161537 __tmp161533))))
                (declare (not safe))
                (cons __tmp161540 __tmp161532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161544
                                                       __tmp161531)))
                                             _hd159820159858_
                                             _hd159817159848_)
                                            (_g159809159827_
                                             _g159810159831_))))
                                    (_g159809159827_ _g159810159831_))))
                            (_g159809159827_ _g159810159831_))))
                    (_g159809159827_ _g159810159831_)))))
        (_g159808159882_ _$stx159805_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx159886_)
      (let* ((_g159890159908_
              (lambda (_g159891159904_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159891159904_))))
             (_g159889159963_
              (lambda (_g159891159912_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159891159912_))
                    (let ((_e159896159915_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159891159912_))))
                      (let ((_hd159895159919_
                             (let ()
                               (declare (not safe))
                               (##car _e159896159915_)))
                            (_tl159894159922_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159896159915_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159894159922_))
                            (let ((_e159899159925_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159894159922_))))
                              (let ((_hd159898159929_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159899159925_)))
                                    (_tl159897159932_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159899159925_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159897159932_))
                                    (let ((_e159902159935_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159897159932_))))
                                      (let ((_hd159901159939_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159902159935_)))
                                            (_tl159900159942_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159902159935_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159900159942_))
                                            ((lambda (_L159945_ _L159947_)
                                               (let ((__tmp161558
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161545
                                                      (let ((__tmp161554
                                                             (let ((__tmp161557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161555
                            (let ((__tmp161556
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161556 '()))))
                       (declare (not safe))
                       (cons __tmp161557 __tmp161555)))
                    (__tmp161546
                     (let ((__tmp161551
                            (let ((__tmp161553
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161552
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159947_ '()))))
                              (declare (not safe))
                              (cons __tmp161553 __tmp161552)))
                           (__tmp161547
                            (let ((__tmp161548
                                   (let ((__tmp161550
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161549
                                          (let ()
                                            (declare (not safe))
                                            (cons _L159945_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161550 __tmp161549))))
                              (declare (not safe))
                              (cons __tmp161548 '()))))
                       (declare (not safe))
                       (cons __tmp161551 __tmp161547))))
                (declare (not safe))
                (cons __tmp161554 __tmp161546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161558
                                                       __tmp161545)))
                                             _hd159901159939_
                                             _hd159898159929_)
                                            (_g159890159908_
                                             _g159891159912_))))
                                    (_g159890159908_ _g159891159912_))))
                            (_g159890159908_ _g159891159912_))))
                    (_g159890159908_ _g159891159912_)))))
        (_g159889159963_ _$stx159886_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx159967_)
      (let* ((___stx161154161155_ _$stx159967_)
             (_g159974160045_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161154161155_)))))
        (let ((___kont161157161158_
               (lambda (_L160336_ _L160338_)
                 (let ((__tmp161564
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161559
                        (let ((__tmp161560
                               (let ((__tmp161561
                                      (let ((__tmp161563
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161562
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160336_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161563 __tmp161562))))
                                 (declare (not safe))
                                 (cons __tmp161561 '()))))
                          (declare (not safe))
                          (cons _L160338_ __tmp161560))))
                   (declare (not safe))
                   (cons __tmp161564 __tmp161559))))
              (___kont161159161160_
               (lambda (_L160255_ _L160257_)
                 (let ((__tmp161573
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161565
                        (let ((__tmp161566
                               (let ((__tmp161567
                                      (let ((__tmp161572
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161568
                                             (let ((__tmp161569
                                                    (lambda (_g160276160279_
                                                             _g160277160282_)
                                                      (let ((__tmp161570
                                                             (let ((__tmp161571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160276160279_ __tmp161571))))
                (declare (not safe))
                (cons __tmp161570 _g160277160282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161569
                                                       '()
                                                       _L160255_))))
                                        (declare (not safe))
                                        (cons __tmp161572 __tmp161568))))
                                 (declare (not safe))
                                 (cons __tmp161567 '()))))
                          (declare (not safe))
                          (cons _L160257_ __tmp161566))))
                   (declare (not safe))
                   (cons __tmp161573 __tmp161565))))
              (___kont161163161164_
               (lambda (_L160167_ _L160169_)
                 (let ((__tmp161580
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161574
                        (let ((__tmp161575
                               (let ((__tmp161576
                                      (let ((__tmp161579
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161577
                                             (let ((__tmp161578
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160167_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161578))))
                                        (declare (not safe))
                                        (cons __tmp161579 __tmp161577))))
                                 (declare (not safe))
                                 (cons __tmp161576 '()))))
                          (declare (not safe))
                          (cons _L160169_ __tmp161575))))
                   (declare (not safe))
                   (cons __tmp161580 __tmp161574))))
              (___kont161165161166_
               (lambda (_L160102_ _L160104_)
                 (let ((__tmp161590
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161581
                        (let ((__tmp161582
                               (let ((__tmp161583
                                      (let ((__tmp161589
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161584
                                             (let ((__tmp161585
                                                    (let ((__tmp161586
                                                           (lambda (_g160121160124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160122160127_)
                     (let ((__tmp161587
                            (let ((__tmp161588
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160121160124_ __tmp161588))))
                       (declare (not safe))
                       (cons __tmp161587 _g160122160127_)))))
              (declare (not safe))
              (foldr1 __tmp161586 '() _L160102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161585))))
                                        (declare (not safe))
                                        (cons __tmp161589 __tmp161584))))
                                 (declare (not safe))
                                 (cons __tmp161583 '()))))
                          (declare (not safe))
                          (cons _L160104_ __tmp161582))))
                   (declare (not safe))
                   (cons __tmp161590 __tmp161581)))))
          (let* ((___match161273161274_
                  (lambda (_e160027160052_
                           _hd160026160056_
                           _tl160025160059_
                           _e160030160062_
                           _hd160029160066_
                           _tl160028160069_
                           ___splice161167161168_
                           _target160031160072_
                           _tl160033160075_)
                    (letrec ((_loop160034160078_
                              (lambda (_hd160032160082_ _arity160038160085_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160032160082_))
                                    (let ((_e160035160088_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160032160082_))))
                                      (let ((_lp-tl160037160095_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160035160088_)))
                                            (_lp-hd160036160092_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160035160088_))))
                                        (_loop160034160078_
                                         _lp-tl160037160095_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160036160092_
                                                 _arity160038160085_)))))
                                    (let ((_arity160039160098_
                                           (reverse _arity160038160085_)))
                                      (___kont161165161166_
                                       _arity160039160098_
                                       _hd160029160066_))))))
                      (_loop160034160078_ _target160031160072_ '()))))
                 (___match161233161234_
                  (lambda (_e159995160191_
                           _hd159994160195_
                           _tl159993160198_
                           _e159998160201_
                           _hd159997160205_
                           _tl159996160208_
                           _e160001160211_
                           _hd160000160215_
                           _tl159999160218_
                           _e160002160221_
                           ___splice161161161162_
                           _target160003160225_
                           _tl160005160228_)
                    (letrec ((_loop160006160231_
                              (lambda (_hd160004160235_ _arity160010160238_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160004160235_))
                                    (let ((_e160007160241_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160004160235_))))
                                      (let ((_lp-tl160009160248_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160007160241_)))
                                            (_lp-hd160008160245_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160007160241_))))
                                        (_loop160006160231_
                                         _lp-tl160009160248_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160008160245_
                                                 _arity160010160238_)))))
                                    (let ((_arity160011160251_
                                           (reverse _arity160010160238_)))
                                      (___kont161159161160_
                                       _arity160011160251_
                                       _hd159997160205_))))))
                      (_loop160006160231_ _target160003160225_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161154161155_))
                (let ((_e159980160292_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161154161155_))))
                  (let ((_tl159978160299_
                         (let () (declare (not safe)) (##cdr _e159980160292_)))
                        (_hd159979160296_
                         (let ()
                           (declare (not safe))
                           (##car _e159980160292_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159978160299_))
                        (let ((_e159983160302_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159978160299_))))
                          (let ((_tl159981160309_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159983160302_)))
                                (_hd159982160306_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159983160302_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159981160309_))
                                (let ((_e159986160312_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159981160309_))))
                                  (let ((_tl159984160319_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159986160312_)))
                                        (_hd159985160316_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159986160312_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd159985160316_))
                                        (let ((_e159987160322_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd159985160316_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e159987160322_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl159984160319_))
                                                  (let ((_e159990160326_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl159984160319_))))
                                                    (let ((_tl159988160333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e159990160326_)))
                                                          (_hd159989160330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e159990160326_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159988160333_))
                                                          (___kont161157161158_
                                                           _hd159989160330_
                                                           _hd159982160306_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl159984160319_))
                      (let ((___splice161161161162_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl159984160319_ '0))))
                        (let ((_tl160005160228_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161161161162_ '1)))
                              (_target160003160225_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161161161162_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160005160228_))
                              (___match161233161234_
                               _e159980160292_
                               _hd159979160296_
                               _tl159978160299_
                               _e159983160302_
                               _hd159982160306_
                               _tl159981160309_
                               _e159986160312_
                               _hd159985160316_
                               _tl159984160319_
                               _e159987160322_
                               ___splice161161161162_
                               _target160003160225_
                               _tl160005160228_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl159981160309_))
                                  (let ((___splice161167161168_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl159981160309_
                                            '0))))
                                    (let ((_tl160033160075_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161167161168_
                                              '1)))
                                          (_target160031160072_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161167161168_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160033160075_))
                                          (___match161273161274_
                                           _e159980160292_
                                           _hd159979160296_
                                           _tl159978160299_
                                           _e159983160302_
                                           _hd159982160306_
                                           _tl159981160309_
                                           ___splice161167161168_
                                           _target160031160072_
                                           _tl160033160075_)
                                          (let ()
                                            (declare (not safe))
                                            (_g159974160045_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g159974160045_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl159981160309_))
                          (let ((___splice161167161168_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl159981160309_
                                    '0))))
                            (let ((_tl160033160075_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161167161168_ '1)))
                                  (_target160031160072_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161167161168_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160033160075_))
                                  (___match161273161274_
                                   _e159980160292_
                                   _hd159979160296_
                                   _tl159978160299_
                                   _e159983160302_
                                   _hd159982160306_
                                   _tl159981160309_
                                   ___splice161167161168_
                                   _target160031160072_
                                   _tl160033160075_)
                                  (let ()
                                    (declare (not safe))
                                    (_g159974160045_)))))
                          (let () (declare (not safe)) (_g159974160045_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159984160319_))
                                                      (let ((___splice161161161162_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159984160319_ '0))))
                (let ((_tl160005160228_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161161161162_ '1)))
                      (_target160003160225_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161161161162_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160005160228_))
                      (___match161233161234_
                       _e159980160292_
                       _hd159979160296_
                       _tl159978160299_
                       _e159983160302_
                       _hd159982160306_
                       _tl159981160309_
                       _e159986160312_
                       _hd159985160316_
                       _tl159984160319_
                       _e159987160322_
                       ___splice161161161162_
                       _target160003160225_
                       _tl160005160228_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl159984160319_))
                          (___kont161163161164_
                           _hd159985160316_
                           _hd159982160306_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl159981160309_))
                              (let ((___splice161167161168_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl159981160309_
                                        '0))))
                                (let ((_tl160033160075_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161167161168_
                                          '1)))
                                      (_target160031160072_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161167161168_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160033160075_))
                                      (___match161273161274_
                                       _e159980160292_
                                       _hd159979160296_
                                       _tl159978160299_
                                       _e159983160302_
                                       _hd159982160306_
                                       _tl159981160309_
                                       ___splice161167161168_
                                       _target160031160072_
                                       _tl160033160075_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159974160045_)))))
                              (let ()
                                (declare (not safe))
                                (_g159974160045_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159984160319_))
                  (___kont161163161164_ _hd159985160316_ _hd159982160306_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl159981160309_))
                      (let ((___splice161167161168_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl159981160309_ '0))))
                        (let ((_tl160033160075_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161167161168_ '1)))
                              (_target160031160072_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161167161168_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160033160075_))
                              (___match161273161274_
                               _e159980160292_
                               _hd159979160296_
                               _tl159978160299_
                               _e159983160302_
                               _hd159982160306_
                               _tl159981160309_
                               ___splice161167161168_
                               _target160031160072_
                               _tl160033160075_)
                              (let ()
                                (declare (not safe))
                                (_g159974160045_)))))
                      (let () (declare (not safe)) (_g159974160045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159984160319_))
                                                  (___kont161163161164_
                                                   _hd159985160316_
                                                   _hd159982160306_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159981160309_))
                                                      (let ((___splice161167161168_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159981160309_ '0))))
                (let ((_tl160033160075_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161167161168_ '1)))
                      (_target160031160072_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161167161168_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160033160075_))
                      (___match161273161274_
                       _e159980160292_
                       _hd159979160296_
                       _tl159978160299_
                       _e159983160302_
                       _hd159982160306_
                       _tl159981160309_
                       ___splice161167161168_
                       _target160031160072_
                       _tl160033160075_)
                      (let () (declare (not safe)) (_g159974160045_)))))
              (let () (declare (not safe)) (_g159974160045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159984160319_))
                                            (___kont161163161164_
                                             _hd159985160316_
                                             _hd159982160306_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl159981160309_))
                                                (let ((___splice161167161168_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl159981160309_
                                                          '0))))
                                                  (let ((_tl160033160075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161167161168_
                                                            '1)))
                                                        (_target160031160072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161167161168_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160033160075_))
                                                        (___match161273161274_
                                                         _e159980160292_
                                                         _hd159979160296_
                                                         _tl159978160299_
                                                         _e159983160302_
                                                         _hd159982160306_
                                                         _tl159981160309_
                                                         ___splice161167161168_
                                                         _target160031160072_
                                                         _tl160033160075_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159974160045_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g159974160045_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159981160309_))
                                    (let ((___splice161167161168_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159981160309_
                                              '0))))
                                      (let ((_tl160033160075_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161167161168_
                                                '1)))
                                            (_target160031160072_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161167161168_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160033160075_))
                                            (___match161273161274_
                                             _e159980160292_
                                             _hd159979160296_
                                             _tl159978160299_
                                             _e159983160302_
                                             _hd159982160306_
                                             _tl159981160309_
                                             ___splice161167161168_
                                             _target160031160072_
                                             _tl160033160075_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159974160045_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159974160045_))))))
                        (let () (declare (not safe)) (_g159974160045_)))))
                (let () (declare (not safe)) (_g159974160045_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160362_)
      (let* ((___stx161276161277_ _$stx160362_)
             (_g160367160402_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161276161277_)))))
        (let ((___kont161279161280_
               (lambda (_L160524_ _L160526_)
                 (let ((__tmp161596
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161591
                        (let ((__tmp161592
                               (let ((__tmp161593
                                      (let ((__tmp161595
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161594
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160524_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161595 __tmp161594))))
                                 (declare (not safe))
                                 (cons __tmp161593 '()))))
                          (declare (not safe))
                          (cons _L160526_ __tmp161592))))
                   (declare (not safe))
                   (cons __tmp161596 __tmp161591))))
              (___kont161281161282_
               (lambda (_L160459_ _L160461_)
                 (let ((__tmp161605
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161597
                        (let ((__tmp161598
                               (let ((__tmp161599
                                      (let ((__tmp161604
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161600
                                             (let ((__tmp161601
                                                    (lambda (_g160478160481_
                                                             _g160479160484_)
                                                      (let ((__tmp161602
                                                             (let ((__tmp161603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160478160481_ __tmp161603))))
                (declare (not safe))
                (cons __tmp161602 _g160479160484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161601
                                                       '()
                                                       _L160459_))))
                                        (declare (not safe))
                                        (cons __tmp161604 __tmp161600))))
                                 (declare (not safe))
                                 (cons __tmp161599 '()))))
                          (declare (not safe))
                          (cons _L160461_ __tmp161598))))
                   (declare (not safe))
                   (cons __tmp161605 __tmp161597)))))
          (let ((___match161325161326_
                 (lambda (_e160384160409_
                          _hd160383160413_
                          _tl160382160416_
                          _e160387160419_
                          _hd160386160423_
                          _tl160385160426_
                          ___splice161283161284_
                          _target160388160429_
                          _tl160390160432_)
                   (letrec ((_loop160391160435_
                             (lambda (_hd160389160439_ _arity160395160442_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160389160439_))
                                   (let ((_e160392160445_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160389160439_))))
                                     (let ((_lp-tl160394160452_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160392160445_)))
                                           (_lp-hd160393160449_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160392160445_))))
                                       (_loop160391160435_
                                        _lp-tl160394160452_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160393160449_
                                                _arity160395160442_)))))
                                   (let ((_arity160396160455_
                                          (reverse _arity160395160442_)))
                                     (___kont161281161282_
                                      _arity160396160455_
                                      _hd160386160423_))))))
                     (_loop160391160435_ _target160388160429_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161276161277_))
                (let ((_e160373160494_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161276161277_))))
                  (let ((_tl160371160501_
                         (let () (declare (not safe)) (##cdr _e160373160494_)))
                        (_hd160372160498_
                         (let ()
                           (declare (not safe))
                           (##car _e160373160494_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160371160501_))
                        (let ((_e160376160504_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160371160501_))))
                          (let ((_tl160374160511_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160376160504_)))
                                (_hd160375160508_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160376160504_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160374160511_))
                                (let ((_e160379160514_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160374160511_))))
                                  (let ((_tl160377160521_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160379160514_)))
                                        (_hd160378160518_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160379160514_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160377160521_))
                                        (___kont161279161280_
                                         _hd160378160518_
                                         _hd160375160508_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160374160511_))
                                            (let ((___splice161283161284_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160374160511_
                                                      '0))))
                                              (let ((_tl160390160432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161283161284_
                                                        '1)))
                                                    (_target160388160429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161283161284_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160390160432_))
                                                    (___match161325161326_
                                                     _e160373160494_
                                                     _hd160372160498_
                                                     _tl160371160501_
                                                     _e160376160504_
                                                     _hd160375160508_
                                                     _tl160374160511_
                                                     ___splice161283161284_
                                                     _target160388160429_
                                                     _tl160390160432_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160367160402_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160367160402_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160374160511_))
                                    (let ((___splice161283161284_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160374160511_
                                              '0))))
                                      (let ((_tl160390160432_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161283161284_
                                                '1)))
                                            (_target160388160429_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161283161284_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160390160432_))
                                            (___match161325161326_
                                             _e160373160494_
                                             _hd160372160498_
                                             _tl160371160501_
                                             _e160376160504_
                                             _hd160375160508_
                                             _tl160374160511_
                                             ___splice161283161284_
                                             _target160388160429_
                                             _tl160390160432_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160367160402_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160367160402_))))))
                        (let () (declare (not safe)) (_g160367160402_)))))
                (let () (declare (not safe)) (_g160367160402_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160546_)
      (let* ((_g160550160585_
              (lambda (_g160551160581_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160551160581_))))
             (_g160549160713_
              (lambda (_g160551160589_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160551160589_))
                    (let ((_e160556160592_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160551160589_))))
                      (let ((_hd160555160596_
                             (let ()
                               (declare (not safe))
                               (##car _e160556160592_)))
                            (_tl160554160599_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160556160592_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160554160599_))
                            (let ((_g161606_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160554160599_
                                      '0))))
                              (begin
                                (let ((_g161607_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161606_)
                                             (##vector-length _g161606_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161607_ 2)))
                                      (error "Context expects 2 values"
                                             _g161607_)))
                                (let ((_target160557160602_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161606_ 0)))
                                      (_tl160559160605_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161606_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160559160605_))
                                      (letrec ((_loop160560160608_
                                                (lambda (_hd160558160612_
                                                         _arity160564160615_
                                                         _prim160565160617_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160558160612_))
                                                      (let ((_e160561160620_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160558160612_))))
                (let ((_lp-hd160562160624_
                       (let () (declare (not safe)) (##car _e160561160620_)))
                      (_lp-tl160563160627_
                       (let () (declare (not safe)) (##cdr _e160561160620_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160562160624_))
                      (let ((_e160570160630_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160562160624_))))
                        (let ((_hd160569160634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160570160630_)))
                              (_tl160568160637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160570160630_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160568160637_))
                              (let ((_g161616_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160568160637_
                                        '0))))
                                (begin
                                  (let ((_g161617_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161616_)
                                               (##vector-length _g161616_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161617_ 2)))
                                        (error "Context expects 2 values"
                                               _g161617_)))
                                  (let ((_target160571160640_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161616_ 0)))
                                        (_tl160573160643_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161616_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160573160643_))
                                        (letrec ((_loop160574160646_
                                                  (lambda (_hd160572160650_
                                                           _arity160578160653_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160572160650_))
                                                        (let ((_e160575160656_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160572160650_))))
                  (let ((_lp-hd160576160660_
                         (let () (declare (not safe)) (##car _e160575160656_)))
                        (_lp-tl160577160663_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160575160656_))))
                    (_loop160574160646_
                     _lp-tl160577160663_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160576160660_ _arity160578160653_)))))
                (let ((_arity160579160666_ (reverse _arity160578160653_)))
                  (_loop160560160608_
                   _lp-tl160563160627_
                   (let ()
                     (declare (not safe))
                     (cons _arity160579160666_ _arity160564160615_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160569160634_ _prim160565160617_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160574160646_
                                           _target160571160640_
                                           '()))
                                        (_g160550160585_ _g160551160589_)))))
                              (_g160550160585_ _g160551160589_))))
                      (_g160550160585_ _g160551160589_))))
              (let ((_arity160566160670_ (reverse _arity160564160615_))
                    (_prim160567160673_ (reverse _prim160565160617_)))
                ((lambda (_L160676_ _L160678_)
                   (let ((__tmp161615
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161608
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160676_
                               _L160678_))
                            (let ((__tmp161609
                                   (lambda (_g160693160699_
                                            _g160694160702_
                                            _g160695160704_)
                                     (let ((__tmp161610
                                            (let ((__tmp161614
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161611
                                                   (let ((__tmp161612
                                                          (let ((__tmp161613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160696160707_ _g160697160710_)
                           (let ()
                             (declare (not safe))
                             (cons _g160696160707_ _g160697160710_)))))
                    (declare (not safe))
                    (foldr1 __tmp161613 '() _g160693160699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160694160702_
                                                           __tmp161612))))
                                              (declare (not safe))
                                              (cons __tmp161614 __tmp161611))))
                                       (declare (not safe))
                                       (cons __tmp161610 _g160695160704_)))))
                              (declare (not safe))
                              (foldr2 __tmp161609 '() _L160676_ _L160678_)))))
                     (declare (not safe))
                     (cons __tmp161615 __tmp161608)))
                 _arity160566160670_
                 _prim160567160673_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160560160608_
                                         _target160557160602_
                                         '()
                                         '()))
                                      (_g160550160585_ _g160551160589_)))))
                            (_g160550160585_ _g160551160589_))))
                    (_g160550160585_ _g160551160589_)))))
        (_g160549160713_ _$stx160546_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160719_)
      (let* ((_g160723160758_
              (lambda (_g160724160754_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160724160754_))))
             (_g160722160886_
              (lambda (_g160724160762_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160724160762_))
                    (let ((_e160729160765_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160724160762_))))
                      (let ((_hd160728160769_
                             (let ()
                               (declare (not safe))
                               (##car _e160729160765_)))
                            (_tl160727160772_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160729160765_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160727160772_))
                            (let ((_g161618_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160727160772_
                                      '0))))
                              (begin
                                (let ((_g161619_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161618_)
                                             (##vector-length _g161618_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161619_ 2)))
                                      (error "Context expects 2 values"
                                             _g161619_)))
                                (let ((_target160730160775_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161618_ 0)))
                                      (_tl160732160778_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161618_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160732160778_))
                                      (letrec ((_loop160733160781_
                                                (lambda (_hd160731160785_
                                                         _arity160737160788_
                                                         _prim160738160790_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160731160785_))
                                                      (let ((_e160734160793_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160731160785_))))
                (let ((_lp-hd160735160797_
                       (let () (declare (not safe)) (##car _e160734160793_)))
                      (_lp-tl160736160800_
                       (let () (declare (not safe)) (##cdr _e160734160793_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160735160797_))
                      (let ((_e160743160803_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160735160797_))))
                        (let ((_hd160742160807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160743160803_)))
                              (_tl160741160810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160743160803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160741160810_))
                              (let ((_g161628_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160741160810_
                                        '0))))
                                (begin
                                  (let ((_g161629_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161628_)
                                               (##vector-length _g161628_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161629_ 2)))
                                        (error "Context expects 2 values"
                                               _g161629_)))
                                  (let ((_target160744160813_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161628_ 0)))
                                        (_tl160746160816_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161628_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160746160816_))
                                        (letrec ((_loop160747160819_
                                                  (lambda (_hd160745160823_
                                                           _arity160751160826_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160745160823_))
                                                        (let ((_e160748160829_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160745160823_))))
                  (let ((_lp-hd160749160833_
                         (let () (declare (not safe)) (##car _e160748160829_)))
                        (_lp-tl160750160836_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160748160829_))))
                    (_loop160747160819_
                     _lp-tl160750160836_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160749160833_ _arity160751160826_)))))
                (let ((_arity160752160839_ (reverse _arity160751160826_)))
                  (_loop160733160781_
                   _lp-tl160736160800_
                   (let ()
                     (declare (not safe))
                     (cons _arity160752160839_ _arity160737160788_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160742160807_ _prim160738160790_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160747160819_
                                           _target160744160813_
                                           '()))
                                        (_g160723160758_ _g160724160762_)))))
                              (_g160723160758_ _g160724160762_))))
                      (_g160723160758_ _g160724160762_))))
              (let ((_arity160739160843_ (reverse _arity160737160788_))
                    (_prim160740160846_ (reverse _prim160738160790_)))
                ((lambda (_L160849_ _L160851_)
                   (let ((__tmp161627
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161620
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160849_
                               _L160851_))
                            (let ((__tmp161621
                                   (lambda (_g160866160872_
                                            _g160867160875_
                                            _g160868160877_)
                                     (let ((__tmp161622
                                            (let ((__tmp161626
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161623
                                                   (let ((__tmp161624
                                                          (let ((__tmp161625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160869160880_ _g160870160883_)
                           (let ()
                             (declare (not safe))
                             (cons _g160869160880_ _g160870160883_)))))
                    (declare (not safe))
                    (foldr1 __tmp161625 '() _g160866160872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160867160875_
                                                           __tmp161624))))
                                              (declare (not safe))
                                              (cons __tmp161626 __tmp161623))))
                                       (declare (not safe))
                                       (cons __tmp161622 _g160868160877_)))))
                              (declare (not safe))
                              (foldr2 __tmp161621 '() _L160849_ _L160851_)))))
                     (declare (not safe))
                     (cons __tmp161627 __tmp161620)))
                 _arity160739160843_
                 _prim160740160846_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160733160781_
                                         _target160730160775_
                                         '()
                                         '()))
                                      (_g160723160758_ _g160724160762_)))))
                            (_g160723160758_ _g160724160762_))))
                    (_g160723160758_ _g160724160762_)))))
        (_g160722160886_ _$stx160719_)))))
