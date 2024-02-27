(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx155979_)
      (let* ((_g155983155997_
              (lambda (_g155984155993_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155984155993_))))
             (_g155982156039_
              (lambda (_g155984156001_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155984156001_))
                    (let ((_e155988156004_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155984156001_))))
                      (let ((_hd155987156008_
                             (let ()
                               (declare (not safe))
                               (##car _e155988156004_)))
                            (_tl155986156011_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155988156004_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155986156011_))
                            (let ((_e155991156014_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155986156011_))))
                              (let ((_hd155990156018_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155991156014_)))
                                    (_tl155989156021_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155991156014_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl155989156021_))
                                    ((lambda (_L156024_)
                                       (let ((__tmp157780
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp157773
                                              (let ((__tmp157779
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp157774
                                                     (let ((__tmp157775
                                                            (let ((__tmp157778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp157776
                           (let ((__tmp157777
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156024_ '()))))
                             (declare (not safe))
                             (cons '() __tmp157777))))
                      (declare (not safe))
                      (cons __tmp157778 __tmp157776))))
               (declare (not safe))
               (cons __tmp157775 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157779
                                                      __tmp157774))))
                                         (declare (not safe))
                                         (cons __tmp157780 __tmp157773)))
                                     _hd155990156018_)
                                    (_g155983155997_ _g155984156001_))))
                            (_g155983155997_ _g155984156001_))))
                    (_g155983155997_ _g155984156001_)))))
        (_g155982156039_ _$stx155979_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156043_)
      (let* ((_g156047156061_
              (lambda (_g156048156057_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156048156057_))))
             (_g156046156102_
              (lambda (_g156048156065_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156048156065_))
                    (let ((_e156052156068_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156048156065_))))
                      (let ((_hd156051156072_
                             (let ()
                               (declare (not safe))
                               (##car _e156052156068_)))
                            (_tl156050156075_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156052156068_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156050156075_))
                            (let ((_e156055156078_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156050156075_))))
                              (let ((_hd156054156082_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156055156078_)))
                                    (_tl156053156085_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156055156078_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156053156085_))
                                    ((lambda (_L156088_)
                                       (let ((__tmp157786
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp157781
                                              (let ((__tmp157782
                                                     (let ((__tmp157785
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp157783
                                                            (let ((__tmp157784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156088_ '()))))
                      (declare (not safe))
                      (cons '() __tmp157784))))
               (declare (not safe))
               (cons __tmp157785 __tmp157783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157782 '()))))
                                         (declare (not safe))
                                         (cons __tmp157786 __tmp157781)))
                                     _hd156054156082_)
                                    (_g156047156061_ _g156048156065_))))
                            (_g156047156061_ _g156048156065_))))
                    (_g156047156061_ _g156048156065_)))))
        (_g156046156102_ _$stx156043_)))))
