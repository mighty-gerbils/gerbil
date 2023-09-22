(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx23051_)
    (let* ((_g2305523084_
            (lambda (_g2305623080_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error '#f '"Bad syntax" _g2305623080_))))
           (_g2305423185_
            (lambda (_g2305623088_)
              (if (let () (declare (not safe)) (gx#stx-pair? _g2305623088_))
                  (let ((_e2306123091_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _g2305623088_))))
                    (let ((_hd2306023095_
                           (let () (declare (not safe)) (##car _e2306123091_)))
                          (_tl2305923098_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2306123091_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl2305923098_))
                          (let ((_g37629_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl2305923098_
                                    '0))))
                            (begin
                              (let ((_g37630_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g37629_)
                                           (##vector-length _g37629_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g37630_ 2)))
                                    (error "Context expects 2 values"
                                           _g37630_)))
                              (let ((_target2306223101_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g37629_ 0)))
                                    (_tl2306423104_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g37629_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2306423104_))
                                    (letrec ((_loop2306523107_
                                              (lambda (_hd2306323111_
                                                       _type-e2306923114_
                                                       _id2307023116_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd2306323111_))
                                                    (let ((_e2306623119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd2306323111_))))
                                                      (let ((_lp-hd2306723123_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2306623119_)))
                    (_lp-tl2306823126_
                     (let () (declare (not safe)) (##cdr _e2306623119_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _lp-hd2306723123_))
                    (let ((_e2307523129_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _lp-hd2306723123_))))
                      (let ((_hd2307423133_
                             (let ()
                               (declare (not safe))
                               (##car _e2307523129_)))
                            (_tl2307323136_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2307523129_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl2307323136_))
                            (let ((_e2307823139_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl2307323136_))))
                              (let ((_hd2307723143_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2307823139_)))
                                    (_tl2307623146_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2307823139_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2307623146_))
                                    (_loop2306523107_
                                     _lp-tl2306823126_
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2307723143_
                                             _type-e2306923114_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2307423133_ _id2307023116_)))
                                    (_g2305523084_ _g2305623088_))))
                            (_g2305523084_ _g2305623088_))))
                    (_g2305523084_ _g2305623088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e2307123149_
                                                           (reverse _type-e2306923114_))
                                                          (_id2307223152_
                                                           (reverse _id2307023116_)))
                                                      ((lambda (_L23155_
                                                                _L23157_)
                                                         (let ((__tmp37642
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin)))
                       (__tmp37631
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets _L23155_ _L23157_))
                          (let ((__tmp37632
                                 (lambda (_g2317323177_
                                          _g2317423180_
                                          _g2317523182_)
                                   (let ((__tmp37633
                                          (let ((__tmp37641
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'hash-put!)))
                                                (__tmp37634
                                                 (let ((__tmp37640
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'basic-expression-type-builtin)))
                                                       (__tmp37635
                                                        (let ((__tmp37637
                                                               (let ((__tmp37639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp37638
                              (let ()
                                (declare (not safe))
                                (cons _g2317423180_ '()))))
                         (declare (not safe))
                         (cons __tmp37639 __tmp37638)))
                      (__tmp37636
                       (let () (declare (not safe)) (cons _g2317323177_ '()))))
                  (declare (not safe))
                  (cons __tmp37637 __tmp37636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp37640
                                                         __tmp37635))))
                                            (declare (not safe))
                                            (cons __tmp37641 __tmp37634))))
                                     (declare (not safe))
                                     (cons __tmp37633 _g2317523182_)))))
                            (declare (not safe))
                            (foldr2 __tmp37632 '() _L23155_ _L23157_)))))
                   (declare (not safe))
                   (cons __tmp37642 __tmp37631)))
               _type-e2307123149_
               _id2307223152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2306523107_
                                       _target2306223101_
                                       '()
                                       '()))
                                    (_g2305523084_ _g2305623088_)))))
                          (_g2305523084_ _g2305623088_))))
                  (_g2305523084_ _g2305623088_)))))
      (_g2305423185_ _$stx23051_))))
