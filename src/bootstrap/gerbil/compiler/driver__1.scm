(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx157003_)
      (let* ((_g157007157021_
              (lambda (_g157008157017_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157008157017_))))
             (_g157006157063_
              (lambda (_g157008157025_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157008157025_))
                    (let ((_e157012157028_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157008157025_))))
                      (let ((_hd157011157032_
                             (let ()
                               (declare (not safe))
                               (##car _e157012157028_)))
                            (_tl157010157035_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157012157028_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157010157035_))
                            (let ((_e157015157038_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157010157035_))))
                              (let ((_hd157014157042_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157015157038_)))
                                    (_tl157013157045_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157015157038_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157013157045_))
                                    ((lambda (_L157048_)
                                       (let ((__tmp158801
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158794
                                              (let ((__tmp158800
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158795
                                                     (let ((__tmp158796
                                                            (let ((__tmp158799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158797
                           (let ((__tmp158798
                                  (let ()
                                    (declare (not safe))
                                    (cons _L157048_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158798))))
                      (declare (not safe))
                      (cons __tmp158799 __tmp158797))))
               (declare (not safe))
               (cons __tmp158796 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158800
                                                      __tmp158795))))
                                         (declare (not safe))
                                         (cons __tmp158801 __tmp158794)))
                                     _hd157014157042_)
                                    (_g157007157021_ _g157008157025_))))
                            (_g157007157021_ _g157008157025_))))
                    (_g157007157021_ _g157008157025_)))))
        (_g157006157063_ _$stx157003_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx157067_)
      (let* ((_g157071157085_
              (lambda (_g157072157081_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157072157081_))))
             (_g157070157126_
              (lambda (_g157072157089_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157072157089_))
                    (let ((_e157076157092_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157072157089_))))
                      (let ((_hd157075157096_
                             (let ()
                               (declare (not safe))
                               (##car _e157076157092_)))
                            (_tl157074157099_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157076157092_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157074157099_))
                            (let ((_e157079157102_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157074157099_))))
                              (let ((_hd157078157106_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157079157102_)))
                                    (_tl157077157109_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157079157102_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157077157109_))
                                    ((lambda (_L157112_)
                                       (let ((__tmp158807
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158802
                                              (let ((__tmp158803
                                                     (let ((__tmp158806
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158804
                                                            (let ((__tmp158805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157112_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158805))))
               (declare (not safe))
               (cons __tmp158806 __tmp158804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158803 '()))))
                                         (declare (not safe))
                                         (cons __tmp158807 __tmp158802)))
                                     _hd157078157106_)
                                    (_g157071157085_ _g157072157089_))))
                            (_g157071157085_ _g157072157089_))))
                    (_g157071157085_ _g157072157089_)))))
        (_g157070157126_ _$stx157067_)))))
