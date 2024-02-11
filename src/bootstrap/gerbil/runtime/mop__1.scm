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
                     (let ((__tmp89567 (gx#datum->syntax '#f 'if))
                           (__tmp89521
                            (let ((__tmp89564
                                   (let ((__tmp89566
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89565
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83752_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89566 __tmp89565)))
                                  (__tmp89522
                                   (let ((__tmp89527
                                          (let ((__tmp89563
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89528
                                                 (let ((__tmp89557
                                                        (let ((__tmp89562
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89558
                                                               (let ((__tmp89559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89561
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89560
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83752_ '()))))
                                (declare (not safe))
                                (cons __tmp89561 __tmp89560))))
                         (declare (not safe))
                         (cons __tmp89559 '()))))
                  (declare (not safe))
                  (cons __tmp89562 __tmp89558)))
               (__tmp89529
                (let ((__tmp89530
                       (let ((__tmp89556 (gx#datum->syntax '#f 'cond))
                             (__tmp89531
                              (let ((__tmp89539
                                     (let ((__tmp89543
                                            (let ((__tmp89555
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89544
                                                   (let ((__tmp89551
                                                          (let ((__tmp89554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp89552
                         (let ((__tmp89553 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89553 '()))))
                    (declare (not safe))
                    (cons __tmp89554 __tmp89552)))
                 (__tmp89545
                  (let ((__tmp89546
                         (let ((__tmp89550
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89547
                                (let ((__tmp89549
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89548
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83751_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89549 __tmp89548))))
                           (declare (not safe))
                           (cons __tmp89550 __tmp89547))))
                    (declare (not safe))
                    (cons __tmp89546 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89551
                                                           __tmp89545))))
                                              (declare (not safe))
                                              (cons __tmp89555 __tmp89544)))
                                           (__tmp89540
                                            (let ((__tmp89542
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89541
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83750_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89542 __tmp89541))))
                                       (declare (not safe))
                                       (cons __tmp89543 __tmp89540)))
                                    (__tmp89532
                                     (let ((__tmp89533
                                            (let ((__tmp89538
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89534
                                                   (let ((__tmp89535
                                                          (let ((__tmp89536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89537
                                (let ()
                                  (declare (not safe))
                                  (cons _L83751_ '()))))
                           (declare (not safe))
                           (cons _L83752_ __tmp89537))))
                    (declare (not safe))
                    (cons _L83748_ __tmp89536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89535 '()))))
                                              (declare (not safe))
                                              (cons __tmp89538 __tmp89534))))
                                       (declare (not safe))
                                       (cons __tmp89533 '()))))
                                (declare (not safe))
                                (cons __tmp89539 __tmp89532))))
                         (declare (not safe))
                         (cons __tmp89556 __tmp89531))))
                  (declare (not safe))
                  (cons __tmp89530 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89557
                                                         __tmp89529))))
                                            (declare (not safe))
                                            (cons __tmp89563 __tmp89528)))
                                         (__tmp89523
                                          (let ((__tmp89524
                                                 (let ((__tmp89525
                                                        (let ((__tmp89526
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83751_ '()))))
                  (declare (not safe))
                  (cons _L83752_ __tmp89526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83748_
                                                         __tmp89525))))
                                            (declare (not safe))
                                            (cons __tmp89524 '()))))
                                     (declare (not safe))
                                     (cons __tmp89527 __tmp89523))))
                              (declare (not safe))
                              (cons __tmp89564 __tmp89522))))
                       (declare (not safe))
                       (cons __tmp89567 __tmp89521)))
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
