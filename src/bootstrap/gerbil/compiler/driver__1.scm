(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx290218_)
      (let* ((_g290222290236_
              (lambda (_g290223290232_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290223290232_))))
             (_g290221290278_
              (lambda (_g290223290240_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290223290240_))
                    (let ((_e290227290243_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290223290240_))))
                      (let ((_hd290226290247_
                             (let ()
                               (declare (not safe))
                               (##car _e290227290243_)))
                            (_tl290225290250_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290227290243_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290225290250_))
                            (let ((_e290230290253_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290225290250_))))
                              (let ((_hd290229290257_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290230290253_)))
                                    (_tl290228290260_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290230290253_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290228290260_))
                                    ((lambda (_L290263_)
                                       (let ((__tmp296583
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp296576
                                              (let ((__tmp296582
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp296577
                                                     (let ((__tmp296578
                                                            (let ((__tmp296581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp296579
                           (let ((__tmp296580
                                  (let ()
                                    (declare (not safe))
                                    (cons _L290263_ '()))))
                             (declare (not safe))
                             (cons '() __tmp296580))))
                      (declare (not safe))
                      (cons __tmp296581 __tmp296579))))
               (declare (not safe))
               (cons __tmp296578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296582
                                                      __tmp296577))))
                                         (declare (not safe))
                                         (cons __tmp296583 __tmp296576)))
                                     _hd290229290257_)
                                    (_g290222290236_ _g290223290240_))))
                            (_g290222290236_ _g290223290240_))))
                    (_g290222290236_ _g290223290240_)))))
        (_g290221290278_ _$stx290218_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx290282_)
      (let* ((_g290286290300_
              (lambda (_g290287290296_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290287290296_))))
             (_g290285290341_
              (lambda (_g290287290304_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290287290304_))
                    (let ((_e290291290307_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290287290304_))))
                      (let ((_hd290290290311_
                             (let ()
                               (declare (not safe))
                               (##car _e290291290307_)))
                            (_tl290289290314_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290291290307_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290289290314_))
                            (let ((_e290294290317_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290289290314_))))
                              (let ((_hd290293290321_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290294290317_)))
                                    (_tl290292290324_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290294290317_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290292290324_))
                                    ((lambda (_L290327_)
                                       (let ((__tmp296589
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp296584
                                              (let ((__tmp296585
                                                     (let ((__tmp296588
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp296586
                                                            (let ((__tmp296587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L290327_ '()))))
                      (declare (not safe))
                      (cons '() __tmp296587))))
               (declare (not safe))
               (cons __tmp296588 __tmp296586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296585 '()))))
                                         (declare (not safe))
                                         (cons __tmp296589 __tmp296584)))
                                     _hd290293290321_)
                                    (_g290286290300_ _g290287290304_))))
                            (_g290286290300_ _g290287290304_))))
                    (_g290286290300_ _g290287290304_)))))
        (_g290285290341_ _$stx290282_)))))
