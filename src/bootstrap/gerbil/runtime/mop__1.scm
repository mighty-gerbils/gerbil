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
                     (let ((__tmp89575 (gx#datum->syntax '#f 'if))
                           (__tmp89529
                            (let ((__tmp89572
                                   (let ((__tmp89574
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89573
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83752_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89574 __tmp89573)))
                                  (__tmp89530
                                   (let ((__tmp89535
                                          (let ((__tmp89571
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89536
                                                 (let ((__tmp89565
                                                        (let ((__tmp89570
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89566
                                                               (let ((__tmp89567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89569
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89568
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83752_ '()))))
                                (declare (not safe))
                                (cons __tmp89569 __tmp89568))))
                         (declare (not safe))
                         (cons __tmp89567 '()))))
                  (declare (not safe))
                  (cons __tmp89570 __tmp89566)))
               (__tmp89537
                (let ((__tmp89538
                       (let ((__tmp89564 (gx#datum->syntax '#f 'cond))
                             (__tmp89539
                              (let ((__tmp89547
                                     (let ((__tmp89551
                                            (let ((__tmp89563
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89552
                                                   (let ((__tmp89559
                                                          (let ((__tmp89562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'class-type?))
                        (__tmp89560
                         (let ((__tmp89561 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89561 '()))))
                    (declare (not safe))
                    (cons __tmp89562 __tmp89560)))
                 (__tmp89553
                  (let ((__tmp89554
                         (let ((__tmp89558
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89555
                                (let ((__tmp89557
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89556
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83751_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89557 __tmp89556))))
                           (declare (not safe))
                           (cons __tmp89558 __tmp89555))))
                    (declare (not safe))
                    (cons __tmp89554 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89559
                                                           __tmp89553))))
                                              (declare (not safe))
                                              (cons __tmp89563 __tmp89552)))
                                           (__tmp89548
                                            (let ((__tmp89550
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89549
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83750_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89550 __tmp89549))))
                                       (declare (not safe))
                                       (cons __tmp89551 __tmp89548)))
                                    (__tmp89540
                                     (let ((__tmp89541
                                            (let ((__tmp89546
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89542
                                                   (let ((__tmp89543
                                                          (let ((__tmp89544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89545
                                (let ()
                                  (declare (not safe))
                                  (cons _L83751_ '()))))
                           (declare (not safe))
                           (cons _L83752_ __tmp89545))))
                    (declare (not safe))
                    (cons _L83748_ __tmp89544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89543 '()))))
                                              (declare (not safe))
                                              (cons __tmp89546 __tmp89542))))
                                       (declare (not safe))
                                       (cons __tmp89541 '()))))
                                (declare (not safe))
                                (cons __tmp89547 __tmp89540))))
                         (declare (not safe))
                         (cons __tmp89564 __tmp89539))))
                  (declare (not safe))
                  (cons __tmp89538 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89565
                                                         __tmp89537))))
                                            (declare (not safe))
                                            (cons __tmp89571 __tmp89536)))
                                         (__tmp89531
                                          (let ((__tmp89532
                                                 (let ((__tmp89533
                                                        (let ((__tmp89534
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83751_ '()))))
                  (declare (not safe))
                  (cons _L83752_ __tmp89534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83748_
                                                         __tmp89533))))
                                            (declare (not safe))
                                            (cons __tmp89532 '()))))
                                     (declare (not safe))
                                     (cons __tmp89535 __tmp89531))))
                              (declare (not safe))
                              (cons __tmp89572 __tmp89530))))
                       (declare (not safe))
                       (cons __tmp89575 __tmp89529)))
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
