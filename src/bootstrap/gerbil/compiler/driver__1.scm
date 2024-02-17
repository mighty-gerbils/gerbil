(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx298436_)
      (let* ((_g298440298454_
              (lambda (_g298441298450_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298441298450_))))
             (_g298439298496_
              (lambda (_g298441298458_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298441298458_))
                    (let ((_e298445298461_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298441298458_))))
                      (let ((_hd298444298465_
                             (let ()
                               (declare (not safe))
                               (##car _e298445298461_)))
                            (_tl298443298468_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298445298461_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298443298468_))
                            (let ((_e298448298471_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298443298468_))))
                              (let ((_hd298447298475_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298448298471_)))
                                    (_tl298446298478_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298448298471_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298446298478_))
                                    ((lambda (_L298481_)
                                       (let ((__tmp304805
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp304798
                                              (let ((__tmp304804
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp304799
                                                     (let ((__tmp304800
                                                            (let ((__tmp304803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp304801
                           (let ((__tmp304802
                                  (let ()
                                    (declare (not safe))
                                    (cons _L298481_ '()))))
                             (declare (not safe))
                             (cons '() __tmp304802))))
                      (declare (not safe))
                      (cons __tmp304803 __tmp304801))))
               (declare (not safe))
               (cons __tmp304800 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304804
                                                      __tmp304799))))
                                         (declare (not safe))
                                         (cons __tmp304805 __tmp304798)))
                                     _hd298447298475_)
                                    (_g298440298454_ _g298441298458_))))
                            (_g298440298454_ _g298441298458_))))
                    (_g298440298454_ _g298441298458_)))))
        (_g298439298496_ _$stx298436_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx298500_)
      (let* ((_g298504298518_
              (lambda (_g298505298514_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298505298514_))))
             (_g298503298559_
              (lambda (_g298505298522_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298505298522_))
                    (let ((_e298509298525_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298505298522_))))
                      (let ((_hd298508298529_
                             (let ()
                               (declare (not safe))
                               (##car _e298509298525_)))
                            (_tl298507298532_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298509298525_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298507298532_))
                            (let ((_e298512298535_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298507298532_))))
                              (let ((_hd298511298539_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298512298535_)))
                                    (_tl298510298542_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298512298535_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298510298542_))
                                    ((lambda (_L298545_)
                                       (let ((__tmp304811
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp304806
                                              (let ((__tmp304807
                                                     (let ((__tmp304810
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp304808
                                                            (let ((__tmp304809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L298545_ '()))))
                      (declare (not safe))
                      (cons '() __tmp304809))))
               (declare (not safe))
               (cons __tmp304810 __tmp304808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304807 '()))))
                                         (declare (not safe))
                                         (cons __tmp304811 __tmp304806)))
                                     _hd298511298539_)
                                    (_g298504298518_ _g298505298522_))))
                            (_g298504298518_ _g298505298522_))))
                    (_g298504298518_ _g298505298522_)))))
        (_g298503298559_ _$stx298500_)))))
