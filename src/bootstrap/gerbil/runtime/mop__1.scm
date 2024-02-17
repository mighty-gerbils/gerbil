(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx82478_)
      (let* ((___stx8857788578_ _$stx82478_)
             (_g8248382512_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8857788578_))))
        (let ((___kont8858088581_
               (lambda (_L82605_ _L82607_)
                 (let ((__tmp88839 (gx#datum->syntax '#f '##fx=))
                       (__tmp88833
                        (let ((__tmp88835
                               (let ((__tmp88838
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88836
                                      (let ((__tmp88837
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82605_ '()))))
                                        (declare (not safe))
                                        (cons _L82607_ __tmp88837))))
                                 (declare (not safe))
                                 (cons __tmp88838 __tmp88836)))
                              (__tmp88834
                               (let ()
                                 (declare (not safe))
                                 (cons _L82605_ '()))))
                          (declare (not safe))
                          (cons __tmp88835 __tmp88834))))
                   (declare (not safe))
                   (cons __tmp88839 __tmp88833))))
              (___kont8858288583_
               (lambda (_L82549_ _L82551_)
                 (let ((__tmp88852 (gx#datum->syntax '#f 'let))
                       (__tmp88840
                        (let ((__tmp88850
                               (let ((__tmp88851
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82549_ '()))))
                                 (declare (not safe))
                                 (cons _L82549_ __tmp88851)))
                              (__tmp88841
                               (let ((__tmp88842
                                      (let ((__tmp88849
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88843
                                             (let ((__tmp88845
                                                    (let ((__tmp88848
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88846
                                                           (let ((__tmp88847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82549_ '()))))
                     (declare (not safe))
                     (cons _L82551_ __tmp88847))))
              (declare (not safe))
              (cons __tmp88848 __tmp88846)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88844
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L82549_ '()))))
                                               (declare (not safe))
                                               (cons __tmp88845 __tmp88844))))
                                        (declare (not safe))
                                        (cons __tmp88849 __tmp88843))))
                                 (declare (not safe))
                                 (cons __tmp88842 '()))))
                          (declare (not safe))
                          (cons __tmp88850 __tmp88841))))
                   (declare (not safe))
                   (cons __tmp88852 __tmp88840)))))
          (let ((___match8860488605_
                 (lambda (_e8248982575_
                          _hd8248882579_
                          _tl8248782582_
                          _e8249282585_
                          _hd8249182589_
                          _tl8249082592_
                          _e8249582595_
                          _hd8249482599_
                          _tl8249382602_)
                   (let ((_L82605_ _hd8249482599_) (_L82607_ _hd8249182589_))
                     (if (or (gx#identifier? _L82605_)
                             (gx#stx-fixnum? _L82605_))
                         (___kont8858088581_ _L82605_ _L82607_)
                         (___kont8858288583_
                          _hd8249482599_
                          _hd8249182589_))))))
            (if (gx#stx-pair? ___stx8857788578_)
                (let ((_e8248982575_ (gx#syntax-e ___stx8857788578_)))
                  (let ((_tl8248782582_
                         (let () (declare (not safe)) (##cdr _e8248982575_)))
                        (_hd8248882579_
                         (let () (declare (not safe)) (##car _e8248982575_))))
                    (if (gx#stx-pair? _tl8248782582_)
                        (let ((_e8249282585_ (gx#syntax-e _tl8248782582_)))
                          (let ((_tl8249082592_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8249282585_)))
                                (_hd8249182589_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8249282585_))))
                            (if (gx#stx-pair? _tl8249082592_)
                                (let ((_e8249582595_
                                       (gx#syntax-e _tl8249082592_)))
                                  (let ((_tl8249382602_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8249582595_)))
                                        (_hd8249482599_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8249582595_))))
                                    (if (gx#stx-null? _tl8249382602_)
                                        (___match8860488605_
                                         _e8248982575_
                                         _hd8248882579_
                                         _tl8248782582_
                                         _e8249282585_
                                         _hd8249182589_
                                         _tl8249082592_
                                         _e8249582595_
                                         _hd8249482599_
                                         _tl8249382602_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8248382512_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8248382512_)))))
                        (let () (declare (not safe)) (_g8248382512_)))))
                (let () (declare (not safe)) (_g8248382512_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx82630_)
      (let* ((___stx8862788628_ _$stx82630_)
             (_g8263582664_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8862788628_))))
        (let ((___kont8863088631_
               (lambda (_L82756_ _L82758_)
                 (let ((__tmp88859 (gx#datum->syntax '#f '##fx=))
                       (__tmp88853
                        (let ((__tmp88855
                               (let ((__tmp88858
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88856
                                      (let ((__tmp88857
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82756_ '()))))
                                        (declare (not safe))
                                        (cons _L82758_ __tmp88857))))
                                 (declare (not safe))
                                 (cons __tmp88858 __tmp88856)))
                              (__tmp88854
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp88855 __tmp88854))))
                   (declare (not safe))
                   (cons __tmp88859 __tmp88853))))
              (___kont8863288633_
               (lambda (_L82701_ _L82703_)
                 (let ((__tmp88872 (gx#datum->syntax '#f 'let))
                       (__tmp88860
                        (let ((__tmp88870
                               (let ((__tmp88871
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82701_ '()))))
                                 (declare (not safe))
                                 (cons _L82701_ __tmp88871)))
                              (__tmp88861
                               (let ((__tmp88862
                                      (let ((__tmp88869
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88863
                                             (let ((__tmp88865
                                                    (let ((__tmp88868
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88866
                                                           (let ((__tmp88867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82701_ '()))))
                     (declare (not safe))
                     (cons _L82703_ __tmp88867))))
              (declare (not safe))
              (cons __tmp88868 __tmp88866)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88864
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp88865 __tmp88864))))
                                        (declare (not safe))
                                        (cons __tmp88869 __tmp88863))))
                                 (declare (not safe))
                                 (cons __tmp88862 '()))))
                          (declare (not safe))
                          (cons __tmp88870 __tmp88861))))
                   (declare (not safe))
                   (cons __tmp88872 __tmp88860)))))
          (let ((___match8865488655_
                 (lambda (_e8264182726_
                          _hd8264082730_
                          _tl8263982733_
                          _e8264482736_
                          _hd8264382740_
                          _tl8264282743_
                          _e8264782746_
                          _hd8264682750_
                          _tl8264582753_)
                   (let ((_L82756_ _hd8264682750_) (_L82758_ _hd8264382740_))
                     (if (or (gx#identifier? _L82756_)
                             (gx#stx-fixnum? _L82756_))
                         (___kont8863088631_ _L82756_ _L82758_)
                         (___kont8863288633_
                          _hd8264682750_
                          _hd8264382740_))))))
            (if (gx#stx-pair? ___stx8862788628_)
                (let ((_e8264182726_ (gx#syntax-e ___stx8862788628_)))
                  (let ((_tl8263982733_
                         (let () (declare (not safe)) (##cdr _e8264182726_)))
                        (_hd8264082730_
                         (let () (declare (not safe)) (##car _e8264182726_))))
                    (if (gx#stx-pair? _tl8263982733_)
                        (let ((_e8264482736_ (gx#syntax-e _tl8263982733_)))
                          (let ((_tl8264282743_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8264482736_)))
                                (_hd8264382740_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8264482736_))))
                            (if (gx#stx-pair? _tl8264282743_)
                                (let ((_e8264782746_
                                       (gx#syntax-e _tl8264282743_)))
                                  (let ((_tl8264582753_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8264782746_)))
                                        (_hd8264682750_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8264782746_))))
                                    (if (gx#stx-null? _tl8264582753_)
                                        (___match8865488655_
                                         _e8264182726_
                                         _hd8264082730_
                                         _tl8263982733_
                                         _e8264482736_
                                         _hd8264382740_
                                         _tl8264282743_
                                         _e8264782746_
                                         _hd8264682750_
                                         _tl8264582753_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8263582664_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8263582664_)))))
                        (let () (declare (not safe)) (_g8263582664_)))))
                (let () (declare (not safe)) (_g8263582664_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx82781_)
      (let* ((_g8278482805_
              (lambda (_g8278582801_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8278582801_)))
             (_g8278383033_
              (lambda (_g8278582809_)
                (if (gx#stx-pair? _g8278582809_)
                    (let ((_e8279082812_ (gx#syntax-e _g8278582809_)))
                      (let ((_hd8278982816_
                             (let ()
                               (declare (not safe))
                               (##car _e8279082812_)))
                            (_tl8278882819_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8279082812_))))
                        (if (gx#stx-pair? _tl8278882819_)
                            (let ((_e8279382822_ (gx#syntax-e _tl8278882819_)))
                              (let ((_hd8279282826_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8279382822_)))
                                    (_tl8279182829_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8279382822_))))
                                (if (gx#stx-pair? _hd8279282826_)
                                    (let ((_e8279682832_
                                           (gx#syntax-e _hd8279282826_)))
                                      (let ((_hd8279582836_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8279682832_)))
                                            (_tl8279482839_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8279682832_))))
                                        (if (gx#stx-pair? _tl8279482839_)
                                            (let ((_e8279982842_
                                                   (gx#syntax-e
                                                    _tl8279482839_)))
                                              (let ((_hd8279882846_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8279982842_)))
                                                    (_tl8279782849_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8279982842_))))
                                                (if (gx#stx-null?
                                                     _tl8279782849_)
                                                    (if (gx#stx-null?
                                                         _tl8279182829_)
                                                        ((lambda (_L82852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L82854_)
                   (let* ((_g8287282880_
                           (lambda (_g8287382876_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8287382876_)))
                          (_g8287183029_
                           (lambda (_g8287382884_)
                             ((lambda (_L82887_)
                                (let ()
                                  (let* ((_g8289982907_
                                          (lambda (_g8290082903_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8290082903_)))
                                         (_g8289883025_
                                          (lambda (_g8290082911_)
                                            ((lambda (_L82914_)
                                               (let ()
                                                 (let* ((_g8292782935_
                                                         (lambda (_g8292882931_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8292882931_)))
                                                        (_g8292683021_
                                                         (lambda (_g8292882939_)
                                                           ((lambda (_L82942_)
                                                              (let ()
                                                                (let* ((_g8295582963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8295682959_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8295682959_)))
                               (_g8295483017_
                                (lambda (_g8295682967_)
                                  ((lambda (_L82970_)
                                     (let ()
                                       (let* ((_g8298382991_
                                               (lambda (_g8298482987_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8298482987_)))
                                              (_g8298283013_
                                               (lambda (_g8298482995_)
                                                 ((lambda (_L82998_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp89005
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp88873
                                                               (let ((__tmp88975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89004 (gx#datum->syntax '#f 'def))
                                    (__tmp88976
                                     (let ((__tmp88977
                                            (let ((__tmp88978
                                                   (let ((__tmp89003
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp88979
                                                          (let ((__tmp88998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89002
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp88999
                                (let ((__tmp89000
                                       (let ((__tmp89001
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L82854_ __tmp89001))))
                                  (declare (not safe))
                                  (cons _L82887_ __tmp89000))))
                           (declare (not safe))
                           (cons __tmp89002 __tmp88999)))
                        (__tmp88980
                         (let ((__tmp88981
                                (let ((__tmp88997
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp88982
                                       (let ((__tmp88995
                                              (let ((__tmp88996
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp88996 '())))
                                             (__tmp88983
                                              (let ((__tmp88984
                                                     (let ((__tmp88994
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp88985
                                                            (let ((__tmp88993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp88986
                           (let ((__tmp88987
                                  (let ((__tmp88992
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp88988
                                         (let ((__tmp88989
                                                (let ((__tmp88991
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp88990
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L82854_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp88991
                                                        __tmp88990))))
                                           (declare (not safe))
                                           (cons __tmp88989 '()))))
                                    (declare (not safe))
                                    (cons __tmp88992 __tmp88988))))
                             (declare (not safe))
                             (cons _L82852_ __tmp88987))))
                      (declare (not safe))
                      (cons __tmp88993 __tmp88986))))
               (declare (not safe))
               (cons __tmp88994 __tmp88985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88984 '()))))
                                         (declare (not safe))
                                         (cons __tmp88995 __tmp88983))))
                                  (declare (not safe))
                                  (cons __tmp88997 __tmp88982))))
                           (declare (not safe))
                           (cons __tmp88981 '()))))
                    (declare (not safe))
                    (cons __tmp88998 __tmp88980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89003
                                                           __tmp88979))))
                                              (declare (not safe))
                                              (cons __tmp88978 '()))))
                                       (declare (not safe))
                                       (cons _L82914_ __tmp88977))))
                                (declare (not safe))
                                (cons __tmp89004 __tmp88976)))
                             (__tmp88874
                              (let ((__tmp88945
                                     (let ((__tmp88974
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp88946
                                            (let ((__tmp88947
                                                   (let ((__tmp88948
                                                          (let ((__tmp88973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp88949
                         (let ((__tmp88968
                                (let ((__tmp88972
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp88969
                                       (let ((__tmp88970
                                              (let ((__tmp88971
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L82854_ __tmp88971))))
                                         (declare (not safe))
                                         (cons _L82887_ __tmp88970))))
                                  (declare (not safe))
                                  (cons __tmp88972 __tmp88969)))
                               (__tmp88950
                                (let ((__tmp88951
                                       (let ((__tmp88967
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp88952
                                              (let ((__tmp88965
                                                     (let ((__tmp88966
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp88966 '())))
                                                    (__tmp88953
                                                     (let ((__tmp88954
                                                            (let ((__tmp88964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp88955
                           (let ((__tmp88963 (gx#datum->syntax '#f 'klass))
                                 (__tmp88956
                                  (let ((__tmp88957
                                         (let ((__tmp88962
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp88958
                                                (let ((__tmp88959
                                                       (let ((__tmp88961
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp88960
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L82854_ '()))))
                 (declare (not safe))
                 (cons __tmp88961 __tmp88960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88959 '()))))
                                           (declare (not safe))
                                           (cons __tmp88962 __tmp88958))))
                                    (declare (not safe))
                                    (cons _L82852_ __tmp88957))))
                             (declare (not safe))
                             (cons __tmp88963 __tmp88956))))
                      (declare (not safe))
                      (cons __tmp88964 __tmp88955))))
               (declare (not safe))
               (cons __tmp88954 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88965 __tmp88953))))
                                         (declare (not safe))
                                         (cons __tmp88967 __tmp88952))))
                                  (declare (not safe))
                                  (cons __tmp88951 '()))))
                           (declare (not safe))
                           (cons __tmp88968 __tmp88950))))
                    (declare (not safe))
                    (cons __tmp88973 __tmp88949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88948 '()))))
                                              (declare (not safe))
                                              (cons _L82942_ __tmp88947))))
                                       (declare (not safe))
                                       (cons __tmp88974 __tmp88946)))
                                    (__tmp88875
                                     (let ((__tmp88911
                                            (let ((__tmp88944
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp88912
                                                   (let ((__tmp88913
                                                          (let ((__tmp88914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88943
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp88915
                                (let ((__tmp88938
                                       (let ((__tmp88942
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp88939
                                              (let ((__tmp88940
                                                     (let ((__tmp88941
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L82854_
                                                             __tmp88941))))
                                                (declare (not safe))
                                                (cons _L82887_ __tmp88940))))
                                         (declare (not safe))
                                         (cons __tmp88942 __tmp88939)))
                                      (__tmp88916
                                       (let ((__tmp88917
                                              (let ((__tmp88937
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp88918
                                                     (let ((__tmp88933
                                                            (let ((__tmp88936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp88934
                           (let ((__tmp88935 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp88935 '()))))
                      (declare (not safe))
                      (cons __tmp88936 __tmp88934)))
                   (__tmp88919
                    (let ((__tmp88920
                           (let ((__tmp88932
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp88921
                                  (let ((__tmp88931
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp88922
                                         (let ((__tmp88930
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp88923
                                                (let ((__tmp88924
                                                       (let ((__tmp88929
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp88925
                                                              (let ((__tmp88926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88928 (gx#datum->syntax '#f 'quote))
                                   (__tmp88927
                                    (let ()
                                      (declare (not safe))
                                      (cons _L82854_ '()))))
                               (declare (not safe))
                               (cons __tmp88928 __tmp88927))))
                        (declare (not safe))
                        (cons __tmp88926 '()))))
                 (declare (not safe))
                 (cons __tmp88929 __tmp88925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L82852_ __tmp88924))))
                                           (declare (not safe))
                                           (cons __tmp88930 __tmp88923))))
                                    (declare (not safe))
                                    (cons __tmp88931 __tmp88922))))
                             (declare (not safe))
                             (cons __tmp88932 __tmp88921))))
                      (declare (not safe))
                      (cons __tmp88920 '()))))
               (declare (not safe))
               (cons __tmp88933 __tmp88919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88937 __tmp88918))))
                                         (declare (not safe))
                                         (cons __tmp88917 '()))))
                                  (declare (not safe))
                                  (cons __tmp88938 __tmp88916))))
                           (declare (not safe))
                           (cons __tmp88943 __tmp88915))))
                    (declare (not safe))
                    (cons __tmp88914 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L82970_
                                                           __tmp88913))))
                                              (declare (not safe))
                                              (cons __tmp88944 __tmp88912)))
                                           (__tmp88876
                                            (let ((__tmp88877
                                                   (let ((__tmp88910
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp88878
                                                          (let ((__tmp88879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88880
                                (let ((__tmp88909
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp88881
                                       (let ((__tmp88904
                                              (let ((__tmp88908
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp88905
                                                     (let ((__tmp88906
                                                            (let ((__tmp88907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L82854_ __tmp88907))))
               (declare (not safe))
               (cons _L82887_ __tmp88906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88908 __tmp88905)))
                                             (__tmp88882
                                              (let ((__tmp88883
                                                     (let ((__tmp88903
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp88884
                                                            (let ((__tmp88899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp88902 (gx#datum->syntax '#f 'klass))
                                 (__tmp88900
                                  (let ((__tmp88901
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp88901 '()))))
                             (declare (not safe))
                             (cons __tmp88902 __tmp88900)))
                          (__tmp88885
                           (let ((__tmp88886
                                  (let ((__tmp88898
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp88887
                                         (let ((__tmp88897
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp88888
                                                (let ((__tmp88896
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp88889
                                                       (let ((__tmp88890
                                                              (let ((__tmp88895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp88891
                             (let ((__tmp88892
                                    (let ((__tmp88894
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp88893
                                           (let ()
                                             (declare (not safe))
                                             (cons _L82854_ '()))))
                                      (declare (not safe))
                                      (cons __tmp88894 __tmp88893))))
                               (declare (not safe))
                               (cons __tmp88892 '()))))
                        (declare (not safe))
                        (cons __tmp88895 __tmp88891))))
                 (declare (not safe))
                 (cons _L82852_ __tmp88890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88896
                                                        __tmp88889))))
                                           (declare (not safe))
                                           (cons __tmp88897 __tmp88888))))
                                    (declare (not safe))
                                    (cons __tmp88898 __tmp88887))))
                             (declare (not safe))
                             (cons __tmp88886 '()))))
                      (declare (not safe))
                      (cons __tmp88899 __tmp88885))))
               (declare (not safe))
               (cons __tmp88903 __tmp88884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88883 '()))))
                                         (declare (not safe))
                                         (cons __tmp88904 __tmp88882))))
                                  (declare (not safe))
                                  (cons __tmp88909 __tmp88881))))
                           (declare (not safe))
                           (cons __tmp88880 '()))))
                    (declare (not safe))
                    (cons _L82998_ __tmp88879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88910
                                                           __tmp88878))))
                                              (declare (not safe))
                                              (cons __tmp88877 '()))))
                                       (declare (not safe))
                                       (cons __tmp88911 __tmp88876))))
                                (declare (not safe))
                                (cons __tmp88945 __tmp88875))))
                         (declare (not safe))
                         (cons __tmp88975 __tmp88874))))
                  (declare (not safe))
                  (cons __tmp89005 __tmp88873)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8298482995_))))
                                         (_g8298283013_
                                          (gx#stx-identifier
                                           _L82854_
                                           '"&"
                                           _L82970_)))))
                                   _g8295682967_))))
                          (_g8295483017_
                           (gx#stx-identifier _L82854_ _L82914_ '"-set!")))))
                    _g8292882939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8292683021_
                                                    (gx#stx-identifier
                                                     _L82854_
                                                     '"&"
                                                     _L82914_)))))
                                             _g8290082911_))))
                                    (_g8289883025_
                                     (gx#stx-identifier
                                      _L82854_
                                      '"class-type-"
                                      _L82854_)))))
                              _g8287382884_))))
                     (_g8287183029_ (gx#core-quote-syntax 'class::t))))
                 _hd8279882846_
                 _hd8279582836_)
                (_g8278482805_ _g8278582809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8278482805_
                                                     _g8278582809_))))
                                            (_g8278482805_ _g8278582809_))))
                                    (_g8278482805_ _g8278582809_))))
                            (_g8278482805_ _g8278582809_))))
                    (_g8278482805_ _g8278582809_)))))
        (_g8278383033_ _stx82781_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx83037_)
      (let* ((_g8304183070_
              (lambda (_g8304283066_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8304283066_)))
             (_g8304083170_
              (lambda (_g8304283074_)
                (if (gx#stx-pair? _g8304283074_)
                    (let ((_e8304783077_ (gx#syntax-e _g8304283074_)))
                      (let ((_hd8304683081_
                             (let ()
                               (declare (not safe))
                               (##car _e8304783077_)))
                            (_tl8304583084_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8304783077_))))
                        (if (gx#stx-pair/null? _tl8304583084_)
                            (let ((_g89006_
                                   (gx#syntax-split-splice _tl8304583084_ '0)))
                              (begin
                                (let ((_g89007_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g89006_)
                                             (##vector-length _g89006_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g89007_ 2)))
                                      (error "Context expects 2 values"
                                             _g89007_)))
                                (let ((_target8304883087_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89006_ 0)))
                                      (_tl8305083090_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89006_ 1))))
                                  (if (gx#stx-null? _tl8305083090_)
                                      (letrec ((_loop8305183093_
                                                (lambda (_hd8304983097_
                                                         _field8305583100_
                                                         _slot8305683102_)
                                                  (if (gx#stx-pair?
                                                       _hd8304983097_)
                                                      (let ((_e8305283105_
                                                             (gx#syntax-e
                                                              _hd8304983097_)))
                                                        (let ((_lp-hd8305383109_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8305283105_)))
                      (_lp-tl8305483112_
                       (let () (declare (not safe)) (##cdr _e8305283105_))))
                  (if (gx#stx-pair? _lp-hd8305383109_)
                      (let ((_e8306183115_ (gx#syntax-e _lp-hd8305383109_)))
                        (let ((_hd8306083119_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8306183115_)))
                              (_tl8305983122_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8306183115_))))
                          (if (gx#stx-pair? _tl8305983122_)
                              (let ((_e8306483125_
                                     (gx#syntax-e _tl8305983122_)))
                                (let ((_hd8306383129_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8306483125_)))
                                      (_tl8306283132_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8306483125_))))
                                  (if (gx#stx-null? _tl8306283132_)
                                      (_loop8305183093_
                                       _lp-tl8305483112_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8306383129_
                                               _field8305583100_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8306083119_
                                               _slot8305683102_)))
                                      (_g8304183070_ _g8304283074_))))
                              (_g8304183070_ _g8304283074_))))
                      (_g8304183070_ _g8304283074_))))
              (let ((_field8305783135_ (reverse _field8305583100_))
                    (_slot8305883138_ (reverse _slot8305683102_)))
                ((lambda (_L83141_ _L83143_)
                   (let ((__tmp89015 (gx#datum->syntax '#f 'begin))
                         (__tmp89008
                          (begin
                            (gx#syntax-check-splice-targets _L83141_ _L83143_)
                            (let ((__tmp89009
                                   (lambda (_g8315883162_
                                            _g8315983165_
                                            _g8316083167_)
                                     (let ((__tmp89010
                                            (let ((__tmp89014
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp89011
                                                   (let ((__tmp89012
                                                          (let ((__tmp89013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8315883162_ '()))))
                    (declare (not safe))
                    (cons _g8315983165_ __tmp89013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89012 '()))))
                                              (declare (not safe))
                                              (cons __tmp89014 __tmp89011))))
                                       (declare (not safe))
                                       (cons __tmp89010 _g8316083167_)))))
                              (declare (not safe))
                              (foldr2 __tmp89009 '() _L83141_ _L83143_)))))
                     (declare (not safe))
                     (cons __tmp89015 __tmp89008)))
                 _field8305783135_
                 _slot8305883138_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8305183093_
                                         _target8304883087_
                                         '()
                                         '()))
                                      (_g8304183070_ _g8304283074_)))))
                            (_g8304183070_ _g8304283074_))))
                    (_g8304183070_ _g8304283074_)))))
        (_g8304083170_ _$stx83037_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx83175_)
      (let* ((_g8317983205_
              (lambda (_g8318083201_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8318083201_)))
             (_g8317883288_
              (lambda (_g8318083209_)
                (if (gx#stx-pair? _g8318083209_)
                    (let ((_e8318783212_ (gx#syntax-e _g8318083209_)))
                      (let ((_hd8318683216_
                             (let ()
                               (declare (not safe))
                               (##car _e8318783212_)))
                            (_tl8318583219_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8318783212_))))
                        (if (gx#stx-pair? _tl8318583219_)
                            (let ((_e8319083222_ (gx#syntax-e _tl8318583219_)))
                              (let ((_hd8318983226_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8319083222_)))
                                    (_tl8318883229_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8319083222_))))
                                (if (gx#stx-pair? _tl8318883229_)
                                    (let ((_e8319383232_
                                           (gx#syntax-e _tl8318883229_)))
                                      (let ((_hd8319283236_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8319383232_)))
                                            (_tl8319183239_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8319383232_))))
                                        (if (gx#stx-pair? _tl8319183239_)
                                            (let ((_e8319683242_
                                                   (gx#syntax-e
                                                    _tl8319183239_)))
                                              (let ((_hd8319583246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8319683242_)))
                                                    (_tl8319483249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8319683242_))))
                                                (if (gx#stx-pair?
                                                     _tl8319483249_)
                                                    (let ((_e8319983252_
                                                           (gx#syntax-e
                                                            _tl8319483249_)))
                                                      (let ((_hd8319883256_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8319983252_)))
                    (_tl8319783259_
                     (let () (declare (not safe)) (##cdr _e8319983252_))))
                (if (gx#stx-null? _tl8319783259_)
                    ((lambda (_L83262_ _L83264_ _L83265_ _L83266_)
                       (let ((__tmp89062 (gx#datum->syntax '#f 'if))
                             (__tmp89016
                              (let ((__tmp89059
                                     (let ((__tmp89061
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp89060
                                            (let ()
                                              (declare (not safe))
                                              (cons _L83266_ '()))))
                                       (declare (not safe))
                                       (cons __tmp89061 __tmp89060)))
                                    (__tmp89017
                                     (let ((__tmp89022
                                            (let ((__tmp89058
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp89023
                                                   (let ((__tmp89052
                                                          (let ((__tmp89057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp89053
                         (let ((__tmp89054
                                (let ((__tmp89056
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp89055
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83266_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89056 __tmp89055))))
                           (declare (not safe))
                           (cons __tmp89054 '()))))
                    (declare (not safe))
                    (cons __tmp89057 __tmp89053)))
                 (__tmp89024
                  (let ((__tmp89025
                         (let ((__tmp89051 (gx#datum->syntax '#f 'cond))
                               (__tmp89026
                                (let ((__tmp89034
                                       (let ((__tmp89038
                                              (let ((__tmp89050
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp89039
                                                     (let ((__tmp89046
                                                            (let ((__tmp89049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp89047
                           (let ((__tmp89048 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp89048 '()))))
                      (declare (not safe))
                      (cons __tmp89049 __tmp89047)))
                   (__tmp89040
                    (let ((__tmp89041
                           (let ((__tmp89045
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp89042
                                  (let ((__tmp89044
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89043
                                         (let ()
                                           (declare (not safe))
                                           (cons _L83265_ '()))))
                                    (declare (not safe))
                                    (cons __tmp89044 __tmp89043))))
                             (declare (not safe))
                             (cons __tmp89045 __tmp89042))))
                      (declare (not safe))
                      (cons __tmp89041 '()))))
               (declare (not safe))
               (cons __tmp89046 __tmp89040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89050 __tmp89039)))
                                             (__tmp89035
                                              (let ((__tmp89037
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp89036
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L83264_ '()))))
                                                (declare (not safe))
                                                (cons __tmp89037 __tmp89036))))
                                         (declare (not safe))
                                         (cons __tmp89038 __tmp89035)))
                                      (__tmp89027
                                       (let ((__tmp89028
                                              (let ((__tmp89033
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp89029
                                                     (let ((__tmp89030
                                                            (let ((__tmp89031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89032
                                  (let ()
                                    (declare (not safe))
                                    (cons _L83265_ '()))))
                             (declare (not safe))
                             (cons _L83266_ __tmp89032))))
                      (declare (not safe))
                      (cons _L83262_ __tmp89031))))
               (declare (not safe))
               (cons __tmp89030 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89033 __tmp89029))))
                                         (declare (not safe))
                                         (cons __tmp89028 '()))))
                                  (declare (not safe))
                                  (cons __tmp89034 __tmp89027))))
                           (declare (not safe))
                           (cons __tmp89051 __tmp89026))))
                    (declare (not safe))
                    (cons __tmp89025 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89052
                                                           __tmp89024))))
                                              (declare (not safe))
                                              (cons __tmp89058 __tmp89023)))
                                           (__tmp89018
                                            (let ((__tmp89019
                                                   (let ((__tmp89020
                                                          (let ((__tmp89021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L83265_ '()))))
                    (declare (not safe))
                    (cons _L83266_ __tmp89021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83262_
                                                           __tmp89020))))
                                              (declare (not safe))
                                              (cons __tmp89019 '()))))
                                       (declare (not safe))
                                       (cons __tmp89022 __tmp89018))))
                                (declare (not safe))
                                (cons __tmp89059 __tmp89017))))
                         (declare (not safe))
                         (cons __tmp89062 __tmp89016)))
                     _hd8319883256_
                     _hd8319583246_
                     _hd8319283236_
                     _hd8318983226_)
                    (_g8317983205_ _g8318083209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8317983205_
                                                     _g8318083209_))))
                                            (_g8317983205_ _g8318083209_))))
                                    (_g8317983205_ _g8318083209_))))
                            (_g8317983205_ _g8318083209_))))
                    (_g8317983205_ _g8318083209_)))))
        (_g8317883288_ _$stx83175_)))))
