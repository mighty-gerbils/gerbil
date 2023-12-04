(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx24191_)
    (let* ((_g2419524224_
            (lambda (_g2419624220_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g2419624220_))))
           (_g2419424325_
            (lambda (_g2419624228_)
              (if (let () (declare (not safe)) (gx#stx-pair? _g2419624228_))
                  (let ((_e2420124231_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _g2419624228_))))
                    (let ((_hd2420024235_
                           (let () (declare (not safe)) (##car _e2420124231_)))
                          (_tl2419924238_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2420124231_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl2419924238_))
                          (let ((_g38819_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl2419924238_
                                    '0))))
                            (begin
                              (let ((_g38820_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g38819_)
                                           (##vector-length _g38819_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g38820_ 2)))
                                    (error "Context expects 2 values"
                                           _g38820_)))
                              (let ((_target2420224241_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g38819_ 0)))
                                    (_tl2420424244_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g38819_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2420424244_))
                                    (letrec ((_loop2420524247_
                                              (lambda (_hd2420324251_
                                                       _type-e2420924254_
                                                       _id2421024256_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd2420324251_))
                                                    (let ((_e2420624259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd2420324251_))))
                                                      (let ((_lp-hd2420724263_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2420624259_)))
                    (_lp-tl2420824266_
                     (let () (declare (not safe)) (##cdr _e2420624259_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _lp-hd2420724263_))
                    (let ((_e2421524269_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _lp-hd2420724263_))))
                      (let ((_hd2421424273_
                             (let ()
                               (declare (not safe))
                               (##car _e2421524269_)))
                            (_tl2421324276_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2421524269_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl2421324276_))
                            (let ((_e2421824279_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl2421324276_))))
                              (let ((_hd2421724283_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2421824279_)))
                                    (_tl2421624286_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2421824279_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2421624286_))
                                    (_loop2420524247_
                                     _lp-tl2420824266_
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2421724283_
                                             _type-e2420924254_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2421424273_ _id2421024256_)))
                                    (_g2419524224_ _g2419624228_))))
                            (_g2419524224_ _g2419624228_))))
                    (_g2419524224_ _g2419624228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e2421124289_
                                                           (reverse _type-e2420924254_))
                                                          (_id2421224292_
                                                           (reverse _id2421024256_)))
                                                      ((lambda (_L24295_
                                                                _L24297_)
                                                         (let ((__tmp38832
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin)))
                       (__tmp38821
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets _L24295_ _L24297_))
                          (let ((__tmp38822
                                 (lambda (_g2431324317_
                                          _g2431424320_
                                          _g2431524322_)
                                   (let ((__tmp38823
                                          (let ((__tmp38831
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'hash-put!)))
                                                (__tmp38824
                                                 (let ((__tmp38830
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'basic-expression-type-builtin)))
                                                       (__tmp38825
                                                        (let ((__tmp38827
                                                               (let ((__tmp38829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp38828
                              (let ()
                                (declare (not safe))
                                (cons _g2431424320_ '()))))
                         (declare (not safe))
                         (cons __tmp38829 __tmp38828)))
                      (__tmp38826
                       (let () (declare (not safe)) (cons _g2431324317_ '()))))
                  (declare (not safe))
                  (cons __tmp38827 __tmp38826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp38830
                                                         __tmp38825))))
                                            (declare (not safe))
                                            (cons __tmp38831 __tmp38824))))
                                     (declare (not safe))
                                     (cons __tmp38823 _g2431524322_)))))
                            (declare (not safe))
                            (foldr2 __tmp38822 '() _L24295_ _L24297_)))))
                   (declare (not safe))
                   (cons __tmp38832 __tmp38821)))
               _type-e2421124289_
               _id2421224292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2420524247_
                                       _target2420224241_
                                       '()
                                       '()))
                                    (_g2419524224_ _g2419624228_)))))
                          (_g2419524224_ _g2419624228_))))
                  (_g2419524224_ _g2419624228_)))))
      (_g2419424325_ _$stx24191_))))
