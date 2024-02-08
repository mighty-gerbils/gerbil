(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx218416_)
      (let* ((_g218420218449_
              (lambda (_g218421218445_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g218421218445_))))
             (_g218419218550_
              (lambda (_g218421218453_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g218421218453_))
                    (let ((_e218426218456_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g218421218453_))))
                      (let ((_hd218425218460_
                             (let ()
                               (declare (not safe))
                               (##car _e218426218456_)))
                            (_tl218424218463_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218426218456_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl218424218463_))
                            (let ((_g233536_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl218424218463_
                                      '0))))
                              (begin
                                (let ((_g233537_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233536_)
                                             (##vector-length _g233536_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233537_ 2)))
                                      (error "Context expects 2 values"
                                             _g233537_)))
                                (let ((_target218427218466_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233536_ 0)))
                                      (_tl218429218469_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233536_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218429218469_))
                                      (letrec ((_loop218430218472_
                                                (lambda (_hd218428218476_
                                                         _type-e218434218479_
                                                         _id218435218481_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd218428218476_))
                                                      (let ((_e218431218484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd218428218476_))))
                (let ((_lp-hd218432218488_
                       (let () (declare (not safe)) (##car _e218431218484_)))
                      (_lp-tl218433218491_
                       (let () (declare (not safe)) (##cdr _e218431218484_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd218432218488_))
                      (let ((_e218440218494_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd218432218488_))))
                        (let ((_hd218439218498_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218440218494_)))
                              (_tl218438218501_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218440218494_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218438218501_))
                              (let ((_e218443218504_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl218438218501_))))
                                (let ((_hd218442218508_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218443218504_)))
                                      (_tl218441218511_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218443218504_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218441218511_))
                                      (_loop218430218472_
                                       _lp-tl218433218491_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218442218508_
                                               _type-e218434218479_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218439218498_
                                               _id218435218481_)))
                                      (_g218420218449_ _g218421218453_))))
                              (_g218420218449_ _g218421218453_))))
                      (_g218420218449_ _g218421218453_))))
              (let ((_type-e218436218514_ (reverse _type-e218434218479_))
                    (_id218437218517_ (reverse _id218435218481_)))
                ((lambda (_L218520_ _L218522_)
                   (let ((__tmp233549
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp233538
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L218520_
                               _L218522_))
                            (let ((__tmp233539
                                   (lambda (_g218538218542_
                                            _g218539218545_
                                            _g218540218547_)
                                     (let ((__tmp233540
                                            (let ((__tmp233548
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp233541
                                                   (let ((__tmp233547
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp233542
                                                          (let ((__tmp233544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233546
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp233545
                                (let ()
                                  (declare (not safe))
                                  (cons _g218539218545_ '()))))
                           (declare (not safe))
                           (cons __tmp233546 __tmp233545)))
                        (__tmp233543
                         (let ()
                           (declare (not safe))
                           (cons _g218538218542_ '()))))
                    (declare (not safe))
                    (cons __tmp233544 __tmp233543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233547
                                                           __tmp233542))))
                                              (declare (not safe))
                                              (cons __tmp233548 __tmp233541))))
                                       (declare (not safe))
                                       (cons __tmp233540 _g218540218547_)))))
                              (declare (not safe))
                              (foldr2 __tmp233539 '() _L218520_ _L218522_)))))
                     (declare (not safe))
                     (cons __tmp233549 __tmp233538)))
                 _type-e218436218514_
                 _id218437218517_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop218430218472_
                                         _target218427218466_
                                         '()
                                         '()))
                                      (_g218420218449_ _g218421218453_)))))
                            (_g218420218449_ _g218421218453_))))
                    (_g218420218449_ _g218421218453_)))))
        (_g218419218550_ _$stx218416_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx218555_)
      (let* ((_g218559218588_
              (lambda (_g218560218584_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g218560218584_))))
             (_g218558218688_
              (lambda (_g218560218592_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g218560218592_))
                    (let ((_e218565218595_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g218560218592_))))
                      (let ((_hd218564218599_
                             (let ()
                               (declare (not safe))
                               (##car _e218565218595_)))
                            (_tl218563218602_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218565218595_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl218563218602_))
                            (let ((_g233550_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl218563218602_
                                      '0))))
                              (begin
                                (let ((_g233551_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233550_)
                                             (##vector-length _g233550_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233551_ 2)))
                                      (error "Context expects 2 values"
                                             _g233551_)))
                                (let ((_target218566218605_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233550_ 0)))
                                      (_tl218568218608_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g233550_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218568218608_))
                                      (letrec ((_loop218569218611_
                                                (lambda (_hd218567218615_
                                                         _type-e218573218618_
                                                         _id218574218620_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd218567218615_))
                                                      (let ((_e218570218623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd218567218615_))))
                (let ((_lp-hd218571218627_
                       (let () (declare (not safe)) (##car _e218570218623_)))
                      (_lp-tl218572218630_
                       (let () (declare (not safe)) (##cdr _e218570218623_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd218571218627_))
                      (let ((_e218579218633_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd218571218627_))))
                        (let ((_hd218578218637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218579218633_)))
                              (_tl218577218640_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218579218633_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218577218640_))
                              (let ((_e218582218643_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl218577218640_))))
                                (let ((_hd218581218647_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218582218643_)))
                                      (_tl218580218650_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218582218643_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218580218650_))
                                      (_loop218569218611_
                                       _lp-tl218572218630_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218581218647_
                                               _type-e218573218618_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd218578218637_
                                               _id218574218620_)))
                                      (_g218559218588_ _g218560218592_))))
                              (_g218559218588_ _g218560218592_))))
                      (_g218559218588_ _g218560218592_))))
              (let ((_type-e218575218653_ (reverse _type-e218573218618_))
                    (_id218576218656_ (reverse _id218574218620_)))
                ((lambda (_L218659_ _L218661_)
                   (let ((__tmp233563
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp233552
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L218659_
                               _L218661_))
                            (let ((__tmp233553
                                   (lambda (_g218676218680_
                                            _g218677218683_
                                            _g218678218685_)
                                     (let ((__tmp233554
                                            (let ((__tmp233562
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp233555
                                                   (let ((__tmp233561
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp233556
                                                          (let ((__tmp233558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233560
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp233559
                                (let ()
                                  (declare (not safe))
                                  (cons _g218677218683_ '()))))
                           (declare (not safe))
                           (cons __tmp233560 __tmp233559)))
                        (__tmp233557
                         (let ()
                           (declare (not safe))
                           (cons _g218676218680_ '()))))
                    (declare (not safe))
                    (cons __tmp233558 __tmp233557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233561
                                                           __tmp233556))))
                                              (declare (not safe))
                                              (cons __tmp233562 __tmp233555))))
                                       (declare (not safe))
                                       (cons __tmp233554 _g218678218685_)))))
                              (declare (not safe))
                              (foldr2 __tmp233553 '() _L218659_ _L218661_)))))
                     (declare (not safe))
                     (cons __tmp233563 __tmp233552)))
                 _type-e218575218653_
                 _id218576218656_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop218569218611_
                                         _target218566218605_
                                         '()
                                         '()))
                                      (_g218559218588_ _g218560218592_)))))
                            (_g218559218588_ _g218560218592_))))
                    (_g218559218588_ _g218560218592_)))))
        (_g218558218688_ _$stx218555_)))))
