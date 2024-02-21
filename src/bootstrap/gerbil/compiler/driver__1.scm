(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx155973_)
      (let* ((_g155977155991_
              (lambda (_g155978155987_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155978155987_))))
             (_g155976156033_
              (lambda (_g155978155995_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155978155995_))
                    (let ((_e155982155998_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155978155995_))))
                      (let ((_hd155981156002_
                             (let ()
                               (declare (not safe))
                               (##car _e155982155998_)))
                            (_tl155980156005_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155982155998_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155980156005_))
                            (let ((_e155985156008_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155980156005_))))
                              (let ((_hd155984156012_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155985156008_)))
                                    (_tl155983156015_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155985156008_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl155983156015_))
                                    ((lambda (_L156018_)
                                       (let ((__tmp157774
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp157767
                                              (let ((__tmp157773
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp157768
                                                     (let ((__tmp157769
                                                            (let ((__tmp157772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp157770
                           (let ((__tmp157771
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156018_ '()))))
                             (declare (not safe))
                             (cons '() __tmp157771))))
                      (declare (not safe))
                      (cons __tmp157772 __tmp157770))))
               (declare (not safe))
               (cons __tmp157769 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157773
                                                      __tmp157768))))
                                         (declare (not safe))
                                         (cons __tmp157774 __tmp157767)))
                                     _hd155984156012_)
                                    (_g155977155991_ _g155978155995_))))
                            (_g155977155991_ _g155978155995_))))
                    (_g155977155991_ _g155978155995_)))))
        (_g155976156033_ _$stx155973_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156037_)
      (let* ((_g156041156055_
              (lambda (_g156042156051_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156042156051_))))
             (_g156040156096_
              (lambda (_g156042156059_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156042156059_))
                    (let ((_e156046156062_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156042156059_))))
                      (let ((_hd156045156066_
                             (let ()
                               (declare (not safe))
                               (##car _e156046156062_)))
                            (_tl156044156069_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156046156062_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156044156069_))
                            (let ((_e156049156072_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156044156069_))))
                              (let ((_hd156048156076_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156049156072_)))
                                    (_tl156047156079_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156049156072_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156047156079_))
                                    ((lambda (_L156082_)
                                       (let ((__tmp157780
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp157775
                                              (let ((__tmp157776
                                                     (let ((__tmp157779
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp157777
                                                            (let ((__tmp157778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156082_ '()))))
                      (declare (not safe))
                      (cons '() __tmp157778))))
               (declare (not safe))
               (cons __tmp157779 __tmp157777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157776 '()))))
                                         (declare (not safe))
                                         (cons __tmp157780 __tmp157775)))
                                     _hd156048156076_)
                                    (_g156041156055_ _g156042156059_))))
                            (_g156041156055_ _g156042156059_))))
                    (_g156041156055_ _g156042156059_)))))
        (_g156040156096_ _$stx156037_)))))
