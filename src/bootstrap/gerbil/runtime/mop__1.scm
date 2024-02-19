(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx82554_)
      (let* ((___stx8857288573_ _$stx82554_)
             (_g8255982588_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8857288573_))))
        (let ((___kont8857588576_
               (lambda (_L82681_ _L82683_)
                 (let ((__tmp88834 (gx#datum->syntax '#f '##fx=))
                       (__tmp88828
                        (let ((__tmp88830
                               (let ((__tmp88833
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88831
                                      (let ((__tmp88832
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82681_ '()))))
                                        (declare (not safe))
                                        (cons _L82683_ __tmp88832))))
                                 (declare (not safe))
                                 (cons __tmp88833 __tmp88831)))
                              (__tmp88829
                               (let ()
                                 (declare (not safe))
                                 (cons _L82681_ '()))))
                          (declare (not safe))
                          (cons __tmp88830 __tmp88829))))
                   (declare (not safe))
                   (cons __tmp88834 __tmp88828))))
              (___kont8857788578_
               (lambda (_L82625_ _L82627_)
                 (let ((__tmp88847 (gx#datum->syntax '#f 'let))
                       (__tmp88835
                        (let ((__tmp88845
                               (let ((__tmp88846
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82625_ '()))))
                                 (declare (not safe))
                                 (cons _L82625_ __tmp88846)))
                              (__tmp88836
                               (let ((__tmp88837
                                      (let ((__tmp88844
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88838
                                             (let ((__tmp88840
                                                    (let ((__tmp88843
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88841
                                                           (let ((__tmp88842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82625_ '()))))
                     (declare (not safe))
                     (cons _L82627_ __tmp88842))))
              (declare (not safe))
              (cons __tmp88843 __tmp88841)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88839
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L82625_ '()))))
                                               (declare (not safe))
                                               (cons __tmp88840 __tmp88839))))
                                        (declare (not safe))
                                        (cons __tmp88844 __tmp88838))))
                                 (declare (not safe))
                                 (cons __tmp88837 '()))))
                          (declare (not safe))
                          (cons __tmp88845 __tmp88836))))
                   (declare (not safe))
                   (cons __tmp88847 __tmp88835)))))
          (let ((___match8859988600_
                 (lambda (_e8256582651_
                          _hd8256482655_
                          _tl8256382658_
                          _e8256882661_
                          _hd8256782665_
                          _tl8256682668_
                          _e8257182671_
                          _hd8257082675_
                          _tl8256982678_)
                   (let ((_L82681_ _hd8257082675_) (_L82683_ _hd8256782665_))
                     (if (or (gx#identifier? _L82681_)
                             (gx#stx-fixnum? _L82681_))
                         (___kont8857588576_ _L82681_ _L82683_)
                         (___kont8857788578_
                          _hd8257082675_
                          _hd8256782665_))))))
            (if (gx#stx-pair? ___stx8857288573_)
                (let ((_e8256582651_ (gx#syntax-e ___stx8857288573_)))
                  (let ((_tl8256382658_
                         (let () (declare (not safe)) (##cdr _e8256582651_)))
                        (_hd8256482655_
                         (let () (declare (not safe)) (##car _e8256582651_))))
                    (if (gx#stx-pair? _tl8256382658_)
                        (let ((_e8256882661_ (gx#syntax-e _tl8256382658_)))
                          (let ((_tl8256682668_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8256882661_)))
                                (_hd8256782665_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8256882661_))))
                            (if (gx#stx-pair? _tl8256682668_)
                                (let ((_e8257182671_
                                       (gx#syntax-e _tl8256682668_)))
                                  (let ((_tl8256982678_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8257182671_)))
                                        (_hd8257082675_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8257182671_))))
                                    (if (gx#stx-null? _tl8256982678_)
                                        (___match8859988600_
                                         _e8256582651_
                                         _hd8256482655_
                                         _tl8256382658_
                                         _e8256882661_
                                         _hd8256782665_
                                         _tl8256682668_
                                         _e8257182671_
                                         _hd8257082675_
                                         _tl8256982678_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8255982588_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8255982588_)))))
                        (let () (declare (not safe)) (_g8255982588_)))))
                (let () (declare (not safe)) (_g8255982588_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx82706_)
      (let* ((___stx8862288623_ _$stx82706_)
             (_g8271182740_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8862288623_))))
        (let ((___kont8862588626_
               (lambda (_L82832_ _L82834_)
                 (let ((__tmp88854 (gx#datum->syntax '#f '##fx=))
                       (__tmp88848
                        (let ((__tmp88850
                               (let ((__tmp88853
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88851
                                      (let ((__tmp88852
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82832_ '()))))
                                        (declare (not safe))
                                        (cons _L82834_ __tmp88852))))
                                 (declare (not safe))
                                 (cons __tmp88853 __tmp88851)))
                              (__tmp88849
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp88850 __tmp88849))))
                   (declare (not safe))
                   (cons __tmp88854 __tmp88848))))
              (___kont8862788628_
               (lambda (_L82777_ _L82779_)
                 (let ((__tmp88867 (gx#datum->syntax '#f 'let))
                       (__tmp88855
                        (let ((__tmp88865
                               (let ((__tmp88866
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82777_ '()))))
                                 (declare (not safe))
                                 (cons _L82777_ __tmp88866)))
                              (__tmp88856
                               (let ((__tmp88857
                                      (let ((__tmp88864
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88858
                                             (let ((__tmp88860
                                                    (let ((__tmp88863
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88861
                                                           (let ((__tmp88862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82777_ '()))))
                     (declare (not safe))
                     (cons _L82779_ __tmp88862))))
              (declare (not safe))
              (cons __tmp88863 __tmp88861)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88859
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp88860 __tmp88859))))
                                        (declare (not safe))
                                        (cons __tmp88864 __tmp88858))))
                                 (declare (not safe))
                                 (cons __tmp88857 '()))))
                          (declare (not safe))
                          (cons __tmp88865 __tmp88856))))
                   (declare (not safe))
                   (cons __tmp88867 __tmp88855)))))
          (let ((___match8864988650_
                 (lambda (_e8271782802_
                          _hd8271682806_
                          _tl8271582809_
                          _e8272082812_
                          _hd8271982816_
                          _tl8271882819_
                          _e8272382822_
                          _hd8272282826_
                          _tl8272182829_)
                   (let ((_L82832_ _hd8272282826_) (_L82834_ _hd8271982816_))
                     (if (or (gx#identifier? _L82832_)
                             (gx#stx-fixnum? _L82832_))
                         (___kont8862588626_ _L82832_ _L82834_)
                         (___kont8862788628_
                          _hd8272282826_
                          _hd8271982816_))))))
            (if (gx#stx-pair? ___stx8862288623_)
                (let ((_e8271782802_ (gx#syntax-e ___stx8862288623_)))
                  (let ((_tl8271582809_
                         (let () (declare (not safe)) (##cdr _e8271782802_)))
                        (_hd8271682806_
                         (let () (declare (not safe)) (##car _e8271782802_))))
                    (if (gx#stx-pair? _tl8271582809_)
                        (let ((_e8272082812_ (gx#syntax-e _tl8271582809_)))
                          (let ((_tl8271882819_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8272082812_)))
                                (_hd8271982816_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8272082812_))))
                            (if (gx#stx-pair? _tl8271882819_)
                                (let ((_e8272382822_
                                       (gx#syntax-e _tl8271882819_)))
                                  (let ((_tl8272182829_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8272382822_)))
                                        (_hd8272282826_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8272382822_))))
                                    (if (gx#stx-null? _tl8272182829_)
                                        (___match8864988650_
                                         _e8271782802_
                                         _hd8271682806_
                                         _tl8271582809_
                                         _e8272082812_
                                         _hd8271982816_
                                         _tl8271882819_
                                         _e8272382822_
                                         _hd8272282826_
                                         _tl8272182829_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8271182740_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8271182740_)))))
                        (let () (declare (not safe)) (_g8271182740_)))))
                (let () (declare (not safe)) (_g8271182740_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx82857_)
      (let* ((_g8286082881_
              (lambda (_g8286182877_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8286182877_)))
             (_g8285983109_
              (lambda (_g8286182885_)
                (if (gx#stx-pair? _g8286182885_)
                    (let ((_e8286682888_ (gx#syntax-e _g8286182885_)))
                      (let ((_hd8286582892_
                             (let ()
                               (declare (not safe))
                               (##car _e8286682888_)))
                            (_tl8286482895_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8286682888_))))
                        (if (gx#stx-pair? _tl8286482895_)
                            (let ((_e8286982898_ (gx#syntax-e _tl8286482895_)))
                              (let ((_hd8286882902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8286982898_)))
                                    (_tl8286782905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8286982898_))))
                                (if (gx#stx-pair? _hd8286882902_)
                                    (let ((_e8287282908_
                                           (gx#syntax-e _hd8286882902_)))
                                      (let ((_hd8287182912_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8287282908_)))
                                            (_tl8287082915_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8287282908_))))
                                        (if (gx#stx-pair? _tl8287082915_)
                                            (let ((_e8287582918_
                                                   (gx#syntax-e
                                                    _tl8287082915_)))
                                              (let ((_hd8287482922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8287582918_)))
                                                    (_tl8287382925_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8287582918_))))
                                                (if (gx#stx-null?
                                                     _tl8287382925_)
                                                    (if (gx#stx-null?
                                                         _tl8286782905_)
                                                        ((lambda (_L82928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L82930_)
                   (let* ((_g8294882956_
                           (lambda (_g8294982952_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8294982952_)))
                          (_g8294783105_
                           (lambda (_g8294982960_)
                             ((lambda (_L82963_)
                                (let ()
                                  (let* ((_g8297582983_
                                          (lambda (_g8297682979_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8297682979_)))
                                         (_g8297483101_
                                          (lambda (_g8297682987_)
                                            ((lambda (_L82990_)
                                               (let ()
                                                 (let* ((_g8300383011_
                                                         (lambda (_g8300483007_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8300483007_)))
                                                        (_g8300283097_
                                                         (lambda (_g8300483015_)
                                                           ((lambda (_L83018_)
                                                              (let ()
                                                                (let* ((_g8303183039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8303283035_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8303283035_)))
                               (_g8303083093_
                                (lambda (_g8303283043_)
                                  ((lambda (_L83046_)
                                     (let ()
                                       (let* ((_g8305983067_
                                               (lambda (_g8306083063_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8306083063_)))
                                              (_g8305883089_
                                               (lambda (_g8306083071_)
                                                 ((lambda (_L83074_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp89000
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp88868
                                                               (let ((__tmp88970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88999 (gx#datum->syntax '#f 'def))
                                    (__tmp88971
                                     (let ((__tmp88972
                                            (let ((__tmp88973
                                                   (let ((__tmp88998
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp88974
                                                          (let ((__tmp88993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88997
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp88994
                                (let ((__tmp88995
                                       (let ((__tmp88996
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L82930_ __tmp88996))))
                                  (declare (not safe))
                                  (cons _L82963_ __tmp88995))))
                           (declare (not safe))
                           (cons __tmp88997 __tmp88994)))
                        (__tmp88975
                         (let ((__tmp88976
                                (let ((__tmp88992
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp88977
                                       (let ((__tmp88990
                                              (let ((__tmp88991
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp88991 '())))
                                             (__tmp88978
                                              (let ((__tmp88979
                                                     (let ((__tmp88989
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp88980
                                                            (let ((__tmp88988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp88981
                           (let ((__tmp88982
                                  (let ((__tmp88987
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp88983
                                         (let ((__tmp88984
                                                (let ((__tmp88986
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp88985
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L82930_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp88986
                                                        __tmp88985))))
                                           (declare (not safe))
                                           (cons __tmp88984 '()))))
                                    (declare (not safe))
                                    (cons __tmp88987 __tmp88983))))
                             (declare (not safe))
                             (cons _L82928_ __tmp88982))))
                      (declare (not safe))
                      (cons __tmp88988 __tmp88981))))
               (declare (not safe))
               (cons __tmp88989 __tmp88980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88979 '()))))
                                         (declare (not safe))
                                         (cons __tmp88990 __tmp88978))))
                                  (declare (not safe))
                                  (cons __tmp88992 __tmp88977))))
                           (declare (not safe))
                           (cons __tmp88976 '()))))
                    (declare (not safe))
                    (cons __tmp88993 __tmp88975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88998
                                                           __tmp88974))))
                                              (declare (not safe))
                                              (cons __tmp88973 '()))))
                                       (declare (not safe))
                                       (cons _L82990_ __tmp88972))))
                                (declare (not safe))
                                (cons __tmp88999 __tmp88971)))
                             (__tmp88869
                              (let ((__tmp88940
                                     (let ((__tmp88969
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp88941
                                            (let ((__tmp88942
                                                   (let ((__tmp88943
                                                          (let ((__tmp88968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp88944
                         (let ((__tmp88963
                                (let ((__tmp88967
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp88964
                                       (let ((__tmp88965
                                              (let ((__tmp88966
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L82930_ __tmp88966))))
                                         (declare (not safe))
                                         (cons _L82963_ __tmp88965))))
                                  (declare (not safe))
                                  (cons __tmp88967 __tmp88964)))
                               (__tmp88945
                                (let ((__tmp88946
                                       (let ((__tmp88962
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp88947
                                              (let ((__tmp88960
                                                     (let ((__tmp88961
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp88961 '())))
                                                    (__tmp88948
                                                     (let ((__tmp88949
                                                            (let ((__tmp88959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp88950
                           (let ((__tmp88958 (gx#datum->syntax '#f 'klass))
                                 (__tmp88951
                                  (let ((__tmp88952
                                         (let ((__tmp88957
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp88953
                                                (let ((__tmp88954
                                                       (let ((__tmp88956
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp88955
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L82930_ '()))))
                 (declare (not safe))
                 (cons __tmp88956 __tmp88955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88954 '()))))
                                           (declare (not safe))
                                           (cons __tmp88957 __tmp88953))))
                                    (declare (not safe))
                                    (cons _L82928_ __tmp88952))))
                             (declare (not safe))
                             (cons __tmp88958 __tmp88951))))
                      (declare (not safe))
                      (cons __tmp88959 __tmp88950))))
               (declare (not safe))
               (cons __tmp88949 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88960 __tmp88948))))
                                         (declare (not safe))
                                         (cons __tmp88962 __tmp88947))))
                                  (declare (not safe))
                                  (cons __tmp88946 '()))))
                           (declare (not safe))
                           (cons __tmp88963 __tmp88945))))
                    (declare (not safe))
                    (cons __tmp88968 __tmp88944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88943 '()))))
                                              (declare (not safe))
                                              (cons _L83018_ __tmp88942))))
                                       (declare (not safe))
                                       (cons __tmp88969 __tmp88941)))
                                    (__tmp88870
                                     (let ((__tmp88906
                                            (let ((__tmp88939
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp88907
                                                   (let ((__tmp88908
                                                          (let ((__tmp88909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88938
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp88910
                                (let ((__tmp88933
                                       (let ((__tmp88937
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp88934
                                              (let ((__tmp88935
                                                     (let ((__tmp88936
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L82930_
                                                             __tmp88936))))
                                                (declare (not safe))
                                                (cons _L82963_ __tmp88935))))
                                         (declare (not safe))
                                         (cons __tmp88937 __tmp88934)))
                                      (__tmp88911
                                       (let ((__tmp88912
                                              (let ((__tmp88932
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp88913
                                                     (let ((__tmp88928
                                                            (let ((__tmp88931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp88929
                           (let ((__tmp88930 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp88930 '()))))
                      (declare (not safe))
                      (cons __tmp88931 __tmp88929)))
                   (__tmp88914
                    (let ((__tmp88915
                           (let ((__tmp88927
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp88916
                                  (let ((__tmp88926
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp88917
                                         (let ((__tmp88925
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp88918
                                                (let ((__tmp88919
                                                       (let ((__tmp88924
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp88920
                                                              (let ((__tmp88921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88923 (gx#datum->syntax '#f 'quote))
                                   (__tmp88922
                                    (let ()
                                      (declare (not safe))
                                      (cons _L82930_ '()))))
                               (declare (not safe))
                               (cons __tmp88923 __tmp88922))))
                        (declare (not safe))
                        (cons __tmp88921 '()))))
                 (declare (not safe))
                 (cons __tmp88924 __tmp88920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L82928_ __tmp88919))))
                                           (declare (not safe))
                                           (cons __tmp88925 __tmp88918))))
                                    (declare (not safe))
                                    (cons __tmp88926 __tmp88917))))
                             (declare (not safe))
                             (cons __tmp88927 __tmp88916))))
                      (declare (not safe))
                      (cons __tmp88915 '()))))
               (declare (not safe))
               (cons __tmp88928 __tmp88914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88932 __tmp88913))))
                                         (declare (not safe))
                                         (cons __tmp88912 '()))))
                                  (declare (not safe))
                                  (cons __tmp88933 __tmp88911))))
                           (declare (not safe))
                           (cons __tmp88938 __tmp88910))))
                    (declare (not safe))
                    (cons __tmp88909 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83046_
                                                           __tmp88908))))
                                              (declare (not safe))
                                              (cons __tmp88939 __tmp88907)))
                                           (__tmp88871
                                            (let ((__tmp88872
                                                   (let ((__tmp88905
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp88873
                                                          (let ((__tmp88874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88875
                                (let ((__tmp88904
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp88876
                                       (let ((__tmp88899
                                              (let ((__tmp88903
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp88900
                                                     (let ((__tmp88901
                                                            (let ((__tmp88902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L82930_ __tmp88902))))
               (declare (not safe))
               (cons _L82963_ __tmp88901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88903 __tmp88900)))
                                             (__tmp88877
                                              (let ((__tmp88878
                                                     (let ((__tmp88898
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp88879
                                                            (let ((__tmp88894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp88897 (gx#datum->syntax '#f 'klass))
                                 (__tmp88895
                                  (let ((__tmp88896
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp88896 '()))))
                             (declare (not safe))
                             (cons __tmp88897 __tmp88895)))
                          (__tmp88880
                           (let ((__tmp88881
                                  (let ((__tmp88893
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp88882
                                         (let ((__tmp88892
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp88883
                                                (let ((__tmp88891
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp88884
                                                       (let ((__tmp88885
                                                              (let ((__tmp88890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp88886
                             (let ((__tmp88887
                                    (let ((__tmp88889
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp88888
                                           (let ()
                                             (declare (not safe))
                                             (cons _L82930_ '()))))
                                      (declare (not safe))
                                      (cons __tmp88889 __tmp88888))))
                               (declare (not safe))
                               (cons __tmp88887 '()))))
                        (declare (not safe))
                        (cons __tmp88890 __tmp88886))))
                 (declare (not safe))
                 (cons _L82928_ __tmp88885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88891
                                                        __tmp88884))))
                                           (declare (not safe))
                                           (cons __tmp88892 __tmp88883))))
                                    (declare (not safe))
                                    (cons __tmp88893 __tmp88882))))
                             (declare (not safe))
                             (cons __tmp88881 '()))))
                      (declare (not safe))
                      (cons __tmp88894 __tmp88880))))
               (declare (not safe))
               (cons __tmp88898 __tmp88879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88878 '()))))
                                         (declare (not safe))
                                         (cons __tmp88899 __tmp88877))))
                                  (declare (not safe))
                                  (cons __tmp88904 __tmp88876))))
                           (declare (not safe))
                           (cons __tmp88875 '()))))
                    (declare (not safe))
                    (cons _L83074_ __tmp88874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88905
                                                           __tmp88873))))
                                              (declare (not safe))
                                              (cons __tmp88872 '()))))
                                       (declare (not safe))
                                       (cons __tmp88906 __tmp88871))))
                                (declare (not safe))
                                (cons __tmp88940 __tmp88870))))
                         (declare (not safe))
                         (cons __tmp88970 __tmp88869))))
                  (declare (not safe))
                  (cons __tmp89000 __tmp88868)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8306083071_))))
                                         (_g8305883089_
                                          (gx#stx-identifier
                                           _L82930_
                                           '"&"
                                           _L83046_)))))
                                   _g8303283043_))))
                          (_g8303083093_
                           (gx#stx-identifier _L82930_ _L82990_ '"-set!")))))
                    _g8300483015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8300283097_
                                                    (gx#stx-identifier
                                                     _L82930_
                                                     '"&"
                                                     _L82990_)))))
                                             _g8297682987_))))
                                    (_g8297483101_
                                     (gx#stx-identifier
                                      _L82930_
                                      '"class-type-"
                                      _L82930_)))))
                              _g8294982960_))))
                     (_g8294783105_ (gx#core-quote-syntax 'class::t))))
                 _hd8287482922_
                 _hd8287182912_)
                (_g8286082881_ _g8286182885_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8286082881_
                                                     _g8286182885_))))
                                            (_g8286082881_ _g8286182885_))))
                                    (_g8286082881_ _g8286182885_))))
                            (_g8286082881_ _g8286182885_))))
                    (_g8286082881_ _g8286182885_)))))
        (_g8285983109_ _stx82857_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx83113_)
      (let* ((_g8311783146_
              (lambda (_g8311883142_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8311883142_)))
             (_g8311683246_
              (lambda (_g8311883150_)
                (if (gx#stx-pair? _g8311883150_)
                    (let ((_e8312383153_ (gx#syntax-e _g8311883150_)))
                      (let ((_hd8312283157_
                             (let ()
                               (declare (not safe))
                               (##car _e8312383153_)))
                            (_tl8312183160_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8312383153_))))
                        (if (gx#stx-pair/null? _tl8312183160_)
                            (let ((_g89001_
                                   (gx#syntax-split-splice _tl8312183160_ '0)))
                              (begin
                                (let ((_g89002_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g89001_)
                                             (##vector-length _g89001_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g89002_ 2)))
                                      (error "Context expects 2 values"
                                             _g89002_)))
                                (let ((_target8312483163_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89001_ 0)))
                                      (_tl8312683166_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89001_ 1))))
                                  (if (gx#stx-null? _tl8312683166_)
                                      (letrec ((_loop8312783169_
                                                (lambda (_hd8312583173_
                                                         _field8313183176_
                                                         _slot8313283178_)
                                                  (if (gx#stx-pair?
                                                       _hd8312583173_)
                                                      (let ((_e8312883181_
                                                             (gx#syntax-e
                                                              _hd8312583173_)))
                                                        (let ((_lp-hd8312983185_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8312883181_)))
                      (_lp-tl8313083188_
                       (let () (declare (not safe)) (##cdr _e8312883181_))))
                  (if (gx#stx-pair? _lp-hd8312983185_)
                      (let ((_e8313783191_ (gx#syntax-e _lp-hd8312983185_)))
                        (let ((_hd8313683195_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8313783191_)))
                              (_tl8313583198_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8313783191_))))
                          (if (gx#stx-pair? _tl8313583198_)
                              (let ((_e8314083201_
                                     (gx#syntax-e _tl8313583198_)))
                                (let ((_hd8313983205_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8314083201_)))
                                      (_tl8313883208_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8314083201_))))
                                  (if (gx#stx-null? _tl8313883208_)
                                      (_loop8312783169_
                                       _lp-tl8313083188_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8313983205_
                                               _field8313183176_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8313683195_
                                               _slot8313283178_)))
                                      (_g8311783146_ _g8311883150_))))
                              (_g8311783146_ _g8311883150_))))
                      (_g8311783146_ _g8311883150_))))
              (let ((_field8313383211_ (reverse _field8313183176_))
                    (_slot8313483214_ (reverse _slot8313283178_)))
                ((lambda (_L83217_ _L83219_)
                   (let ((__tmp89010 (gx#datum->syntax '#f 'begin))
                         (__tmp89003
                          (begin
                            (gx#syntax-check-splice-targets _L83217_ _L83219_)
                            (let ((__tmp89004
                                   (lambda (_g8323483238_
                                            _g8323583241_
                                            _g8323683243_)
                                     (let ((__tmp89005
                                            (let ((__tmp89009
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp89006
                                                   (let ((__tmp89007
                                                          (let ((__tmp89008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8323483238_ '()))))
                    (declare (not safe))
                    (cons _g8323583241_ __tmp89008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89007 '()))))
                                              (declare (not safe))
                                              (cons __tmp89009 __tmp89006))))
                                       (declare (not safe))
                                       (cons __tmp89005 _g8323683243_)))))
                              (declare (not safe))
                              (foldr2 __tmp89004 '() _L83217_ _L83219_)))))
                     (declare (not safe))
                     (cons __tmp89010 __tmp89003)))
                 _field8313383211_
                 _slot8313483214_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8312783169_
                                         _target8312483163_
                                         '()
                                         '()))
                                      (_g8311783146_ _g8311883150_)))))
                            (_g8311783146_ _g8311883150_))))
                    (_g8311783146_ _g8311883150_)))))
        (_g8311683246_ _$stx83113_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx83251_)
      (let* ((_g8325583281_
              (lambda (_g8325683277_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8325683277_)))
             (_g8325483364_
              (lambda (_g8325683285_)
                (if (gx#stx-pair? _g8325683285_)
                    (let ((_e8326383288_ (gx#syntax-e _g8325683285_)))
                      (let ((_hd8326283292_
                             (let ()
                               (declare (not safe))
                               (##car _e8326383288_)))
                            (_tl8326183295_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8326383288_))))
                        (if (gx#stx-pair? _tl8326183295_)
                            (let ((_e8326683298_ (gx#syntax-e _tl8326183295_)))
                              (let ((_hd8326583302_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8326683298_)))
                                    (_tl8326483305_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8326683298_))))
                                (if (gx#stx-pair? _tl8326483305_)
                                    (let ((_e8326983308_
                                           (gx#syntax-e _tl8326483305_)))
                                      (let ((_hd8326883312_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8326983308_)))
                                            (_tl8326783315_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8326983308_))))
                                        (if (gx#stx-pair? _tl8326783315_)
                                            (let ((_e8327283318_
                                                   (gx#syntax-e
                                                    _tl8326783315_)))
                                              (let ((_hd8327183322_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8327283318_)))
                                                    (_tl8327083325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8327283318_))))
                                                (if (gx#stx-pair?
                                                     _tl8327083325_)
                                                    (let ((_e8327583328_
                                                           (gx#syntax-e
                                                            _tl8327083325_)))
                                                      (let ((_hd8327483332_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8327583328_)))
                    (_tl8327383335_
                     (let () (declare (not safe)) (##cdr _e8327583328_))))
                (if (gx#stx-null? _tl8327383335_)
                    ((lambda (_L83338_ _L83340_ _L83341_ _L83342_)
                       (let ((__tmp89057 (gx#datum->syntax '#f 'if))
                             (__tmp89011
                              (let ((__tmp89054
                                     (let ((__tmp89056
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp89055
                                            (let ()
                                              (declare (not safe))
                                              (cons _L83342_ '()))))
                                       (declare (not safe))
                                       (cons __tmp89056 __tmp89055)))
                                    (__tmp89012
                                     (let ((__tmp89017
                                            (let ((__tmp89053
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp89018
                                                   (let ((__tmp89047
                                                          (let ((__tmp89052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp89048
                         (let ((__tmp89049
                                (let ((__tmp89051
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp89050
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83342_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89051 __tmp89050))))
                           (declare (not safe))
                           (cons __tmp89049 '()))))
                    (declare (not safe))
                    (cons __tmp89052 __tmp89048)))
                 (__tmp89019
                  (let ((__tmp89020
                         (let ((__tmp89046 (gx#datum->syntax '#f 'cond))
                               (__tmp89021
                                (let ((__tmp89029
                                       (let ((__tmp89033
                                              (let ((__tmp89045
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp89034
                                                     (let ((__tmp89041
                                                            (let ((__tmp89044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp89042
                           (let ((__tmp89043 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp89043 '()))))
                      (declare (not safe))
                      (cons __tmp89044 __tmp89042)))
                   (__tmp89035
                    (let ((__tmp89036
                           (let ((__tmp89040
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp89037
                                  (let ((__tmp89039
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89038
                                         (let ()
                                           (declare (not safe))
                                           (cons _L83341_ '()))))
                                    (declare (not safe))
                                    (cons __tmp89039 __tmp89038))))
                             (declare (not safe))
                             (cons __tmp89040 __tmp89037))))
                      (declare (not safe))
                      (cons __tmp89036 '()))))
               (declare (not safe))
               (cons __tmp89041 __tmp89035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89045 __tmp89034)))
                                             (__tmp89030
                                              (let ((__tmp89032
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp89031
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L83340_ '()))))
                                                (declare (not safe))
                                                (cons __tmp89032 __tmp89031))))
                                         (declare (not safe))
                                         (cons __tmp89033 __tmp89030)))
                                      (__tmp89022
                                       (let ((__tmp89023
                                              (let ((__tmp89028
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp89024
                                                     (let ((__tmp89025
                                                            (let ((__tmp89026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89027
                                  (let ()
                                    (declare (not safe))
                                    (cons _L83341_ '()))))
                             (declare (not safe))
                             (cons _L83342_ __tmp89027))))
                      (declare (not safe))
                      (cons _L83338_ __tmp89026))))
               (declare (not safe))
               (cons __tmp89025 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89028 __tmp89024))))
                                         (declare (not safe))
                                         (cons __tmp89023 '()))))
                                  (declare (not safe))
                                  (cons __tmp89029 __tmp89022))))
                           (declare (not safe))
                           (cons __tmp89046 __tmp89021))))
                    (declare (not safe))
                    (cons __tmp89020 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89047
                                                           __tmp89019))))
                                              (declare (not safe))
                                              (cons __tmp89053 __tmp89018)))
                                           (__tmp89013
                                            (let ((__tmp89014
                                                   (let ((__tmp89015
                                                          (let ((__tmp89016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L83341_ '()))))
                    (declare (not safe))
                    (cons _L83342_ __tmp89016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83338_
                                                           __tmp89015))))
                                              (declare (not safe))
                                              (cons __tmp89014 '()))))
                                       (declare (not safe))
                                       (cons __tmp89017 __tmp89013))))
                                (declare (not safe))
                                (cons __tmp89054 __tmp89012))))
                         (declare (not safe))
                         (cons __tmp89057 __tmp89011)))
                     _hd8327483332_
                     _hd8327183322_
                     _hd8326883312_
                     _hd8326583302_)
                    (_g8325583281_ _g8325683285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8325583281_
                                                     _g8325683285_))))
                                            (_g8325583281_ _g8325683285_))))
                                    (_g8325583281_ _g8325683285_))))
                            (_g8325583281_ _g8325683285_))))
                    (_g8325583281_ _g8325683285_)))))
        (_g8325483364_ _$stx83251_)))))
