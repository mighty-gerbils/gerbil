(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156649_)
      (let* ((_g156653156667_
              (lambda (_g156654156663_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156654156663_))))
             (_g156652156709_
              (lambda (_g156654156671_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156654156671_))
                    (let ((_e156658156674_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156654156671_))))
                      (let ((_hd156657156678_
                             (let ()
                               (declare (not safe))
                               (##car _e156658156674_)))
                            (_tl156656156681_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156658156674_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156656156681_))
                            (let ((_e156661156684_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156656156681_))))
                              (let ((_hd156660156688_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156661156684_)))
                                    (_tl156659156691_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156661156684_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156659156691_))
                                    ((lambda (_L156694_)
                                       (let ((__tmp158450
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158443
                                              (let ((__tmp158449
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158444
                                                     (let ((__tmp158445
                                                            (let ((__tmp158448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158446
                           (let ((__tmp158447
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156694_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158447))))
                      (declare (not safe))
                      (cons __tmp158448 __tmp158446))))
               (declare (not safe))
               (cons __tmp158445 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158449
                                                      __tmp158444))))
                                         (declare (not safe))
                                         (cons __tmp158450 __tmp158443)))
                                     _hd156660156688_)
                                    (_g156653156667_ _g156654156671_))))
                            (_g156653156667_ _g156654156671_))))
                    (_g156653156667_ _g156654156671_)))))
        (_g156652156709_ _$stx156649_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156713_)
      (let* ((_g156717156731_
              (lambda (_g156718156727_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156718156727_))))
             (_g156716156772_
              (lambda (_g156718156735_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156718156735_))
                    (let ((_e156722156738_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156718156735_))))
                      (let ((_hd156721156742_
                             (let ()
                               (declare (not safe))
                               (##car _e156722156738_)))
                            (_tl156720156745_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156722156738_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156720156745_))
                            (let ((_e156725156748_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156720156745_))))
                              (let ((_hd156724156752_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156725156748_)))
                                    (_tl156723156755_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156725156748_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156723156755_))
                                    ((lambda (_L156758_)
                                       (let ((__tmp158456
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158451
                                              (let ((__tmp158452
                                                     (let ((__tmp158455
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158453
                                                            (let ((__tmp158454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156758_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158454))))
               (declare (not safe))
               (cons __tmp158455 __tmp158453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158452 '()))))
                                         (declare (not safe))
                                         (cons __tmp158456 __tmp158451)))
                                     _hd156724156752_)
                                    (_g156717156731_ _g156718156735_))))
                            (_g156717156731_ _g156718156735_))))
                    (_g156717156731_ _g156718156735_)))))
        (_g156716156772_ _$stx156713_)))))
