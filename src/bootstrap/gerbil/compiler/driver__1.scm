(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx157083_)
      (let* ((_g157087157101_
              (lambda (_g157088157097_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157088157097_))))
             (_g157086157143_
              (lambda (_g157088157105_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157088157105_))
                    (let ((_e157092157108_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157088157105_))))
                      (let ((_hd157091157112_
                             (let ()
                               (declare (not safe))
                               (##car _e157092157108_)))
                            (_tl157090157115_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157092157108_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157090157115_))
                            (let ((_e157095157118_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157090157115_))))
                              (let ((_hd157094157122_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157095157118_)))
                                    (_tl157093157125_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157095157118_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157093157125_))
                                    ((lambda (_L157128_)
                                       (let ((__tmp158902
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158895
                                              (let ((__tmp158901
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158896
                                                     (let ((__tmp158897
                                                            (let ((__tmp158900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158898
                           (let ((__tmp158899
                                  (let ()
                                    (declare (not safe))
                                    (cons _L157128_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158899))))
                      (declare (not safe))
                      (cons __tmp158900 __tmp158898))))
               (declare (not safe))
               (cons __tmp158897 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158901
                                                      __tmp158896))))
                                         (declare (not safe))
                                         (cons __tmp158902 __tmp158895)))
                                     _hd157094157122_)
                                    (_g157087157101_ _g157088157105_))))
                            (_g157087157101_ _g157088157105_))))
                    (_g157087157101_ _g157088157105_)))))
        (_g157086157143_ _$stx157083_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx157147_)
      (let* ((_g157151157165_
              (lambda (_g157152157161_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157152157161_))))
             (_g157150157206_
              (lambda (_g157152157169_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157152157169_))
                    (let ((_e157156157172_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157152157169_))))
                      (let ((_hd157155157176_
                             (let ()
                               (declare (not safe))
                               (##car _e157156157172_)))
                            (_tl157154157179_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157156157172_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157154157179_))
                            (let ((_e157159157182_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157154157179_))))
                              (let ((_hd157158157186_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157159157182_)))
                                    (_tl157157157189_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157159157182_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157157157189_))
                                    ((lambda (_L157192_)
                                       (let ((__tmp158908
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158903
                                              (let ((__tmp158904
                                                     (let ((__tmp158907
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158905
                                                            (let ((__tmp158906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157192_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158906))))
               (declare (not safe))
               (cons __tmp158907 __tmp158905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158904 '()))))
                                         (declare (not safe))
                                         (cons __tmp158908 __tmp158903)))
                                     _hd157158157186_)
                                    (_g157151157165_ _g157152157169_))))
                            (_g157151157165_ _g157152157169_))))
                    (_g157151157165_ _g157152157169_)))))
        (_g157150157206_ _$stx157147_)))))
