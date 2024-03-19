(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158854_)
      (let* ((_g158858158872_
              (lambda (_g158859158868_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158859158868_))))
             (_g158857158914_
              (lambda (_g158859158876_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158859158876_))
                    (let ((_e158863158879_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158859158876_))))
                      (let ((_hd158862158883_
                             (let ()
                               (declare (not safe))
                               (##car _e158863158879_)))
                            (_tl158861158886_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158863158879_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158861158886_))
                            (let ((_e158866158889_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158861158886_))))
                              (let ((_hd158865158893_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158866158889_)))
                                    (_tl158864158896_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158866158889_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158864158896_))
                                    ((lambda (_L158899_)
                                       (let ((__tmp160651
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160644
                                              (let ((__tmp160650
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160645
                                                     (let ((__tmp160646
                                                            (let ((__tmp160649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160647
                           (let ((__tmp160648
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158899_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160648))))
                      (declare (not safe))
                      (cons __tmp160649 __tmp160647))))
               (declare (not safe))
               (cons __tmp160646 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160650
                                                      __tmp160645))))
                                         (declare (not safe))
                                         (cons __tmp160651 __tmp160644)))
                                     _hd158865158893_)
                                    (_g158858158872_ _g158859158876_))))
                            (_g158858158872_ _g158859158876_))))
                    (_g158858158872_ _g158859158876_)))))
        (_g158857158914_ _$stx158854_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158918_)
      (let* ((_g158922158936_
              (lambda (_g158923158932_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158923158932_))))
             (_g158921158977_
              (lambda (_g158923158940_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158923158940_))
                    (let ((_e158927158943_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158923158940_))))
                      (let ((_hd158926158947_
                             (let ()
                               (declare (not safe))
                               (##car _e158927158943_)))
                            (_tl158925158950_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158927158943_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158925158950_))
                            (let ((_e158930158953_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158925158950_))))
                              (let ((_hd158929158957_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158930158953_)))
                                    (_tl158928158960_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158930158953_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158928158960_))
                                    ((lambda (_L158963_)
                                       (let ((__tmp160657
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160652
                                              (let ((__tmp160653
                                                     (let ((__tmp160656
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160654
                                                            (let ((__tmp160655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158963_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160655))))
               (declare (not safe))
               (cons __tmp160656 __tmp160654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160653 '()))))
                                         (declare (not safe))
                                         (cons __tmp160657 __tmp160652)))
                                     _hd158929158957_)
                                    (_g158922158936_ _g158923158940_))))
                            (_g158922158936_ _g158923158940_))))
                    (_g158922158936_ _g158923158940_)))))
        (_g158921158977_ _$stx158918_)))))
