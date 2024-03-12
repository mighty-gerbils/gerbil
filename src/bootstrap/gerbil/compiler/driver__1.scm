(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx157147_)
      (let* ((_g157151157165_
              (lambda (_g157152157161_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157152157161_))))
             (_g157150157207_
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
                                       (let ((__tmp158945
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158938
                                              (let ((__tmp158944
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158939
                                                     (let ((__tmp158940
                                                            (let ((__tmp158943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158941
                           (let ((__tmp158942
                                  (let ()
                                    (declare (not safe))
                                    (cons _L157192_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158942))))
                      (declare (not safe))
                      (cons __tmp158943 __tmp158941))))
               (declare (not safe))
               (cons __tmp158940 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158944
                                                      __tmp158939))))
                                         (declare (not safe))
                                         (cons __tmp158945 __tmp158938)))
                                     _hd157158157186_)
                                    (_g157151157165_ _g157152157169_))))
                            (_g157151157165_ _g157152157169_))))
                    (_g157151157165_ _g157152157169_)))))
        (_g157150157207_ _$stx157147_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx157211_)
      (let* ((_g157215157229_
              (lambda (_g157216157225_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157216157225_))))
             (_g157214157270_
              (lambda (_g157216157233_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157216157233_))
                    (let ((_e157220157236_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157216157233_))))
                      (let ((_hd157219157240_
                             (let ()
                               (declare (not safe))
                               (##car _e157220157236_)))
                            (_tl157218157243_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157220157236_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157218157243_))
                            (let ((_e157223157246_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157218157243_))))
                              (let ((_hd157222157250_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157223157246_)))
                                    (_tl157221157253_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157223157246_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157221157253_))
                                    ((lambda (_L157256_)
                                       (let ((__tmp158951
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158946
                                              (let ((__tmp158947
                                                     (let ((__tmp158950
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158948
                                                            (let ((__tmp158949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157256_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158949))))
               (declare (not safe))
               (cons __tmp158950 __tmp158948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158947 '()))))
                                         (declare (not safe))
                                         (cons __tmp158951 __tmp158946)))
                                     _hd157222157250_)
                                    (_g157215157229_ _g157216157233_))))
                            (_g157215157229_ _g157216157233_))))
                    (_g157215157229_ _g157216157233_)))))
        (_g157214157270_ _$stx157211_)))))
