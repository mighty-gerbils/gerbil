(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83661_)
    (let* ((_g8366583691_
            (lambda (_g8366683687_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8366683687_)))
           (_g8366483775_
            (lambda (_g8366683695_)
              (if (gx#stx-pair? _g8366683695_)
                  (let ((_e8367383698_ (gx#syntax-e _g8366683695_)))
                    (let ((_hd8367283702_
                           (let () (declare (not safe)) (##car _e8367383698_)))
                          (_tl8367183705_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8367383698_))))
                      (if (gx#stx-pair? _tl8367183705_)
                          (let ((_e8367683708_ (gx#syntax-e _tl8367183705_)))
                            (let ((_hd8367583712_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8367683708_)))
                                  (_tl8367483715_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8367683708_))))
                              (if (gx#stx-pair? _tl8367483715_)
                                  (let ((_e8367983718_
                                         (gx#syntax-e _tl8367483715_)))
                                    (let ((_hd8367883722_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8367983718_)))
                                          (_tl8367783725_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8367983718_))))
                                      (if (gx#stx-pair? _tl8367783725_)
                                          (let ((_e8368283728_
                                                 (gx#syntax-e _tl8367783725_)))
                                            (let ((_hd8368183732_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8368283728_)))
                                                  (_tl8368083735_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8368283728_))))
                                              (if (gx#stx-pair? _tl8368083735_)
                                                  (let ((_e8368583738_
                                                         (gx#syntax-e
                                                          _tl8368083735_)))
                                                    (let ((_hd8368483742_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8368583738_)))
                                                          (_tl8368383745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8368583738_))))
                                                      (if (gx#stx-null?
                                                           _tl8368383745_)
                                                          ((lambda (_L83748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83750_
                            _L83751_
                            _L83752_)
                     (let ((__tmp89577 (gx#datum->syntax '#f 'if))
                           (__tmp89531
                            (let ((__tmp89574
                                   (let ((__tmp89576
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89575
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83752_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89576 __tmp89575)))
                                  (__tmp89532
                                   (let ((__tmp89537
                                          (let ((__tmp89573
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89538
                                                 (let ((__tmp89567
                                                        (let ((__tmp89572
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89568
                                                               (let ((__tmp89569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89571
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89570
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83752_ '()))))
                                (declare (not safe))
                                (cons __tmp89571 __tmp89570))))
                         (declare (not safe))
                         (cons __tmp89569 '()))))
                  (declare (not safe))
                  (cons __tmp89572 __tmp89568)))
               (__tmp89539
                (let ((__tmp89540
                       (let ((__tmp89566 (gx#datum->syntax '#f 'cond))
                             (__tmp89541
                              (let ((__tmp89549
                                     (let ((__tmp89553
                                            (let ((__tmp89565
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89554
                                                   (let ((__tmp89561
                                                          (let ((__tmp89564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'class-type?))
                        (__tmp89562
                         (let ((__tmp89563 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89563 '()))))
                    (declare (not safe))
                    (cons __tmp89564 __tmp89562)))
                 (__tmp89555
                  (let ((__tmp89556
                         (let ((__tmp89560
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89557
                                (let ((__tmp89559
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89558
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83751_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89559 __tmp89558))))
                           (declare (not safe))
                           (cons __tmp89560 __tmp89557))))
                    (declare (not safe))
                    (cons __tmp89556 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89561
                                                           __tmp89555))))
                                              (declare (not safe))
                                              (cons __tmp89565 __tmp89554)))
                                           (__tmp89550
                                            (let ((__tmp89552
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89551
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83750_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89552 __tmp89551))))
                                       (declare (not safe))
                                       (cons __tmp89553 __tmp89550)))
                                    (__tmp89542
                                     (let ((__tmp89543
                                            (let ((__tmp89548
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89544
                                                   (let ((__tmp89545
                                                          (let ((__tmp89546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89547
                                (let ()
                                  (declare (not safe))
                                  (cons _L83751_ '()))))
                           (declare (not safe))
                           (cons _L83752_ __tmp89547))))
                    (declare (not safe))
                    (cons _L83748_ __tmp89546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89545 '()))))
                                              (declare (not safe))
                                              (cons __tmp89548 __tmp89544))))
                                       (declare (not safe))
                                       (cons __tmp89543 '()))))
                                (declare (not safe))
                                (cons __tmp89549 __tmp89542))))
                         (declare (not safe))
                         (cons __tmp89566 __tmp89541))))
                  (declare (not safe))
                  (cons __tmp89540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89567
                                                         __tmp89539))))
                                            (declare (not safe))
                                            (cons __tmp89573 __tmp89538)))
                                         (__tmp89533
                                          (let ((__tmp89534
                                                 (let ((__tmp89535
                                                        (let ((__tmp89536
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83751_ '()))))
                  (declare (not safe))
                  (cons _L83752_ __tmp89536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83748_
                                                         __tmp89535))))
                                            (declare (not safe))
                                            (cons __tmp89534 '()))))
                                     (declare (not safe))
                                     (cons __tmp89537 __tmp89533))))
                              (declare (not safe))
                              (cons __tmp89574 __tmp89532))))
                       (declare (not safe))
                       (cons __tmp89577 __tmp89531)))
                   _hd8368483742_
                   _hd8368183732_
                   _hd8367883722_
                   _hd8367583712_)
                  (_g8366583691_ _g8366683695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8366583691_
                                                   _g8366683695_))))
                                          (_g8366583691_ _g8366683695_))))
                                  (_g8366583691_ _g8366683695_))))
                          (_g8366583691_ _g8366683695_))))
                  (_g8366583691_ _g8366683695_)))))
      (_g8366483775_ _$stx83661_))))
