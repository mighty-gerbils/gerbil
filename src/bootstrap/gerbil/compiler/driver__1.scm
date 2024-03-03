(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156903_)
      (let* ((_g156907156921_
              (lambda (_g156908156917_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156908156917_))))
             (_g156906156963_
              (lambda (_g156908156925_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156908156925_))
                    (let ((_e156912156928_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156908156925_))))
                      (let ((_hd156911156932_
                             (let ()
                               (declare (not safe))
                               (##car _e156912156928_)))
                            (_tl156910156935_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156912156928_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156910156935_))
                            (let ((_e156915156938_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156910156935_))))
                              (let ((_hd156914156942_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156915156938_)))
                                    (_tl156913156945_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156915156938_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156913156945_))
                                    ((lambda (_L156948_)
                                       (let ((__tmp158704
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158697
                                              (let ((__tmp158703
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158698
                                                     (let ((__tmp158699
                                                            (let ((__tmp158702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158700
                           (let ((__tmp158701
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156948_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158701))))
                      (declare (not safe))
                      (cons __tmp158702 __tmp158700))))
               (declare (not safe))
               (cons __tmp158699 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158703
                                                      __tmp158698))))
                                         (declare (not safe))
                                         (cons __tmp158704 __tmp158697)))
                                     _hd156914156942_)
                                    (_g156907156921_ _g156908156925_))))
                            (_g156907156921_ _g156908156925_))))
                    (_g156907156921_ _g156908156925_)))))
        (_g156906156963_ _$stx156903_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156967_)
      (let* ((_g156971156985_
              (lambda (_g156972156981_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156972156981_))))
             (_g156970157026_
              (lambda (_g156972156989_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156972156989_))
                    (let ((_e156976156992_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156972156989_))))
                      (let ((_hd156975156996_
                             (let ()
                               (declare (not safe))
                               (##car _e156976156992_)))
                            (_tl156974156999_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156976156992_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156974156999_))
                            (let ((_e156979157002_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156974156999_))))
                              (let ((_hd156978157006_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156979157002_)))
                                    (_tl156977157009_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156979157002_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156977157009_))
                                    ((lambda (_L157012_)
                                       (let ((__tmp158710
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158705
                                              (let ((__tmp158706
                                                     (let ((__tmp158709
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158707
                                                            (let ((__tmp158708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157012_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158708))))
               (declare (not safe))
               (cons __tmp158709 __tmp158707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158706 '()))))
                                         (declare (not safe))
                                         (cons __tmp158710 __tmp158705)))
                                     _hd156978157006_)
                                    (_g156971156985_ _g156972156989_))))
                            (_g156971156985_ _g156972156989_))))
                    (_g156971156985_ _g156972156989_)))))
        (_g156970157026_ _$stx156967_)))))
