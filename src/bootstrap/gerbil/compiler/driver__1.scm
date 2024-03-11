(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx157633_)
      (let* ((_g157637157651_
              (lambda (_g157638157647_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157638157647_))))
             (_g157636157693_
              (lambda (_g157638157655_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157638157655_))
                    (let ((_e157642157658_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157638157655_))))
                      (let ((_hd157641157662_
                             (let ()
                               (declare (not safe))
                               (##car _e157642157658_)))
                            (_tl157640157665_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157642157658_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157640157665_))
                            (let ((_e157645157668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157640157665_))))
                              (let ((_hd157644157672_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157645157668_)))
                                    (_tl157643157675_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157645157668_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157643157675_))
                                    ((lambda (_L157678_)
                                       (let ((__tmp159431
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp159424
                                              (let ((__tmp159430
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp159425
                                                     (let ((__tmp159426
                                                            (let ((__tmp159429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp159427
                           (let ((__tmp159428
                                  (let ()
                                    (declare (not safe))
                                    (cons _L157678_ '()))))
                             (declare (not safe))
                             (cons '() __tmp159428))))
                      (declare (not safe))
                      (cons __tmp159429 __tmp159427))))
               (declare (not safe))
               (cons __tmp159426 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159430
                                                      __tmp159425))))
                                         (declare (not safe))
                                         (cons __tmp159431 __tmp159424)))
                                     _hd157644157672_)
                                    (_g157637157651_ _g157638157655_))))
                            (_g157637157651_ _g157638157655_))))
                    (_g157637157651_ _g157638157655_)))))
        (_g157636157693_ _$stx157633_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx157697_)
      (let* ((_g157701157715_
              (lambda (_g157702157711_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157702157711_))))
             (_g157700157756_
              (lambda (_g157702157719_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157702157719_))
                    (let ((_e157706157722_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157702157719_))))
                      (let ((_hd157705157726_
                             (let ()
                               (declare (not safe))
                               (##car _e157706157722_)))
                            (_tl157704157729_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157706157722_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157704157729_))
                            (let ((_e157709157732_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157704157729_))))
                              (let ((_hd157708157736_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157709157732_)))
                                    (_tl157707157739_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157709157732_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157707157739_))
                                    ((lambda (_L157742_)
                                       (let ((__tmp159437
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp159432
                                              (let ((__tmp159433
                                                     (let ((__tmp159436
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp159434
                                                            (let ((__tmp159435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157742_ '()))))
                      (declare (not safe))
                      (cons '() __tmp159435))))
               (declare (not safe))
               (cons __tmp159436 __tmp159434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159433 '()))))
                                         (declare (not safe))
                                         (cons __tmp159437 __tmp159432)))
                                     _hd157708157736_)
                                    (_g157701157715_ _g157702157719_))))
                            (_g157701157715_ _g157702157719_))))
                    (_g157701157715_ _g157702157719_)))))
        (_g157700157756_ _$stx157697_)))))
