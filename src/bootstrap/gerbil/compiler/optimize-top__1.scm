(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx23050_)
    (let* ((_g2305423083_
            (lambda (_g2305523079_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error '#f '"Bad syntax" _g2305523079_))))
           (_g2305323184_
            (lambda (_g2305523087_)
              (if (let () (declare (not safe)) (gx#stx-pair? _g2305523087_))
                  (let ((_e2306023090_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _g2305523087_))))
                    (let ((_hd2305923094_
                           (let () (declare (not safe)) (##car _e2306023090_)))
                          (_tl2305823097_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2306023090_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl2305823097_))
                          (let ((_g37628_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl2305823097_
                                    '0))))
                            (begin
                              (let ((_g37629_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g37628_)
                                           (##vector-length _g37628_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g37629_ 2)))
                                    (error "Context expects 2 values"
                                           _g37629_)))
                              (let ((_target2306123100_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g37628_ 0)))
                                    (_tl2306323103_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g37628_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2306323103_))
                                    (letrec ((_loop2306423106_
                                              (lambda (_hd2306223110_
                                                       _type-e2306823113_
                                                       _id2306923115_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd2306223110_))
                                                    (let ((_e2306523118_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd2306223110_))))
                                                      (let ((_lp-hd2306623122_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2306523118_)))
                    (_lp-tl2306723125_
                     (let () (declare (not safe)) (##cdr _e2306523118_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _lp-hd2306623122_))
                    (let ((_e2307423128_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _lp-hd2306623122_))))
                      (let ((_hd2307323132_
                             (let ()
                               (declare (not safe))
                               (##car _e2307423128_)))
                            (_tl2307223135_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2307423128_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl2307223135_))
                            (let ((_e2307723138_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl2307223135_))))
                              (let ((_hd2307623142_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2307723138_)))
                                    (_tl2307523145_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2307723138_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2307523145_))
                                    (_loop2306423106_
                                     _lp-tl2306723125_
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2307623142_
                                             _type-e2306823113_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2307323132_ _id2306923115_)))
                                    (_g2305423083_ _g2305523087_))))
                            (_g2305423083_ _g2305523087_))))
                    (_g2305423083_ _g2305523087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e2307023148_
                                                           (reverse _type-e2306823113_))
                                                          (_id2307123151_
                                                           (reverse _id2306923115_)))
                                                      ((lambda (_L23154_
                                                                _L23156_)
                                                         (let ((__tmp37641
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin)))
                       (__tmp37630
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets _L23154_ _L23156_))
                          (let ((__tmp37631
                                 (lambda (_g2317223176_
                                          _g2317323179_
                                          _g2317423181_)
                                   (let ((__tmp37632
                                          (let ((__tmp37640
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'hash-put!)))
                                                (__tmp37633
                                                 (let ((__tmp37639
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'basic-expression-type-builtin)))
                                                       (__tmp37634
                                                        (let ((__tmp37636
                                                               (let ((__tmp37638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp37637
                              (let ()
                                (declare (not safe))
                                (cons _g2317323179_ '()))))
                         (declare (not safe))
                         (cons __tmp37638 __tmp37637)))
                      (__tmp37635
                       (let () (declare (not safe)) (cons _g2317223176_ '()))))
                  (declare (not safe))
                  (cons __tmp37636 __tmp37635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp37639
                                                         __tmp37634))))
                                            (declare (not safe))
                                            (cons __tmp37640 __tmp37633))))
                                     (declare (not safe))
                                     (cons __tmp37632 _g2317423181_)))))
                            (declare (not safe))
                            (foldr2 __tmp37631 '() _L23154_ _L23156_)))))
                   (declare (not safe))
                   (cons __tmp37641 __tmp37630)))
               _type-e2307023148_
               _id2307123151_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2306423106_
                                       _target2306123100_
                                       '()
                                       '()))
                                    (_g2305423083_ _g2305523087_)))))
                          (_g2305423083_ _g2305523087_))))
                  (_g2305423083_ _g2305523087_)))))
      (_g2305323184_ _$stx23050_))))
