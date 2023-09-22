(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx9127_)
    (let* ((_g91319157_
            (lambda (_g91329153_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g91329153_)))
           (_g91309241_
            (lambda (_g91329161_)
              (if (gx#stx-pair? _g91329161_)
                  (let ((_e91399164_ (gx#syntax-e _g91329161_)))
                    (let ((_hd91389168_
                           (let () (declare (not safe)) (##car _e91399164_)))
                          (_tl91379171_
                           (let () (declare (not safe)) (##cdr _e91399164_))))
                      (if (gx#stx-pair? _tl91379171_)
                          (let ((_e91429174_ (gx#syntax-e _tl91379171_)))
                            (let ((_hd91419178_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e91429174_)))
                                  (_tl91409181_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e91429174_))))
                              (if (gx#stx-pair? _tl91409181_)
                                  (let ((_e91459184_
                                         (gx#syntax-e _tl91409181_)))
                                    (let ((_hd91449188_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e91459184_)))
                                          (_tl91439191_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e91459184_))))
                                      (if (gx#stx-pair? _tl91439191_)
                                          (let ((_e91489194_
                                                 (gx#syntax-e _tl91439191_)))
                                            (let ((_hd91479198_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e91489194_)))
                                                  (_tl91469201_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e91489194_))))
                                              (if (gx#stx-pair? _tl91469201_)
                                                  (let ((_e91519204_
                                                         (gx#syntax-e
                                                          _tl91469201_)))
                                                    (let ((_hd91509208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e91519204_)))
                                                          (_tl91499211_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e91519204_))))
                                                      (if (gx#stx-null?
                                                           _tl91499211_)
                                                          ((lambda (_L9214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9216_
                            _L9217_
                            _L9218_)
                     (let ((__tmp10855 (gx#datum->syntax '#f 'if))
                           (__tmp10809
                            (let ((__tmp10852
                                   (let ((__tmp10854
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp10853
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9218_ '()))))
                                     (declare (not safe))
                                     (cons __tmp10854 __tmp10853)))
                                  (__tmp10810
                                   (let ((__tmp10815
                                          (let ((__tmp10851
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp10816
                                                 (let ((__tmp10845
                                                        (let ((__tmp10850
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp10846
                                                               (let ((__tmp10847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10849
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp10848
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9218_ '()))))
                                (declare (not safe))
                                (cons __tmp10849 __tmp10848))))
                         (declare (not safe))
                         (cons __tmp10847 '()))))
                  (declare (not safe))
                  (cons __tmp10850 __tmp10846)))
               (__tmp10817
                (let ((__tmp10818
                       (let ((__tmp10844 (gx#datum->syntax '#f 'cond))
                             (__tmp10819
                              (let ((__tmp10827
                                     (let ((__tmp10831
                                            (let ((__tmp10843
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp10832
                                                   (let ((__tmp10839
                                                          (let ((__tmp10842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp10840
                         (let ((__tmp10841 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp10841 '()))))
                    (declare (not safe))
                    (cons __tmp10842 __tmp10840)))
                 (__tmp10833
                  (let ((__tmp10834
                         (let ((__tmp10838
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp10835
                                (let ((__tmp10837
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp10836
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9217_ '()))))
                                  (declare (not safe))
                                  (cons __tmp10837 __tmp10836))))
                           (declare (not safe))
                           (cons __tmp10838 __tmp10835))))
                    (declare (not safe))
                    (cons __tmp10834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10839
                                                           __tmp10833))))
                                              (declare (not safe))
                                              (cons __tmp10843 __tmp10832)))
                                           (__tmp10828
                                            (let ((__tmp10830
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp10829
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9216_ '()))))
                                              (declare (not safe))
                                              (cons __tmp10830 __tmp10829))))
                                       (declare (not safe))
                                       (cons __tmp10831 __tmp10828)))
                                    (__tmp10820
                                     (let ((__tmp10821
                                            (let ((__tmp10826
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp10822
                                                   (let ((__tmp10823
                                                          (let ((__tmp10824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10825
                                (let ()
                                  (declare (not safe))
                                  (cons _L9217_ '()))))
                           (declare (not safe))
                           (cons _L9218_ __tmp10825))))
                    (declare (not safe))
                    (cons _L9214_ __tmp10824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10823 '()))))
                                              (declare (not safe))
                                              (cons __tmp10826 __tmp10822))))
                                       (declare (not safe))
                                       (cons __tmp10821 '()))))
                                (declare (not safe))
                                (cons __tmp10827 __tmp10820))))
                         (declare (not safe))
                         (cons __tmp10844 __tmp10819))))
                  (declare (not safe))
                  (cons __tmp10818 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10845
                                                         __tmp10817))))
                                            (declare (not safe))
                                            (cons __tmp10851 __tmp10816)))
                                         (__tmp10811
                                          (let ((__tmp10812
                                                 (let ((__tmp10813
                                                        (let ((__tmp10814
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L9217_ '()))))
                  (declare (not safe))
                  (cons _L9218_ __tmp10814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9214_ __tmp10813))))
                                            (declare (not safe))
                                            (cons __tmp10812 '()))))
                                     (declare (not safe))
                                     (cons __tmp10815 __tmp10811))))
                              (declare (not safe))
                              (cons __tmp10852 __tmp10810))))
                       (declare (not safe))
                       (cons __tmp10855 __tmp10809)))
                   _hd91509208_
                   _hd91479198_
                   _hd91449188_
                   _hd91419178_)
                  (_g91319157_ _g91329161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g91319157_ _g91329161_))))
                                          (_g91319157_ _g91329161_))))
                                  (_g91319157_ _g91329161_))))
                          (_g91319157_ _g91329161_))))
                  (_g91319157_ _g91329161_)))))
      (_g91309241_ _$stx9127_))))
