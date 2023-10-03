(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx23191_)
    (let* ((_g2319523224_
            (lambda (_g2319623220_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error '#f '"Bad syntax" _g2319623220_))))
           (_g2319423325_
            (lambda (_g2319623228_)
              (if (let () (declare (not safe)) (gx#stx-pair? _g2319623228_))
                  (let ((_e2320123231_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _g2319623228_))))
                    (let ((_hd2320023235_
                           (let () (declare (not safe)) (##car _e2320123231_)))
                          (_tl2319923238_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2320123231_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl2319923238_))
                          (let ((_g37769_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl2319923238_
                                    '0))))
                            (begin
                              (let ((_g37770_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g37769_)
                                           (##vector-length _g37769_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g37770_ 2)))
                                    (error "Context expects 2 values"
                                           _g37770_)))
                              (let ((_target2320223241_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g37769_ 0)))
                                    (_tl2320423244_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g37769_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2320423244_))
                                    (letrec ((_loop2320523247_
                                              (lambda (_hd2320323251_
                                                       _type-e2320923254_
                                                       _id2321023256_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd2320323251_))
                                                    (let ((_e2320623259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd2320323251_))))
                                                      (let ((_lp-hd2320723263_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2320623259_)))
                    (_lp-tl2320823266_
                     (let () (declare (not safe)) (##cdr _e2320623259_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _lp-hd2320723263_))
                    (let ((_e2321523269_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _lp-hd2320723263_))))
                      (let ((_hd2321423273_
                             (let ()
                               (declare (not safe))
                               (##car _e2321523269_)))
                            (_tl2321323276_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2321523269_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl2321323276_))
                            (let ((_e2321823279_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl2321323276_))))
                              (let ((_hd2321723283_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2321823279_)))
                                    (_tl2321623286_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2321823279_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2321623286_))
                                    (_loop2320523247_
                                     _lp-tl2320823266_
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2321723283_
                                             _type-e2320923254_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2321423273_ _id2321023256_)))
                                    (_g2319523224_ _g2319623228_))))
                            (_g2319523224_ _g2319623228_))))
                    (_g2319523224_ _g2319623228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e2321123289_
                                                           (reverse _type-e2320923254_))
                                                          (_id2321223292_
                                                           (reverse _id2321023256_)))
                                                      ((lambda (_L23295_
                                                                _L23297_)
                                                         (let ((__tmp37782
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin)))
                       (__tmp37771
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets _L23295_ _L23297_))
                          (let ((__tmp37772
                                 (lambda (_g2331323317_
                                          _g2331423320_
                                          _g2331523322_)
                                   (let ((__tmp37773
                                          (let ((__tmp37781
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'hash-put!)))
                                                (__tmp37774
                                                 (let ((__tmp37780
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'basic-expression-type-builtin)))
                                                       (__tmp37775
                                                        (let ((__tmp37777
                                                               (let ((__tmp37779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp37778
                              (let ()
                                (declare (not safe))
                                (cons _g2331423320_ '()))))
                         (declare (not safe))
                         (cons __tmp37779 __tmp37778)))
                      (__tmp37776
                       (let () (declare (not safe)) (cons _g2331323317_ '()))))
                  (declare (not safe))
                  (cons __tmp37777 __tmp37776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp37780
                                                         __tmp37775))))
                                            (declare (not safe))
                                            (cons __tmp37781 __tmp37774))))
                                     (declare (not safe))
                                     (cons __tmp37773 _g2331523322_)))))
                            (declare (not safe))
                            (foldr2 __tmp37772 '() _L23295_ _L23297_)))))
                   (declare (not safe))
                   (cons __tmp37782 __tmp37771)))
               _type-e2321123289_
               _id2321223292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2320523247_
                                       _target2320223241_
                                       '()
                                       '()))
                                    (_g2319523224_ _g2319623228_)))))
                          (_g2319523224_ _g2319623228_))))
                  (_g2319523224_ _g2319623228_)))))
      (_g2319423325_ _$stx23191_))))
