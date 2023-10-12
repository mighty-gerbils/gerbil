(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx9183_)
    (let* ((_g91879213_
            (lambda (_g91889209_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g91889209_)))
           (_g91869297_
            (lambda (_g91889217_)
              (if (gx#stx-pair? _g91889217_)
                  (let ((_e91959220_ (gx#syntax-e _g91889217_)))
                    (let ((_hd91949224_
                           (let () (declare (not safe)) (##car _e91959220_)))
                          (_tl91939227_
                           (let () (declare (not safe)) (##cdr _e91959220_))))
                      (if (gx#stx-pair? _tl91939227_)
                          (let ((_e91989230_ (gx#syntax-e _tl91939227_)))
                            (let ((_hd91979234_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e91989230_)))
                                  (_tl91969237_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e91989230_))))
                              (if (gx#stx-pair? _tl91969237_)
                                  (let ((_e92019240_
                                         (gx#syntax-e _tl91969237_)))
                                    (let ((_hd92009244_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e92019240_)))
                                          (_tl91999247_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e92019240_))))
                                      (if (gx#stx-pair? _tl91999247_)
                                          (let ((_e92049250_
                                                 (gx#syntax-e _tl91999247_)))
                                            (let ((_hd92039254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e92049250_)))
                                                  (_tl92029257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e92049250_))))
                                              (if (gx#stx-pair? _tl92029257_)
                                                  (let ((_e92079260_
                                                         (gx#syntax-e
                                                          _tl92029257_)))
                                                    (let ((_hd92069264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e92079260_)))
                                                          (_tl92059267_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e92079260_))))
                                                      (if (gx#stx-null?
                                                           _tl92059267_)
                                                          ((lambda (_L9270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9272_
                            _L9273_
                            _L9274_)
                     (let ((__tmp10911 (gx#datum->syntax '#f 'if))
                           (__tmp10865
                            (let ((__tmp10908
                                   (let ((__tmp10910
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp10909
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9274_ '()))))
                                     (declare (not safe))
                                     (cons __tmp10910 __tmp10909)))
                                  (__tmp10866
                                   (let ((__tmp10871
                                          (let ((__tmp10907
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp10872
                                                 (let ((__tmp10901
                                                        (let ((__tmp10906
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp10902
                                                               (let ((__tmp10903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10905
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp10904
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9274_ '()))))
                                (declare (not safe))
                                (cons __tmp10905 __tmp10904))))
                         (declare (not safe))
                         (cons __tmp10903 '()))))
                  (declare (not safe))
                  (cons __tmp10906 __tmp10902)))
               (__tmp10873
                (let ((__tmp10874
                       (let ((__tmp10900 (gx#datum->syntax '#f 'cond))
                             (__tmp10875
                              (let ((__tmp10883
                                     (let ((__tmp10887
                                            (let ((__tmp10899
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp10888
                                                   (let ((__tmp10895
                                                          (let ((__tmp10898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp10896
                         (let ((__tmp10897 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp10897 '()))))
                    (declare (not safe))
                    (cons __tmp10898 __tmp10896)))
                 (__tmp10889
                  (let ((__tmp10890
                         (let ((__tmp10894
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp10891
                                (let ((__tmp10893
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp10892
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9273_ '()))))
                                  (declare (not safe))
                                  (cons __tmp10893 __tmp10892))))
                           (declare (not safe))
                           (cons __tmp10894 __tmp10891))))
                    (declare (not safe))
                    (cons __tmp10890 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10895
                                                           __tmp10889))))
                                              (declare (not safe))
                                              (cons __tmp10899 __tmp10888)))
                                           (__tmp10884
                                            (let ((__tmp10886
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp10885
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9272_ '()))))
                                              (declare (not safe))
                                              (cons __tmp10886 __tmp10885))))
                                       (declare (not safe))
                                       (cons __tmp10887 __tmp10884)))
                                    (__tmp10876
                                     (let ((__tmp10877
                                            (let ((__tmp10882
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp10878
                                                   (let ((__tmp10879
                                                          (let ((__tmp10880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10881
                                (let ()
                                  (declare (not safe))
                                  (cons _L9273_ '()))))
                           (declare (not safe))
                           (cons _L9274_ __tmp10881))))
                    (declare (not safe))
                    (cons _L9270_ __tmp10880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10879 '()))))
                                              (declare (not safe))
                                              (cons __tmp10882 __tmp10878))))
                                       (declare (not safe))
                                       (cons __tmp10877 '()))))
                                (declare (not safe))
                                (cons __tmp10883 __tmp10876))))
                         (declare (not safe))
                         (cons __tmp10900 __tmp10875))))
                  (declare (not safe))
                  (cons __tmp10874 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10901
                                                         __tmp10873))))
                                            (declare (not safe))
                                            (cons __tmp10907 __tmp10872)))
                                         (__tmp10867
                                          (let ((__tmp10868
                                                 (let ((__tmp10869
                                                        (let ((__tmp10870
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L9273_ '()))))
                  (declare (not safe))
                  (cons _L9274_ __tmp10870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9270_ __tmp10869))))
                                            (declare (not safe))
                                            (cons __tmp10868 '()))))
                                     (declare (not safe))
                                     (cons __tmp10871 __tmp10867))))
                              (declare (not safe))
                              (cons __tmp10908 __tmp10866))))
                       (declare (not safe))
                       (cons __tmp10911 __tmp10865)))
                   _hd92069264_
                   _hd92039254_
                   _hd92009244_
                   _hd91979234_)
                  (_g91879213_ _g91889217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g91879213_ _g91889217_))))
                                          (_g91879213_ _g91889217_))))
                                  (_g91879213_ _g91889217_))))
                          (_g91879213_ _g91889217_))))
                  (_g91879213_ _g91889217_)))))
      (_g91869297_ _$stx9183_))))
