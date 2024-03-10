(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx153533_)
      (let* ((_g153537153551_
              (lambda (_g153538153547_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g153538153547_))))
             (_g153536153593_
              (lambda (_g153538153555_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g153538153555_))
                    (let ((_e153540153558_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g153538153555_))))
                      (let ((_hd153541153562_
                             (let ()
                               (declare (not safe))
                               (##car _e153540153558_)))
                            (_tl153542153565_
                             (let ()
                               (declare (not safe))
                               (##cdr _e153540153558_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153542153565_))
                            (let ((_e153543153568_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl153542153565_))))
                              (let ((_hd153544153572_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e153543153568_)))
                                    (_tl153545153575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e153543153568_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl153545153575_))
                                    ((lambda (_L153578_)
                                       (let ((__tmp155330
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp155323
                                              (let ((__tmp155329
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp155324
                                                     (let ((__tmp155325
                                                            (let ((__tmp155328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp155326
                           (let ((__tmp155327
                                  (let ()
                                    (declare (not safe))
                                    (cons _L153578_ '()))))
                             (declare (not safe))
                             (cons '() __tmp155327))))
                      (declare (not safe))
                      (cons __tmp155328 __tmp155326))))
               (declare (not safe))
               (cons __tmp155325 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155329
                                                      __tmp155324))))
                                         (declare (not safe))
                                         (cons __tmp155330 __tmp155323)))
                                     _hd153544153572_)
                                    (_g153537153551_ _g153538153555_))))
                            (_g153537153551_ _g153538153555_))))
                    (_g153537153551_ _g153538153555_)))))
        (_g153536153593_ _$stx153533_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx153597_)
      (let* ((_g153601153615_
              (lambda (_g153602153611_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g153602153611_))))
             (_g153600153656_
              (lambda (_g153602153619_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g153602153619_))
                    (let ((_e153604153622_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g153602153619_))))
                      (let ((_hd153605153626_
                             (let ()
                               (declare (not safe))
                               (##car _e153604153622_)))
                            (_tl153606153629_
                             (let ()
                               (declare (not safe))
                               (##cdr _e153604153622_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153606153629_))
                            (let ((_e153607153632_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl153606153629_))))
                              (let ((_hd153608153636_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e153607153632_)))
                                    (_tl153609153639_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e153607153632_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl153609153639_))
                                    ((lambda (_L153642_)
                                       (let ((__tmp155336
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp155331
                                              (let ((__tmp155332
                                                     (let ((__tmp155335
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp155333
                                                            (let ((__tmp155334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L153642_ '()))))
                      (declare (not safe))
                      (cons '() __tmp155334))))
               (declare (not safe))
               (cons __tmp155335 __tmp155333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155332 '()))))
                                         (declare (not safe))
                                         (cons __tmp155336 __tmp155331)))
                                     _hd153608153636_)
                                    (_g153601153615_ _g153602153619_))))
                            (_g153601153615_ _g153602153619_))))
                    (_g153601153615_ _g153602153619_)))))
        (_g153600153656_ _$stx153597_)))))
