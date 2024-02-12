(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx290443_)
      (let* ((_g290447290461_
              (lambda (_g290448290457_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290448290457_))))
             (_g290446290503_
              (lambda (_g290448290465_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290448290465_))
                    (let ((_e290452290468_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290448290465_))))
                      (let ((_hd290451290472_
                             (let ()
                               (declare (not safe))
                               (##car _e290452290468_)))
                            (_tl290450290475_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290452290468_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290450290475_))
                            (let ((_e290455290478_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290450290475_))))
                              (let ((_hd290454290482_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290455290478_)))
                                    (_tl290453290485_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290455290478_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290453290485_))
                                    ((lambda (_L290488_)
                                       (let ((__tmp296808
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp296801
                                              (let ((__tmp296807
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp296802
                                                     (let ((__tmp296803
                                                            (let ((__tmp296806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp296804
                           (let ((__tmp296805
                                  (let ()
                                    (declare (not safe))
                                    (cons _L290488_ '()))))
                             (declare (not safe))
                             (cons '() __tmp296805))))
                      (declare (not safe))
                      (cons __tmp296806 __tmp296804))))
               (declare (not safe))
               (cons __tmp296803 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296807
                                                      __tmp296802))))
                                         (declare (not safe))
                                         (cons __tmp296808 __tmp296801)))
                                     _hd290454290482_)
                                    (_g290447290461_ _g290448290465_))))
                            (_g290447290461_ _g290448290465_))))
                    (_g290447290461_ _g290448290465_)))))
        (_g290446290503_ _$stx290443_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx290507_)
      (let* ((_g290511290525_
              (lambda (_g290512290521_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290512290521_))))
             (_g290510290566_
              (lambda (_g290512290529_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290512290529_))
                    (let ((_e290516290532_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290512290529_))))
                      (let ((_hd290515290536_
                             (let ()
                               (declare (not safe))
                               (##car _e290516290532_)))
                            (_tl290514290539_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290516290532_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290514290539_))
                            (let ((_e290519290542_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290514290539_))))
                              (let ((_hd290518290546_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290519290542_)))
                                    (_tl290517290549_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290519290542_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290517290549_))
                                    ((lambda (_L290552_)
                                       (let ((__tmp296814
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp296809
                                              (let ((__tmp296810
                                                     (let ((__tmp296813
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp296811
                                                            (let ((__tmp296812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L290552_ '()))))
                      (declare (not safe))
                      (cons '() __tmp296812))))
               (declare (not safe))
               (cons __tmp296813 __tmp296811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296810 '()))))
                                         (declare (not safe))
                                         (cons __tmp296814 __tmp296809)))
                                     _hd290518290546_)
                                    (_g290511290525_ _g290512290529_))))
                            (_g290511290525_ _g290512290529_))))
                    (_g290511290525_ _g290512290529_)))))
        (_g290510290566_ _$stx290507_)))))
