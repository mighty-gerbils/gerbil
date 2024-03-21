(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158836_)
      (let* ((_g158840158854_
              (lambda (_g158841158850_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158841158850_))))
             (_g158839158896_
              (lambda (_g158841158858_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158841158858_))
                    (let ((_e158845158861_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158841158858_))))
                      (let ((_hd158844158865_
                             (let ()
                               (declare (not safe))
                               (##car _e158845158861_)))
                            (_tl158843158868_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158845158861_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158843158868_))
                            (let ((_e158848158871_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158843158868_))))
                              (let ((_hd158847158875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158848158871_)))
                                    (_tl158846158878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158848158871_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158846158878_))
                                    ((lambda (_L158881_)
                                       (let ((__tmp160633
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160626
                                              (let ((__tmp160632
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160627
                                                     (let ((__tmp160628
                                                            (let ((__tmp160631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160629
                           (let ((__tmp160630
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158881_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160630))))
                      (declare (not safe))
                      (cons __tmp160631 __tmp160629))))
               (declare (not safe))
               (cons __tmp160628 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160632
                                                      __tmp160627))))
                                         (declare (not safe))
                                         (cons __tmp160633 __tmp160626)))
                                     _hd158847158875_)
                                    (_g158840158854_ _g158841158858_))))
                            (_g158840158854_ _g158841158858_))))
                    (_g158840158854_ _g158841158858_)))))
        (_g158839158896_ _$stx158836_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158900_)
      (let* ((_g158904158918_
              (lambda (_g158905158914_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158905158914_))))
             (_g158903158959_
              (lambda (_g158905158922_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158905158922_))
                    (let ((_e158909158925_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158905158922_))))
                      (let ((_hd158908158929_
                             (let ()
                               (declare (not safe))
                               (##car _e158909158925_)))
                            (_tl158907158932_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158909158925_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158907158932_))
                            (let ((_e158912158935_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158907158932_))))
                              (let ((_hd158911158939_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158912158935_)))
                                    (_tl158910158942_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158912158935_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158910158942_))
                                    ((lambda (_L158945_)
                                       (let ((__tmp160639
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160634
                                              (let ((__tmp160635
                                                     (let ((__tmp160638
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160636
                                                            (let ((__tmp160637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158945_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160637))))
               (declare (not safe))
               (cons __tmp160638 __tmp160636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160635 '()))))
                                         (declare (not safe))
                                         (cons __tmp160639 __tmp160634)))
                                     _hd158911158939_)
                                    (_g158904158918_ _g158905158922_))))
                            (_g158904158918_ _g158905158922_))))
                    (_g158904158918_ _g158905158922_)))))
        (_g158903158959_ _$stx158900_)))))
