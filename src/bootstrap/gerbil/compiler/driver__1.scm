(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx68645_)
      (let* ((_g6864968663_
              (lambda (_g6865068659_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6865068659_))))
             (_g6864868705_
              (lambda (_g6865068667_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6865068667_))
                    (let ((_e6865468670_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6865068667_))))
                      (let ((_hd6865368674_
                             (let ()
                               (declare (not safe))
                               (##car _e6865468670_)))
                            (_tl6865268677_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6865468670_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6865268677_))
                            (let ((_e6865768680_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl6865268677_))))
                              (let ((_hd6865668684_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6865768680_)))
                                    (_tl6865568687_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6865768680_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl6865568687_))
                                    ((lambda (_L68690_)
                                       (let ((__tmp73379
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp73372
                                              (let ((__tmp73378
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp73373
                                                     (let ((__tmp73374
                                                            (let ((__tmp73377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp73375
                           (let ((__tmp73376
                                  (let ()
                                    (declare (not safe))
                                    (cons _L68690_ '()))))
                             (declare (not safe))
                             (cons '() __tmp73376))))
                      (declare (not safe))
                      (cons __tmp73377 __tmp73375))))
               (declare (not safe))
               (cons __tmp73374 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp73378 __tmp73373))))
                                         (declare (not safe))
                                         (cons __tmp73379 __tmp73372)))
                                     _hd6865668684_)
                                    (_g6864968663_ _g6865068667_))))
                            (_g6864968663_ _g6865068667_))))
                    (_g6864968663_ _g6865068667_)))))
        (_g6864868705_ _$stx68645_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx68709_)
      (let* ((_g6871368727_
              (lambda (_g6871468723_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6871468723_))))
             (_g6871268768_
              (lambda (_g6871468731_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6871468731_))
                    (let ((_e6871868734_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6871468731_))))
                      (let ((_hd6871768738_
                             (let ()
                               (declare (not safe))
                               (##car _e6871868734_)))
                            (_tl6871668741_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6871868734_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6871668741_))
                            (let ((_e6872168744_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl6871668741_))))
                              (let ((_hd6872068748_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6872168744_)))
                                    (_tl6871968751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6872168744_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl6871968751_))
                                    ((lambda (_L68754_)
                                       (let ((__tmp73385
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp73380
                                              (let ((__tmp73381
                                                     (let ((__tmp73384
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp73382
                                                            (let ((__tmp73383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L68754_ '()))))
                      (declare (not safe))
                      (cons '() __tmp73383))))
               (declare (not safe))
               (cons __tmp73384 __tmp73382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp73381 '()))))
                                         (declare (not safe))
                                         (cons __tmp73385 __tmp73380)))
                                     _hd6872068748_)
                                    (_g6871368727_ _g6871468731_))))
                            (_g6871368727_ _g6871468731_))))
                    (_g6871368727_ _g6871468731_)))))
        (_g6871268768_ _$stx68709_)))))
