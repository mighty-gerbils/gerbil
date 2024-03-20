(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158855_)
      (let* ((_g158859158873_
              (lambda (_g158860158869_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158860158869_))))
             (_g158858158915_
              (lambda (_g158860158877_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158860158877_))
                    (let ((_e158864158880_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158860158877_))))
                      (let ((_hd158863158884_
                             (let ()
                               (declare (not safe))
                               (##car _e158864158880_)))
                            (_tl158862158887_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158864158880_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158862158887_))
                            (let ((_e158867158890_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158862158887_))))
                              (let ((_hd158866158894_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158867158890_)))
                                    (_tl158865158897_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158867158890_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158865158897_))
                                    ((lambda (_L158900_)
                                       (let ((__tmp160652
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160645
                                              (let ((__tmp160651
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160646
                                                     (let ((__tmp160647
                                                            (let ((__tmp160650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160648
                           (let ((__tmp160649
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158900_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160649))))
                      (declare (not safe))
                      (cons __tmp160650 __tmp160648))))
               (declare (not safe))
               (cons __tmp160647 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160651
                                                      __tmp160646))))
                                         (declare (not safe))
                                         (cons __tmp160652 __tmp160645)))
                                     _hd158866158894_)
                                    (_g158859158873_ _g158860158877_))))
                            (_g158859158873_ _g158860158877_))))
                    (_g158859158873_ _g158860158877_)))))
        (_g158858158915_ _$stx158855_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158919_)
      (let* ((_g158923158937_
              (lambda (_g158924158933_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158924158933_))))
             (_g158922158978_
              (lambda (_g158924158941_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158924158941_))
                    (let ((_e158928158944_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158924158941_))))
                      (let ((_hd158927158948_
                             (let ()
                               (declare (not safe))
                               (##car _e158928158944_)))
                            (_tl158926158951_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158928158944_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158926158951_))
                            (let ((_e158931158954_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158926158951_))))
                              (let ((_hd158930158958_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158931158954_)))
                                    (_tl158929158961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158931158954_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158929158961_))
                                    ((lambda (_L158964_)
                                       (let ((__tmp160658
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160653
                                              (let ((__tmp160654
                                                     (let ((__tmp160657
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160655
                                                            (let ((__tmp160656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158964_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160656))))
               (declare (not safe))
               (cons __tmp160657 __tmp160655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160654 '()))))
                                         (declare (not safe))
                                         (cons __tmp160658 __tmp160653)))
                                     _hd158930158958_)
                                    (_g158923158937_ _g158924158941_))))
                            (_g158923158937_ _g158924158941_))))
                    (_g158923158937_ _g158924158941_)))))
        (_g158922158978_ _$stx158919_)))))
