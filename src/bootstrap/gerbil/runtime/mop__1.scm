(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx7104_)
    (let* ((_g71087134_
            (lambda (_g71097130_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g71097130_)))
           (_g71077218_
            (lambda (_g71097138_)
              (if (gx#stx-pair? _g71097138_)
                  (let ((_e71167141_ (gx#syntax-e _g71097138_)))
                    (let ((_hd71157145_
                           (let () (declare (not safe)) (##car _e71167141_)))
                          (_tl71147148_
                           (let () (declare (not safe)) (##cdr _e71167141_))))
                      (if (gx#stx-pair? _tl71147148_)
                          (let ((_e71197151_ (gx#syntax-e _tl71147148_)))
                            (let ((_hd71187155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e71197151_)))
                                  (_tl71177158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e71197151_))))
                              (if (gx#stx-pair? _tl71177158_)
                                  (let ((_e71227161_
                                         (gx#syntax-e _tl71177158_)))
                                    (let ((_hd71217165_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e71227161_)))
                                          (_tl71207168_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e71227161_))))
                                      (if (gx#stx-pair? _tl71207168_)
                                          (let ((_e71257171_
                                                 (gx#syntax-e _tl71207168_)))
                                            (let ((_hd71247175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e71257171_)))
                                                  (_tl71237178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e71257171_))))
                                              (if (gx#stx-pair? _tl71237178_)
                                                  (let ((_e71287181_
                                                         (gx#syntax-e
                                                          _tl71237178_)))
                                                    (let ((_hd71277185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e71287181_)))
                                                          (_tl71267188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e71287181_))))
                                                      (if (gx#stx-null?
                                                           _tl71267188_)
                                                          ((lambda (_L7191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7193_
                            _L7194_
                            _L7195_)
                     (let ((__tmp8832 (gx#datum->syntax '#f 'if))
                           (__tmp8786
                            (let ((__tmp8829
                                   (let ((__tmp8831
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp8830
                                          (let ()
                                            (declare (not safe))
                                            (cons _L7195_ '()))))
                                     (declare (not safe))
                                     (cons __tmp8831 __tmp8830)))
                                  (__tmp8787
                                   (let ((__tmp8792
                                          (let ((__tmp8828
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp8793
                                                 (let ((__tmp8822
                                                        (let ((__tmp8827
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp8823
                                                               (let ((__tmp8824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp8826
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp8825
                                     (let ()
                                       (declare (not safe))
                                       (cons _L7195_ '()))))
                                (declare (not safe))
                                (cons __tmp8826 __tmp8825))))
                         (declare (not safe))
                         (cons __tmp8824 '()))))
                  (declare (not safe))
                  (cons __tmp8827 __tmp8823)))
               (__tmp8794
                (let ((__tmp8795
                       (let ((__tmp8821 (gx#datum->syntax '#f 'cond))
                             (__tmp8796
                              (let ((__tmp8804
                                     (let ((__tmp8808
                                            (let ((__tmp8820
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp8809
                                                   (let ((__tmp8816
                                                          (let ((__tmp8819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp8817
                         (let ((__tmp8818 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp8818 '()))))
                    (declare (not safe))
                    (cons __tmp8819 __tmp8817)))
                 (__tmp8810
                  (let ((__tmp8811
                         (let ((__tmp8815
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp8812
                                (let ((__tmp8814 (gx#datum->syntax '#f 'klass))
                                      (__tmp8813
                                       (let ()
                                         (declare (not safe))
                                         (cons _L7194_ '()))))
                                  (declare (not safe))
                                  (cons __tmp8814 __tmp8813))))
                           (declare (not safe))
                           (cons __tmp8815 __tmp8812))))
                    (declare (not safe))
                    (cons __tmp8811 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8816
                                                           __tmp8810))))
                                              (declare (not safe))
                                              (cons __tmp8820 __tmp8809)))
                                           (__tmp8805
                                            (let ((__tmp8807
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp8806
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L7193_ '()))))
                                              (declare (not safe))
                                              (cons __tmp8807 __tmp8806))))
                                       (declare (not safe))
                                       (cons __tmp8808 __tmp8805)))
                                    (__tmp8797
                                     (let ((__tmp8798
                                            (let ((__tmp8803
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8799
                                                   (let ((__tmp8800
                                                          (let ((__tmp8801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8802
                                (let ()
                                  (declare (not safe))
                                  (cons _L7194_ '()))))
                           (declare (not safe))
                           (cons _L7195_ __tmp8802))))
                    (declare (not safe))
                    (cons _L7191_ __tmp8801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8800 '()))))
                                              (declare (not safe))
                                              (cons __tmp8803 __tmp8799))))
                                       (declare (not safe))
                                       (cons __tmp8798 '()))))
                                (declare (not safe))
                                (cons __tmp8804 __tmp8797))))
                         (declare (not safe))
                         (cons __tmp8821 __tmp8796))))
                  (declare (not safe))
                  (cons __tmp8795 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8822
                                                         __tmp8794))))
                                            (declare (not safe))
                                            (cons __tmp8828 __tmp8793)))
                                         (__tmp8788
                                          (let ((__tmp8789
                                                 (let ((__tmp8790
                                                        (let ((__tmp8791
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L7194_ '()))))
                  (declare (not safe))
                  (cons _L7195_ __tmp8791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L7191_ __tmp8790))))
                                            (declare (not safe))
                                            (cons __tmp8789 '()))))
                                     (declare (not safe))
                                     (cons __tmp8792 __tmp8788))))
                              (declare (not safe))
                              (cons __tmp8829 __tmp8787))))
                       (declare (not safe))
                       (cons __tmp8832 __tmp8786)))
                   _hd71277185_
                   _hd71247175_
                   _hd71217165_
                   _hd71187155_)
                  (_g71087134_ _g71097138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g71087134_ _g71097138_))))
                                          (_g71087134_ _g71097138_))))
                                  (_g71087134_ _g71097138_))))
                          (_g71087134_ _g71097138_))))
                  (_g71087134_ _g71097138_)))))
      (_g71077218_ _$stx7104_))))
