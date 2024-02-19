(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156153_)
      (let* ((_g156157156171_
              (lambda (_g156158156167_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156158156167_))))
             (_g156156156213_
              (lambda (_g156158156175_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156158156175_))
                    (let ((_e156162156178_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156158156175_))))
                      (let ((_hd156161156182_
                             (let ()
                               (declare (not safe))
                               (##car _e156162156178_)))
                            (_tl156160156185_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156162156178_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156160156185_))
                            (let ((_e156165156188_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156160156185_))))
                              (let ((_hd156164156192_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156165156188_)))
                                    (_tl156163156195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156165156188_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156163156195_))
                                    ((lambda (_L156198_)
                                       (let ((__tmp157954
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp157947
                                              (let ((__tmp157953
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp157948
                                                     (let ((__tmp157949
                                                            (let ((__tmp157952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp157950
                           (let ((__tmp157951
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156198_ '()))))
                             (declare (not safe))
                             (cons '() __tmp157951))))
                      (declare (not safe))
                      (cons __tmp157952 __tmp157950))))
               (declare (not safe))
               (cons __tmp157949 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157953
                                                      __tmp157948))))
                                         (declare (not safe))
                                         (cons __tmp157954 __tmp157947)))
                                     _hd156164156192_)
                                    (_g156157156171_ _g156158156175_))))
                            (_g156157156171_ _g156158156175_))))
                    (_g156157156171_ _g156158156175_)))))
        (_g156156156213_ _$stx156153_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156217_)
      (let* ((_g156221156235_
              (lambda (_g156222156231_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156222156231_))))
             (_g156220156276_
              (lambda (_g156222156239_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156222156239_))
                    (let ((_e156226156242_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156222156239_))))
                      (let ((_hd156225156246_
                             (let ()
                               (declare (not safe))
                               (##car _e156226156242_)))
                            (_tl156224156249_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156226156242_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156224156249_))
                            (let ((_e156229156252_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156224156249_))))
                              (let ((_hd156228156256_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156229156252_)))
                                    (_tl156227156259_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156229156252_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156227156259_))
                                    ((lambda (_L156262_)
                                       (let ((__tmp157960
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp157955
                                              (let ((__tmp157956
                                                     (let ((__tmp157959
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp157957
                                                            (let ((__tmp157958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156262_ '()))))
                      (declare (not safe))
                      (cons '() __tmp157958))))
               (declare (not safe))
               (cons __tmp157959 __tmp157957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157956 '()))))
                                         (declare (not safe))
                                         (cons __tmp157960 __tmp157955)))
                                     _hd156228156256_)
                                    (_g156221156235_ _g156222156239_))))
                            (_g156221156235_ _g156222156239_))))
                    (_g156221156235_ _g156222156239_)))))
        (_g156220156276_ _$stx156217_)))))
