(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx287439_)
      (let* ((_g287443287457_
              (lambda (_g287444287453_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287444287453_))))
             (_g287442287499_
              (lambda (_g287444287461_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287444287461_))
                    (let ((_e287448287464_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287444287461_))))
                      (let ((_hd287447287468_
                             (let ()
                               (declare (not safe))
                               (##car _e287448287464_)))
                            (_tl287446287471_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287448287464_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287446287471_))
                            (let ((_e287451287474_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287446287471_))))
                              (let ((_hd287450287478_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287451287474_)))
                                    (_tl287449287481_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287451287474_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287449287481_))
                                    ((lambda (_L287484_)
                                       (let ((__tmp293704
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp293697
                                              (let ((__tmp293703
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp293698
                                                     (let ((__tmp293699
                                                            (let ((__tmp293702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp293700
                           (let ((__tmp293701
                                  (let ()
                                    (declare (not safe))
                                    (cons _L287484_ '()))))
                             (declare (not safe))
                             (cons '() __tmp293701))))
                      (declare (not safe))
                      (cons __tmp293702 __tmp293700))))
               (declare (not safe))
               (cons __tmp293699 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293703
                                                      __tmp293698))))
                                         (declare (not safe))
                                         (cons __tmp293704 __tmp293697)))
                                     _hd287450287478_)
                                    (_g287443287457_ _g287444287461_))))
                            (_g287443287457_ _g287444287461_))))
                    (_g287443287457_ _g287444287461_)))))
        (_g287442287499_ _$stx287439_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx287503_)
      (let* ((_g287507287521_
              (lambda (_g287508287517_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287508287517_))))
             (_g287506287562_
              (lambda (_g287508287525_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287508287525_))
                    (let ((_e287512287528_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287508287525_))))
                      (let ((_hd287511287532_
                             (let ()
                               (declare (not safe))
                               (##car _e287512287528_)))
                            (_tl287510287535_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287512287528_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287510287535_))
                            (let ((_e287515287538_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287510287535_))))
                              (let ((_hd287514287542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287515287538_)))
                                    (_tl287513287545_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287515287538_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287513287545_))
                                    ((lambda (_L287548_)
                                       (let ((__tmp293710
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp293705
                                              (let ((__tmp293706
                                                     (let ((__tmp293709
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp293707
                                                            (let ((__tmp293708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L287548_ '()))))
                      (declare (not safe))
                      (cons '() __tmp293708))))
               (declare (not safe))
               (cons __tmp293709 __tmp293707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293706 '()))))
                                         (declare (not safe))
                                         (cons __tmp293710 __tmp293705)))
                                     _hd287514287542_)
                                    (_g287507287521_ _g287508287525_))))
                            (_g287507287521_ _g287508287525_))))
                    (_g287507287521_ _g287508287525_)))))
        (_g287506287562_ _$stx287503_)))))
