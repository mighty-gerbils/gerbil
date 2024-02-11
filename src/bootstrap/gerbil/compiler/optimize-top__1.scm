(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx226252_)
      (let* ((_g226256226285_
              (lambda (_g226257226281_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226257226281_))))
             (_g226255226386_
              (lambda (_g226257226289_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226257226289_))
                    (let ((_e226262226292_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226257226289_))))
                      (let ((_hd226261226296_
                             (let ()
                               (declare (not safe))
                               (##car _e226262226292_)))
                            (_tl226260226299_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226262226292_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226260226299_))
                            (let ((_g241646_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226260226299_
                                      '0))))
                              (begin
                                (let ((_g241647_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241646_)
                                             (##vector-length _g241646_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241647_ 2)))
                                      (error "Context expects 2 values"
                                             _g241647_)))
                                (let ((_target226263226302_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241646_ 0)))
                                      (_tl226265226305_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241646_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226265226305_))
                                      (letrec ((_loop226266226308_
                                                (lambda (_hd226264226312_
                                                         _type-e226270226315_
                                                         _id226271226317_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226264226312_))
                                                      (let ((_e226267226320_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226264226312_))))
                (let ((_lp-hd226268226324_
                       (let () (declare (not safe)) (##car _e226267226320_)))
                      (_lp-tl226269226327_
                       (let () (declare (not safe)) (##cdr _e226267226320_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226268226324_))
                      (let ((_e226276226330_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226268226324_))))
                        (let ((_hd226275226334_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226276226330_)))
                              (_tl226274226337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226276226330_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226274226337_))
                              (let ((_e226279226340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226274226337_))))
                                (let ((_hd226278226344_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226279226340_)))
                                      (_tl226277226347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226279226340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226277226347_))
                                      (_loop226266226308_
                                       _lp-tl226269226327_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226278226344_
                                               _type-e226270226315_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226275226334_
                                               _id226271226317_)))
                                      (_g226256226285_ _g226257226289_))))
                              (_g226256226285_ _g226257226289_))))
                      (_g226256226285_ _g226257226289_))))
              (let ((_type-e226272226350_ (reverse _type-e226270226315_))
                    (_id226273226353_ (reverse _id226271226317_)))
                ((lambda (_L226356_ _L226358_)
                   (let ((__tmp241659
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241648
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226356_
                               _L226358_))
                            (let ((__tmp241649
                                   (lambda (_g226374226378_
                                            _g226375226381_
                                            _g226376226383_)
                                     (let ((__tmp241650
                                            (let ((__tmp241658
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241651
                                                   (let ((__tmp241657
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp241652
                                                          (let ((__tmp241654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241656
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241655
                                (let ()
                                  (declare (not safe))
                                  (cons _g226375226381_ '()))))
                           (declare (not safe))
                           (cons __tmp241656 __tmp241655)))
                        (__tmp241653
                         (let ()
                           (declare (not safe))
                           (cons _g226374226378_ '()))))
                    (declare (not safe))
                    (cons __tmp241654 __tmp241653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241657
                                                           __tmp241652))))
                                              (declare (not safe))
                                              (cons __tmp241658 __tmp241651))))
                                       (declare (not safe))
                                       (cons __tmp241650 _g226376226383_)))))
                              (declare (not safe))
                              (foldr2 __tmp241649 '() _L226356_ _L226358_)))))
                     (declare (not safe))
                     (cons __tmp241659 __tmp241648)))
                 _type-e226272226350_
                 _id226273226353_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226266226308_
                                         _target226263226302_
                                         '()
                                         '()))
                                      (_g226256226285_ _g226257226289_)))))
                            (_g226256226285_ _g226257226289_))))
                    (_g226256226285_ _g226257226289_)))))
        (_g226255226386_ _$stx226252_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx226391_)
      (let* ((_g226395226424_
              (lambda (_g226396226420_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226396226420_))))
             (_g226394226524_
              (lambda (_g226396226428_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226396226428_))
                    (let ((_e226401226431_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226396226428_))))
                      (let ((_hd226400226435_
                             (let ()
                               (declare (not safe))
                               (##car _e226401226431_)))
                            (_tl226399226438_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226401226431_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226399226438_))
                            (let ((_g241660_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226399226438_
                                      '0))))
                              (begin
                                (let ((_g241661_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241660_)
                                             (##vector-length _g241660_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241661_ 2)))
                                      (error "Context expects 2 values"
                                             _g241661_)))
                                (let ((_target226402226441_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241660_ 0)))
                                      (_tl226404226444_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241660_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226404226444_))
                                      (letrec ((_loop226405226447_
                                                (lambda (_hd226403226451_
                                                         _type-e226409226454_
                                                         _id226410226456_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226403226451_))
                                                      (let ((_e226406226459_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226403226451_))))
                (let ((_lp-hd226407226463_
                       (let () (declare (not safe)) (##car _e226406226459_)))
                      (_lp-tl226408226466_
                       (let () (declare (not safe)) (##cdr _e226406226459_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226407226463_))
                      (let ((_e226415226469_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226407226463_))))
                        (let ((_hd226414226473_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226415226469_)))
                              (_tl226413226476_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226415226469_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226413226476_))
                              (let ((_e226418226479_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226413226476_))))
                                (let ((_hd226417226483_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226418226479_)))
                                      (_tl226416226486_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226418226479_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226416226486_))
                                      (_loop226405226447_
                                       _lp-tl226408226466_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226417226483_
                                               _type-e226409226454_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226414226473_
                                               _id226410226456_)))
                                      (_g226395226424_ _g226396226428_))))
                              (_g226395226424_ _g226396226428_))))
                      (_g226395226424_ _g226396226428_))))
              (let ((_type-e226411226489_ (reverse _type-e226409226454_))
                    (_id226412226492_ (reverse _id226410226456_)))
                ((lambda (_L226495_ _L226497_)
                   (let ((__tmp241673
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241662
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226495_
                               _L226497_))
                            (let ((__tmp241663
                                   (lambda (_g226512226516_
                                            _g226513226519_
                                            _g226514226521_)
                                     (let ((__tmp241664
                                            (let ((__tmp241672
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241665
                                                   (let ((__tmp241671
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp241666
                                                          (let ((__tmp241668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241670
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241669
                                (let ()
                                  (declare (not safe))
                                  (cons _g226513226519_ '()))))
                           (declare (not safe))
                           (cons __tmp241670 __tmp241669)))
                        (__tmp241667
                         (let ()
                           (declare (not safe))
                           (cons _g226512226516_ '()))))
                    (declare (not safe))
                    (cons __tmp241668 __tmp241667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241671
                                                           __tmp241666))))
                                              (declare (not safe))
                                              (cons __tmp241672 __tmp241665))))
                                       (declare (not safe))
                                       (cons __tmp241664 _g226514226521_)))))
                              (declare (not safe))
                              (foldr2 __tmp241663 '() _L226495_ _L226497_)))))
                     (declare (not safe))
                     (cons __tmp241673 __tmp241662)))
                 _type-e226411226489_
                 _id226412226492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226405226447_
                                         _target226402226441_
                                         '()
                                         '()))
                                      (_g226395226424_ _g226396226428_)))))
                            (_g226395226424_ _g226396226428_))))
                    (_g226395226424_ _g226396226428_)))))
        (_g226394226524_ _$stx226391_)))))
