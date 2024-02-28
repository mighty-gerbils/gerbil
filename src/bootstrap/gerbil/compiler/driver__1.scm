(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156641_)
      (let* ((_g156645156659_
              (lambda (_g156646156655_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156646156655_))))
             (_g156644156701_
              (lambda (_g156646156663_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156646156663_))
                    (let ((_e156650156666_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156646156663_))))
                      (let ((_hd156649156670_
                             (let ()
                               (declare (not safe))
                               (##car _e156650156666_)))
                            (_tl156648156673_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156650156666_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156648156673_))
                            (let ((_e156653156676_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156648156673_))))
                              (let ((_hd156652156680_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156653156676_)))
                                    (_tl156651156683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156653156676_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156651156683_))
                                    ((lambda (_L156686_)
                                       (let ((__tmp158442
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158435
                                              (let ((__tmp158441
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158436
                                                     (let ((__tmp158437
                                                            (let ((__tmp158440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158438
                           (let ((__tmp158439
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156686_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158439))))
                      (declare (not safe))
                      (cons __tmp158440 __tmp158438))))
               (declare (not safe))
               (cons __tmp158437 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158441
                                                      __tmp158436))))
                                         (declare (not safe))
                                         (cons __tmp158442 __tmp158435)))
                                     _hd156652156680_)
                                    (_g156645156659_ _g156646156663_))))
                            (_g156645156659_ _g156646156663_))))
                    (_g156645156659_ _g156646156663_)))))
        (_g156644156701_ _$stx156641_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156705_)
      (let* ((_g156709156723_
              (lambda (_g156710156719_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156710156719_))))
             (_g156708156764_
              (lambda (_g156710156727_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156710156727_))
                    (let ((_e156714156730_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156710156727_))))
                      (let ((_hd156713156734_
                             (let ()
                               (declare (not safe))
                               (##car _e156714156730_)))
                            (_tl156712156737_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156714156730_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156712156737_))
                            (let ((_e156717156740_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156712156737_))))
                              (let ((_hd156716156744_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156717156740_)))
                                    (_tl156715156747_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156717156740_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156715156747_))
                                    ((lambda (_L156750_)
                                       (let ((__tmp158448
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158443
                                              (let ((__tmp158444
                                                     (let ((__tmp158447
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158445
                                                            (let ((__tmp158446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156750_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158446))))
               (declare (not safe))
               (cons __tmp158447 __tmp158445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158444 '()))))
                                         (declare (not safe))
                                         (cons __tmp158448 __tmp158443)))
                                     _hd156716156744_)
                                    (_g156709156723_ _g156710156727_))))
                            (_g156709156723_ _g156710156727_))))
                    (_g156709156723_ _g156710156727_)))))
        (_g156708156764_ _$stx156705_)))))
