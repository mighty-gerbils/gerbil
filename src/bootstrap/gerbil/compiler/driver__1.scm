(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx294255_)
      (let* ((_g294259294273_
              (lambda (_g294260294269_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294260294269_))))
             (_g294258294315_
              (lambda (_g294260294277_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294260294277_))
                    (let ((_e294264294280_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294260294277_))))
                      (let ((_hd294263294284_
                             (let ()
                               (declare (not safe))
                               (##car _e294264294280_)))
                            (_tl294262294287_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294264294280_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294262294287_))
                            (let ((_e294267294290_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294262294287_))))
                              (let ((_hd294266294294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294267294290_)))
                                    (_tl294265294297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294267294290_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294265294297_))
                                    ((lambda (_L294300_)
                                       (let ((__tmp300123
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp300116
                                              (let ((__tmp300122
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp300117
                                                     (let ((__tmp300118
                                                            (let ((__tmp300121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp300119
                           (let ((__tmp300120
                                  (let ()
                                    (declare (not safe))
                                    (cons _L294300_ '()))))
                             (declare (not safe))
                             (cons '() __tmp300120))))
                      (declare (not safe))
                      (cons __tmp300121 __tmp300119))))
               (declare (not safe))
               (cons __tmp300118 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300122
                                                      __tmp300117))))
                                         (declare (not safe))
                                         (cons __tmp300123 __tmp300116)))
                                     _hd294266294294_)
                                    (_g294259294273_ _g294260294277_))))
                            (_g294259294273_ _g294260294277_))))
                    (_g294259294273_ _g294260294277_)))))
        (_g294258294315_ _$stx294255_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx294319_)
      (let* ((_g294323294337_
              (lambda (_g294324294333_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294324294333_))))
             (_g294322294378_
              (lambda (_g294324294341_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294324294341_))
                    (let ((_e294328294344_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294324294341_))))
                      (let ((_hd294327294348_
                             (let ()
                               (declare (not safe))
                               (##car _e294328294344_)))
                            (_tl294326294351_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294328294344_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294326294351_))
                            (let ((_e294331294354_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294326294351_))))
                              (let ((_hd294330294358_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294331294354_)))
                                    (_tl294329294361_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294331294354_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294329294361_))
                                    ((lambda (_L294364_)
                                       (let ((__tmp300129
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp300124
                                              (let ((__tmp300125
                                                     (let ((__tmp300128
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp300126
                                                            (let ((__tmp300127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L294364_ '()))))
                      (declare (not safe))
                      (cons '() __tmp300127))))
               (declare (not safe))
               (cons __tmp300128 __tmp300126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300125 '()))))
                                         (declare (not safe))
                                         (cons __tmp300129 __tmp300124)))
                                     _hd294330294358_)
                                    (_g294323294337_ _g294324294341_))))
                            (_g294323294337_ _g294324294341_))))
                    (_g294323294337_ _g294324294341_)))))
        (_g294322294378_ _$stx294319_)))))
