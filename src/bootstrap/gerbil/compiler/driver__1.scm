(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx281475_)
      (let* ((_g281479281493_
              (lambda (_g281480281489_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g281480281489_))))
             (_g281478281535_
              (lambda (_g281480281497_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g281480281497_))
                    (let ((_e281484281500_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g281480281497_))))
                      (let ((_hd281483281504_
                             (let ()
                               (declare (not safe))
                               (##car _e281484281500_)))
                            (_tl281482281507_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281484281500_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281482281507_))
                            (let ((_e281487281510_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl281482281507_))))
                              (let ((_hd281486281514_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281487281510_)))
                                    (_tl281485281517_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281487281510_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281485281517_))
                                    ((lambda (_L281520_)
                                       (let ((__tmp287343
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp287336
                                              (let ((__tmp287342
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp287337
                                                     (let ((__tmp287338
                                                            (let ((__tmp287341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp287339
                           (let ((__tmp287340
                                  (let ()
                                    (declare (not safe))
                                    (cons _L281520_ '()))))
                             (declare (not safe))
                             (cons '() __tmp287340))))
                      (declare (not safe))
                      (cons __tmp287341 __tmp287339))))
               (declare (not safe))
               (cons __tmp287338 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287342
                                                      __tmp287337))))
                                         (declare (not safe))
                                         (cons __tmp287343 __tmp287336)))
                                     _hd281486281514_)
                                    (_g281479281493_ _g281480281497_))))
                            (_g281479281493_ _g281480281497_))))
                    (_g281479281493_ _g281480281497_)))))
        (_g281478281535_ _$stx281475_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx281539_)
      (let* ((_g281543281557_
              (lambda (_g281544281553_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g281544281553_))))
             (_g281542281598_
              (lambda (_g281544281561_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g281544281561_))
                    (let ((_e281548281564_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g281544281561_))))
                      (let ((_hd281547281568_
                             (let ()
                               (declare (not safe))
                               (##car _e281548281564_)))
                            (_tl281546281571_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281548281564_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281546281571_))
                            (let ((_e281551281574_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl281546281571_))))
                              (let ((_hd281550281578_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281551281574_)))
                                    (_tl281549281581_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281551281574_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281549281581_))
                                    ((lambda (_L281584_)
                                       (let ((__tmp287349
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp287344
                                              (let ((__tmp287345
                                                     (let ((__tmp287348
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp287346
                                                            (let ((__tmp287347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L281584_ '()))))
                      (declare (not safe))
                      (cons '() __tmp287347))))
               (declare (not safe))
               (cons __tmp287348 __tmp287346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287345 '()))))
                                         (declare (not safe))
                                         (cons __tmp287349 __tmp287344)))
                                     _hd281550281578_)
                                    (_g281543281557_ _g281544281561_))))
                            (_g281543281557_ _g281544281561_))))
                    (_g281543281557_ _g281544281561_)))))
        (_g281542281598_ _$stx281539_)))))
