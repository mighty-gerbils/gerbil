(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx218396_)
      (let* ((_g218400218429_
              (lambda (_g218401218425_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g218401218425_))))
             (_g218399218530_
              (lambda (_g218401218433_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g218401218433_))
                    (let ((_e218406218436_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g218401218433_))))
                      (let ((_hd218405218440_
                             (let ()
                               (declare (not safe))
                               (##car _e218406218436_)))
                            (_tl218404218443_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218406218436_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl218404218443_))
                            (let ((_g233516_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl218404218443_
                                      '0))))
                              (begin
                                (let ((_g233517_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233516_)
                                             (##vector-length _g233516_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233517_ 2)))
                                      (error "Context expects 2 values"
                                             _g233517_)))
                                (let ((_target218407218446_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233516_ 0)))
                                      (_tl218409218449_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233516_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218409218449_))
                                      (letrec ((_loop218410218452_
                                                (lambda (_hd218408218456_
                                                         _type-e218414218459_
                                                         _id218415218461_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd218408218456_))
                                                      (let ((_e218411218464_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd218408218456_))))
                (let ((_lp-hd218412218468_
                       (let () (declare (not safe)) (##car _e218411218464_)))
                      (_lp-tl218413218471_
                       (let () (declare (not safe)) (##cdr _e218411218464_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd218412218468_))
                      (let ((_e218420218474_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd218412218468_))))
                        (let ((_hd218419218478_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218420218474_)))
                              (_tl218418218481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218420218474_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218418218481_))
                              (let ((_e218423218484_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl218418218481_))))
                                (let ((_hd218422218488_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218423218484_)))
                                      (_tl218421218491_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218423218484_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218421218491_))
                                      (_loop218410218452_
                                       _lp-tl218413218471_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218422218488_
                                               _type-e218414218459_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218419218478_
                                               _id218415218461_)))
                                      (_g218400218429_ _g218401218433_))))
                              (_g218400218429_ _g218401218433_))))
                      (_g218400218429_ _g218401218433_))))
              (let ((_type-e218416218494_ (reverse _type-e218414218459_))
                    (_id218417218497_ (reverse _id218415218461_)))
                ((lambda (_L218500_ _L218502_)
                   (let ((__tmp233529
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp233518
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L218500_
                               _L218502_))
                            (let ((__tmp233519
                                   (lambda (_g218518218522_
                                            _g218519218525_
                                            _g218520218527_)
                                     (let ((__tmp233520
                                            (let ((__tmp233528
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp233521
                                                   (let ((__tmp233527
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp233522
                                                          (let ((__tmp233524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233526
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp233525
                                (let ()
                                  (declare (not safe))
                                  (cons _g218519218525_ '()))))
                           (declare (not safe))
                           (cons __tmp233526 __tmp233525)))
                        (__tmp233523
                         (let ()
                           (declare (not safe))
                           (cons _g218518218522_ '()))))
                    (declare (not safe))
                    (cons __tmp233524 __tmp233523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233527
                                                           __tmp233522))))
                                              (declare (not safe))
                                              (cons __tmp233528 __tmp233521))))
                                       (declare (not safe))
                                       (cons __tmp233520 _g218520218527_)))))
                              (declare (not safe))
                              (foldr2 __tmp233519 '() _L218500_ _L218502_)))))
                     (declare (not safe))
                     (cons __tmp233529 __tmp233518)))
                 _type-e218416218494_
                 _id218417218497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop218410218452_
                                         _target218407218446_
                                         '()
                                         '()))
                                      (_g218400218429_ _g218401218433_)))))
                            (_g218400218429_ _g218401218433_))))
                    (_g218400218429_ _g218401218433_)))))
        (_g218399218530_ _$stx218396_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx218535_)
      (let* ((_g218539218568_
              (lambda (_g218540218564_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g218540218564_))))
             (_g218538218668_
              (lambda (_g218540218572_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g218540218572_))
                    (let ((_e218545218575_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g218540218572_))))
                      (let ((_hd218544218579_
                             (let ()
                               (declare (not safe))
                               (##car _e218545218575_)))
                            (_tl218543218582_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218545218575_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl218543218582_))
                            (let ((_g233530_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl218543218582_
                                      '0))))
                              (begin
                                (let ((_g233531_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233530_)
                                             (##vector-length _g233530_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233531_ 2)))
                                      (error "Context expects 2 values"
                                             _g233531_)))
                                (let ((_target218546218585_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233530_ 0)))
                                      (_tl218548218588_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233530_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218548218588_))
                                      (letrec ((_loop218549218591_
                                                (lambda (_hd218547218595_
                                                         _type-e218553218598_
                                                         _id218554218600_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd218547218595_))
                                                      (let ((_e218550218603_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd218547218595_))))
                (let ((_lp-hd218551218607_
                       (let () (declare (not safe)) (##car _e218550218603_)))
                      (_lp-tl218552218610_
                       (let () (declare (not safe)) (##cdr _e218550218603_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd218551218607_))
                      (let ((_e218559218613_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd218551218607_))))
                        (let ((_hd218558218617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218559218613_)))
                              (_tl218557218620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218559218613_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218557218620_))
                              (let ((_e218562218623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl218557218620_))))
                                (let ((_hd218561218627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218562218623_)))
                                      (_tl218560218630_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218562218623_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218560218630_))
                                      (_loop218549218591_
                                       _lp-tl218552218610_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218561218627_
                                               _type-e218553218598_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218558218617_
                                               _id218554218600_)))
                                      (_g218539218568_ _g218540218572_))))
                              (_g218539218568_ _g218540218572_))))
                      (_g218539218568_ _g218540218572_))))
              (let ((_type-e218555218633_ (reverse _type-e218553218598_))
                    (_id218556218636_ (reverse _id218554218600_)))
                ((lambda (_L218639_ _L218641_)
                   (let ((__tmp233543
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp233532
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L218639_
                               _L218641_))
                            (let ((__tmp233533
                                   (lambda (_g218656218660_
                                            _g218657218663_
                                            _g218658218665_)
                                     (let ((__tmp233534
                                            (let ((__tmp233542
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp233535
                                                   (let ((__tmp233541
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp233536
                                                          (let ((__tmp233538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233540
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp233539
                                (let ()
                                  (declare (not safe))
                                  (cons _g218657218663_ '()))))
                           (declare (not safe))
                           (cons __tmp233540 __tmp233539)))
                        (__tmp233537
                         (let ()
                           (declare (not safe))
                           (cons _g218656218660_ '()))))
                    (declare (not safe))
                    (cons __tmp233538 __tmp233537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233541
                                                           __tmp233536))))
                                              (declare (not safe))
                                              (cons __tmp233542 __tmp233535))))
                                       (declare (not safe))
                                       (cons __tmp233534 _g218658218665_)))))
                              (declare (not safe))
                              (foldr2 __tmp233533 '() _L218639_ _L218641_)))))
                     (declare (not safe))
                     (cons __tmp233543 __tmp233532)))
                 _type-e218555218633_
                 _id218556218636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop218549218591_
                                         _target218546218585_
                                         '()
                                         '()))
                                      (_g218539218568_ _g218540218572_)))))
                            (_g218539218568_ _g218540218572_))))
                    (_g218539218568_ _g218540218572_)))))
        (_g218538218668_ _$stx218535_)))))
