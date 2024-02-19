(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156152_)
      (let* ((_g156156156170_
              (lambda (_g156157156166_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156157156166_))))
             (_g156155156212_
              (lambda (_g156157156174_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156157156174_))
                    (let ((_e156161156177_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156157156174_))))
                      (let ((_hd156160156181_
                             (let ()
                               (declare (not safe))
                               (##car _e156161156177_)))
                            (_tl156159156184_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156161156177_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156159156184_))
                            (let ((_e156164156187_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156159156184_))))
                              (let ((_hd156163156191_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156164156187_)))
                                    (_tl156162156194_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156164156187_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156162156194_))
                                    ((lambda (_L156197_)
                                       (let ((__tmp157953
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp157946
                                              (let ((__tmp157952
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp157947
                                                     (let ((__tmp157948
                                                            (let ((__tmp157951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp157949
                           (let ((__tmp157950
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156197_ '()))))
                             (declare (not safe))
                             (cons '() __tmp157950))))
                      (declare (not safe))
                      (cons __tmp157951 __tmp157949))))
               (declare (not safe))
               (cons __tmp157948 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157952
                                                      __tmp157947))))
                                         (declare (not safe))
                                         (cons __tmp157953 __tmp157946)))
                                     _hd156163156191_)
                                    (_g156156156170_ _g156157156174_))))
                            (_g156156156170_ _g156157156174_))))
                    (_g156156156170_ _g156157156174_)))))
        (_g156155156212_ _$stx156152_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156216_)
      (let* ((_g156220156234_
              (lambda (_g156221156230_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156221156230_))))
             (_g156219156275_
              (lambda (_g156221156238_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156221156238_))
                    (let ((_e156225156241_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156221156238_))))
                      (let ((_hd156224156245_
                             (let ()
                               (declare (not safe))
                               (##car _e156225156241_)))
                            (_tl156223156248_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156225156241_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156223156248_))
                            (let ((_e156228156251_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156223156248_))))
                              (let ((_hd156227156255_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156228156251_)))
                                    (_tl156226156258_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156228156251_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156226156258_))
                                    ((lambda (_L156261_)
                                       (let ((__tmp157959
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp157954
                                              (let ((__tmp157955
                                                     (let ((__tmp157958
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp157956
                                                            (let ((__tmp157957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156261_ '()))))
                      (declare (not safe))
                      (cons '() __tmp157957))))
               (declare (not safe))
               (cons __tmp157958 __tmp157956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157955 '()))))
                                         (declare (not safe))
                                         (cons __tmp157959 __tmp157954)))
                                     _hd156227156255_)
                                    (_g156220156234_ _g156221156238_))))
                            (_g156220156234_ _g156221156238_))))
                    (_g156220156234_ _g156221156238_)))))
        (_g156219156275_ _$stx156216_)))))
