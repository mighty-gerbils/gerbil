(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx290219_)
      (let* ((_g290223290237_
              (lambda (_g290224290233_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290224290233_))))
             (_g290222290279_
              (lambda (_g290224290241_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290224290241_))
                    (let ((_e290228290244_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290224290241_))))
                      (let ((_hd290227290248_
                             (let ()
                               (declare (not safe))
                               (##car _e290228290244_)))
                            (_tl290226290251_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290228290244_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290226290251_))
                            (let ((_e290231290254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290226290251_))))
                              (let ((_hd290230290258_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290231290254_)))
                                    (_tl290229290261_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290231290254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290229290261_))
                                    ((lambda (_L290264_)
                                       (let ((__tmp296584
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp296577
                                              (let ((__tmp296583
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp296578
                                                     (let ((__tmp296579
                                                            (let ((__tmp296582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp296580
                           (let ((__tmp296581
                                  (let ()
                                    (declare (not safe))
                                    (cons _L290264_ '()))))
                             (declare (not safe))
                             (cons '() __tmp296581))))
                      (declare (not safe))
                      (cons __tmp296582 __tmp296580))))
               (declare (not safe))
               (cons __tmp296579 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296583
                                                      __tmp296578))))
                                         (declare (not safe))
                                         (cons __tmp296584 __tmp296577)))
                                     _hd290230290258_)
                                    (_g290223290237_ _g290224290241_))))
                            (_g290223290237_ _g290224290241_))))
                    (_g290223290237_ _g290224290241_)))))
        (_g290222290279_ _$stx290219_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx290283_)
      (let* ((_g290287290301_
              (lambda (_g290288290297_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290288290297_))))
             (_g290286290342_
              (lambda (_g290288290305_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290288290305_))
                    (let ((_e290292290308_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290288290305_))))
                      (let ((_hd290291290312_
                             (let ()
                               (declare (not safe))
                               (##car _e290292290308_)))
                            (_tl290290290315_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290292290308_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290290290315_))
                            (let ((_e290295290318_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290290290315_))))
                              (let ((_hd290294290322_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290295290318_)))
                                    (_tl290293290325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290295290318_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290293290325_))
                                    ((lambda (_L290328_)
                                       (let ((__tmp296590
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp296585
                                              (let ((__tmp296586
                                                     (let ((__tmp296589
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp296587
                                                            (let ((__tmp296588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L290328_ '()))))
                      (declare (not safe))
                      (cons '() __tmp296588))))
               (declare (not safe))
               (cons __tmp296589 __tmp296587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296586 '()))))
                                         (declare (not safe))
                                         (cons __tmp296590 __tmp296585)))
                                     _hd290294290322_)
                                    (_g290287290301_ _g290288290305_))))
                            (_g290287290301_ _g290288290305_))))
                    (_g290287290301_ _g290288290305_)))))
        (_g290286290342_ _$stx290283_)))))
