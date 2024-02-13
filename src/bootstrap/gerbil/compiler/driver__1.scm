(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx291093_)
      (let* ((_g291097291111_
              (lambda (_g291098291107_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291098291107_))))
             (_g291096291153_
              (lambda (_g291098291115_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291098291115_))
                    (let ((_e291100291118_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291098291115_))))
                      (let ((_hd291101291122_
                             (let ()
                               (declare (not safe))
                               (##car _e291100291118_)))
                            (_tl291102291125_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291100291118_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291102291125_))
                            (let ((_e291103291128_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291102291125_))))
                              (let ((_hd291104291132_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291103291128_)))
                                    (_tl291105291135_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291103291128_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291105291135_))
                                    ((lambda (_L291138_)
                                       (let ((__tmp297458
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp297451
                                              (let ((__tmp297457
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp297452
                                                     (let ((__tmp297453
                                                            (let ((__tmp297456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp297454
                           (let ((__tmp297455
                                  (let ()
                                    (declare (not safe))
                                    (cons _L291138_ '()))))
                             (declare (not safe))
                             (cons '() __tmp297455))))
                      (declare (not safe))
                      (cons __tmp297456 __tmp297454))))
               (declare (not safe))
               (cons __tmp297453 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp297457
                                                      __tmp297452))))
                                         (declare (not safe))
                                         (cons __tmp297458 __tmp297451)))
                                     _hd291104291132_)
                                    (_g291097291111_ _g291098291115_))))
                            (_g291097291111_ _g291098291115_))))
                    (_g291097291111_ _g291098291115_)))))
        (_g291096291153_ _$stx291093_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx291157_)
      (let* ((_g291161291175_
              (lambda (_g291162291171_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291162291171_))))
             (_g291160291216_
              (lambda (_g291162291179_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291162291179_))
                    (let ((_e291164291182_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291162291179_))))
                      (let ((_hd291165291186_
                             (let ()
                               (declare (not safe))
                               (##car _e291164291182_)))
                            (_tl291166291189_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291164291182_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291166291189_))
                            (let ((_e291167291192_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291166291189_))))
                              (let ((_hd291168291196_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291167291192_)))
                                    (_tl291169291199_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291167291192_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291169291199_))
                                    ((lambda (_L291202_)
                                       (let ((__tmp297464
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp297459
                                              (let ((__tmp297460
                                                     (let ((__tmp297463
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp297461
                                                            (let ((__tmp297462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L291202_ '()))))
                      (declare (not safe))
                      (cons '() __tmp297462))))
               (declare (not safe))
               (cons __tmp297463 __tmp297461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp297460 '()))))
                                         (declare (not safe))
                                         (cons __tmp297464 __tmp297459)))
                                     _hd291168291196_)
                                    (_g291161291175_ _g291162291179_))))
                            (_g291161291175_ _g291162291179_))))
                    (_g291161291175_ _g291162291179_)))))
        (_g291160291216_ _$stx291157_)))))
