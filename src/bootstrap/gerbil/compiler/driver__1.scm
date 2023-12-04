(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx69775_)
      (let* ((_g6977969793_
              (lambda (_g6978069789_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g6978069789_))))
             (_g6977869835_
              (lambda (_g6978069797_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6978069797_))
                    (let ((_e6978469800_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6978069797_))))
                      (let ((_hd6978369804_
                             (let ()
                               (declare (not safe))
                               (##car _e6978469800_)))
                            (_tl6978269807_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6978469800_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6978269807_))
                            (let ((_e6978769810_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl6978269807_))))
                              (let ((_hd6978669814_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6978769810_)))
                                    (_tl6978569817_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6978769810_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl6978569817_))
                                    ((lambda (_L69820_)
                                       (let ((__tmp74467
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp74460
                                              (let ((__tmp74466
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp74461
                                                     (let ((__tmp74462
                                                            (let ((__tmp74465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp74463
                           (let ((__tmp74464
                                  (let ()
                                    (declare (not safe))
                                    (cons _L69820_ '()))))
                             (declare (not safe))
                             (cons '() __tmp74464))))
                      (declare (not safe))
                      (cons __tmp74465 __tmp74463))))
               (declare (not safe))
               (cons __tmp74462 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74466 __tmp74461))))
                                         (declare (not safe))
                                         (cons __tmp74467 __tmp74460)))
                                     _hd6978669814_)
                                    (_g6977969793_ _g6978069797_))))
                            (_g6977969793_ _g6978069797_))))
                    (_g6977969793_ _g6978069797_)))))
        (_g6977869835_ _$stx69775_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx69839_)
      (let* ((_g6984369857_
              (lambda (_g6984469853_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g6984469853_))))
             (_g6984269898_
              (lambda (_g6984469861_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6984469861_))
                    (let ((_e6984869864_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6984469861_))))
                      (let ((_hd6984769868_
                             (let ()
                               (declare (not safe))
                               (##car _e6984869864_)))
                            (_tl6984669871_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6984869864_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6984669871_))
                            (let ((_e6985169874_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl6984669871_))))
                              (let ((_hd6985069878_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6985169874_)))
                                    (_tl6984969881_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6985169874_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl6984969881_))
                                    ((lambda (_L69884_)
                                       (let ((__tmp74473
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp74468
                                              (let ((__tmp74469
                                                     (let ((__tmp74472
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp74470
                                                            (let ((__tmp74471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L69884_ '()))))
                      (declare (not safe))
                      (cons '() __tmp74471))))
               (declare (not safe))
               (cons __tmp74472 __tmp74470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74469 '()))))
                                         (declare (not safe))
                                         (cons __tmp74473 __tmp74468)))
                                     _hd6985069878_)
                                    (_g6984369857_ _g6984469861_))))
                            (_g6984369857_ _g6984469861_))))
                    (_g6984369857_ _g6984469861_)))))
        (_g6984269898_ _$stx69839_)))))
