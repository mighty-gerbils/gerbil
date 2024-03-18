(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158850_)
      (let* ((_g158854158868_
              (lambda (_g158855158864_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158855158864_))))
             (_g158853158910_
              (lambda (_g158855158872_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158855158872_))
                    (let ((_e158859158875_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158855158872_))))
                      (let ((_hd158858158879_
                             (let ()
                               (declare (not safe))
                               (##car _e158859158875_)))
                            (_tl158857158882_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158859158875_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158857158882_))
                            (let ((_e158862158885_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158857158882_))))
                              (let ((_hd158861158889_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158862158885_)))
                                    (_tl158860158892_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158862158885_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158860158892_))
                                    ((lambda (_L158895_)
                                       (let ((__tmp160647
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160640
                                              (let ((__tmp160646
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160641
                                                     (let ((__tmp160642
                                                            (let ((__tmp160645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160643
                           (let ((__tmp160644
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158895_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160644))))
                      (declare (not safe))
                      (cons __tmp160645 __tmp160643))))
               (declare (not safe))
               (cons __tmp160642 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160646
                                                      __tmp160641))))
                                         (declare (not safe))
                                         (cons __tmp160647 __tmp160640)))
                                     _hd158861158889_)
                                    (_g158854158868_ _g158855158872_))))
                            (_g158854158868_ _g158855158872_))))
                    (_g158854158868_ _g158855158872_)))))
        (_g158853158910_ _$stx158850_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158914_)
      (let* ((_g158918158932_
              (lambda (_g158919158928_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158919158928_))))
             (_g158917158973_
              (lambda (_g158919158936_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158919158936_))
                    (let ((_e158923158939_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158919158936_))))
                      (let ((_hd158922158943_
                             (let ()
                               (declare (not safe))
                               (##car _e158923158939_)))
                            (_tl158921158946_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158923158939_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158921158946_))
                            (let ((_e158926158949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158921158946_))))
                              (let ((_hd158925158953_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158926158949_)))
                                    (_tl158924158956_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158926158949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158924158956_))
                                    ((lambda (_L158959_)
                                       (let ((__tmp160653
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160648
                                              (let ((__tmp160649
                                                     (let ((__tmp160652
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160650
                                                            (let ((__tmp160651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158959_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160651))))
               (declare (not safe))
               (cons __tmp160652 __tmp160650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160649 '()))))
                                         (declare (not safe))
                                         (cons __tmp160653 __tmp160648)))
                                     _hd158925158953_)
                                    (_g158918158932_ _g158919158936_))))
                            (_g158918158932_ _g158919158936_))))
                    (_g158918158932_ _g158919158936_)))))
        (_g158917158973_ _$stx158914_)))))
