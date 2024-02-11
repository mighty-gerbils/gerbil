(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83123_)
    (let* ((_g8312783153_
            (lambda (_g8312883149_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8312883149_)))
           (_g8312683237_
            (lambda (_g8312883157_)
              (if (gx#stx-pair? _g8312883157_)
                  (let ((_e8313583160_ (gx#syntax-e _g8312883157_)))
                    (let ((_hd8313483164_
                           (let () (declare (not safe)) (##car _e8313583160_)))
                          (_tl8313383167_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8313583160_))))
                      (if (gx#stx-pair? _tl8313383167_)
                          (let ((_e8313883170_ (gx#syntax-e _tl8313383167_)))
                            (let ((_hd8313783174_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8313883170_)))
                                  (_tl8313683177_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8313883170_))))
                              (if (gx#stx-pair? _tl8313683177_)
                                  (let ((_e8314183180_
                                         (gx#syntax-e _tl8313683177_)))
                                    (let ((_hd8314083184_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8314183180_)))
                                          (_tl8313983187_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8314183180_))))
                                      (if (gx#stx-pair? _tl8313983187_)
                                          (let ((_e8314483190_
                                                 (gx#syntax-e _tl8313983187_)))
                                            (let ((_hd8314383194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8314483190_)))
                                                  (_tl8314283197_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8314483190_))))
                                              (if (gx#stx-pair? _tl8314283197_)
                                                  (let ((_e8314783200_
                                                         (gx#syntax-e
                                                          _tl8314283197_)))
                                                    (let ((_hd8314683204_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8314783200_)))
                                                          (_tl8314583207_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8314783200_))))
                                                      (if (gx#stx-null?
                                                           _tl8314583207_)
                                                          ((lambda (_L83210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83212_
                            _L83213_
                            _L83214_)
                     (let ((__tmp88952 (gx#datum->syntax '#f 'if))
                           (__tmp88906
                            (let ((__tmp88949
                                   (let ((__tmp88951
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp88950
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83214_ '()))))
                                     (declare (not safe))
                                     (cons __tmp88951 __tmp88950)))
                                  (__tmp88907
                                   (let ((__tmp88912
                                          (let ((__tmp88948
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp88913
                                                 (let ((__tmp88942
                                                        (let ((__tmp88947
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp88943
                                                               (let ((__tmp88944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88946
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp88945
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83214_ '()))))
                                (declare (not safe))
                                (cons __tmp88946 __tmp88945))))
                         (declare (not safe))
                         (cons __tmp88944 '()))))
                  (declare (not safe))
                  (cons __tmp88947 __tmp88943)))
               (__tmp88914
                (let ((__tmp88915
                       (let ((__tmp88941 (gx#datum->syntax '#f 'cond))
                             (__tmp88916
                              (let ((__tmp88924
                                     (let ((__tmp88928
                                            (let ((__tmp88940
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp88929
                                                   (let ((__tmp88936
                                                          (let ((__tmp88939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp88937
                         (let ((__tmp88938 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp88938 '()))))
                    (declare (not safe))
                    (cons __tmp88939 __tmp88937)))
                 (__tmp88930
                  (let ((__tmp88931
                         (let ((__tmp88935
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp88932
                                (let ((__tmp88934
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp88933
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83213_ '()))))
                                  (declare (not safe))
                                  (cons __tmp88934 __tmp88933))))
                           (declare (not safe))
                           (cons __tmp88935 __tmp88932))))
                    (declare (not safe))
                    (cons __tmp88931 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88936
                                                           __tmp88930))))
                                              (declare (not safe))
                                              (cons __tmp88940 __tmp88929)))
                                           (__tmp88925
                                            (let ((__tmp88927
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp88926
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83212_ '()))))
                                              (declare (not safe))
                                              (cons __tmp88927 __tmp88926))))
                                       (declare (not safe))
                                       (cons __tmp88928 __tmp88925)))
                                    (__tmp88917
                                     (let ((__tmp88918
                                            (let ((__tmp88923
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp88919
                                                   (let ((__tmp88920
                                                          (let ((__tmp88921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88922
                                (let ()
                                  (declare (not safe))
                                  (cons _L83213_ '()))))
                           (declare (not safe))
                           (cons _L83214_ __tmp88922))))
                    (declare (not safe))
                    (cons _L83210_ __tmp88921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88920 '()))))
                                              (declare (not safe))
                                              (cons __tmp88923 __tmp88919))))
                                       (declare (not safe))
                                       (cons __tmp88918 '()))))
                                (declare (not safe))
                                (cons __tmp88924 __tmp88917))))
                         (declare (not safe))
                         (cons __tmp88941 __tmp88916))))
                  (declare (not safe))
                  (cons __tmp88915 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp88942
                                                         __tmp88914))))
                                            (declare (not safe))
                                            (cons __tmp88948 __tmp88913)))
                                         (__tmp88908
                                          (let ((__tmp88909
                                                 (let ((__tmp88910
                                                        (let ((__tmp88911
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83213_ '()))))
                  (declare (not safe))
                  (cons _L83214_ __tmp88911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83210_
                                                         __tmp88910))))
                                            (declare (not safe))
                                            (cons __tmp88909 '()))))
                                     (declare (not safe))
                                     (cons __tmp88912 __tmp88908))))
                              (declare (not safe))
                              (cons __tmp88949 __tmp88907))))
                       (declare (not safe))
                       (cons __tmp88952 __tmp88906)))
                   _hd8314683204_
                   _hd8314383194_
                   _hd8314083184_
                   _hd8313783174_)
                  (_g8312783153_ _g8312883157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8312783153_
                                                   _g8312883157_))))
                                          (_g8312783153_ _g8312883157_))))
                                  (_g8312783153_ _g8312883157_))))
                          (_g8312783153_ _g8312883157_))))
                  (_g8312783153_ _g8312883157_)))))
      (_g8312683237_ _$stx83123_))))
