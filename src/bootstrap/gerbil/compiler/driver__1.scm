(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx287215_)
      (let* ((_g287219287233_
              (lambda (_g287220287229_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287220287229_))))
             (_g287218287275_
              (lambda (_g287220287237_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287220287237_))
                    (let ((_e287224287240_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287220287237_))))
                      (let ((_hd287223287244_
                             (let ()
                               (declare (not safe))
                               (##car _e287224287240_)))
                            (_tl287222287247_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287224287240_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287222287247_))
                            (let ((_e287227287250_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287222287247_))))
                              (let ((_hd287226287254_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287227287250_)))
                                    (_tl287225287257_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287227287250_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287225287257_))
                                    ((lambda (_L287260_)
                                       (let ((__tmp293480
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp293473
                                              (let ((__tmp293479
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp293474
                                                     (let ((__tmp293475
                                                            (let ((__tmp293478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp293476
                           (let ((__tmp293477
                                  (let ()
                                    (declare (not safe))
                                    (cons _L287260_ '()))))
                             (declare (not safe))
                             (cons '() __tmp293477))))
                      (declare (not safe))
                      (cons __tmp293478 __tmp293476))))
               (declare (not safe))
               (cons __tmp293475 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293479
                                                      __tmp293474))))
                                         (declare (not safe))
                                         (cons __tmp293480 __tmp293473)))
                                     _hd287226287254_)
                                    (_g287219287233_ _g287220287237_))))
                            (_g287219287233_ _g287220287237_))))
                    (_g287219287233_ _g287220287237_)))))
        (_g287218287275_ _$stx287215_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx287279_)
      (let* ((_g287283287297_
              (lambda (_g287284287293_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287284287293_))))
             (_g287282287338_
              (lambda (_g287284287301_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287284287301_))
                    (let ((_e287288287304_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287284287301_))))
                      (let ((_hd287287287308_
                             (let ()
                               (declare (not safe))
                               (##car _e287288287304_)))
                            (_tl287286287311_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287288287304_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287286287311_))
                            (let ((_e287291287314_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287286287311_))))
                              (let ((_hd287290287318_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287291287314_)))
                                    (_tl287289287321_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287291287314_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287289287321_))
                                    ((lambda (_L287324_)
                                       (let ((__tmp293486
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp293481
                                              (let ((__tmp293482
                                                     (let ((__tmp293485
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp293483
                                                            (let ((__tmp293484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L287324_ '()))))
                      (declare (not safe))
                      (cons '() __tmp293484))))
               (declare (not safe))
               (cons __tmp293485 __tmp293483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293482 '()))))
                                         (declare (not safe))
                                         (cons __tmp293486 __tmp293481)))
                                     _hd287290287318_)
                                    (_g287283287297_ _g287284287301_))))
                            (_g287283287297_ _g287284287301_))))
                    (_g287283287297_ _g287284287301_)))))
        (_g287282287338_ _$stx287279_)))))
