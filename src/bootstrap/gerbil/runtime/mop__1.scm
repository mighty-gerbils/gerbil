(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx9115_)
    (let* ((_g91199145_
            (lambda (_g91209141_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g91209141_)))
           (_g91189229_
            (lambda (_g91209149_)
              (if (gx#stx-pair? _g91209149_)
                  (let ((_e91279152_ (gx#syntax-e _g91209149_)))
                    (let ((_hd91269156_
                           (let () (declare (not safe)) (##car _e91279152_)))
                          (_tl91259159_
                           (let () (declare (not safe)) (##cdr _e91279152_))))
                      (if (gx#stx-pair? _tl91259159_)
                          (let ((_e91309162_ (gx#syntax-e _tl91259159_)))
                            (let ((_hd91299166_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e91309162_)))
                                  (_tl91289169_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e91309162_))))
                              (if (gx#stx-pair? _tl91289169_)
                                  (let ((_e91339172_
                                         (gx#syntax-e _tl91289169_)))
                                    (let ((_hd91329176_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e91339172_)))
                                          (_tl91319179_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e91339172_))))
                                      (if (gx#stx-pair? _tl91319179_)
                                          (let ((_e91369182_
                                                 (gx#syntax-e _tl91319179_)))
                                            (let ((_hd91359186_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e91369182_)))
                                                  (_tl91349189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e91369182_))))
                                              (if (gx#stx-pair? _tl91349189_)
                                                  (let ((_e91399192_
                                                         (gx#syntax-e
                                                          _tl91349189_)))
                                                    (let ((_hd91389196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e91399192_)))
                                                          (_tl91379199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e91399192_))))
                                                      (if (gx#stx-null?
                                                           _tl91379199_)
                                                          ((lambda (_L9202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9204_
                            _L9205_
                            _L9206_)
                     (let ((__tmp10843 (gx#datum->syntax '#f 'if))
                           (__tmp10797
                            (let ((__tmp10840
                                   (let ((__tmp10842
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp10841
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9206_ '()))))
                                     (declare (not safe))
                                     (cons __tmp10842 __tmp10841)))
                                  (__tmp10798
                                   (let ((__tmp10803
                                          (let ((__tmp10839
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp10804
                                                 (let ((__tmp10833
                                                        (let ((__tmp10838
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp10834
                                                               (let ((__tmp10835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10837
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp10836
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9206_ '()))))
                                (declare (not safe))
                                (cons __tmp10837 __tmp10836))))
                         (declare (not safe))
                         (cons __tmp10835 '()))))
                  (declare (not safe))
                  (cons __tmp10838 __tmp10834)))
               (__tmp10805
                (let ((__tmp10806
                       (let ((__tmp10832 (gx#datum->syntax '#f 'cond))
                             (__tmp10807
                              (let ((__tmp10815
                                     (let ((__tmp10819
                                            (let ((__tmp10831
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp10820
                                                   (let ((__tmp10827
                                                          (let ((__tmp10830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp10828
                         (let ((__tmp10829 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp10829 '()))))
                    (declare (not safe))
                    (cons __tmp10830 __tmp10828)))
                 (__tmp10821
                  (let ((__tmp10822
                         (let ((__tmp10826
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp10823
                                (let ((__tmp10825
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp10824
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9205_ '()))))
                                  (declare (not safe))
                                  (cons __tmp10825 __tmp10824))))
                           (declare (not safe))
                           (cons __tmp10826 __tmp10823))))
                    (declare (not safe))
                    (cons __tmp10822 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10827
                                                           __tmp10821))))
                                              (declare (not safe))
                                              (cons __tmp10831 __tmp10820)))
                                           (__tmp10816
                                            (let ((__tmp10818
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp10817
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9204_ '()))))
                                              (declare (not safe))
                                              (cons __tmp10818 __tmp10817))))
                                       (declare (not safe))
                                       (cons __tmp10819 __tmp10816)))
                                    (__tmp10808
                                     (let ((__tmp10809
                                            (let ((__tmp10814
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp10810
                                                   (let ((__tmp10811
                                                          (let ((__tmp10812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10813
                                (let ()
                                  (declare (not safe))
                                  (cons _L9205_ '()))))
                           (declare (not safe))
                           (cons _L9206_ __tmp10813))))
                    (declare (not safe))
                    (cons _L9202_ __tmp10812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10811 '()))))
                                              (declare (not safe))
                                              (cons __tmp10814 __tmp10810))))
                                       (declare (not safe))
                                       (cons __tmp10809 '()))))
                                (declare (not safe))
                                (cons __tmp10815 __tmp10808))))
                         (declare (not safe))
                         (cons __tmp10832 __tmp10807))))
                  (declare (not safe))
                  (cons __tmp10806 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10833
                                                         __tmp10805))))
                                            (declare (not safe))
                                            (cons __tmp10839 __tmp10804)))
                                         (__tmp10799
                                          (let ((__tmp10800
                                                 (let ((__tmp10801
                                                        (let ((__tmp10802
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L9205_ '()))))
                  (declare (not safe))
                  (cons _L9206_ __tmp10802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9202_ __tmp10801))))
                                            (declare (not safe))
                                            (cons __tmp10800 '()))))
                                     (declare (not safe))
                                     (cons __tmp10803 __tmp10799))))
                              (declare (not safe))
                              (cons __tmp10840 __tmp10798))))
                       (declare (not safe))
                       (cons __tmp10843 __tmp10797)))
                   _hd91389196_
                   _hd91359186_
                   _hd91329176_
                   _hd91299166_)
                  (_g91199145_ _g91209149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g91199145_ _g91209149_))))
                                          (_g91199145_ _g91209149_))))
                                  (_g91199145_ _g91209149_))))
                          (_g91199145_ _g91209149_))))
                  (_g91199145_ _g91209149_)))))
      (_g91189229_ _$stx9115_))))
