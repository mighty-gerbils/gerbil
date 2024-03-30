(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158845_)
      (let* ((_g158849158863_
              (lambda (_g158850158859_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158850158859_))))
             (_g158848158905_
              (lambda (_g158850158867_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158850158867_))
                    (let ((_e158854158870_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158850158867_))))
                      (let ((_hd158853158874_
                             (let ()
                               (declare (not safe))
                               (##car _e158854158870_)))
                            (_tl158852158877_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158854158870_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158852158877_))
                            (let ((_e158857158880_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158852158877_))))
                              (let ((_hd158856158884_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158857158880_)))
                                    (_tl158855158887_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158857158880_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158855158887_))
                                    ((lambda (_L158890_)
                                       (let ((__tmp160644
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160637
                                              (let ((__tmp160643
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160638
                                                     (let ((__tmp160639
                                                            (let ((__tmp160642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160640
                           (let ((__tmp160641
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158890_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160641))))
                      (declare (not safe))
                      (cons __tmp160642 __tmp160640))))
               (declare (not safe))
               (cons __tmp160639 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160643
                                                      __tmp160638))))
                                         (declare (not safe))
                                         (cons __tmp160644 __tmp160637)))
                                     _hd158856158884_)
                                    (_g158849158863_ _g158850158867_))))
                            (_g158849158863_ _g158850158867_))))
                    (_g158849158863_ _g158850158867_)))))
        (_g158848158905_ _$stx158845_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158909_)
      (let* ((_g158913158927_
              (lambda (_g158914158923_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158914158923_))))
             (_g158912158968_
              (lambda (_g158914158931_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158914158931_))
                    (let ((_e158918158934_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158914158931_))))
                      (let ((_hd158917158938_
                             (let ()
                               (declare (not safe))
                               (##car _e158918158934_)))
                            (_tl158916158941_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158918158934_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158916158941_))
                            (let ((_e158921158944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158916158941_))))
                              (let ((_hd158920158948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158921158944_)))
                                    (_tl158919158951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158921158944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158919158951_))
                                    ((lambda (_L158954_)
                                       (let ((__tmp160650
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160645
                                              (let ((__tmp160646
                                                     (let ((__tmp160649
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160647
                                                            (let ((__tmp160648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158954_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160648))))
               (declare (not safe))
               (cons __tmp160649 __tmp160647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160646 '()))))
                                         (declare (not safe))
                                         (cons __tmp160650 __tmp160645)))
                                     _hd158920158948_)
                                    (_g158913158927_ _g158914158931_))))
                            (_g158913158927_ _g158914158931_))))
                    (_g158913158927_ _g158914158931_)))))
        (_g158912158968_ _$stx158909_)))))
