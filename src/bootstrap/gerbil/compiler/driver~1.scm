(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158803_)
      (let* ((_g158807158821_
              (lambda (_g158808158817_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158808158817_))))
             (_g158806158863_
              (lambda (_g158808158825_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158808158825_))
                    (let ((_e158812158828_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158808158825_))))
                      (let ((_hd158811158832_
                             (let ()
                               (declare (not safe))
                               (##car _e158812158828_)))
                            (_tl158810158835_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158812158828_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158810158835_))
                            (let ((_e158815158838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158810158835_))))
                              (let ((_hd158814158842_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158815158838_)))
                                    (_tl158813158845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158815158838_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158813158845_))
                                    ((lambda (_L158848_)
                                       (let ((__tmp160600
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160593
                                              (let ((__tmp160599
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160594
                                                     (let ((__tmp160595
                                                            (let ((__tmp160598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160596
                           (let ((__tmp160597
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158848_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160597))))
                      (declare (not safe))
                      (cons __tmp160598 __tmp160596))))
               (declare (not safe))
               (cons __tmp160595 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160599
                                                      __tmp160594))))
                                         (declare (not safe))
                                         (cons __tmp160600 __tmp160593)))
                                     _hd158814158842_)
                                    (_g158807158821_ _g158808158825_))))
                            (_g158807158821_ _g158808158825_))))
                    (_g158807158821_ _g158808158825_)))))
        (_g158806158863_ _$stx158803_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158867_)
      (let* ((_g158871158885_
              (lambda (_g158872158881_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158872158881_))))
             (_g158870158926_
              (lambda (_g158872158889_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158872158889_))
                    (let ((_e158876158892_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158872158889_))))
                      (let ((_hd158875158896_
                             (let ()
                               (declare (not safe))
                               (##car _e158876158892_)))
                            (_tl158874158899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158876158892_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158874158899_))
                            (let ((_e158879158902_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158874158899_))))
                              (let ((_hd158878158906_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158879158902_)))
                                    (_tl158877158909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158879158902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158877158909_))
                                    ((lambda (_L158912_)
                                       (let ((__tmp160606
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160601
                                              (let ((__tmp160602
                                                     (let ((__tmp160605
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160603
                                                            (let ((__tmp160604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158912_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160604))))
               (declare (not safe))
               (cons __tmp160605 __tmp160603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160602 '()))))
                                         (declare (not safe))
                                         (cons __tmp160606 __tmp160601)))
                                     _hd158878158906_)
                                    (_g158871158885_ _g158872158889_))))
                            (_g158871158885_ _g158872158889_))))
                    (_g158871158885_ _g158872158889_)))))
        (_g158870158926_ _$stx158867_)))))
