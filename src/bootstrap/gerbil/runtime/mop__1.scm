(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83032_)
    (let* ((_g8303683062_
            (lambda (_g8303783058_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8303783058_)))
           (_g8303583146_
            (lambda (_g8303783066_)
              (if (gx#stx-pair? _g8303783066_)
                  (let ((_e8304483069_ (gx#syntax-e _g8303783066_)))
                    (let ((_hd8304383073_
                           (let () (declare (not safe)) (##car _e8304483069_)))
                          (_tl8304283076_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8304483069_))))
                      (if (gx#stx-pair? _tl8304283076_)
                          (let ((_e8304783079_ (gx#syntax-e _tl8304283076_)))
                            (let ((_hd8304683083_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8304783079_)))
                                  (_tl8304583086_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8304783079_))))
                              (if (gx#stx-pair? _tl8304583086_)
                                  (let ((_e8305083089_
                                         (gx#syntax-e _tl8304583086_)))
                                    (let ((_hd8304983093_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8305083089_)))
                                          (_tl8304883096_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8305083089_))))
                                      (if (gx#stx-pair? _tl8304883096_)
                                          (let ((_e8305383099_
                                                 (gx#syntax-e _tl8304883096_)))
                                            (let ((_hd8305283103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8305383099_)))
                                                  (_tl8305183106_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8305383099_))))
                                              (if (gx#stx-pair? _tl8305183106_)
                                                  (let ((_e8305683109_
                                                         (gx#syntax-e
                                                          _tl8305183106_)))
                                                    (let ((_hd8305583113_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8305683109_)))
                                                          (_tl8305483116_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8305683109_))))
                                                      (if (gx#stx-null?
                                                           _tl8305483116_)
                                                          ((lambda (_L83119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83121_
                            _L83122_
                            _L83123_)
                     (let ((__tmp88889 (gx#datum->syntax '#f 'if))
                           (__tmp88843
                            (let ((__tmp88886
                                   (let ((__tmp88888
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp88887
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83123_ '()))))
                                     (declare (not safe))
                                     (cons __tmp88888 __tmp88887)))
                                  (__tmp88844
                                   (let ((__tmp88849
                                          (let ((__tmp88885
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp88850
                                                 (let ((__tmp88879
                                                        (let ((__tmp88884
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp88880
                                                               (let ((__tmp88881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88883
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp88882
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83123_ '()))))
                                (declare (not safe))
                                (cons __tmp88883 __tmp88882))))
                         (declare (not safe))
                         (cons __tmp88881 '()))))
                  (declare (not safe))
                  (cons __tmp88884 __tmp88880)))
               (__tmp88851
                (let ((__tmp88852
                       (let ((__tmp88878 (gx#datum->syntax '#f 'cond))
                             (__tmp88853
                              (let ((__tmp88861
                                     (let ((__tmp88865
                                            (let ((__tmp88877
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp88866
                                                   (let ((__tmp88873
                                                          (let ((__tmp88876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp88874
                         (let ((__tmp88875 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp88875 '()))))
                    (declare (not safe))
                    (cons __tmp88876 __tmp88874)))
                 (__tmp88867
                  (let ((__tmp88868
                         (let ((__tmp88872
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp88869
                                (let ((__tmp88871
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp88870
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83122_ '()))))
                                  (declare (not safe))
                                  (cons __tmp88871 __tmp88870))))
                           (declare (not safe))
                           (cons __tmp88872 __tmp88869))))
                    (declare (not safe))
                    (cons __tmp88868 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88873
                                                           __tmp88867))))
                                              (declare (not safe))
                                              (cons __tmp88877 __tmp88866)))
                                           (__tmp88862
                                            (let ((__tmp88864
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp88863
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83121_ '()))))
                                              (declare (not safe))
                                              (cons __tmp88864 __tmp88863))))
                                       (declare (not safe))
                                       (cons __tmp88865 __tmp88862)))
                                    (__tmp88854
                                     (let ((__tmp88855
                                            (let ((__tmp88860
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp88856
                                                   (let ((__tmp88857
                                                          (let ((__tmp88858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88859
                                (let ()
                                  (declare (not safe))
                                  (cons _L83122_ '()))))
                           (declare (not safe))
                           (cons _L83123_ __tmp88859))))
                    (declare (not safe))
                    (cons _L83119_ __tmp88858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88857 '()))))
                                              (declare (not safe))
                                              (cons __tmp88860 __tmp88856))))
                                       (declare (not safe))
                                       (cons __tmp88855 '()))))
                                (declare (not safe))
                                (cons __tmp88861 __tmp88854))))
                         (declare (not safe))
                         (cons __tmp88878 __tmp88853))))
                  (declare (not safe))
                  (cons __tmp88852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp88879
                                                         __tmp88851))))
                                            (declare (not safe))
                                            (cons __tmp88885 __tmp88850)))
                                         (__tmp88845
                                          (let ((__tmp88846
                                                 (let ((__tmp88847
                                                        (let ((__tmp88848
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83122_ '()))))
                  (declare (not safe))
                  (cons _L83123_ __tmp88848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83119_
                                                         __tmp88847))))
                                            (declare (not safe))
                                            (cons __tmp88846 '()))))
                                     (declare (not safe))
                                     (cons __tmp88849 __tmp88845))))
                              (declare (not safe))
                              (cons __tmp88886 __tmp88844))))
                       (declare (not safe))
                       (cons __tmp88889 __tmp88843)))
                   _hd8305583113_
                   _hd8305283103_
                   _hd8304983093_
                   _hd8304683083_)
                  (_g8303683062_ _g8303783066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8303683062_
                                                   _g8303783066_))))
                                          (_g8303683062_ _g8303783066_))))
                                  (_g8303683062_ _g8303783066_))))
                          (_g8303683062_ _g8303783066_))))
                  (_g8303683062_ _g8303783066_)))))
      (_g8303583146_ _$stx83032_))))
