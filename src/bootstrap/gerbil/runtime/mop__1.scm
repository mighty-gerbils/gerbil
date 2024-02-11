(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83027_)
    (let* ((_g8303183057_
            (lambda (_g8303283053_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8303283053_)))
           (_g8303083141_
            (lambda (_g8303283061_)
              (if (gx#stx-pair? _g8303283061_)
                  (let ((_e8303983064_ (gx#syntax-e _g8303283061_)))
                    (let ((_hd8303883068_
                           (let () (declare (not safe)) (##car _e8303983064_)))
                          (_tl8303783071_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8303983064_))))
                      (if (gx#stx-pair? _tl8303783071_)
                          (let ((_e8304283074_ (gx#syntax-e _tl8303783071_)))
                            (let ((_hd8304183078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8304283074_)))
                                  (_tl8304083081_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8304283074_))))
                              (if (gx#stx-pair? _tl8304083081_)
                                  (let ((_e8304583084_
                                         (gx#syntax-e _tl8304083081_)))
                                    (let ((_hd8304483088_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8304583084_)))
                                          (_tl8304383091_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8304583084_))))
                                      (if (gx#stx-pair? _tl8304383091_)
                                          (let ((_e8304883094_
                                                 (gx#syntax-e _tl8304383091_)))
                                            (let ((_hd8304783098_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8304883094_)))
                                                  (_tl8304683101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8304883094_))))
                                              (if (gx#stx-pair? _tl8304683101_)
                                                  (let ((_e8305183104_
                                                         (gx#syntax-e
                                                          _tl8304683101_)))
                                                    (let ((_hd8305083108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8305183104_)))
                                                          (_tl8304983111_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8305183104_))))
                                                      (if (gx#stx-null?
                                                           _tl8304983111_)
                                                          ((lambda (_L83114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83116_
                            _L83117_
                            _L83118_)
                     (let ((__tmp88831 (gx#datum->syntax '#f 'if))
                           (__tmp88785
                            (let ((__tmp88828
                                   (let ((__tmp88830
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp88829
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83118_ '()))))
                                     (declare (not safe))
                                     (cons __tmp88830 __tmp88829)))
                                  (__tmp88786
                                   (let ((__tmp88791
                                          (let ((__tmp88827
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp88792
                                                 (let ((__tmp88821
                                                        (let ((__tmp88826
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp88822
                                                               (let ((__tmp88823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88825
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp88824
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83118_ '()))))
                                (declare (not safe))
                                (cons __tmp88825 __tmp88824))))
                         (declare (not safe))
                         (cons __tmp88823 '()))))
                  (declare (not safe))
                  (cons __tmp88826 __tmp88822)))
               (__tmp88793
                (let ((__tmp88794
                       (let ((__tmp88820 (gx#datum->syntax '#f 'cond))
                             (__tmp88795
                              (let ((__tmp88803
                                     (let ((__tmp88807
                                            (let ((__tmp88819
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp88808
                                                   (let ((__tmp88815
                                                          (let ((__tmp88818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp88816
                         (let ((__tmp88817 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp88817 '()))))
                    (declare (not safe))
                    (cons __tmp88818 __tmp88816)))
                 (__tmp88809
                  (let ((__tmp88810
                         (let ((__tmp88814
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp88811
                                (let ((__tmp88813
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp88812
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83117_ '()))))
                                  (declare (not safe))
                                  (cons __tmp88813 __tmp88812))))
                           (declare (not safe))
                           (cons __tmp88814 __tmp88811))))
                    (declare (not safe))
                    (cons __tmp88810 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88815
                                                           __tmp88809))))
                                              (declare (not safe))
                                              (cons __tmp88819 __tmp88808)))
                                           (__tmp88804
                                            (let ((__tmp88806
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp88805
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83116_ '()))))
                                              (declare (not safe))
                                              (cons __tmp88806 __tmp88805))))
                                       (declare (not safe))
                                       (cons __tmp88807 __tmp88804)))
                                    (__tmp88796
                                     (let ((__tmp88797
                                            (let ((__tmp88802
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp88798
                                                   (let ((__tmp88799
                                                          (let ((__tmp88800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88801
                                (let ()
                                  (declare (not safe))
                                  (cons _L83117_ '()))))
                           (declare (not safe))
                           (cons _L83118_ __tmp88801))))
                    (declare (not safe))
                    (cons _L83114_ __tmp88800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88799 '()))))
                                              (declare (not safe))
                                              (cons __tmp88802 __tmp88798))))
                                       (declare (not safe))
                                       (cons __tmp88797 '()))))
                                (declare (not safe))
                                (cons __tmp88803 __tmp88796))))
                         (declare (not safe))
                         (cons __tmp88820 __tmp88795))))
                  (declare (not safe))
                  (cons __tmp88794 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp88821
                                                         __tmp88793))))
                                            (declare (not safe))
                                            (cons __tmp88827 __tmp88792)))
                                         (__tmp88787
                                          (let ((__tmp88788
                                                 (let ((__tmp88789
                                                        (let ((__tmp88790
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83117_ '()))))
                  (declare (not safe))
                  (cons _L83118_ __tmp88790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83114_
                                                         __tmp88789))))
                                            (declare (not safe))
                                            (cons __tmp88788 '()))))
                                     (declare (not safe))
                                     (cons __tmp88791 __tmp88787))))
                              (declare (not safe))
                              (cons __tmp88828 __tmp88786))))
                       (declare (not safe))
                       (cons __tmp88831 __tmp88785)))
                   _hd8305083108_
                   _hd8304783098_
                   _hd8304483088_
                   _hd8304183078_)
                  (_g8303183057_ _g8303283061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8303183057_
                                                   _g8303283061_))))
                                          (_g8303183057_ _g8303283061_))))
                                  (_g8303183057_ _g8303283061_))))
                          (_g8303183057_ _g8303283061_))))
                  (_g8303183057_ _g8303283061_)))))
      (_g8303083141_ _$stx83027_))))
