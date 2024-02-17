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
                 (let ((__tmp88836 (gx#datum->syntax '#f '##fx=))
                       (__tmp88830
                        (let ((__tmp88832
                               (let ((__tmp88835
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88833
                                      (let ((__tmp88834
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82605_ '()))))
                                        (declare (not safe))
                                        (cons _L82607_ __tmp88834))))
                                 (declare (not safe))
                                 (cons __tmp88835 __tmp88833)))
                              (__tmp88831
                               (let ()
                                 (declare (not safe))
                                 (cons _L82605_ '()))))
                          (declare (not safe))
                          (cons __tmp88832 __tmp88831))))
                   (declare (not safe))
                   (cons __tmp88836 __tmp88830))))
              (___kont8858288583_
               (lambda (_L82549_ _L82551_)
                 (let ((__tmp88849 (gx#datum->syntax '#f 'let))
                       (__tmp88837
                        (let ((__tmp88847
                               (let ((__tmp88848
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82549_ '()))))
                                 (declare (not safe))
                                 (cons _L82549_ __tmp88848)))
                              (__tmp88838
                               (let ((__tmp88839
                                      (let ((__tmp88846
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88840
                                             (let ((__tmp88842
                                                    (let ((__tmp88845
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88843
                                                           (let ((__tmp88844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82549_ '()))))
                     (declare (not safe))
                     (cons _L82551_ __tmp88844))))
              (declare (not safe))
              (cons __tmp88845 __tmp88843)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88841
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L82549_ '()))))
                                               (declare (not safe))
                                               (cons __tmp88842 __tmp88841))))
                                        (declare (not safe))
                                        (cons __tmp88846 __tmp88840))))
                                 (declare (not safe))
                                 (cons __tmp88839 '()))))
                          (declare (not safe))
                          (cons __tmp88847 __tmp88838))))
                   (declare (not safe))
                   (cons __tmp88849 __tmp88837)))))
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
                 (let ((__tmp88856 (gx#datum->syntax '#f '##fx=))
                       (__tmp88850
                        (let ((__tmp88852
                               (let ((__tmp88855
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88853
                                      (let ((__tmp88854
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82756_ '()))))
                                        (declare (not safe))
                                        (cons _L82758_ __tmp88854))))
                                 (declare (not safe))
                                 (cons __tmp88855 __tmp88853)))
                              (__tmp88851
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp88852 __tmp88851))))
                   (declare (not safe))
                   (cons __tmp88856 __tmp88850))))
              (___kont8863288633_
               (lambda (_L82701_ _L82703_)
                 (let ((__tmp88869 (gx#datum->syntax '#f 'let))
                       (__tmp88857
                        (let ((__tmp88867
                               (let ((__tmp88868
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82701_ '()))))
                                 (declare (not safe))
                                 (cons _L82701_ __tmp88868)))
                              (__tmp88858
                               (let ((__tmp88859
                                      (let ((__tmp88866
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88860
                                             (let ((__tmp88862
                                                    (let ((__tmp88865
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88863
                                                           (let ((__tmp88864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82701_ '()))))
                     (declare (not safe))
                     (cons _L82703_ __tmp88864))))
              (declare (not safe))
              (cons __tmp88865 __tmp88863)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88861
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp88862 __tmp88861))))
                                        (declare (not safe))
                                        (cons __tmp88866 __tmp88860))))
                                 (declare (not safe))
                                 (cons __tmp88859 '()))))
                          (declare (not safe))
                          (cons __tmp88867 __tmp88858))))
                   (declare (not safe))
                   (cons __tmp88869 __tmp88857)))))
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
                                                        (let ((__tmp89002
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp88870
                                                               (let ((__tmp88972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89001 (gx#datum->syntax '#f 'def))
                                    (__tmp88973
                                     (let ((__tmp88974
                                            (let ((__tmp88975
                                                   (let ((__tmp89000
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp88976
                                                          (let ((__tmp88995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88999
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp88996
                                (let ((__tmp88997
                                       (let ((__tmp88998
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L82854_ __tmp88998))))
                                  (declare (not safe))
                                  (cons _L82887_ __tmp88997))))
                           (declare (not safe))
                           (cons __tmp88999 __tmp88996)))
                        (__tmp88977
                         (let ((__tmp88978
                                (let ((__tmp88994
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp88979
                                       (let ((__tmp88992
                                              (let ((__tmp88993
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp88993 '())))
                                             (__tmp88980
                                              (let ((__tmp88981
                                                     (let ((__tmp88991
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp88982
                                                            (let ((__tmp88990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp88983
                           (let ((__tmp88984
                                  (let ((__tmp88989
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp88985
                                         (let ((__tmp88986
                                                (let ((__tmp88988
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp88987
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L82854_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp88988
                                                        __tmp88987))))
                                           (declare (not safe))
                                           (cons __tmp88986 '()))))
                                    (declare (not safe))
                                    (cons __tmp88989 __tmp88985))))
                             (declare (not safe))
                             (cons _L82852_ __tmp88984))))
                      (declare (not safe))
                      (cons __tmp88990 __tmp88983))))
               (declare (not safe))
               (cons __tmp88991 __tmp88982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88981 '()))))
                                         (declare (not safe))
                                         (cons __tmp88992 __tmp88980))))
                                  (declare (not safe))
                                  (cons __tmp88994 __tmp88979))))
                           (declare (not safe))
                           (cons __tmp88978 '()))))
                    (declare (not safe))
                    (cons __tmp88995 __tmp88977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89000
                                                           __tmp88976))))
                                              (declare (not safe))
                                              (cons __tmp88975 '()))))
                                       (declare (not safe))
                                       (cons _L82914_ __tmp88974))))
                                (declare (not safe))
                                (cons __tmp89001 __tmp88973)))
                             (__tmp88871
                              (let ((__tmp88942
                                     (let ((__tmp88971
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp88943
                                            (let ((__tmp88944
                                                   (let ((__tmp88945
                                                          (let ((__tmp88970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp88946
                         (let ((__tmp88965
                                (let ((__tmp88969
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp88966
                                       (let ((__tmp88967
                                              (let ((__tmp88968
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L82854_ __tmp88968))))
                                         (declare (not safe))
                                         (cons _L82887_ __tmp88967))))
                                  (declare (not safe))
                                  (cons __tmp88969 __tmp88966)))
                               (__tmp88947
                                (let ((__tmp88948
                                       (let ((__tmp88964
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp88949
                                              (let ((__tmp88962
                                                     (let ((__tmp88963
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp88963 '())))
                                                    (__tmp88950
                                                     (let ((__tmp88951
                                                            (let ((__tmp88961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp88952
                           (let ((__tmp88960 (gx#datum->syntax '#f 'klass))
                                 (__tmp88953
                                  (let ((__tmp88954
                                         (let ((__tmp88959
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp88955
                                                (let ((__tmp88956
                                                       (let ((__tmp88958
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp88957
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L82854_ '()))))
                 (declare (not safe))
                 (cons __tmp88958 __tmp88957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88956 '()))))
                                           (declare (not safe))
                                           (cons __tmp88959 __tmp88955))))
                                    (declare (not safe))
                                    (cons _L82852_ __tmp88954))))
                             (declare (not safe))
                             (cons __tmp88960 __tmp88953))))
                      (declare (not safe))
                      (cons __tmp88961 __tmp88952))))
               (declare (not safe))
               (cons __tmp88951 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88962 __tmp88950))))
                                         (declare (not safe))
                                         (cons __tmp88964 __tmp88949))))
                                  (declare (not safe))
                                  (cons __tmp88948 '()))))
                           (declare (not safe))
                           (cons __tmp88965 __tmp88947))))
                    (declare (not safe))
                    (cons __tmp88970 __tmp88946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88945 '()))))
                                              (declare (not safe))
                                              (cons _L82942_ __tmp88944))))
                                       (declare (not safe))
                                       (cons __tmp88971 __tmp88943)))
                                    (__tmp88872
                                     (let ((__tmp88908
                                            (let ((__tmp88941
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp88909
                                                   (let ((__tmp88910
                                                          (let ((__tmp88911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88940
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp88912
                                (let ((__tmp88935
                                       (let ((__tmp88939
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp88936
                                              (let ((__tmp88937
                                                     (let ((__tmp88938
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L82854_
                                                             __tmp88938))))
                                                (declare (not safe))
                                                (cons _L82887_ __tmp88937))))
                                         (declare (not safe))
                                         (cons __tmp88939 __tmp88936)))
                                      (__tmp88913
                                       (let ((__tmp88914
                                              (let ((__tmp88934
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp88915
                                                     (let ((__tmp88930
                                                            (let ((__tmp88933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp88931
                           (let ((__tmp88932 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp88932 '()))))
                      (declare (not safe))
                      (cons __tmp88933 __tmp88931)))
                   (__tmp88916
                    (let ((__tmp88917
                           (let ((__tmp88929
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp88918
                                  (let ((__tmp88928
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp88919
                                         (let ((__tmp88927
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp88920
                                                (let ((__tmp88921
                                                       (let ((__tmp88926
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp88922
                                                              (let ((__tmp88923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88925 (gx#datum->syntax '#f 'quote))
                                   (__tmp88924
                                    (let ()
                                      (declare (not safe))
                                      (cons _L82854_ '()))))
                               (declare (not safe))
                               (cons __tmp88925 __tmp88924))))
                        (declare (not safe))
                        (cons __tmp88923 '()))))
                 (declare (not safe))
                 (cons __tmp88926 __tmp88922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L82852_ __tmp88921))))
                                           (declare (not safe))
                                           (cons __tmp88927 __tmp88920))))
                                    (declare (not safe))
                                    (cons __tmp88928 __tmp88919))))
                             (declare (not safe))
                             (cons __tmp88929 __tmp88918))))
                      (declare (not safe))
                      (cons __tmp88917 '()))))
               (declare (not safe))
               (cons __tmp88930 __tmp88916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88934 __tmp88915))))
                                         (declare (not safe))
                                         (cons __tmp88914 '()))))
                                  (declare (not safe))
                                  (cons __tmp88935 __tmp88913))))
                           (declare (not safe))
                           (cons __tmp88940 __tmp88912))))
                    (declare (not safe))
                    (cons __tmp88911 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L82970_
                                                           __tmp88910))))
                                              (declare (not safe))
                                              (cons __tmp88941 __tmp88909)))
                                           (__tmp88873
                                            (let ((__tmp88874
                                                   (let ((__tmp88907
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp88875
                                                          (let ((__tmp88876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88877
                                (let ((__tmp88906
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp88878
                                       (let ((__tmp88901
                                              (let ((__tmp88905
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp88902
                                                     (let ((__tmp88903
                                                            (let ((__tmp88904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L82854_ __tmp88904))))
               (declare (not safe))
               (cons _L82887_ __tmp88903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88905 __tmp88902)))
                                             (__tmp88879
                                              (let ((__tmp88880
                                                     (let ((__tmp88900
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp88881
                                                            (let ((__tmp88896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp88899 (gx#datum->syntax '#f 'klass))
                                 (__tmp88897
                                  (let ((__tmp88898
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp88898 '()))))
                             (declare (not safe))
                             (cons __tmp88899 __tmp88897)))
                          (__tmp88882
                           (let ((__tmp88883
                                  (let ((__tmp88895
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp88884
                                         (let ((__tmp88894
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp88885
                                                (let ((__tmp88893
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp88886
                                                       (let ((__tmp88887
                                                              (let ((__tmp88892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp88888
                             (let ((__tmp88889
                                    (let ((__tmp88891
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp88890
                                           (let ()
                                             (declare (not safe))
                                             (cons _L82854_ '()))))
                                      (declare (not safe))
                                      (cons __tmp88891 __tmp88890))))
                               (declare (not safe))
                               (cons __tmp88889 '()))))
                        (declare (not safe))
                        (cons __tmp88892 __tmp88888))))
                 (declare (not safe))
                 (cons _L82852_ __tmp88887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88893
                                                        __tmp88886))))
                                           (declare (not safe))
                                           (cons __tmp88894 __tmp88885))))
                                    (declare (not safe))
                                    (cons __tmp88895 __tmp88884))))
                             (declare (not safe))
                             (cons __tmp88883 '()))))
                      (declare (not safe))
                      (cons __tmp88896 __tmp88882))))
               (declare (not safe))
               (cons __tmp88900 __tmp88881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88880 '()))))
                                         (declare (not safe))
                                         (cons __tmp88901 __tmp88879))))
                                  (declare (not safe))
                                  (cons __tmp88906 __tmp88878))))
                           (declare (not safe))
                           (cons __tmp88877 '()))))
                    (declare (not safe))
                    (cons _L82998_ __tmp88876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88907
                                                           __tmp88875))))
                                              (declare (not safe))
                                              (cons __tmp88874 '()))))
                                       (declare (not safe))
                                       (cons __tmp88908 __tmp88873))))
                                (declare (not safe))
                                (cons __tmp88942 __tmp88872))))
                         (declare (not safe))
                         (cons __tmp88972 __tmp88871))))
                  (declare (not safe))
                  (cons __tmp89002 __tmp88870)))))
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
                            (let ((_g89003_
                                   (gx#syntax-split-splice _tl8304583084_ '0)))
                              (begin
                                (let ((_g89004_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g89003_)
                                             (##vector-length _g89003_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g89004_ 2)))
                                      (error "Context expects 2 values"
                                             _g89004_)))
                                (let ((_target8304883087_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89003_ 0)))
                                      (_tl8305083090_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89003_ 1))))
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
                   (let ((__tmp89012 (gx#datum->syntax '#f 'begin))
                         (__tmp89005
                          (begin
                            (gx#syntax-check-splice-targets _L83141_ _L83143_)
                            (let ((__tmp89006
                                   (lambda (_g8315883162_
                                            _g8315983165_
                                            _g8316083167_)
                                     (let ((__tmp89007
                                            (let ((__tmp89011
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp89008
                                                   (let ((__tmp89009
                                                          (let ((__tmp89010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8315883162_ '()))))
                    (declare (not safe))
                    (cons _g8315983165_ __tmp89010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89009 '()))))
                                              (declare (not safe))
                                              (cons __tmp89011 __tmp89008))))
                                       (declare (not safe))
                                       (cons __tmp89007 _g8316083167_)))))
                              (declare (not safe))
                              (foldr2 __tmp89006 '() _L83141_ _L83143_)))))
                     (declare (not safe))
                     (cons __tmp89012 __tmp89005)))
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
                       (let ((__tmp89059 (gx#datum->syntax '#f 'if))
                             (__tmp89013
                              (let ((__tmp89056
                                     (let ((__tmp89058
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp89057
                                            (let ()
                                              (declare (not safe))
                                              (cons _L83266_ '()))))
                                       (declare (not safe))
                                       (cons __tmp89058 __tmp89057)))
                                    (__tmp89014
                                     (let ((__tmp89019
                                            (let ((__tmp89055
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp89020
                                                   (let ((__tmp89049
                                                          (let ((__tmp89054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp89050
                         (let ((__tmp89051
                                (let ((__tmp89053
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp89052
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83266_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89053 __tmp89052))))
                           (declare (not safe))
                           (cons __tmp89051 '()))))
                    (declare (not safe))
                    (cons __tmp89054 __tmp89050)))
                 (__tmp89021
                  (let ((__tmp89022
                         (let ((__tmp89048 (gx#datum->syntax '#f 'cond))
                               (__tmp89023
                                (let ((__tmp89031
                                       (let ((__tmp89035
                                              (let ((__tmp89047
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp89036
                                                     (let ((__tmp89043
                                                            (let ((__tmp89046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp89044
                           (let ((__tmp89045 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp89045 '()))))
                      (declare (not safe))
                      (cons __tmp89046 __tmp89044)))
                   (__tmp89037
                    (let ((__tmp89038
                           (let ((__tmp89042
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp89039
                                  (let ((__tmp89041
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89040
                                         (let ()
                                           (declare (not safe))
                                           (cons _L83265_ '()))))
                                    (declare (not safe))
                                    (cons __tmp89041 __tmp89040))))
                             (declare (not safe))
                             (cons __tmp89042 __tmp89039))))
                      (declare (not safe))
                      (cons __tmp89038 '()))))
               (declare (not safe))
               (cons __tmp89043 __tmp89037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89047 __tmp89036)))
                                             (__tmp89032
                                              (let ((__tmp89034
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp89033
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L83264_ '()))))
                                                (declare (not safe))
                                                (cons __tmp89034 __tmp89033))))
                                         (declare (not safe))
                                         (cons __tmp89035 __tmp89032)))
                                      (__tmp89024
                                       (let ((__tmp89025
                                              (let ((__tmp89030
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp89026
                                                     (let ((__tmp89027
                                                            (let ((__tmp89028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89029
                                  (let ()
                                    (declare (not safe))
                                    (cons _L83265_ '()))))
                             (declare (not safe))
                             (cons _L83266_ __tmp89029))))
                      (declare (not safe))
                      (cons _L83262_ __tmp89028))))
               (declare (not safe))
               (cons __tmp89027 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89030 __tmp89026))))
                                         (declare (not safe))
                                         (cons __tmp89025 '()))))
                                  (declare (not safe))
                                  (cons __tmp89031 __tmp89024))))
                           (declare (not safe))
                           (cons __tmp89048 __tmp89023))))
                    (declare (not safe))
                    (cons __tmp89022 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89049
                                                           __tmp89021))))
                                              (declare (not safe))
                                              (cons __tmp89055 __tmp89020)))
                                           (__tmp89015
                                            (let ((__tmp89016
                                                   (let ((__tmp89017
                                                          (let ((__tmp89018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L83265_ '()))))
                    (declare (not safe))
                    (cons _L83266_ __tmp89018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83262_
                                                           __tmp89017))))
                                              (declare (not safe))
                                              (cons __tmp89016 '()))))
                                       (declare (not safe))
                                       (cons __tmp89019 __tmp89015))))
                                (declare (not safe))
                                (cons __tmp89056 __tmp89014))))
                         (declare (not safe))
                         (cons __tmp89059 __tmp89013)))
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
