(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83666_)
    (let* ((_g8367083696_
            (lambda (_g8367183692_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8367183692_)))
           (_g8366983780_
            (lambda (_g8367183700_)
              (if (gx#stx-pair? _g8367183700_)
                  (let ((_e8367883703_ (gx#syntax-e _g8367183700_)))
                    (let ((_hd8367783707_
                           (let () (declare (not safe)) (##car _e8367883703_)))
                          (_tl8367683710_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8367883703_))))
                      (if (gx#stx-pair? _tl8367683710_)
                          (let ((_e8368183713_ (gx#syntax-e _tl8367683710_)))
                            (let ((_hd8368083717_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8368183713_)))
                                  (_tl8367983720_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8368183713_))))
                              (if (gx#stx-pair? _tl8367983720_)
                                  (let ((_e8368483723_
                                         (gx#syntax-e _tl8367983720_)))
                                    (let ((_hd8368383727_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8368483723_)))
                                          (_tl8368283730_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8368483723_))))
                                      (if (gx#stx-pair? _tl8368283730_)
                                          (let ((_e8368783733_
                                                 (gx#syntax-e _tl8368283730_)))
                                            (let ((_hd8368683737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8368783733_)))
                                                  (_tl8368583740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8368783733_))))
                                              (if (gx#stx-pair? _tl8368583740_)
                                                  (let ((_e8369083743_
                                                         (gx#syntax-e
                                                          _tl8368583740_)))
                                                    (let ((_hd8368983747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8369083743_)))
                                                          (_tl8368883750_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8369083743_))))
                                                      (if (gx#stx-null?
                                                           _tl8368883750_)
                                                          ((lambda (_L83753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83755_
                            _L83756_
                            _L83757_)
                     (let ((__tmp89604 (gx#datum->syntax '#f 'if))
                           (__tmp89558
                            (let ((__tmp89601
                                   (let ((__tmp89603
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89602
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83757_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89603 __tmp89602)))
                                  (__tmp89559
                                   (let ((__tmp89564
                                          (let ((__tmp89600
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89565
                                                 (let ((__tmp89594
                                                        (let ((__tmp89599
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89595
                                                               (let ((__tmp89596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89598
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89597
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83757_ '()))))
                                (declare (not safe))
                                (cons __tmp89598 __tmp89597))))
                         (declare (not safe))
                         (cons __tmp89596 '()))))
                  (declare (not safe))
                  (cons __tmp89599 __tmp89595)))
               (__tmp89566
                (let ((__tmp89567
                       (let ((__tmp89593 (gx#datum->syntax '#f 'cond))
                             (__tmp89568
                              (let ((__tmp89576
                                     (let ((__tmp89580
                                            (let ((__tmp89592
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89581
                                                   (let ((__tmp89588
                                                          (let ((__tmp89591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'class-type?))
                        (__tmp89589
                         (let ((__tmp89590 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89590 '()))))
                    (declare (not safe))
                    (cons __tmp89591 __tmp89589)))
                 (__tmp89582
                  (let ((__tmp89583
                         (let ((__tmp89587
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89584
                                (let ((__tmp89586
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89585
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83756_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89586 __tmp89585))))
                           (declare (not safe))
                           (cons __tmp89587 __tmp89584))))
                    (declare (not safe))
                    (cons __tmp89583 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89588
                                                           __tmp89582))))
                                              (declare (not safe))
                                              (cons __tmp89592 __tmp89581)))
                                           (__tmp89577
                                            (let ((__tmp89579
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89578
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83755_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89579 __tmp89578))))
                                       (declare (not safe))
                                       (cons __tmp89580 __tmp89577)))
                                    (__tmp89569
                                     (let ((__tmp89570
                                            (let ((__tmp89575
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89571
                                                   (let ((__tmp89572
                                                          (let ((__tmp89573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89574
                                (let ()
                                  (declare (not safe))
                                  (cons _L83756_ '()))))
                           (declare (not safe))
                           (cons _L83757_ __tmp89574))))
                    (declare (not safe))
                    (cons _L83753_ __tmp89573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89572 '()))))
                                              (declare (not safe))
                                              (cons __tmp89575 __tmp89571))))
                                       (declare (not safe))
                                       (cons __tmp89570 '()))))
                                (declare (not safe))
                                (cons __tmp89576 __tmp89569))))
                         (declare (not safe))
                         (cons __tmp89593 __tmp89568))))
                  (declare (not safe))
                  (cons __tmp89567 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89594
                                                         __tmp89566))))
                                            (declare (not safe))
                                            (cons __tmp89600 __tmp89565)))
                                         (__tmp89560
                                          (let ((__tmp89561
                                                 (let ((__tmp89562
                                                        (let ((__tmp89563
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83756_ '()))))
                  (declare (not safe))
                  (cons _L83757_ __tmp89563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83753_
                                                         __tmp89562))))
                                            (declare (not safe))
                                            (cons __tmp89561 '()))))
                                     (declare (not safe))
                                     (cons __tmp89564 __tmp89560))))
                              (declare (not safe))
                              (cons __tmp89601 __tmp89559))))
                       (declare (not safe))
                       (cons __tmp89604 __tmp89558)))
                   _hd8368983747_
                   _hd8368683737_
                   _hd8368383727_
                   _hd8368083717_)
                  (_g8367083696_ _g8367183700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8367083696_
                                                   _g8367183700_))))
                                          (_g8367083696_ _g8367183700_))))
                                  (_g8367083696_ _g8367183700_))))
                          (_g8367083696_ _g8367183700_))))
                  (_g8367083696_ _g8367183700_)))))
      (_g8366983780_ _$stx83666_))))
