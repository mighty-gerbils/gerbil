(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g55160_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g55161_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx50889_)
        (let* ((_g5089350907_
                (lambda (_g5089450903_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5089450903_)))
               (_g5089250949_
                (lambda (_g5089450911_)
                  (if (gx#stx-pair? _g5089450911_)
                      (let ((_e5089650914_ (gx#syntax-e _g5089450911_)))
                        (let ((_hd5089750918_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5089650914_)))
                              (_tl5089850921_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5089650914_))))
                          (if (gx#stx-pair? _tl5089850921_)
                              (let ((_e5089950924_
                                     (gx#syntax-e _tl5089850921_)))
                                (let ((_hd5090050928_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5089950924_)))
                                      (_tl5090150931_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5089950924_))))
                                  (if (gx#stx-null? _tl5090150931_)
                                      ((lambda (_L50934_)
                                         (let ((__tmp54865
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp54830
                                                (let ((__tmp54831
                                                       (let ((__tmp54858
                                                              (let ((__tmp54864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp54859
                             (let ((__tmp54860
                                    (let ((__tmp54863
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp54861
                                           (let ((__tmp54862
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp54862 '()))))
                                      (declare (not safe))
                                      (cons __tmp54863 __tmp54861))))
                               (declare (not safe))
                               (cons __tmp54860 '()))))
                        (declare (not safe))
                        (cons __tmp54864 __tmp54859)))
                     (__tmp54832
                      (let ((__tmp54833
                             (let ((__tmp54857 (gx#datum->syntax '#f 'let))
                                   (__tmp54834
                                    (let ((__tmp54856
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp54835
                                           (let ((__tmp54836
                                                  (let ((__tmp54837
                                                         (let ((__tmp54855
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp54838
                        (let ((__tmp54845
                               (let ((__tmp54854 (gx#datum->syntax '#f '##fx=))
                                     (__tmp54846
                                      (let ((__tmp54848
                                             (let ((__tmp54853
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp54849
                                                    (let ((__tmp54850
                                                           (let ((__tmp54851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp54852
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp54852))))
                     (declare (not safe))
                     (cons '0 __tmp54851))))
              (declare (not safe))
              (cons _L50934_ __tmp54850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp54853 __tmp54849)))
                                            (__tmp54847
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp54848 __tmp54847))))
                                 (declare (not safe))
                                 (cons __tmp54854 __tmp54846)))
                              (__tmp54839
                               (let ((__tmp54843
                                      (let ((__tmp54844
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp54844 '())))
                                     (__tmp54840
                                      (let ((__tmp54841
                                             (let ((__tmp54842
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp54842 '()))))
                                        (declare (not safe))
                                        (cons __tmp54841 '()))))
                                 (declare (not safe))
                                 (cons __tmp54843 __tmp54840))))
                          (declare (not safe))
                          (cons __tmp54845 __tmp54839))))
                   (declare (not safe))
                   (cons __tmp54855 __tmp54838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp54837 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp54836))))
                                      (declare (not safe))
                                      (cons __tmp54856 __tmp54835))))
                               (declare (not safe))
                               (cons __tmp54857 __tmp54834))))
                        (declare (not safe))
                        (cons __tmp54833 '()))))
                 (declare (not safe))
                 (cons __tmp54858 __tmp54832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp54831))))
                                           (declare (not safe))
                                           (cons __tmp54865 __tmp54830)))
                                       _hd5090050928_)
                                      (_g5089350907_ _g5089450911_))))
                              (_g5089350907_ _g5089450911_))))
                      (_g5089350907_ _g5089450911_)))))
          (_g5089250949_ _$stx50889_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx50953_)
        (let* ((_g5095750971_
                (lambda (_g5095850967_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5095850967_)))
               (_g5095651012_
                (lambda (_g5095850975_)
                  (if (gx#stx-pair? _g5095850975_)
                      (let ((_e5096050978_ (gx#syntax-e _g5095850975_)))
                        (let ((_hd5096150982_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5096050978_)))
                              (_tl5096250985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5096050978_))))
                          (if (gx#stx-pair? _tl5096250985_)
                              (let ((_e5096350988_
                                     (gx#syntax-e _tl5096250985_)))
                                (let ((_hd5096450992_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5096350988_)))
                                      (_tl5096550995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5096350988_))))
                                  (if (gx#stx-null? _tl5096550995_)
                                      ((lambda (_L50998_)
                                         (let ((__tmp54870
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp54866
                                                (let ((__tmp54867
                                                       (let ((__tmp54868
                                                              (let ((__tmp54869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp54869))))
                 (declare (not safe))
                 (cons '0 __tmp54868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L50998_ __tmp54867))))
                                           (declare (not safe))
                                           (cons __tmp54870 __tmp54866)))
                                       _hd5096450992_)
                                      (_g5095750971_ _g5095850975_))))
                              (_g5095750971_ _g5095850975_))))
                      (_g5095750971_ _g5095850975_)))))
          (_g5095651012_ _$stx50953_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx51016_)
        (let* ((_g5102051030_
                (lambda (_g5102151026_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5102151026_)))
               (_g5101951051_
                (lambda (_g5102151034_)
                  (if (gx#stx-pair? _g5102151034_)
                      (let ((_e5102251037_ (gx#syntax-e _g5102151034_)))
                        (let ((_hd5102351041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5102251037_)))
                              (_tl5102451044_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5102251037_))))
                          (if (gx#stx-null? _tl5102451044_)
                              ((lambda ()
                                 (let ((__tmp54872
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp54871
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp54872 __tmp54871))))
                              (_g5102051030_ _g5102151034_))))
                      (_g5102051030_ _g5102151034_)))))
          (_g5101951051_ _$stx51016_))))
    (define |[:0:]#defassget|
      (lambda (_$stx51055_)
        (let* ((_g5105951077_
                (lambda (_g5106051073_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5106051073_)))
               (_g5105851132_
                (lambda (_g5106051081_)
                  (if (gx#stx-pair? _g5106051081_)
                      (let ((_e5106351084_ (gx#syntax-e _g5106051081_)))
                        (let ((_hd5106451088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5106351084_)))
                              (_tl5106551091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5106351084_))))
                          (if (gx#stx-pair? _tl5106551091_)
                              (let ((_e5106651094_
                                     (gx#syntax-e _tl5106551091_)))
                                (let ((_hd5106751098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5106651094_)))
                                      (_tl5106851101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5106651094_))))
                                  (if (gx#stx-pair? _tl5106851101_)
                                      (let ((_e5106951104_
                                             (gx#syntax-e _tl5106851101_)))
                                        (let ((_hd5107051108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5106951104_)))
                                              (_tl5107151111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5106951104_))))
                                          (if (gx#stx-null? _tl5107151111_)
                                              ((lambda (_L51114_ _L51116_)
                                                 (let ((__tmp54921
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54873
                                                        (let ((__tmp54912
                                                               (let ((__tmp54913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54920 (gx#datum->syntax '#f 'key))
                                    (__tmp54914
                                     (let ((__tmp54919
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp54915
                                            (let ((__tmp54916
                                                   (let ((__tmp54918
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp54917
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp54918
                                                           __tmp54917))))
                                              (declare (not safe))
                                              (cons __tmp54916 '()))))
                                       (declare (not safe))
                                       (cons __tmp54919 __tmp54915))))
                                (declare (not safe))
                                (cons __tmp54920 __tmp54914))))
                         (declare (not safe))
                         (cons _L51116_ __tmp54913)))
                      (__tmp54874
                       (let ((__tmp54875
                              (let ((__tmp54911 (gx#datum->syntax '#f 'cond))
                                    (__tmp54876
                                     (let ((__tmp54893
                                            (let ((__tmp54898
                                                   (let ((__tmp54910
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp54899
                                                          (let ((__tmp54906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp54909 (gx#datum->syntax '#f 'pair?))
                               (__tmp54907
                                (let ((__tmp54908 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp54908 '()))))
                           (declare (not safe))
                           (cons __tmp54909 __tmp54907)))
                        (__tmp54900
                         (let ((__tmp54901
                                (let ((__tmp54902
                                       (let ((__tmp54905
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp54903
                                              (let ((__tmp54904
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp54904 '()))))
                                         (declare (not safe))
                                         (cons __tmp54905 __tmp54903))))
                                  (declare (not safe))
                                  (cons _L51114_ __tmp54902))))
                           (declare (not safe))
                           (cons __tmp54901 '()))))
                    (declare (not safe))
                    (cons __tmp54906 __tmp54900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54910
                                                           __tmp54899)))
                                                  (__tmp54894
                                                   (let ((__tmp54897
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp54895
                                                          (let ((__tmp54896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp54896 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54897
                                                           __tmp54895))))
                                              (declare (not safe))
                                              (cons __tmp54898 __tmp54894)))
                                           (__tmp54877
                                            (let ((__tmp54883
                                                   (let ((__tmp54889
                                                          (let ((__tmp54892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp54890
                         (let ((__tmp54891 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp54891 '()))))
                    (declare (not safe))
                    (cons __tmp54892 __tmp54890)))
                 (__tmp54884
                  (let ((__tmp54885
                         (let ((__tmp54888 (gx#datum->syntax '#f 'default))
                               (__tmp54886
                                (let ((__tmp54887 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp54887 '()))))
                           (declare (not safe))
                           (cons __tmp54888 __tmp54886))))
                    (declare (not safe))
                    (cons __tmp54885 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54889
                                                           __tmp54884)))
                                                  (__tmp54878
                                                   (let ((__tmp54879
                                                          (let ((__tmp54882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp54880
                         (let ((__tmp54881 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp54881 '()))))
                    (declare (not safe))
                    (cons __tmp54882 __tmp54880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54879 '()))))
                                              (declare (not safe))
                                              (cons __tmp54883 __tmp54878))))
                                       (declare (not safe))
                                       (cons __tmp54893 __tmp54877))))
                                (declare (not safe))
                                (cons __tmp54911 __tmp54876))))
                         (declare (not safe))
                         (cons __tmp54875 '()))))
                  (declare (not safe))
                  (cons __tmp54912 __tmp54874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54921
                                                         __tmp54873)))
                                               _hd5107051108_
                                               _hd5106751098_)
                                              (_g5105951077_ _g5106051081_))))
                                      (_g5105951077_ _g5106051081_))))
                              (_g5105951077_ _g5106051081_))))
                      (_g5105951077_ _g5106051081_)))))
          (_g5105851132_ _$stx51055_))))
    (define |[:0:]#defpget|
      (lambda (_$stx51136_)
        (let* ((_g5114051158_
                (lambda (_g5114151154_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5114151154_)))
               (_g5113951213_
                (lambda (_g5114151162_)
                  (if (gx#stx-pair? _g5114151162_)
                      (let ((_e5114451165_ (gx#syntax-e _g5114151162_)))
                        (let ((_hd5114551169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5114451165_)))
                              (_tl5114651172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5114451165_))))
                          (if (gx#stx-pair? _tl5114651172_)
                              (let ((_e5114751175_
                                     (gx#syntax-e _tl5114651172_)))
                                (let ((_hd5114851179_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5114751175_)))
                                      (_tl5114951182_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5114751175_))))
                                  (if (gx#stx-pair? _tl5114951182_)
                                      (let ((_e5115051185_
                                             (gx#syntax-e _tl5114951182_)))
                                        (let ((_hd5115151189_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5115051185_)))
                                              (_tl5115251192_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5115051185_))))
                                          (if (gx#stx-null? _tl5115251192_)
                                              ((lambda (_L51195_ _L51197_)
                                                 (let ((__tmp54991
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54922
                                                        (let ((__tmp54982
                                                               (let ((__tmp54983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54990 (gx#datum->syntax '#f 'key))
                                    (__tmp54984
                                     (let ((__tmp54989
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp54985
                                            (let ((__tmp54986
                                                   (let ((__tmp54988
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp54987
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp54988
                                                           __tmp54987))))
                                              (declare (not safe))
                                              (cons __tmp54986 '()))))
                                       (declare (not safe))
                                       (cons __tmp54989 __tmp54985))))
                                (declare (not safe))
                                (cons __tmp54990 __tmp54984))))
                         (declare (not safe))
                         (cons _L51197_ __tmp54983)))
                      (__tmp54923
                       (let ((__tmp54924
                              (let ((__tmp54981 (gx#datum->syntax '#f 'let))
                                    (__tmp54925
                                     (let ((__tmp54980
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp54926
                                            (let ((__tmp54975
                                                   (let ((__tmp54976
                                                          (let ((__tmp54979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp54977
                         (let ((__tmp54978 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp54978 '()))))
                    (declare (not safe))
                    (cons __tmp54979 __tmp54977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54976 '())))
                                                  (__tmp54927
                                                   (let ((__tmp54928
                                                          (let ((__tmp54974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp54929
                         (let ((__tmp54973 (gx#datum->syntax '#f 'rest))
                               (__tmp54930
                                (let ((__tmp54949
                                       (let ((__tmp54966
                                              (let ((__tmp54972
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp54967
                                                     (let ((__tmp54971
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp54968
                                                            (let ((__tmp54970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp54969 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp54970 __tmp54969))))
               (declare (not safe))
               (cons __tmp54971 __tmp54968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54972 __tmp54967)))
                                             (__tmp54950
                                              (let ((__tmp54951
                                                     (let ((__tmp54965
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp54952
                                                            (let ((__tmp54960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp54961
                                  (let ((__tmp54964 (gx#datum->syntax '#f 'k))
                                        (__tmp54962
                                         (let ((__tmp54963
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp54963 '()))))
                                    (declare (not safe))
                                    (cons __tmp54964 __tmp54962))))
                             (declare (not safe))
                             (cons _L51195_ __tmp54961)))
                          (__tmp54953
                           (let ((__tmp54959 (gx#datum->syntax '#f 'v))
                                 (__tmp54954
                                  (let ((__tmp54955
                                         (let ((__tmp54958
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp54956
                                                (let ((__tmp54957
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp54957 '()))))
                                           (declare (not safe))
                                           (cons __tmp54958 __tmp54956))))
                                    (declare (not safe))
                                    (cons __tmp54955 '()))))
                             (declare (not safe))
                             (cons __tmp54959 __tmp54954))))
                      (declare (not safe))
                      (cons __tmp54960 __tmp54953))))
               (declare (not safe))
               (cons __tmp54965 __tmp54952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54951 '()))))
                                         (declare (not safe))
                                         (cons __tmp54966 __tmp54950)))
                                      (__tmp54931
                                       (let ((__tmp54932
                                              (let ((__tmp54948
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp54933
                                                     (let ((__tmp54934
                                                            (let ((__tmp54947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp54935
                           (let ((__tmp54943
                                  (let ((__tmp54946
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp54944
                                         (let ((__tmp54945
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp54945 '()))))
                                    (declare (not safe))
                                    (cons __tmp54946 __tmp54944)))
                                 (__tmp54936
                                  (let ((__tmp54939
                                         (let ((__tmp54942
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp54940
                                                (let ((__tmp54941
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp54941 '()))))
                                           (declare (not safe))
                                           (cons __tmp54942 __tmp54940)))
                                        (__tmp54937
                                         (let ((__tmp54938
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp54938 '()))))
                                    (declare (not safe))
                                    (cons __tmp54939 __tmp54937))))
                             (declare (not safe))
                             (cons __tmp54943 __tmp54936))))
                      (declare (not safe))
                      (cons __tmp54947 __tmp54935))))
               (declare (not safe))
               (cons __tmp54934 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54948 __tmp54933))))
                                         (declare (not safe))
                                         (cons __tmp54932 '()))))
                                  (declare (not safe))
                                  (cons __tmp54949 __tmp54931))))
                           (declare (not safe))
                           (cons __tmp54973 __tmp54930))))
                    (declare (not safe))
                    (cons __tmp54974 __tmp54929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54928 '()))))
                                              (declare (not safe))
                                              (cons __tmp54975 __tmp54927))))
                                       (declare (not safe))
                                       (cons __tmp54980 __tmp54926))))
                                (declare (not safe))
                                (cons __tmp54981 __tmp54925))))
                         (declare (not safe))
                         (cons __tmp54924 '()))))
                  (declare (not safe))
                  (cons __tmp54982 __tmp54923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54991
                                                         __tmp54922)))
                                               _hd5115151189_
                                               _hd5114851179_)
                                              (_g5114051158_ _g5114151162_))))
                                      (_g5114051158_ _g5114151162_))))
                              (_g5114051158_ _g5114151162_))))
                      (_g5114051158_ _g5114151162_)))))
          (_g5113951213_ _$stx51136_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx51217_)
        (let* ((_g5122151239_
                (lambda (_g5122251235_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5122251235_)))
               (_g5122051294_
                (lambda (_g5122251243_)
                  (if (gx#stx-pair? _g5122251243_)
                      (let ((_e5122551246_ (gx#syntax-e _g5122251243_)))
                        (let ((_hd5122651250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5122551246_)))
                              (_tl5122751253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5122551246_))))
                          (if (gx#stx-pair? _tl5122751253_)
                              (let ((_e5122851256_
                                     (gx#syntax-e _tl5122751253_)))
                                (let ((_hd5122951260_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5122851256_)))
                                      (_tl5123051263_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5122851256_))))
                                  (if (gx#stx-pair? _tl5123051263_)
                                      (let ((_e5123151266_
                                             (gx#syntax-e _tl5123051263_)))
                                        (let ((_hd5123251270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5123151266_)))
                                              (_tl5123351273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5123151266_))))
                                          (if (gx#stx-null? _tl5123351273_)
                                              ((lambda (_L51276_ _L51278_)
                                                 (let ((__tmp55062
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54992
                                                        (let ((__tmp55057
                                                               (let ((__tmp55058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp55061 (gx#datum->syntax '#f 'el))
                                    (__tmp55059
                                     (let ((__tmp55060
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp55060 '()))))
                                (declare (not safe))
                                (cons __tmp55061 __tmp55059))))
                         (declare (not safe))
                         (cons _L51278_ __tmp55058)))
                      (__tmp54993
                       (let ((__tmp54994
                              (let ((__tmp55056 (gx#datum->syntax '#f 'let))
                                    (__tmp54995
                                     (let ((__tmp55055
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp54996
                                            (let ((__tmp55044
                                                   (let ((__tmp55051
                                                          (let ((__tmp55054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp55052
                         (let ((__tmp55053 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp55053 '()))))
                    (declare (not safe))
                    (cons __tmp55054 __tmp55052)))
                 (__tmp55045
                  (let ((__tmp55046
                         (let ((__tmp55050 (gx#datum->syntax '#f 'r))
                               (__tmp55047
                                (let ((__tmp55048
                                       (let ((__tmp55049
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp55049 '()))))
                                  (declare (not safe))
                                  (cons __tmp55048 '()))))
                           (declare (not safe))
                           (cons __tmp55050 __tmp55047))))
                    (declare (not safe))
                    (cons __tmp55046 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp55051
                                                           __tmp55045)))
                                                  (__tmp54997
                                                   (let ((__tmp54998
                                                          (let ((__tmp55043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp54999
                         (let ((__tmp55042 (gx#datum->syntax '#f 'rest))
                               (__tmp55000
                                (let ((__tmp55006
                                       (let ((__tmp55037
                                              (let ((__tmp55041
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp55038
                                                     (let ((__tmp55040
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp55039
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp55040
                                                             __tmp55039))))
                                                (declare (not safe))
                                                (cons __tmp55041 __tmp55038)))
                                             (__tmp55007
                                              (let ((__tmp55008
                                                     (let ((__tmp55036
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp55009
                                                            (let ((__tmp55031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp55032
                                  (let ((__tmp55035 (gx#datum->syntax '#f 'el))
                                        (__tmp55033
                                         (let ((__tmp55034
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp55034 '()))))
                                    (declare (not safe))
                                    (cons __tmp55035 __tmp55033))))
                             (declare (not safe))
                             (cons _L51276_ __tmp55032)))
                          (__tmp55010
                           (let ((__tmp55023
                                  (let ((__tmp55030
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp55024
                                         (let ((__tmp55029
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp55025
                                                (let ((__tmp55028
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp55026
                                                       (let ((__tmp55027
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp55027
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp55028
                                                        __tmp55026))))
                                           (declare (not safe))
                                           (cons __tmp55029 __tmp55025))))
                                    (declare (not safe))
                                    (cons __tmp55030 __tmp55024)))
                                 (__tmp55011
                                  (let ((__tmp55012
                                         (let ((__tmp55022
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp55013
                                                (let ((__tmp55021
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp55014
                                                       (let ((__tmp55015
                                                              (let ((__tmp55020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp55016
                             (let ((__tmp55019 (gx#datum->syntax '#f 'hd))
                                   (__tmp55017
                                    (let ((__tmp55018
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp55018 '()))))
                               (declare (not safe))
                               (cons __tmp55019 __tmp55017))))
                        (declare (not safe))
                        (cons __tmp55020 __tmp55016))))
                 (declare (not safe))
                 (cons __tmp55015 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp55021
                                                        __tmp55014))))
                                           (declare (not safe))
                                           (cons __tmp55022 __tmp55013))))
                                    (declare (not safe))
                                    (cons __tmp55012 '()))))
                             (declare (not safe))
                             (cons __tmp55023 __tmp55011))))
                      (declare (not safe))
                      (cons __tmp55031 __tmp55010))))
               (declare (not safe))
               (cons __tmp55036 __tmp55009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp55008 '()))))
                                         (declare (not safe))
                                         (cons __tmp55037 __tmp55007)))
                                      (__tmp55001
                                       (let ((__tmp55002
                                              (let ((__tmp55005
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp55003
                                                     (let ((__tmp55004
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp55004 '()))))
                                                (declare (not safe))
                                                (cons __tmp55005 __tmp55003))))
                                         (declare (not safe))
                                         (cons __tmp55002 '()))))
                                  (declare (not safe))
                                  (cons __tmp55006 __tmp55001))))
                           (declare (not safe))
                           (cons __tmp55042 __tmp55000))))
                    (declare (not safe))
                    (cons __tmp55043 __tmp54999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54998 '()))))
                                              (declare (not safe))
                                              (cons __tmp55044 __tmp54997))))
                                       (declare (not safe))
                                       (cons __tmp55055 __tmp54996))))
                                (declare (not safe))
                                (cons __tmp55056 __tmp54995))))
                         (declare (not safe))
                         (cons __tmp54994 '()))))
                  (declare (not safe))
                  (cons __tmp55057 __tmp54993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55062
                                                         __tmp54992)))
                                               _hd5123251270_
                                               _hd5122951260_)
                                              (_g5122151239_ _g5122251243_))))
                                      (_g5122151239_ _g5122251243_))))
                              (_g5122151239_ _g5122251243_))))
                      (_g5122151239_ _g5122251243_)))))
          (_g5122051294_ _$stx51217_))))
    (define |[:0:]#DBG|
      (lambda (_$stx51298_)
        (let* ((_g5130251313_
                (lambda (_g5130351309_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5130351309_)))
               (_g5130151342_
                (lambda (_g5130351317_)
                  (if (gx#stx-pair? _g5130351317_)
                      (let ((_e5130551320_ (gx#syntax-e _g5130351317_)))
                        (let ((_hd5130651324_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5130551320_)))
                              (_tl5130751327_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5130551320_))))
                          ((lambda (_L51330_)
                             (let ((__tmp55064 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp55063
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L51330_))))
                               (declare (not safe))
                               (cons __tmp55064 __tmp55063)))
                           _tl5130751327_)))
                      (_g5130251313_ _g5130351317_)))))
          (_g5130151342_ _$stx51298_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx51346_)
        (let* ((___stx5437254373_ _$stx51346_)
               (_g5135751571_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5437254373_))))
          (let ((___kont5437554376_
                 (lambda (_L52424_ _L52426_ _L52427_ _L52428_ _L52429_)
                   (let ((__tmp55065
                          (let ((__tmp55066
                                 (let ((__tmp55067
                                        (let ((__tmp55071
                                               (let ((__tmp55072
                                                      (lambda (_g5245952462_
                                                               _g5246052465_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5245952462_
                                                                _g5246052465_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp55072
                                                         '()
                                                         _L52427_)))
                                              (__tmp55068
                                               (let ((__tmp55069
                                                      (let ((__tmp55070
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L52424_ '()))))
                (declare (not safe))
                (cons _L52426_ __tmp55070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L52428_ __tmp55069))))
                                          (declare (not safe))
                                          (cons __tmp55071 __tmp55068))))
                                   (declare (not safe))
                                   (cons '() __tmp55067))))
                            (declare (not safe))
                            (cons '2 __tmp55066))))
                     (declare (not safe))
                     (cons _L52429_ __tmp55065))))
                (___kont5437954380_
                 (lambda (_L52277_ _L52279_ _L52280_ _L52281_)
                   (let ((__tmp55073
                          (let ((__tmp55074
                                 (let ((__tmp55075
                                        (let ((__tmp55079
                                               (let ((__tmp55080
                                                      (lambda (_g5230452307_
                                                               _g5230552310_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5230452307_
                                                                _g5230552310_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp55080
                                                         '()
                                                         _L52279_)))
                                              (__tmp55076
                                               (let ((__tmp55077
                                                      (let ((__tmp55078
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L52277_ '()))))
                (declare (not safe))
                (cons _L52277_ __tmp55078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L52280_ __tmp55077))))
                                          (declare (not safe))
                                          (cons __tmp55079 __tmp55076))))
                                   (declare (not safe))
                                   (cons '() __tmp55075))))
                            (declare (not safe))
                            (cons '2 __tmp55074))))
                     (declare (not safe))
                     (cons _L52281_ __tmp55073))))
                (___kont5438354384_
                 (lambda (_L52180_)
                   (let ((__tmp55092 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp55081
                          (let ((__tmp55082
                                 (let ((__tmp55089
                                        (let ((__tmp55091
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp55090
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp55091 __tmp55090)))
                                       (__tmp55083
                                        (let ((__tmp55086
                                               (let ((__tmp55088
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp55087
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp55088 __tmp55087)))
                                              (__tmp55084
                                               (let ((__tmp55085
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp55085))))
                                          (declare (not safe))
                                          (cons __tmp55086 __tmp55084))))
                                   (declare (not safe))
                                   (cons __tmp55089 __tmp55083))))
                            (declare (not safe))
                            (cons _L52180_ __tmp55082))))
                     (declare (not safe))
                     (cons __tmp55092 __tmp55081))))
                (___kont5438554386_
                 (lambda (_L52103_
                          _L52105_
                          _L52106_
                          _L52107_
                          _L52108_
                          _L52109_)
                   (let ((__tmp55093
                          (let ((__tmp55094
                                 (let ((__tmp55096
                                        (let ((__tmp55097
                                               (let ((__tmp55098
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L52106_ '()))))
                                                 (declare (not safe))
                                                 (cons _L52107_ __tmp55098))))
                                          (declare (not safe))
                                          (cons __tmp55097 _L52108_)))
                                       (__tmp55095
                                        (let ()
                                          (declare (not safe))
                                          (cons _L52105_ _L52103_))))
                                   (declare (not safe))
                                   (cons __tmp55096 __tmp55095))))
                            (declare (not safe))
                            (cons '2 __tmp55094))))
                     (declare (not safe))
                     (cons _L52109_ __tmp55093))))
                (___kont5438754388_
                 (lambda (_L51984_ _L51986_ _L51987_ _L51988_ _L51989_)
                   (let ((__tmp55099
                          (let ((__tmp55100
                                 (let ((__tmp55102
                                        (let ((__tmp55103
                                               (let ((__tmp55104
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L51987_ '()))))
                                                 (declare (not safe))
                                                 (cons _L51987_ __tmp55104))))
                                          (declare (not safe))
                                          (cons __tmp55103 _L51988_)))
                                       (__tmp55101
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51986_ _L51984_))))
                                   (declare (not safe))
                                   (cons __tmp55102 __tmp55101))))
                            (declare (not safe))
                            (cons '2 __tmp55100))))
                     (declare (not safe))
                     (cons _L51989_ __tmp55099))))
                (___kont5438954390_
                 (lambda (_L51901_ _L51903_ _L51904_)
                   (let ((__tmp55105
                          (let ((__tmp55106
                                 (let ((__tmp55107
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51903_ _L51901_))))
                                   (declare (not safe))
                                   (cons '() __tmp55107))))
                            (declare (not safe))
                            (cons '3 __tmp55106))))
                     (declare (not safe))
                     (cons _L51904_ __tmp55105))))
                (___kont5439154392_
                 (lambda (_L51822_ _L51824_ _L51825_ _L51826_ _L51827_)
                   (let ((__tmp55108
                          (let ((__tmp55109
                                 (let ((__tmp55111
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51825_ _L51826_)))
                                       (__tmp55110
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51824_ _L51822_))))
                                   (declare (not safe))
                                   (cons __tmp55111 __tmp55110))))
                            (declare (not safe))
                            (cons '3 __tmp55109))))
                     (declare (not safe))
                     (cons _L51827_ __tmp55108))))
                (___kont5439354394_
                 (lambda (_L51706_
                          _L51708_
                          _L51709_
                          _L51710_
                          _L51711_
                          _L51712_)
                   (let ((__tmp55159 (gx#datum->syntax '#f 'let))
                         (__tmp55112
                          (let ((__tmp55147
                                 (let ((__tmp55156
                                        (let ((__tmp55158
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp55157
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L51709_ '()))))
                                          (declare (not safe))
                                          (cons __tmp55158 __tmp55157)))
                                       (__tmp55148
                                        (let ((__tmp55149
                                               (let ((__tmp55155
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp55150
                                                      (let ((__tmp55151
                                                             (let ((__tmp55154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp55152
                            (let ((__tmp55153
                                   (let ()
                                     (declare (not safe))
                                     (cons _L51706_ '()))))
                              (declare (not safe))
                              (cons '() __tmp55153))))
                       (declare (not safe))
                       (cons __tmp55154 __tmp55152))))
                (declare (not safe))
                (cons __tmp55151 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp55155
                                                       __tmp55150))))
                                          (declare (not safe))
                                          (cons __tmp55149 '()))))
                                   (declare (not safe))
                                   (cons __tmp55156 __tmp55148)))
                                (__tmp55113
                                 (let ((__tmp55114
                                        (let ((__tmp55146
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp55115
                                               (let ((__tmp55145
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp55116
                                                      (let ((__tmp55120
                                                             (let ((__tmp55144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp55121
                            (let ((__tmp55143 (gx#datum->syntax '#f 'tagval))
                                  (__tmp55122
                                   (let ((__tmp55138
                                          (let ((__tmp55142
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp55139
                                                 (let ((__tmp55140
                                                        (let ((__tmp55141
                                                               (lambda (_g5174451749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5174551752_)
                         (let ()
                           (declare (not safe))
                           (cons _g5174451749_ _g5174551752_)))))
                  (declare (not safe))
                  (foldr1 __tmp55141 '() _L51711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55140 '()))))
                                            (declare (not safe))
                                            (cons __tmp55142 __tmp55139)))
                                         (__tmp55123
                                          (let ((__tmp55130
                                                 (let ((__tmp55137
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp55131
                                                        (let ((__tmp55132
                                                               (lambda (_g5174651755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5174751758_)
                         (let ((__tmp55133
                                (let ((__tmp55136
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp55134
                                       (let ((__tmp55135
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5174651755_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp55135))))
                                  (declare (not safe))
                                  (cons __tmp55136 __tmp55134))))
                           (declare (not safe))
                           (cons __tmp55133 _g5174751758_)))))
                  (declare (not safe))
                  (foldr1 __tmp55132 '() _L51710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55137
                                                         __tmp55131)))
                                                (__tmp55124
                                                 (let ((__tmp55127
                                                        (let ((__tmp55129
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp55128
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L51708_ '()))))
                  (declare (not safe))
                  (cons __tmp55129 __tmp55128)))
               (__tmp55125
                (let ((__tmp55126 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp55126 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55127
                                                         __tmp55125))))
                                            (declare (not safe))
                                            (cons __tmp55130 __tmp55124))))
                                     (declare (not safe))
                                     (cons __tmp55138 __tmp55123))))
                              (declare (not safe))
                              (cons __tmp55143 __tmp55122))))
                       (declare (not safe))
                       (cons __tmp55144 __tmp55121)))
                    (__tmp55117
                     (let ((__tmp55118
                            (let ((__tmp55119 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp55119 '()))))
                       (declare (not safe))
                       (cons __tmp55118 '()))))
                (declare (not safe))
                (cons __tmp55120 __tmp55117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp55145
                                                       __tmp55116))))
                                          (declare (not safe))
                                          (cons __tmp55146 __tmp55115))))
                                   (declare (not safe))
                                   (cons __tmp55114 '()))))
                            (declare (not safe))
                            (cons __tmp55147 __tmp55113))))
                     (declare (not safe))
                     (cons __tmp55159 __tmp55112)))))
            (let* ((___match5472354724_
                    (lambda (_e5152751578_
                             _hd5152851582_
                             _tl5152951585_
                             _e5153051588_
                             _hd5153151592_
                             _tl5153251595_
                             _e5153351598_
                             _e5153451602_
                             _hd5153551606_
                             _tl5153651609_
                             ___splice5439554396_
                             _target5153751612_
                             _tl5153951615_)
                      (letrec ((_loop5154051618_
                                (lambda (_hd5153851622_
                                         _exprs5154451625_
                                         _names5154551627_)
                                  (if (gx#stx-pair? _hd5153851622_)
                                      (let ((_e5154151630_
                                             (gx#syntax-e _hd5153851622_)))
                                        (let ((_lp-tl5154351637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5154151630_)))
                                              (_lp-hd5154251634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5154151630_))))
                                          (if (gx#stx-pair? _lp-hd5154251634_)
                                              (let ((_e5154851640_
                                                     (gx#syntax-e
                                                      _lp-hd5154251634_)))
                                                (let ((_tl5155051647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5154851640_)))
                                                      (_hd5154951644_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5154851640_))))
                                                  (if (gx#stx-pair?
                                                       _tl5155051647_)
                                                      (let ((_e5155151650_
                                                             (gx#syntax-e
                                                              _tl5155051647_)))
                                                        (let ((_tl5155351657_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5155151650_)))
                      (_hd5155251654_
                       (let () (declare (not safe)) (##car _e5155151650_))))
                  (if (gx#stx-null? _tl5155351657_)
                      (_loop5154051618_
                       _lp-tl5154351637_
                       (let ()
                         (declare (not safe))
                         (cons _hd5155251654_ _exprs5154451625_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5154951644_ _names5154551627_)))
                      (let () (declare (not safe)) (_g5135751571_)))))
              (let () (declare (not safe)) (_g5135751571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5135751571_)))))
                                      (let ((_names5154751663_
                                             (reverse _names5154551627_))
                                            (_exprs5154651660_
                                             (reverse _exprs5154451625_)))
                                        (if (gx#stx-pair? _tl5153651609_)
                                            (let ((_e5155451666_
                                                   (gx#syntax-e
                                                    _tl5153651609_)))
                                              (let ((_tl5155651673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5155451666_)))
                                                    (_hd5155551670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5155451666_))))
                                                (if (gx#stx-null?
                                                     _hd5155551670_)
                                                    (if (gx#stx-pair?
                                                         _tl5155651673_)
                                                        (let ((_e5155751676_
                                                               (gx#syntax-e
                                                                _tl5155651673_)))
                                                          (let ((_tl5155951683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5155751676_)))
                        (_hd5155851680_
                         (let () (declare (not safe)) (##car _e5155751676_))))
                    (if (gx#stx-pair? _tl5155951683_)
                        (let ((_e5156051686_ (gx#syntax-e _tl5155951683_)))
                          (let ((_tl5156251693_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5156051686_)))
                                (_hd5156151690_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5156051686_))))
                            (if (gx#stx-pair? _tl5156251693_)
                                (let ((_e5156351696_
                                       (gx#syntax-e _tl5156251693_)))
                                  (let ((_tl5156551703_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5156351696_)))
                                        (_hd5156451700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5156351696_))))
                                    (if (gx#stx-null? _tl5156551703_)
                                        (___kont5439354394_
                                         _hd5156451700_
                                         _hd5156151690_
                                         _hd5155851680_
                                         _exprs5154651660_
                                         _names5154751663_
                                         _hd5152851582_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5135751571_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5135751571_)))))
                        (let () (declare (not safe)) (_g5135751571_)))))
                (let () (declare (not safe)) (_g5135751571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5135751571_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5135751571_))))))))
                        (_loop5154051618_ _target5153751612_ '() '()))))
                   (___match5450154502_
                    (lambda (_e5139952203_
                             _hd5140052207_
                             _tl5140152210_
                             _e5140252213_
                             _hd5140352217_
                             _tl5140452220_
                             _e5140552223_
                             _e5140652227_
                             _hd5140752231_
                             _tl5140852234_
                             ___splice5438154382_
                             _target5140952237_
                             _tl5141152240_
                             _e5141852243_
                             _hd5141952247_
                             _tl5142052250_)
                      (letrec ((_loop5141252253_
                                (lambda (_hd5141052257_ _exprs5141652260_)
                                  (if (gx#stx-pair? _hd5141052257_)
                                      (let ((_e5141352263_
                                             (gx#syntax-e _hd5141052257_)))
                                        (let ((_lp-tl5141552270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5141352263_)))
                                              (_lp-hd5141452267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5141352263_))))
                                          (_loop5141252253_
                                           _lp-tl5141552270_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5141452267_
                                                   _exprs5141652260_)))))
                                      (let ((_exprs5141752273_
                                             (reverse _exprs5141652260_)))
                                        (___kont5437954380_
                                         _hd5141952247_
                                         _exprs5141752273_
                                         _hd5140752231_
                                         _hd5140052207_))))))
                        (_loop5141252253_ _target5140952237_ '()))))
                   (___match5446154462_
                    (lambda (_e5136452320_
                             _hd5136552324_
                             _tl5136652327_
                             _e5136752330_
                             _hd5136852334_
                             _tl5136952337_
                             _e5137052340_
                             _e5137152344_
                             _hd5137252348_
                             _tl5137352351_
                             ___splice5437754378_
                             _target5137452354_
                             _tl5137652357_
                             _e5138352360_
                             _hd5138452364_
                             _tl5138552367_
                             _e5138652370_
                             _hd5138752374_
                             _tl5138852377_
                             _e5138952380_
                             _hd5139052384_
                             _tl5139152387_
                             _e5139252390_
                             _hd5139352394_
                             _tl5139452397_)
                      (letrec ((_loop5137752400_
                                (lambda (_hd5137552404_ _exprs5138152407_)
                                  (if (gx#stx-pair? _hd5137552404_)
                                      (let ((_e5137852410_
                                             (gx#syntax-e _hd5137552404_)))
                                        (let ((_lp-tl5138052417_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5137852410_)))
                                              (_lp-hd5137952414_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5137852410_))))
                                          (_loop5137752400_
                                           _lp-tl5138052417_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5137952414_
                                                   _exprs5138152407_)))))
                                      (let ((_exprs5138252420_
                                             (reverse _exprs5138152407_)))
                                        (___kont5437554376_
                                         _hd5139352394_
                                         _hd5139052384_
                                         _exprs5138252420_
                                         _hd5137252348_
                                         _hd5136552324_))))))
                        (_loop5137752400_ _target5137452354_ '())))))
              (if (gx#stx-pair? ___stx5437254373_)
                  (let ((_e5136452320_ (gx#syntax-e ___stx5437254373_)))
                    (let ((_tl5136652327_
                           (let () (declare (not safe)) (##cdr _e5136452320_)))
                          (_hd5136552324_
                           (let ()
                             (declare (not safe))
                             (##car _e5136452320_))))
                      (if (gx#stx-pair? _tl5136652327_)
                          (let ((_e5136752330_ (gx#syntax-e _tl5136652327_)))
                            (let ((_tl5136952337_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5136752330_)))
                                  (_hd5136852334_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5136752330_))))
                              (if (gx#stx-datum? _hd5136852334_)
                                  (let ((_e5137052340_
                                         (gx#stx-e _hd5136852334_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5137052340_ '1))
                                        (if (gx#stx-pair? _tl5136952337_)
                                            (let ((_e5137152344_
                                                   (gx#syntax-e
                                                    _tl5136952337_)))
                                              (let ((_tl5137352351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5137152344_)))
                                                    (_hd5137252348_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5137152344_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5137352351_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5137352351_)
                                                              '2)
                                                        (let ((___splice5437754378_
                                                               (gx#syntax-split-splice
                                                                _tl5137352351_
                                                                '2)))
                                                          (let ((_tl5137652357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5437754378_ '1)))
                        (_target5137452354_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5437754378_ '0))))
                    (if (gx#stx-pair? _tl5137652357_)
                        (let ((_e5138352360_ (gx#syntax-e _tl5137652357_)))
                          (let ((_tl5138552367_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5138352360_)))
                                (_hd5138452364_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5138352360_))))
                            (if (gx#stx-pair? _hd5138452364_)
                                (let ((_e5138652370_
                                       (gx#syntax-e _hd5138452364_)))
                                  (let ((_tl5138852377_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5138652370_)))
                                        (_hd5138752374_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5138652370_))))
                                    (if (gx#identifier? _hd5138752374_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g55160_|
                                             _hd5138752374_)
                                            (if (gx#stx-pair? _tl5138852377_)
                                                (let ((_e5138952380_
                                                       (gx#syntax-e
                                                        _tl5138852377_)))
                                                  (let ((_tl5139152387_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5138952380_)))
                                                        (_hd5139052384_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5138952380_))))
                                                    (if (gx#stx-null?
                                                         _tl5139152387_)
                                                        (if (gx#stx-pair?
                                                             _tl5138552367_)
                                                            (let ((_e5139252390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5138552367_)))
                      (let ((_tl5139452397_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5139252390_)))
                            (_hd5139352394_
                             (let ()
                               (declare (not safe))
                               (##car _e5139252390_))))
                        (if (gx#stx-null? _tl5139452397_)
                            (___match5446154462_
                             _e5136452320_
                             _hd5136552324_
                             _tl5136652327_
                             _e5136752330_
                             _hd5136852334_
                             _tl5136952337_
                             _e5137052340_
                             _e5137152344_
                             _hd5137252348_
                             _tl5137352351_
                             ___splice5437754378_
                             _target5137452354_
                             _tl5137652357_
                             _e5138352360_
                             _hd5138452364_
                             _tl5138552367_
                             _e5138652370_
                             _hd5138752374_
                             _tl5138852377_
                             _e5138952380_
                             _hd5139052384_
                             _tl5139152387_
                             _e5139252390_
                             _hd5139352394_
                             _tl5139452397_)
                            (if (fx>= (gx#stx-length _tl5137352351_) '1)
                                (let ((___splice5438154382_
                                       (gx#syntax-split-splice
                                        _tl5137352351_
                                        '1)))
                                  (let ((_tl5141152240_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5438154382_
                                            '1)))
                                        (_target5140952237_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5438154382_
                                            '0))))
                                    (if (gx#stx-pair? _tl5141152240_)
                                        (let ((_e5141852243_
                                               (gx#syntax-e _tl5141152240_)))
                                          (let ((_tl5142052250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5141852243_)))
                                                (_hd5141952247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5141852243_))))
                                            (if (gx#stx-null? _tl5142052250_)
                                                (___match5450154502_
                                                 _e5136452320_
                                                 _hd5136552324_
                                                 _tl5136652327_
                                                 _e5136752330_
                                                 _hd5136852334_
                                                 _tl5136952337_
                                                 _e5137052340_
                                                 _e5137152344_
                                                 _hd5137252348_
                                                 _tl5137352351_
                                                 ___splice5438154382_
                                                 _target5140952237_
                                                 _tl5141152240_
                                                 _e5141852243_
                                                 _hd5141952247_
                                                 _tl5142052250_)
                                                (if (gx#stx-null?
                                                     _tl5137352351_)
                                                    (___kont5438354384_
                                                     _hd5137252348_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5135751571_))))))
                                        (if (gx#stx-null? _tl5137352351_)
                                            (___kont5438354384_ _hd5137252348_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5135751571_))))))
                                (if (gx#stx-null? _tl5137352351_)
                                    (___kont5438354384_ _hd5137252348_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5135751571_)))))))
                    (if (fx>= (gx#stx-length _tl5137352351_) '1)
                        (let ((___splice5438154382_
                               (gx#syntax-split-splice _tl5137352351_ '1)))
                          (let ((_tl5141152240_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5438154382_ '1)))
                                (_target5140952237_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5438154382_ '0))))
                            (if (gx#stx-pair? _tl5141152240_)
                                (let ((_e5141852243_
                                       (gx#syntax-e _tl5141152240_)))
                                  (let ((_tl5142052250_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5141852243_)))
                                        (_hd5141952247_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5141852243_))))
                                    (if (gx#stx-null? _tl5142052250_)
                                        (___match5450154502_
                                         _e5136452320_
                                         _hd5136552324_
                                         _tl5136652327_
                                         _e5136752330_
                                         _hd5136852334_
                                         _tl5136952337_
                                         _e5137052340_
                                         _e5137152344_
                                         _hd5137252348_
                                         _tl5137352351_
                                         ___splice5438154382_
                                         _target5140952237_
                                         _tl5141152240_
                                         _e5141852243_
                                         _hd5141952247_
                                         _tl5142052250_)
                                        (if (gx#stx-null? _tl5137352351_)
                                            (___kont5438354384_ _hd5137252348_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5135751571_))))))
                                (if (gx#stx-null? _tl5137352351_)
                                    (___kont5438354384_ _hd5137252348_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5135751571_))))))
                        (if (gx#stx-null? _tl5137352351_)
                            (___kont5438354384_ _hd5137252348_)
                            (let () (declare (not safe)) (_g5135751571_)))))
                (if (fx>= (gx#stx-length _tl5137352351_) '1)
                    (let ((___splice5438154382_
                           (gx#syntax-split-splice _tl5137352351_ '1)))
                      (let ((_tl5141152240_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5438154382_ '1)))
                            (_target5140952237_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5438154382_ '0))))
                        (if (gx#stx-pair? _tl5141152240_)
                            (let ((_e5141852243_ (gx#syntax-e _tl5141152240_)))
                              (let ((_tl5142052250_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5141852243_)))
                                    (_hd5141952247_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5141852243_))))
                                (if (gx#stx-null? _tl5142052250_)
                                    (___match5450154502_
                                     _e5136452320_
                                     _hd5136552324_
                                     _tl5136652327_
                                     _e5136752330_
                                     _hd5136852334_
                                     _tl5136952337_
                                     _e5137052340_
                                     _e5137152344_
                                     _hd5137252348_
                                     _tl5137352351_
                                     ___splice5438154382_
                                     _target5140952237_
                                     _tl5141152240_
                                     _e5141852243_
                                     _hd5141952247_
                                     _tl5142052250_)
                                    (if (gx#stx-null? _tl5137352351_)
                                        (___kont5438354384_ _hd5137252348_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5135751571_))))))
                            (if (gx#stx-null? _tl5137352351_)
                                (___kont5438354384_ _hd5137252348_)
                                (let ()
                                  (declare (not safe))
                                  (_g5135751571_))))))
                    (if (gx#stx-null? _tl5137352351_)
                        (___kont5438354384_ _hd5137252348_)
                        (let () (declare (not safe)) (_g5135751571_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5137352351_)
                                                          '1)
                                                    (let ((___splice5438154382_
                                                           (gx#syntax-split-splice
                                                            _tl5137352351_
                                                            '1)))
                                                      (let ((_tl5141152240_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5438154382_ '1)))
                    (_target5140952237_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5438154382_ '0))))
                (if (gx#stx-pair? _tl5141152240_)
                    (let ((_e5141852243_ (gx#syntax-e _tl5141152240_)))
                      (let ((_tl5142052250_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5141852243_)))
                            (_hd5141952247_
                             (let ()
                               (declare (not safe))
                               (##car _e5141852243_))))
                        (if (gx#stx-null? _tl5142052250_)
                            (___match5450154502_
                             _e5136452320_
                             _hd5136552324_
                             _tl5136652327_
                             _e5136752330_
                             _hd5136852334_
                             _tl5136952337_
                             _e5137052340_
                             _e5137152344_
                             _hd5137252348_
                             _tl5137352351_
                             ___splice5438154382_
                             _target5140952237_
                             _tl5141152240_
                             _e5141852243_
                             _hd5141952247_
                             _tl5142052250_)
                            (if (gx#stx-null? _tl5137352351_)
                                (___kont5438354384_ _hd5137252348_)
                                (let ()
                                  (declare (not safe))
                                  (_g5135751571_))))))
                    (if (gx#stx-null? _tl5137352351_)
                        (___kont5438354384_ _hd5137252348_)
                        (let () (declare (not safe)) (_g5135751571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5137352351_)
                                                        (___kont5438354384_
                                                         _hd5137252348_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5135751571_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5137352351_)
                                                      '1)
                                                (let ((___splice5438154382_
                                                       (gx#syntax-split-splice
                                                        _tl5137352351_
                                                        '1)))
                                                  (let ((_tl5141152240_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5438154382_
                                                            '1)))
                                                        (_target5140952237_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5438154382_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5141152240_)
                                                        (let ((_e5141852243_
                                                               (gx#syntax-e
                                                                _tl5141152240_)))
                                                          (let ((_tl5142052250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5141852243_)))
                        (_hd5141952247_
                         (let () (declare (not safe)) (##car _e5141852243_))))
                    (if (gx#stx-null? _tl5142052250_)
                        (___match5450154502_
                         _e5136452320_
                         _hd5136552324_
                         _tl5136652327_
                         _e5136752330_
                         _hd5136852334_
                         _tl5136952337_
                         _e5137052340_
                         _e5137152344_
                         _hd5137252348_
                         _tl5137352351_
                         ___splice5438154382_
                         _target5140952237_
                         _tl5141152240_
                         _e5141852243_
                         _hd5141952247_
                         _tl5142052250_)
                        (if (gx#stx-null? _tl5137352351_)
                            (___kont5438354384_ _hd5137252348_)
                            (let () (declare (not safe)) (_g5135751571_))))))
                (if (gx#stx-null? _tl5137352351_)
                    (___kont5438354384_ _hd5137252348_)
                    (let () (declare (not safe)) (_g5135751571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5137352351_)
                                                    (___kont5438354384_
                                                     _hd5137252348_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5135751571_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5137352351_)
                                                  '1)
                                            (let ((___splice5438154382_
                                                   (gx#syntax-split-splice
                                                    _tl5137352351_
                                                    '1)))
                                              (let ((_tl5141152240_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5438154382_
                                                        '1)))
                                                    (_target5140952237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5438154382_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5141152240_)
                                                    (let ((_e5141852243_
                                                           (gx#syntax-e
                                                            _tl5141152240_)))
                                                      (let ((_tl5142052250_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5141852243_)))
                    (_hd5141952247_
                     (let () (declare (not safe)) (##car _e5141852243_))))
                (if (gx#stx-null? _tl5142052250_)
                    (___match5450154502_
                     _e5136452320_
                     _hd5136552324_
                     _tl5136652327_
                     _e5136752330_
                     _hd5136852334_
                     _tl5136952337_
                     _e5137052340_
                     _e5137152344_
                     _hd5137252348_
                     _tl5137352351_
                     ___splice5438154382_
                     _target5140952237_
                     _tl5141152240_
                     _e5141852243_
                     _hd5141952247_
                     _tl5142052250_)
                    (if (gx#stx-null? _tl5137352351_)
                        (___kont5438354384_ _hd5137252348_)
                        (let () (declare (not safe)) (_g5135751571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5137352351_)
                                                        (___kont5438354384_
                                                         _hd5137252348_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5135751571_))))))
                                            (if (gx#stx-null? _tl5137352351_)
                                                (___kont5438354384_
                                                 _hd5137252348_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5135751571_)))))))
                                (if (fx>= (gx#stx-length _tl5137352351_) '1)
                                    (let ((___splice5438154382_
                                           (gx#syntax-split-splice
                                            _tl5137352351_
                                            '1)))
                                      (let ((_tl5141152240_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5438154382_
                                                '1)))
                                            (_target5140952237_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5438154382_
                                                '0))))
                                        (if (gx#stx-pair? _tl5141152240_)
                                            (let ((_e5141852243_
                                                   (gx#syntax-e
                                                    _tl5141152240_)))
                                              (let ((_tl5142052250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5141852243_)))
                                                    (_hd5141952247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5141852243_))))
                                                (if (gx#stx-null?
                                                     _tl5142052250_)
                                                    (___match5450154502_
                                                     _e5136452320_
                                                     _hd5136552324_
                                                     _tl5136652327_
                                                     _e5136752330_
                                                     _hd5136852334_
                                                     _tl5136952337_
                                                     _e5137052340_
                                                     _e5137152344_
                                                     _hd5137252348_
                                                     _tl5137352351_
                                                     ___splice5438154382_
                                                     _target5140952237_
                                                     _tl5141152240_
                                                     _e5141852243_
                                                     _hd5141952247_
                                                     _tl5142052250_)
                                                    (if (gx#stx-null?
                                                         _tl5137352351_)
                                                        (___kont5438354384_
                                                         _hd5137252348_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5135751571_))))))
                                            (if (gx#stx-null? _tl5137352351_)
                                                (___kont5438354384_
                                                 _hd5137252348_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5135751571_))))))
                                    (if (gx#stx-null? _tl5137352351_)
                                        (___kont5438354384_ _hd5137252348_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5135751571_)))))))
                        (if (fx>= (gx#stx-length _tl5137352351_) '1)
                            (let ((___splice5438154382_
                                   (gx#syntax-split-splice _tl5137352351_ '1)))
                              (let ((_tl5141152240_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5438154382_ '1)))
                                    (_target5140952237_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5438154382_
                                        '0))))
                                (if (gx#stx-pair? _tl5141152240_)
                                    (let ((_e5141852243_
                                           (gx#syntax-e _tl5141152240_)))
                                      (let ((_tl5142052250_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5141852243_)))
                                            (_hd5141952247_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5141852243_))))
                                        (if (gx#stx-null? _tl5142052250_)
                                            (___match5450154502_
                                             _e5136452320_
                                             _hd5136552324_
                                             _tl5136652327_
                                             _e5136752330_
                                             _hd5136852334_
                                             _tl5136952337_
                                             _e5137052340_
                                             _e5137152344_
                                             _hd5137252348_
                                             _tl5137352351_
                                             ___splice5438154382_
                                             _target5140952237_
                                             _tl5141152240_
                                             _e5141852243_
                                             _hd5141952247_
                                             _tl5142052250_)
                                            (if (gx#stx-null? _tl5137352351_)
                                                (___kont5438354384_
                                                 _hd5137252348_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5135751571_))))))
                                    (if (gx#stx-null? _tl5137352351_)
                                        (___kont5438354384_ _hd5137252348_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5135751571_))))))
                            (if (gx#stx-null? _tl5137352351_)
                                (___kont5438354384_ _hd5137252348_)
                                (let ()
                                  (declare (not safe))
                                  (_g5135751571_)))))))
                (if (fx>= (gx#stx-length _tl5137352351_) '1)
                    (let ((___splice5438154382_
                           (gx#syntax-split-splice _tl5137352351_ '1)))
                      (let ((_tl5141152240_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5438154382_ '1)))
                            (_target5140952237_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5438154382_ '0))))
                        (if (gx#stx-pair? _tl5141152240_)
                            (let ((_e5141852243_ (gx#syntax-e _tl5141152240_)))
                              (let ((_tl5142052250_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5141852243_)))
                                    (_hd5141952247_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5141852243_))))
                                (if (gx#stx-null? _tl5142052250_)
                                    (___match5450154502_
                                     _e5136452320_
                                     _hd5136552324_
                                     _tl5136652327_
                                     _e5136752330_
                                     _hd5136852334_
                                     _tl5136952337_
                                     _e5137052340_
                                     _e5137152344_
                                     _hd5137252348_
                                     _tl5137352351_
                                     ___splice5438154382_
                                     _target5140952237_
                                     _tl5141152240_
                                     _e5141852243_
                                     _hd5141952247_
                                     _tl5142052250_)
                                    (if (gx#stx-null? _tl5137352351_)
                                        (___kont5438354384_ _hd5137252348_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5135751571_))))))
                            (if (gx#stx-null? _tl5137352351_)
                                (___kont5438354384_ _hd5137252348_)
                                (let ()
                                  (declare (not safe))
                                  (_g5135751571_))))))
                    (if (gx#stx-null? _tl5137352351_)
                        (___kont5438354384_ _hd5137252348_)
                        (let () (declare (not safe)) (_g5135751571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5137352351_)
                                                        (___kont5438354384_
                                                         _hd5137252348_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5135751571_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5135751571_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5137052340_ '2))
                                            (if (gx#stx-pair? _tl5136952337_)
                                                (let ((_e5144552043_
                                                       (gx#syntax-e
                                                        _tl5136952337_)))
                                                  (let ((_tl5144752050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5144552043_)))
                                                        (_hd5144652047_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5144552043_))))
                                                    (if (gx#stx-pair?
                                                         _tl5144752050_)
                                                        (let ((_e5144852053_
                                                               (gx#syntax-e
                                                                _tl5144752050_)))
                                                          (let ((_tl5145052060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5144852053_)))
                        (_hd5144952057_
                         (let () (declare (not safe)) (##car _e5144852053_))))
                    (if (gx#stx-pair? _hd5144952057_)
                        (let ((_e5145152063_ (gx#syntax-e _hd5144952057_)))
                          (let ((_tl5145352070_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5145152063_)))
                                (_hd5145252067_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5145152063_))))
                            (if (gx#stx-pair? _hd5145252067_)
                                (let ((_e5145452073_
                                       (gx#syntax-e _hd5145252067_)))
                                  (let ((_tl5145652080_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5145452073_)))
                                        (_hd5145552077_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5145452073_))))
                                    (if (gx#identifier? _hd5145552077_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g55161_|
                                             _hd5145552077_)
                                            (if (gx#stx-pair? _tl5145652080_)
                                                (let ((_e5145752083_
                                                       (gx#syntax-e
                                                        _tl5145652080_)))
                                                  (let ((_tl5145952090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5145752083_)))
                                                        (_hd5145852087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5145752083_))))
                                                    (if (gx#stx-null?
                                                         _tl5145952090_)
                                                        (if (gx#stx-pair?
                                                             _tl5145352070_)
                                                            (let ((_e5146052093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5145352070_)))
                      (let ((_tl5146252100_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5146052093_)))
                            (_hd5146152097_
                             (let ()
                               (declare (not safe))
                               (##car _e5146052093_))))
                        (___kont5438554386_
                         _tl5145052060_
                         _tl5146252100_
                         _hd5146152097_
                         _hd5145852087_
                         _hd5144652047_
                         _hd5136552324_)))
                    (___kont5438754388_
                     _tl5145052060_
                     _tl5145352070_
                     _hd5145252067_
                     _hd5144652047_
                     _hd5136552324_))
                (___kont5438754388_
                 _tl5145052060_
                 _tl5145352070_
                 _hd5145252067_
                 _hd5144652047_
                 _hd5136552324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5438754388_
                                                 _tl5145052060_
                                                 _tl5145352070_
                                                 _hd5145252067_
                                                 _hd5144652047_
                                                 _hd5136552324_))
                                            (___kont5438754388_
                                             _tl5145052060_
                                             _tl5145352070_
                                             _hd5145252067_
                                             _hd5144652047_
                                             _hd5136552324_))
                                        (___kont5438754388_
                                         _tl5145052060_
                                         _tl5145352070_
                                         _hd5145252067_
                                         _hd5144652047_
                                         _hd5136552324_))))
                                (___kont5438754388_
                                 _tl5145052060_
                                 _tl5145352070_
                                 _hd5145252067_
                                 _hd5144652047_
                                 _hd5136552324_))))
                        (if (gx#stx-null? _hd5144952057_)
                            (___kont5438954390_
                             _tl5145052060_
                             _hd5144652047_
                             _hd5136552324_)
                            (let () (declare (not safe)) (_g5135751571_))))))
                (let () (declare (not safe)) (_g5135751571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5135751571_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5137052340_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5136952337_)
                                                    (let ((_e5151251792_
                                                           (gx#syntax-e
                                                            _tl5136952337_)))
                                                      (let ((_tl5151451799_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5151251792_)))
                    (_hd5151351796_
                     (let () (declare (not safe)) (##car _e5151251792_))))
                (if (gx#stx-pair? _tl5151451799_)
                    (let ((_e5151551802_ (gx#syntax-e _tl5151451799_)))
                      (let ((_tl5151751809_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5151551802_)))
                            (_hd5151651806_
                             (let ()
                               (declare (not safe))
                               (##car _e5151551802_))))
                        (if (gx#stx-pair? _hd5151651806_)
                            (let ((_e5151851812_ (gx#syntax-e _hd5151651806_)))
                              (let ((_tl5152051819_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5151851812_)))
                                    (_hd5151951816_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5151851812_))))
                                (___kont5439154392_
                                 _tl5151751809_
                                 _tl5152051819_
                                 _hd5151951816_
                                 _hd5151351796_
                                 _hd5136552324_)))
                            (if (gx#stx-pair/null? _hd5151351796_)
                                (let ((___splice5439554396_
                                       (gx#syntax-split-splice
                                        _hd5151351796_
                                        '0)))
                                  (let ((_tl5153951615_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5439554396_
                                            '1)))
                                        (_target5153751612_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5439554396_
                                            '0))))
                                    (if (gx#stx-null? _tl5153951615_)
                                        (___match5472354724_
                                         _e5136452320_
                                         _hd5136552324_
                                         _tl5136652327_
                                         _e5136752330_
                                         _hd5136852334_
                                         _tl5136952337_
                                         _e5137052340_
                                         _e5151251792_
                                         _hd5151351796_
                                         _tl5151451799_
                                         ___splice5439554396_
                                         _target5153751612_
                                         _tl5153951615_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5135751571_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5135751571_))))))
                    (if (gx#stx-pair/null? _hd5151351796_)
                        (let ((___splice5439554396_
                               (gx#syntax-split-splice _hd5151351796_ '0)))
                          (let ((_tl5153951615_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5439554396_ '1)))
                                (_target5153751612_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5439554396_ '0))))
                            (if (gx#stx-null? _tl5153951615_)
                                (___match5472354724_
                                 _e5136452320_
                                 _hd5136552324_
                                 _tl5136652327_
                                 _e5136752330_
                                 _hd5136852334_
                                 _tl5136952337_
                                 _e5137052340_
                                 _e5151251792_
                                 _hd5151351796_
                                 _tl5151451799_
                                 ___splice5439554396_
                                 _target5153751612_
                                 _tl5153951615_)
                                (let ()
                                  (declare (not safe))
                                  (_g5135751571_)))))
                        (let () (declare (not safe)) (_g5135751571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5135751571_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5135751571_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5135751571_)))))
                          (let () (declare (not safe)) (_g5135751571_)))))
                  (let () (declare (not safe)) (_g5135751571_))))))))))
