(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156164_)
      (let* ((_g156168156182_
              (lambda (_g156169156178_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156169156178_))))
             (_g156167156224_
              (lambda (_g156169156186_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156169156186_))
                    (let ((_e156173156189_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156169156186_))))
                      (let ((_hd156172156193_
                             (let ()
                               (declare (not safe))
                               (##car _e156173156189_)))
                            (_tl156171156196_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156173156189_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156171156196_))
                            (let ((_e156176156199_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156171156196_))))
                              (let ((_hd156175156203_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156176156199_)))
                                    (_tl156174156206_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156176156199_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156174156206_))
                                    ((lambda (_L156209_)
                                       (let ((__tmp157965
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp157958
                                              (let ((__tmp157964
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp157959
                                                     (let ((__tmp157960
                                                            (let ((__tmp157963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp157961
                           (let ((__tmp157962
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156209_ '()))))
                             (declare (not safe))
                             (cons '() __tmp157962))))
                      (declare (not safe))
                      (cons __tmp157963 __tmp157961))))
               (declare (not safe))
               (cons __tmp157960 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157964
                                                      __tmp157959))))
                                         (declare (not safe))
                                         (cons __tmp157965 __tmp157958)))
                                     _hd156175156203_)
                                    (_g156168156182_ _g156169156186_))))
                            (_g156168156182_ _g156169156186_))))
                    (_g156168156182_ _g156169156186_)))))
        (_g156167156224_ _$stx156164_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156228_)
      (let* ((_g156232156246_
              (lambda (_g156233156242_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156233156242_))))
             (_g156231156287_
              (lambda (_g156233156250_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156233156250_))
                    (let ((_e156237156253_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156233156250_))))
                      (let ((_hd156236156257_
                             (let ()
                               (declare (not safe))
                               (##car _e156237156253_)))
                            (_tl156235156260_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156237156253_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156235156260_))
                            (let ((_e156240156263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156235156260_))))
                              (let ((_hd156239156267_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156240156263_)))
                                    (_tl156238156270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156240156263_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156238156270_))
                                    ((lambda (_L156273_)
                                       (let ((__tmp157971
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp157966
                                              (let ((__tmp157967
                                                     (let ((__tmp157970
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp157968
                                                            (let ((__tmp157969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156273_ '()))))
                      (declare (not safe))
                      (cons '() __tmp157969))))
               (declare (not safe))
               (cons __tmp157970 __tmp157968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157967 '()))))
                                         (declare (not safe))
                                         (cons __tmp157971 __tmp157966)))
                                     _hd156239156267_)
                                    (_g156232156246_ _g156233156250_))))
                            (_g156232156246_ _g156233156250_))))
                    (_g156232156246_ _g156233156250_)))))
        (_g156231156287_ _$stx156228_)))))
