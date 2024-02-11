(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx287435_)
      (let* ((_g287439287453_
              (lambda (_g287440287449_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287440287449_))))
             (_g287438287495_
              (lambda (_g287440287457_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287440287457_))
                    (let ((_e287444287460_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287440287457_))))
                      (let ((_hd287443287464_
                             (let ()
                               (declare (not safe))
                               (##car _e287444287460_)))
                            (_tl287442287467_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287444287460_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287442287467_))
                            (let ((_e287447287470_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287442287467_))))
                              (let ((_hd287446287474_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287447287470_)))
                                    (_tl287445287477_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287447287470_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287445287477_))
                                    ((lambda (_L287480_)
                                       (let ((__tmp293700
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp293693
                                              (let ((__tmp293699
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp293694
                                                     (let ((__tmp293695
                                                            (let ((__tmp293698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp293696
                           (let ((__tmp293697
                                  (let ()
                                    (declare (not safe))
                                    (cons _L287480_ '()))))
                             (declare (not safe))
                             (cons '() __tmp293697))))
                      (declare (not safe))
                      (cons __tmp293698 __tmp293696))))
               (declare (not safe))
               (cons __tmp293695 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293699
                                                      __tmp293694))))
                                         (declare (not safe))
                                         (cons __tmp293700 __tmp293693)))
                                     _hd287446287474_)
                                    (_g287439287453_ _g287440287457_))))
                            (_g287439287453_ _g287440287457_))))
                    (_g287439287453_ _g287440287457_)))))
        (_g287438287495_ _$stx287435_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx287499_)
      (let* ((_g287503287517_
              (lambda (_g287504287513_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287504287513_))))
             (_g287502287558_
              (lambda (_g287504287521_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287504287521_))
                    (let ((_e287508287524_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287504287521_))))
                      (let ((_hd287507287528_
                             (let ()
                               (declare (not safe))
                               (##car _e287508287524_)))
                            (_tl287506287531_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287508287524_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287506287531_))
                            (let ((_e287511287534_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287506287531_))))
                              (let ((_hd287510287538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287511287534_)))
                                    (_tl287509287541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287511287534_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287509287541_))
                                    ((lambda (_L287544_)
                                       (let ((__tmp293706
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp293701
                                              (let ((__tmp293702
                                                     (let ((__tmp293705
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp293703
                                                            (let ((__tmp293704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L287544_ '()))))
                      (declare (not safe))
                      (cons '() __tmp293704))))
               (declare (not safe))
               (cons __tmp293705 __tmp293703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293702 '()))))
                                         (declare (not safe))
                                         (cons __tmp293706 __tmp293701)))
                                     _hd287510287538_)
                                    (_g287503287517_ _g287504287521_))))
                            (_g287503287517_ _g287504287521_))))
                    (_g287503287517_ _g287504287521_)))))
        (_g287502287558_ _$stx287499_)))))
