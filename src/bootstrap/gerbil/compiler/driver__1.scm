(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx289779_)
      (let* ((_g289783289797_
              (lambda (_g289784289793_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289784289793_))))
             (_g289782289839_
              (lambda (_g289784289801_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289784289801_))
                    (let ((_e289788289804_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289784289801_))))
                      (let ((_hd289787289808_
                             (let ()
                               (declare (not safe))
                               (##car _e289788289804_)))
                            (_tl289786289811_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289788289804_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289786289811_))
                            (let ((_e289791289814_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289786289811_))))
                              (let ((_hd289790289818_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289791289814_)))
                                    (_tl289789289821_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289791289814_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl289789289821_))
                                    ((lambda (_L289824_)
                                       (let ((__tmp295766
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp295759
                                              (let ((__tmp295765
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp295760
                                                     (let ((__tmp295761
                                                            (let ((__tmp295764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp295762
                           (let ((__tmp295763
                                  (let ()
                                    (declare (not safe))
                                    (cons _L289824_ '()))))
                             (declare (not safe))
                             (cons '() __tmp295763))))
                      (declare (not safe))
                      (cons __tmp295764 __tmp295762))))
               (declare (not safe))
               (cons __tmp295761 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295765
                                                      __tmp295760))))
                                         (declare (not safe))
                                         (cons __tmp295766 __tmp295759)))
                                     _hd289790289818_)
                                    (_g289783289797_ _g289784289801_))))
                            (_g289783289797_ _g289784289801_))))
                    (_g289783289797_ _g289784289801_)))))
        (_g289782289839_ _$stx289779_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx289843_)
      (let* ((_g289847289861_
              (lambda (_g289848289857_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289848289857_))))
             (_g289846289902_
              (lambda (_g289848289865_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289848289865_))
                    (let ((_e289852289868_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289848289865_))))
                      (let ((_hd289851289872_
                             (let ()
                               (declare (not safe))
                               (##car _e289852289868_)))
                            (_tl289850289875_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289852289868_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289850289875_))
                            (let ((_e289855289878_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289850289875_))))
                              (let ((_hd289854289882_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289855289878_)))
                                    (_tl289853289885_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289855289878_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl289853289885_))
                                    ((lambda (_L289888_)
                                       (let ((__tmp295772
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp295767
                                              (let ((__tmp295768
                                                     (let ((__tmp295771
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp295769
                                                            (let ((__tmp295770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L289888_ '()))))
                      (declare (not safe))
                      (cons '() __tmp295770))))
               (declare (not safe))
               (cons __tmp295771 __tmp295769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295768 '()))))
                                         (declare (not safe))
                                         (cons __tmp295772 __tmp295767)))
                                     _hd289854289882_)
                                    (_g289847289861_ _g289848289865_))))
                            (_g289847289861_ _g289848289865_))))
                    (_g289847289861_ _g289848289865_)))))
        (_g289846289902_ _$stx289843_)))))
