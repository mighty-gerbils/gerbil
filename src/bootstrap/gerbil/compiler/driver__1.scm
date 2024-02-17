(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx281478_)
      (let* ((_g281482281496_
              (lambda (_g281483281492_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g281483281492_))))
             (_g281481281538_
              (lambda (_g281483281500_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g281483281500_))
                    (let ((_e281487281503_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g281483281500_))))
                      (let ((_hd281486281507_
                             (let ()
                               (declare (not safe))
                               (##car _e281487281503_)))
                            (_tl281485281510_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281487281503_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281485281510_))
                            (let ((_e281490281513_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl281485281510_))))
                              (let ((_hd281489281517_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281490281513_)))
                                    (_tl281488281520_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281490281513_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281488281520_))
                                    ((lambda (_L281523_)
                                       (let ((__tmp287346
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp287339
                                              (let ((__tmp287345
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp287340
                                                     (let ((__tmp287341
                                                            (let ((__tmp287344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp287342
                           (let ((__tmp287343
                                  (let ()
                                    (declare (not safe))
                                    (cons _L281523_ '()))))
                             (declare (not safe))
                             (cons '() __tmp287343))))
                      (declare (not safe))
                      (cons __tmp287344 __tmp287342))))
               (declare (not safe))
               (cons __tmp287341 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287345
                                                      __tmp287340))))
                                         (declare (not safe))
                                         (cons __tmp287346 __tmp287339)))
                                     _hd281489281517_)
                                    (_g281482281496_ _g281483281500_))))
                            (_g281482281496_ _g281483281500_))))
                    (_g281482281496_ _g281483281500_)))))
        (_g281481281538_ _$stx281478_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx281542_)
      (let* ((_g281546281560_
              (lambda (_g281547281556_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g281547281556_))))
             (_g281545281601_
              (lambda (_g281547281564_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g281547281564_))
                    (let ((_e281551281567_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g281547281564_))))
                      (let ((_hd281550281571_
                             (let ()
                               (declare (not safe))
                               (##car _e281551281567_)))
                            (_tl281549281574_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281551281567_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281549281574_))
                            (let ((_e281554281577_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl281549281574_))))
                              (let ((_hd281553281581_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281554281577_)))
                                    (_tl281552281584_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281554281577_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281552281584_))
                                    ((lambda (_L281587_)
                                       (let ((__tmp287352
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp287347
                                              (let ((__tmp287348
                                                     (let ((__tmp287351
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp287349
                                                            (let ((__tmp287350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L281587_ '()))))
                      (declare (not safe))
                      (cons '() __tmp287350))))
               (declare (not safe))
               (cons __tmp287351 __tmp287349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287348 '()))))
                                         (declare (not safe))
                                         (cons __tmp287352 __tmp287347)))
                                     _hd281553281581_)
                                    (_g281546281560_ _g281547281564_))))
                            (_g281546281560_ _g281547281564_))))
                    (_g281546281560_ _g281547281564_)))))
        (_g281545281601_ _$stx281542_)))))
