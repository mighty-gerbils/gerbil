(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx287148_)
      (let* ((_g287152287166_
              (lambda (_g287153287162_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287153287162_))))
             (_g287151287208_
              (lambda (_g287153287170_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287153287170_))
                    (let ((_e287157287173_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287153287170_))))
                      (let ((_hd287156287177_
                             (let ()
                               (declare (not safe))
                               (##car _e287157287173_)))
                            (_tl287155287180_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287157287173_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287155287180_))
                            (let ((_e287160287183_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287155287180_))))
                              (let ((_hd287159287187_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287160287183_)))
                                    (_tl287158287190_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287160287183_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287158287190_))
                                    ((lambda (_L287193_)
                                       (let ((__tmp293016
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp293009
                                              (let ((__tmp293015
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp293010
                                                     (let ((__tmp293011
                                                            (let ((__tmp293014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp293012
                           (let ((__tmp293013
                                  (let ()
                                    (declare (not safe))
                                    (cons _L287193_ '()))))
                             (declare (not safe))
                             (cons '() __tmp293013))))
                      (declare (not safe))
                      (cons __tmp293014 __tmp293012))))
               (declare (not safe))
               (cons __tmp293011 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293015
                                                      __tmp293010))))
                                         (declare (not safe))
                                         (cons __tmp293016 __tmp293009)))
                                     _hd287159287187_)
                                    (_g287152287166_ _g287153287170_))))
                            (_g287152287166_ _g287153287170_))))
                    (_g287152287166_ _g287153287170_)))))
        (_g287151287208_ _$stx287148_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx287212_)
      (let* ((_g287216287230_
              (lambda (_g287217287226_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287217287226_))))
             (_g287215287271_
              (lambda (_g287217287234_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287217287234_))
                    (let ((_e287221287237_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287217287234_))))
                      (let ((_hd287220287241_
                             (let ()
                               (declare (not safe))
                               (##car _e287221287237_)))
                            (_tl287219287244_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287221287237_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287219287244_))
                            (let ((_e287224287247_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287219287244_))))
                              (let ((_hd287223287251_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287224287247_)))
                                    (_tl287222287254_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287224287247_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287222287254_))
                                    ((lambda (_L287257_)
                                       (let ((__tmp293022
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp293017
                                              (let ((__tmp293018
                                                     (let ((__tmp293021
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp293019
                                                            (let ((__tmp293020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L287257_ '()))))
                      (declare (not safe))
                      (cons '() __tmp293020))))
               (declare (not safe))
               (cons __tmp293021 __tmp293019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293018 '()))))
                                         (declare (not safe))
                                         (cons __tmp293022 __tmp293017)))
                                     _hd287223287251_)
                                    (_g287216287230_ _g287217287234_))))
                            (_g287216287230_ _g287217287234_))))
                    (_g287216287230_ _g287217287234_)))))
        (_g287215287271_ _$stx287212_)))))
