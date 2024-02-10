(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx287403_)
      (let* ((_g287407287421_
              (lambda (_g287408287417_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287408287417_))))
             (_g287406287463_
              (lambda (_g287408287425_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287408287425_))
                    (let ((_e287412287428_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287408287425_))))
                      (let ((_hd287411287432_
                             (let ()
                               (declare (not safe))
                               (##car _e287412287428_)))
                            (_tl287410287435_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287412287428_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287410287435_))
                            (let ((_e287415287438_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287410287435_))))
                              (let ((_hd287414287442_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287415287438_)))
                                    (_tl287413287445_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287415287438_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287413287445_))
                                    ((lambda (_L287448_)
                                       (let ((__tmp293668
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp293661
                                              (let ((__tmp293667
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp293662
                                                     (let ((__tmp293663
                                                            (let ((__tmp293666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp293664
                           (let ((__tmp293665
                                  (let ()
                                    (declare (not safe))
                                    (cons _L287448_ '()))))
                             (declare (not safe))
                             (cons '() __tmp293665))))
                      (declare (not safe))
                      (cons __tmp293666 __tmp293664))))
               (declare (not safe))
               (cons __tmp293663 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293667
                                                      __tmp293662))))
                                         (declare (not safe))
                                         (cons __tmp293668 __tmp293661)))
                                     _hd287414287442_)
                                    (_g287407287421_ _g287408287425_))))
                            (_g287407287421_ _g287408287425_))))
                    (_g287407287421_ _g287408287425_)))))
        (_g287406287463_ _$stx287403_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx287467_)
      (let* ((_g287471287485_
              (lambda (_g287472287481_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287472287481_))))
             (_g287470287526_
              (lambda (_g287472287489_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287472287489_))
                    (let ((_e287476287492_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287472287489_))))
                      (let ((_hd287475287496_
                             (let ()
                               (declare (not safe))
                               (##car _e287476287492_)))
                            (_tl287474287499_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287476287492_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287474287499_))
                            (let ((_e287479287502_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287474287499_))))
                              (let ((_hd287478287506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287479287502_)))
                                    (_tl287477287509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287479287502_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287477287509_))
                                    ((lambda (_L287512_)
                                       (let ((__tmp293674
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp293669
                                              (let ((__tmp293670
                                                     (let ((__tmp293673
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp293671
                                                            (let ((__tmp293672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L287512_ '()))))
                      (declare (not safe))
                      (cons '() __tmp293672))))
               (declare (not safe))
               (cons __tmp293673 __tmp293671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293670 '()))))
                                         (declare (not safe))
                                         (cons __tmp293674 __tmp293669)))
                                     _hd287478287506_)
                                    (_g287471287485_ _g287472287489_))))
                            (_g287471287485_ _g287472287489_))))
                    (_g287471287485_ _g287472287489_)))))
        (_g287470287526_ _$stx287467_)))))
