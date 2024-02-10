(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83131_)
    (let* ((_g8313583161_
            (lambda (_g8313683157_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8313683157_)))
           (_g8313483245_
            (lambda (_g8313683165_)
              (if (gx#stx-pair? _g8313683165_)
                  (let ((_e8314383168_ (gx#syntax-e _g8313683165_)))
                    (let ((_hd8314283172_
                           (let () (declare (not safe)) (##car _e8314383168_)))
                          (_tl8314183175_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8314383168_))))
                      (if (gx#stx-pair? _tl8314183175_)
                          (let ((_e8314683178_ (gx#syntax-e _tl8314183175_)))
                            (let ((_hd8314583182_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8314683178_)))
                                  (_tl8314483185_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8314683178_))))
                              (if (gx#stx-pair? _tl8314483185_)
                                  (let ((_e8314983188_
                                         (gx#syntax-e _tl8314483185_)))
                                    (let ((_hd8314883192_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8314983188_)))
                                          (_tl8314783195_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8314983188_))))
                                      (if (gx#stx-pair? _tl8314783195_)
                                          (let ((_e8315283198_
                                                 (gx#syntax-e _tl8314783195_)))
                                            (let ((_hd8315183202_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8315283198_)))
                                                  (_tl8315083205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8315283198_))))
                                              (if (gx#stx-pair? _tl8315083205_)
                                                  (let ((_e8315583208_
                                                         (gx#syntax-e
                                                          _tl8315083205_)))
                                                    (let ((_hd8315483212_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8315583208_)))
                                                          (_tl8315383215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8315583208_))))
                                                      (if (gx#stx-null?
                                                           _tl8315383215_)
                                                          ((lambda (_L83218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83220_
                            _L83221_
                            _L83222_)
                     (let ((__tmp89032 (gx#datum->syntax '#f 'if))
                           (__tmp88986
                            (let ((__tmp89029
                                   (let ((__tmp89031
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89030
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83222_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89031 __tmp89030)))
                                  (__tmp88987
                                   (let ((__tmp88992
                                          (let ((__tmp89028
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp88993
                                                 (let ((__tmp89022
                                                        (let ((__tmp89027
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89023
                                                               (let ((__tmp89024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89026
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89025
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83222_ '()))))
                                (declare (not safe))
                                (cons __tmp89026 __tmp89025))))
                         (declare (not safe))
                         (cons __tmp89024 '()))))
                  (declare (not safe))
                  (cons __tmp89027 __tmp89023)))
               (__tmp88994
                (let ((__tmp88995
                       (let ((__tmp89021 (gx#datum->syntax '#f 'cond))
                             (__tmp88996
                              (let ((__tmp89004
                                     (let ((__tmp89008
                                            (let ((__tmp89020
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89009
                                                   (let ((__tmp89016
                                                          (let ((__tmp89019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp89017
                         (let ((__tmp89018 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89018 '()))))
                    (declare (not safe))
                    (cons __tmp89019 __tmp89017)))
                 (__tmp89010
                  (let ((__tmp89011
                         (let ((__tmp89015
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89012
                                (let ((__tmp89014
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89013
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83221_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89014 __tmp89013))))
                           (declare (not safe))
                           (cons __tmp89015 __tmp89012))))
                    (declare (not safe))
                    (cons __tmp89011 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89016
                                                           __tmp89010))))
                                              (declare (not safe))
                                              (cons __tmp89020 __tmp89009)))
                                           (__tmp89005
                                            (let ((__tmp89007
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89006
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83220_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89007 __tmp89006))))
                                       (declare (not safe))
                                       (cons __tmp89008 __tmp89005)))
                                    (__tmp88997
                                     (let ((__tmp88998
                                            (let ((__tmp89003
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp88999
                                                   (let ((__tmp89000
                                                          (let ((__tmp89001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89002
                                (let ()
                                  (declare (not safe))
                                  (cons _L83221_ '()))))
                           (declare (not safe))
                           (cons _L83222_ __tmp89002))))
                    (declare (not safe))
                    (cons _L83218_ __tmp89001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89000 '()))))
                                              (declare (not safe))
                                              (cons __tmp89003 __tmp88999))))
                                       (declare (not safe))
                                       (cons __tmp88998 '()))))
                                (declare (not safe))
                                (cons __tmp89004 __tmp88997))))
                         (declare (not safe))
                         (cons __tmp89021 __tmp88996))))
                  (declare (not safe))
                  (cons __tmp88995 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89022
                                                         __tmp88994))))
                                            (declare (not safe))
                                            (cons __tmp89028 __tmp88993)))
                                         (__tmp88988
                                          (let ((__tmp88989
                                                 (let ((__tmp88990
                                                        (let ((__tmp88991
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83221_ '()))))
                  (declare (not safe))
                  (cons _L83222_ __tmp88991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83218_
                                                         __tmp88990))))
                                            (declare (not safe))
                                            (cons __tmp88989 '()))))
                                     (declare (not safe))
                                     (cons __tmp88992 __tmp88988))))
                              (declare (not safe))
                              (cons __tmp89029 __tmp88987))))
                       (declare (not safe))
                       (cons __tmp89032 __tmp88986)))
                   _hd8315483212_
                   _hd8315183202_
                   _hd8314883192_
                   _hd8314583182_)
                  (_g8313583161_ _g8313683165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8313583161_
                                                   _g8313683165_))))
                                          (_g8313583161_ _g8313683165_))))
                                  (_g8313583161_ _g8313683165_))))
                          (_g8313583161_ _g8313683165_))))
                  (_g8313583161_ _g8313683165_)))))
      (_g8313483245_ _$stx83131_))))
