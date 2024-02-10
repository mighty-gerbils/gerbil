(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx218346_)
      (let* ((_g218350218379_
              (lambda (_g218351218375_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g218351218375_))))
             (_g218349218480_
              (lambda (_g218351218383_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g218351218383_))
                    (let ((_e218356218386_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g218351218383_))))
                      (let ((_hd218355218390_
                             (let ()
                               (declare (not safe))
                               (##car _e218356218386_)))
                            (_tl218354218393_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218356218386_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl218354218393_))
                            (let ((_g233466_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl218354218393_
                                      '0))))
                              (begin
                                (let ((_g233467_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233466_)
                                             (##vector-length _g233466_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233467_ 2)))
                                      (error "Context expects 2 values"
                                             _g233467_)))
                                (let ((_target218357218396_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233466_ 0)))
                                      (_tl218359218399_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233466_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218359218399_))
                                      (letrec ((_loop218360218402_
                                                (lambda (_hd218358218406_
                                                         _type-e218364218409_
                                                         _id218365218411_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd218358218406_))
                                                      (let ((_e218361218414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd218358218406_))))
                (let ((_lp-hd218362218418_
                       (let () (declare (not safe)) (##car _e218361218414_)))
                      (_lp-tl218363218421_
                       (let () (declare (not safe)) (##cdr _e218361218414_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd218362218418_))
                      (let ((_e218370218424_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd218362218418_))))
                        (let ((_hd218369218428_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218370218424_)))
                              (_tl218368218431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218370218424_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218368218431_))
                              (let ((_e218373218434_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl218368218431_))))
                                (let ((_hd218372218438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218373218434_)))
                                      (_tl218371218441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218373218434_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218371218441_))
                                      (_loop218360218402_
                                       _lp-tl218363218421_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218372218438_
                                               _type-e218364218409_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218369218428_
                                               _id218365218411_)))
                                      (_g218350218379_ _g218351218383_))))
                              (_g218350218379_ _g218351218383_))))
                      (_g218350218379_ _g218351218383_))))
              (let ((_type-e218366218444_ (reverse _type-e218364218409_))
                    (_id218367218447_ (reverse _id218365218411_)))
                ((lambda (_L218450_ _L218452_)
                   (let ((__tmp233479
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp233468
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L218450_
                               _L218452_))
                            (let ((__tmp233469
                                   (lambda (_g218468218472_
                                            _g218469218475_
                                            _g218470218477_)
                                     (let ((__tmp233470
                                            (let ((__tmp233478
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp233471
                                                   (let ((__tmp233477
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp233472
                                                          (let ((__tmp233474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233476
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp233475
                                (let ()
                                  (declare (not safe))
                                  (cons _g218469218475_ '()))))
                           (declare (not safe))
                           (cons __tmp233476 __tmp233475)))
                        (__tmp233473
                         (let ()
                           (declare (not safe))
                           (cons _g218468218472_ '()))))
                    (declare (not safe))
                    (cons __tmp233474 __tmp233473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233477
                                                           __tmp233472))))
                                              (declare (not safe))
                                              (cons __tmp233478 __tmp233471))))
                                       (declare (not safe))
                                       (cons __tmp233470 _g218470218477_)))))
                              (declare (not safe))
                              (foldr2 __tmp233469 '() _L218450_ _L218452_)))))
                     (declare (not safe))
                     (cons __tmp233479 __tmp233468)))
                 _type-e218366218444_
                 _id218367218447_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop218360218402_
                                         _target218357218396_
                                         '()
                                         '()))
                                      (_g218350218379_ _g218351218383_)))))
                            (_g218350218379_ _g218351218383_))))
                    (_g218350218379_ _g218351218383_)))))
        (_g218349218480_ _$stx218346_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx218485_)
      (let* ((_g218489218518_
              (lambda (_g218490218514_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g218490218514_))))
             (_g218488218618_
              (lambda (_g218490218522_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g218490218522_))
                    (let ((_e218495218525_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g218490218522_))))
                      (let ((_hd218494218529_
                             (let ()
                               (declare (not safe))
                               (##car _e218495218525_)))
                            (_tl218493218532_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218495218525_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl218493218532_))
                            (let ((_g233480_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl218493218532_
                                      '0))))
                              (begin
                                (let ((_g233481_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233480_)
                                             (##vector-length _g233480_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233481_ 2)))
                                      (error "Context expects 2 values"
                                             _g233481_)))
                                (let ((_target218496218535_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233480_ 0)))
                                      (_tl218498218538_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233480_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218498218538_))
                                      (letrec ((_loop218499218541_
                                                (lambda (_hd218497218545_
                                                         _type-e218503218548_
                                                         _id218504218550_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd218497218545_))
                                                      (let ((_e218500218553_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd218497218545_))))
                (let ((_lp-hd218501218557_
                       (let () (declare (not safe)) (##car _e218500218553_)))
                      (_lp-tl218502218560_
                       (let () (declare (not safe)) (##cdr _e218500218553_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd218501218557_))
                      (let ((_e218509218563_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd218501218557_))))
                        (let ((_hd218508218567_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218509218563_)))
                              (_tl218507218570_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218509218563_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218507218570_))
                              (let ((_e218512218573_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl218507218570_))))
                                (let ((_hd218511218577_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218512218573_)))
                                      (_tl218510218580_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218512218573_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218510218580_))
                                      (_loop218499218541_
                                       _lp-tl218502218560_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218511218577_
                                               _type-e218503218548_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218508218567_
                                               _id218504218550_)))
                                      (_g218489218518_ _g218490218522_))))
                              (_g218489218518_ _g218490218522_))))
                      (_g218489218518_ _g218490218522_))))
              (let ((_type-e218505218583_ (reverse _type-e218503218548_))
                    (_id218506218586_ (reverse _id218504218550_)))
                ((lambda (_L218589_ _L218591_)
                   (let ((__tmp233493
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp233482
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L218589_
                               _L218591_))
                            (let ((__tmp233483
                                   (lambda (_g218606218610_
                                            _g218607218613_
                                            _g218608218615_)
                                     (let ((__tmp233484
                                            (let ((__tmp233492
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp233485
                                                   (let ((__tmp233491
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp233486
                                                          (let ((__tmp233488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233490
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp233489
                                (let ()
                                  (declare (not safe))
                                  (cons _g218607218613_ '()))))
                           (declare (not safe))
                           (cons __tmp233490 __tmp233489)))
                        (__tmp233487
                         (let ()
                           (declare (not safe))
                           (cons _g218606218610_ '()))))
                    (declare (not safe))
                    (cons __tmp233488 __tmp233487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233491
                                                           __tmp233486))))
                                              (declare (not safe))
                                              (cons __tmp233492 __tmp233485))))
                                       (declare (not safe))
                                       (cons __tmp233484 _g218608218615_)))))
                              (declare (not safe))
                              (foldr2 __tmp233483 '() _L218589_ _L218591_)))))
                     (declare (not safe))
                     (cons __tmp233493 __tmp233482)))
                 _type-e218505218583_
                 _id218506218586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop218499218541_
                                         _target218496218535_
                                         '()
                                         '()))
                                      (_g218489218518_ _g218490218522_)))))
                            (_g218489218518_ _g218490218522_))))
                    (_g218489218518_ _g218490218522_)))))
        (_g218488218618_ _$stx218485_)))))
