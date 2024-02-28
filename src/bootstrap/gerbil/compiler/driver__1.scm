(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156639_)
      (let* ((_g156643156657_
              (lambda (_g156644156653_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156644156653_))))
             (_g156642156699_
              (lambda (_g156644156661_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156644156661_))
                    (let ((_e156648156664_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156644156661_))))
                      (let ((_hd156647156668_
                             (let ()
                               (declare (not safe))
                               (##car _e156648156664_)))
                            (_tl156646156671_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156648156664_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156646156671_))
                            (let ((_e156651156674_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156646156671_))))
                              (let ((_hd156650156678_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156651156674_)))
                                    (_tl156649156681_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156651156674_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156649156681_))
                                    ((lambda (_L156684_)
                                       (let ((__tmp158440
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158433
                                              (let ((__tmp158439
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158434
                                                     (let ((__tmp158435
                                                            (let ((__tmp158438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158436
                           (let ((__tmp158437
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156684_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158437))))
                      (declare (not safe))
                      (cons __tmp158438 __tmp158436))))
               (declare (not safe))
               (cons __tmp158435 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158439
                                                      __tmp158434))))
                                         (declare (not safe))
                                         (cons __tmp158440 __tmp158433)))
                                     _hd156650156678_)
                                    (_g156643156657_ _g156644156661_))))
                            (_g156643156657_ _g156644156661_))))
                    (_g156643156657_ _g156644156661_)))))
        (_g156642156699_ _$stx156639_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156703_)
      (let* ((_g156707156721_
              (lambda (_g156708156717_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156708156717_))))
             (_g156706156762_
              (lambda (_g156708156725_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156708156725_))
                    (let ((_e156712156728_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156708156725_))))
                      (let ((_hd156711156732_
                             (let ()
                               (declare (not safe))
                               (##car _e156712156728_)))
                            (_tl156710156735_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156712156728_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156710156735_))
                            (let ((_e156715156738_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156710156735_))))
                              (let ((_hd156714156742_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156715156738_)))
                                    (_tl156713156745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156715156738_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156713156745_))
                                    ((lambda (_L156748_)
                                       (let ((__tmp158446
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158441
                                              (let ((__tmp158442
                                                     (let ((__tmp158445
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158443
                                                            (let ((__tmp158444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156748_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158444))))
               (declare (not safe))
               (cons __tmp158445 __tmp158443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158442 '()))))
                                         (declare (not safe))
                                         (cons __tmp158446 __tmp158441)))
                                     _hd156714156742_)
                                    (_g156707156721_ _g156708156725_))))
                            (_g156707156721_ _g156708156725_))))
                    (_g156707156721_ _g156708156725_)))))
        (_g156706156762_ _$stx156703_)))))
