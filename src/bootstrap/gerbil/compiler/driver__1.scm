(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx281474_)
      (let* ((_g281478281492_
              (lambda (_g281479281488_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g281479281488_))))
             (_g281477281534_
              (lambda (_g281479281496_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g281479281496_))
                    (let ((_e281483281499_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g281479281496_))))
                      (let ((_hd281482281503_
                             (let ()
                               (declare (not safe))
                               (##car _e281483281499_)))
                            (_tl281481281506_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281483281499_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281481281506_))
                            (let ((_e281486281509_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl281481281506_))))
                              (let ((_hd281485281513_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281486281509_)))
                                    (_tl281484281516_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281486281509_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281484281516_))
                                    ((lambda (_L281519_)
                                       (let ((__tmp287342
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp287335
                                              (let ((__tmp287341
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp287336
                                                     (let ((__tmp287337
                                                            (let ((__tmp287340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp287338
                           (let ((__tmp287339
                                  (let ()
                                    (declare (not safe))
                                    (cons _L281519_ '()))))
                             (declare (not safe))
                             (cons '() __tmp287339))))
                      (declare (not safe))
                      (cons __tmp287340 __tmp287338))))
               (declare (not safe))
               (cons __tmp287337 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287341
                                                      __tmp287336))))
                                         (declare (not safe))
                                         (cons __tmp287342 __tmp287335)))
                                     _hd281485281513_)
                                    (_g281478281492_ _g281479281496_))))
                            (_g281478281492_ _g281479281496_))))
                    (_g281478281492_ _g281479281496_)))))
        (_g281477281534_ _$stx281474_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx281538_)
      (let* ((_g281542281556_
              (lambda (_g281543281552_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g281543281552_))))
             (_g281541281597_
              (lambda (_g281543281560_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g281543281560_))
                    (let ((_e281547281563_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g281543281560_))))
                      (let ((_hd281546281567_
                             (let ()
                               (declare (not safe))
                               (##car _e281547281563_)))
                            (_tl281545281570_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281547281563_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281545281570_))
                            (let ((_e281550281573_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl281545281570_))))
                              (let ((_hd281549281577_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281550281573_)))
                                    (_tl281548281580_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281550281573_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281548281580_))
                                    ((lambda (_L281583_)
                                       (let ((__tmp287348
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp287343
                                              (let ((__tmp287344
                                                     (let ((__tmp287347
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp287345
                                                            (let ((__tmp287346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L281583_ '()))))
                      (declare (not safe))
                      (cons '() __tmp287346))))
               (declare (not safe))
               (cons __tmp287347 __tmp287345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287344 '()))))
                                         (declare (not safe))
                                         (cons __tmp287348 __tmp287343)))
                                     _hd281549281577_)
                                    (_g281542281556_ _g281543281560_))))
                            (_g281542281556_ _g281543281560_))))
                    (_g281542281556_ _g281543281560_)))))
        (_g281541281597_ _$stx281538_)))))
