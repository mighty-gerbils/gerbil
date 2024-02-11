(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64227_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64228_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55349_)
        (let* ((_g5535355371_
                (lambda (_g5535455367_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5535455367_)))
               (_g5535255427_
                (lambda (_g5535455375_)
                  (if (gx#stx-pair? _g5535455375_)
                      (let ((_e5535955378_ (gx#syntax-e _g5535455375_)))
                        (let ((_hd5535855382_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5535955378_)))
                              (_tl5535755385_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5535955378_))))
                          (if (gx#stx-pair? _tl5535755385_)
                              (let ((_e5536255388_
                                     (gx#syntax-e _tl5535755385_)))
                                (let ((_hd5536155392_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5536255388_)))
                                      (_tl5536055395_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5536255388_))))
                                  (if (gx#stx-pair? _tl5536055395_)
                                      (let ((_e5536555398_
                                             (gx#syntax-e _tl5536055395_)))
                                        (let ((_hd5536455402_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5536555398_)))
                                              (_tl5536355405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5536555398_))))
                                          (if (gx#stx-null? _tl5536355405_)
                                              ((lambda (_L55408_ _L55410_)
                                                 (let ((__tmp63988
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63940
                                                        (let ((__tmp63979
                                                               (let ((__tmp63980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63987 (gx#datum->syntax '#f 'key))
                                    (__tmp63981
                                     (let ((__tmp63986
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp63982
                                            (let ((__tmp63983
                                                   (let ((__tmp63985
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp63984
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp63985
                                                           __tmp63984))))
                                              (declare (not safe))
                                              (cons __tmp63983 '()))))
                                       (declare (not safe))
                                       (cons __tmp63986 __tmp63982))))
                                (declare (not safe))
                                (cons __tmp63987 __tmp63981))))
                         (declare (not safe))
                         (cons _L55410_ __tmp63980)))
                      (__tmp63941
                       (let ((__tmp63942
                              (let ((__tmp63978 (gx#datum->syntax '#f 'cond))
                                    (__tmp63943
                                     (let ((__tmp63960
                                            (let ((__tmp63965
                                                   (let ((__tmp63977
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp63966
                                                          (let ((__tmp63973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63976 (gx#datum->syntax '#f 'pair?))
                               (__tmp63974
                                (let ((__tmp63975 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp63975 '()))))
                           (declare (not safe))
                           (cons __tmp63976 __tmp63974)))
                        (__tmp63967
                         (let ((__tmp63968
                                (let ((__tmp63969
                                       (let ((__tmp63972
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp63970
                                              (let ((__tmp63971
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp63971 '()))))
                                         (declare (not safe))
                                         (cons __tmp63972 __tmp63970))))
                                  (declare (not safe))
                                  (cons _L55408_ __tmp63969))))
                           (declare (not safe))
                           (cons __tmp63968 '()))))
                    (declare (not safe))
                    (cons __tmp63973 __tmp63967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63977
                                                           __tmp63966)))
                                                  (__tmp63961
                                                   (let ((__tmp63964
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp63962
                                                          (let ((__tmp63963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp63963 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63964
                                                           __tmp63962))))
                                              (declare (not safe))
                                              (cons __tmp63965 __tmp63961)))
                                           (__tmp63944
                                            (let ((__tmp63950
                                                   (let ((__tmp63956
                                                          (let ((__tmp63959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp63957
                         (let ((__tmp63958 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63958 '()))))
                    (declare (not safe))
                    (cons __tmp63959 __tmp63957)))
                 (__tmp63951
                  (let ((__tmp63952
                         (let ((__tmp63955 (gx#datum->syntax '#f 'default))
                               (__tmp63953
                                (let ((__tmp63954 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp63954 '()))))
                           (declare (not safe))
                           (cons __tmp63955 __tmp63953))))
                    (declare (not safe))
                    (cons __tmp63952 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63956
                                                           __tmp63951)))
                                                  (__tmp63945
                                                   (let ((__tmp63946
                                                          (let ((__tmp63949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp63947
                         (let ((__tmp63948 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63948 '()))))
                    (declare (not safe))
                    (cons __tmp63949 __tmp63947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63946 '()))))
                                              (declare (not safe))
                                              (cons __tmp63950 __tmp63945))))
                                       (declare (not safe))
                                       (cons __tmp63960 __tmp63944))))
                                (declare (not safe))
                                (cons __tmp63978 __tmp63943))))
                         (declare (not safe))
                         (cons __tmp63942 '()))))
                  (declare (not safe))
                  (cons __tmp63979 __tmp63941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63988
                                                         __tmp63940)))
                                               _hd5536455402_
                                               _hd5536155392_)
                                              (_g5535355371_ _g5535455375_))))
                                      (_g5535355371_ _g5535455375_))))
                              (_g5535355371_ _g5535455375_))))
                      (_g5535355371_ _g5535455375_)))))
          (_g5535255427_ _$stx55349_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55431_)
        (let* ((_g5543555453_
                (lambda (_g5543655449_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5543655449_)))
               (_g5543455508_
                (lambda (_g5543655457_)
                  (if (gx#stx-pair? _g5543655457_)
                      (let ((_e5544155460_ (gx#syntax-e _g5543655457_)))
                        (let ((_hd5544055464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5544155460_)))
                              (_tl5543955467_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5544155460_))))
                          (if (gx#stx-pair? _tl5543955467_)
                              (let ((_e5544455470_
                                     (gx#syntax-e _tl5543955467_)))
                                (let ((_hd5544355474_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5544455470_)))
                                      (_tl5544255477_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5544455470_))))
                                  (if (gx#stx-pair? _tl5544255477_)
                                      (let ((_e5544755480_
                                             (gx#syntax-e _tl5544255477_)))
                                        (let ((_hd5544655484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5544755480_)))
                                              (_tl5544555487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5544755480_))))
                                          (if (gx#stx-null? _tl5544555487_)
                                              ((lambda (_L55490_ _L55492_)
                                                 (let ((__tmp64058
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63989
                                                        (let ((__tmp64049
                                                               (let ((__tmp64050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64057 (gx#datum->syntax '#f 'key))
                                    (__tmp64051
                                     (let ((__tmp64056
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64052
                                            (let ((__tmp64053
                                                   (let ((__tmp64055
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64054
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64055
                                                           __tmp64054))))
                                              (declare (not safe))
                                              (cons __tmp64053 '()))))
                                       (declare (not safe))
                                       (cons __tmp64056 __tmp64052))))
                                (declare (not safe))
                                (cons __tmp64057 __tmp64051))))
                         (declare (not safe))
                         (cons _L55492_ __tmp64050)))
                      (__tmp63990
                       (let ((__tmp63991
                              (let ((__tmp64048 (gx#datum->syntax '#f 'let))
                                    (__tmp63992
                                     (let ((__tmp64047
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63993
                                            (let ((__tmp64042
                                                   (let ((__tmp64043
                                                          (let ((__tmp64046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64044
                         (let ((__tmp64045 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64045 '()))))
                    (declare (not safe))
                    (cons __tmp64046 __tmp64044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64043 '())))
                                                  (__tmp63994
                                                   (let ((__tmp63995
                                                          (let ((__tmp64041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp63996
                         (let ((__tmp64040 (gx#datum->syntax '#f 'rest))
                               (__tmp63997
                                (let ((__tmp64016
                                       (let ((__tmp64033
                                              (let ((__tmp64039
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64034
                                                     (let ((__tmp64038
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64035
                                                            (let ((__tmp64037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64036 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64037 __tmp64036))))
               (declare (not safe))
               (cons __tmp64038 __tmp64035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64039 __tmp64034)))
                                             (__tmp64017
                                              (let ((__tmp64018
                                                     (let ((__tmp64032
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64019
                                                            (let ((__tmp64027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64028
                                  (let ((__tmp64031 (gx#datum->syntax '#f 'k))
                                        (__tmp64029
                                         (let ((__tmp64030
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64030 '()))))
                                    (declare (not safe))
                                    (cons __tmp64031 __tmp64029))))
                             (declare (not safe))
                             (cons _L55490_ __tmp64028)))
                          (__tmp64020
                           (let ((__tmp64026 (gx#datum->syntax '#f 'v))
                                 (__tmp64021
                                  (let ((__tmp64022
                                         (let ((__tmp64025
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64023
                                                (let ((__tmp64024
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64024 '()))))
                                           (declare (not safe))
                                           (cons __tmp64025 __tmp64023))))
                                    (declare (not safe))
                                    (cons __tmp64022 '()))))
                             (declare (not safe))
                             (cons __tmp64026 __tmp64021))))
                      (declare (not safe))
                      (cons __tmp64027 __tmp64020))))
               (declare (not safe))
               (cons __tmp64032 __tmp64019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64018 '()))))
                                         (declare (not safe))
                                         (cons __tmp64033 __tmp64017)))
                                      (__tmp63998
                                       (let ((__tmp63999
                                              (let ((__tmp64015
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64000
                                                     (let ((__tmp64001
                                                            (let ((__tmp64014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64002
                           (let ((__tmp64010
                                  (let ((__tmp64013
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64011
                                         (let ((__tmp64012
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64012 '()))))
                                    (declare (not safe))
                                    (cons __tmp64013 __tmp64011)))
                                 (__tmp64003
                                  (let ((__tmp64006
                                         (let ((__tmp64009
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64007
                                                (let ((__tmp64008
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64008 '()))))
                                           (declare (not safe))
                                           (cons __tmp64009 __tmp64007)))
                                        (__tmp64004
                                         (let ((__tmp64005
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64005 '()))))
                                    (declare (not safe))
                                    (cons __tmp64006 __tmp64004))))
                             (declare (not safe))
                             (cons __tmp64010 __tmp64003))))
                      (declare (not safe))
                      (cons __tmp64014 __tmp64002))))
               (declare (not safe))
               (cons __tmp64001 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64015 __tmp64000))))
                                         (declare (not safe))
                                         (cons __tmp63999 '()))))
                                  (declare (not safe))
                                  (cons __tmp64016 __tmp63998))))
                           (declare (not safe))
                           (cons __tmp64040 __tmp63997))))
                    (declare (not safe))
                    (cons __tmp64041 __tmp63996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63995 '()))))
                                              (declare (not safe))
                                              (cons __tmp64042 __tmp63994))))
                                       (declare (not safe))
                                       (cons __tmp64047 __tmp63993))))
                                (declare (not safe))
                                (cons __tmp64048 __tmp63992))))
                         (declare (not safe))
                         (cons __tmp63991 '()))))
                  (declare (not safe))
                  (cons __tmp64049 __tmp63990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64058
                                                         __tmp63989)))
                                               _hd5544655484_
                                               _hd5544355474_)
                                              (_g5543555453_ _g5543655457_))))
                                      (_g5543555453_ _g5543655457_))))
                              (_g5543555453_ _g5543655457_))))
                      (_g5543555453_ _g5543655457_)))))
          (_g5543455508_ _$stx55431_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55512_)
        (let* ((_g5551655534_
                (lambda (_g5551755530_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5551755530_)))
               (_g5551555589_
                (lambda (_g5551755538_)
                  (if (gx#stx-pair? _g5551755538_)
                      (let ((_e5552255541_ (gx#syntax-e _g5551755538_)))
                        (let ((_hd5552155545_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5552255541_)))
                              (_tl5552055548_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5552255541_))))
                          (if (gx#stx-pair? _tl5552055548_)
                              (let ((_e5552555551_
                                     (gx#syntax-e _tl5552055548_)))
                                (let ((_hd5552455555_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5552555551_)))
                                      (_tl5552355558_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5552555551_))))
                                  (if (gx#stx-pair? _tl5552355558_)
                                      (let ((_e5552855561_
                                             (gx#syntax-e _tl5552355558_)))
                                        (let ((_hd5552755565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5552855561_)))
                                              (_tl5552655568_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5552855561_))))
                                          (if (gx#stx-null? _tl5552655568_)
                                              ((lambda (_L55571_ _L55573_)
                                                 (let ((__tmp64129
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64059
                                                        (let ((__tmp64124
                                                               (let ((__tmp64125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64128 (gx#datum->syntax '#f 'el))
                                    (__tmp64126
                                     (let ((__tmp64127
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64127 '()))))
                                (declare (not safe))
                                (cons __tmp64128 __tmp64126))))
                         (declare (not safe))
                         (cons _L55573_ __tmp64125)))
                      (__tmp64060
                       (let ((__tmp64061
                              (let ((__tmp64123 (gx#datum->syntax '#f 'let))
                                    (__tmp64062
                                     (let ((__tmp64122
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64063
                                            (let ((__tmp64111
                                                   (let ((__tmp64118
                                                          (let ((__tmp64121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64119
                         (let ((__tmp64120 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64120 '()))))
                    (declare (not safe))
                    (cons __tmp64121 __tmp64119)))
                 (__tmp64112
                  (let ((__tmp64113
                         (let ((__tmp64117 (gx#datum->syntax '#f 'r))
                               (__tmp64114
                                (let ((__tmp64115
                                       (let ((__tmp64116
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64116 '()))))
                                  (declare (not safe))
                                  (cons __tmp64115 '()))))
                           (declare (not safe))
                           (cons __tmp64117 __tmp64114))))
                    (declare (not safe))
                    (cons __tmp64113 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64118
                                                           __tmp64112)))
                                                  (__tmp64064
                                                   (let ((__tmp64065
                                                          (let ((__tmp64110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64066
                         (let ((__tmp64109 (gx#datum->syntax '#f 'rest))
                               (__tmp64067
                                (let ((__tmp64073
                                       (let ((__tmp64104
                                              (let ((__tmp64108
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64105
                                                     (let ((__tmp64107
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64106
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64107
                                                             __tmp64106))))
                                                (declare (not safe))
                                                (cons __tmp64108 __tmp64105)))
                                             (__tmp64074
                                              (let ((__tmp64075
                                                     (let ((__tmp64103
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64076
                                                            (let ((__tmp64098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64099
                                  (let ((__tmp64102 (gx#datum->syntax '#f 'el))
                                        (__tmp64100
                                         (let ((__tmp64101
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64101 '()))))
                                    (declare (not safe))
                                    (cons __tmp64102 __tmp64100))))
                             (declare (not safe))
                             (cons _L55571_ __tmp64099)))
                          (__tmp64077
                           (let ((__tmp64090
                                  (let ((__tmp64097
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64091
                                         (let ((__tmp64096
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64092
                                                (let ((__tmp64095
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64093
                                                       (let ((__tmp64094
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64094
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64095
                                                        __tmp64093))))
                                           (declare (not safe))
                                           (cons __tmp64096 __tmp64092))))
                                    (declare (not safe))
                                    (cons __tmp64097 __tmp64091)))
                                 (__tmp64078
                                  (let ((__tmp64079
                                         (let ((__tmp64089
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64080
                                                (let ((__tmp64088
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64081
                                                       (let ((__tmp64082
                                                              (let ((__tmp64087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64083
                             (let ((__tmp64086 (gx#datum->syntax '#f 'hd))
                                   (__tmp64084
                                    (let ((__tmp64085
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64085 '()))))
                               (declare (not safe))
                               (cons __tmp64086 __tmp64084))))
                        (declare (not safe))
                        (cons __tmp64087 __tmp64083))))
                 (declare (not safe))
                 (cons __tmp64082 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64088
                                                        __tmp64081))))
                                           (declare (not safe))
                                           (cons __tmp64089 __tmp64080))))
                                    (declare (not safe))
                                    (cons __tmp64079 '()))))
                             (declare (not safe))
                             (cons __tmp64090 __tmp64078))))
                      (declare (not safe))
                      (cons __tmp64098 __tmp64077))))
               (declare (not safe))
               (cons __tmp64103 __tmp64076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64075 '()))))
                                         (declare (not safe))
                                         (cons __tmp64104 __tmp64074)))
                                      (__tmp64068
                                       (let ((__tmp64069
                                              (let ((__tmp64072
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64070
                                                     (let ((__tmp64071
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64071 '()))))
                                                (declare (not safe))
                                                (cons __tmp64072 __tmp64070))))
                                         (declare (not safe))
                                         (cons __tmp64069 '()))))
                                  (declare (not safe))
                                  (cons __tmp64073 __tmp64068))))
                           (declare (not safe))
                           (cons __tmp64109 __tmp64067))))
                    (declare (not safe))
                    (cons __tmp64110 __tmp64066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64065 '()))))
                                              (declare (not safe))
                                              (cons __tmp64111 __tmp64064))))
                                       (declare (not safe))
                                       (cons __tmp64122 __tmp64063))))
                                (declare (not safe))
                                (cons __tmp64123 __tmp64062))))
                         (declare (not safe))
                         (cons __tmp64061 '()))))
                  (declare (not safe))
                  (cons __tmp64124 __tmp64060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64129
                                                         __tmp64059)))
                                               _hd5552755565_
                                               _hd5552455555_)
                                              (_g5551655534_ _g5551755538_))))
                                      (_g5551655534_ _g5551755538_))))
                              (_g5551655534_ _g5551755538_))))
                      (_g5551655534_ _g5551755538_)))))
          (_g5551555589_ _$stx55512_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55593_)
        (let* ((_g5559755608_
                (lambda (_g5559855604_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5559855604_)))
               (_g5559655637_
                (lambda (_g5559855612_)
                  (if (gx#stx-pair? _g5559855612_)
                      (let ((_e5560255615_ (gx#syntax-e _g5559855612_)))
                        (let ((_hd5560155619_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5560255615_)))
                              (_tl5560055622_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5560255615_))))
                          ((lambda (_L55625_)
                             (let ((__tmp64131 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64130
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55625_))))
                               (declare (not safe))
                               (cons __tmp64131 __tmp64130)))
                           _tl5560055622_)))
                      (_g5559755608_ _g5559855612_)))))
          (_g5559655637_ _$stx55593_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55641_)
        (let* ((___stx6345463455_ _$stx55641_)
               (_g5565255866_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6345463455_))))
          (let ((___kont6345763458_
                 (lambda (_L56719_ _L56721_ _L56722_ _L56723_ _L56724_)
                   (let ((__tmp64132
                          (let ((__tmp64133
                                 (let ((__tmp64134
                                        (let ((__tmp64138
                                               (let ((__tmp64139
                                                      (lambda (_g5675456757_
                                                               _g5675556760_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5675456757_
                                                                _g5675556760_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64139
                                                         '()
                                                         _L56722_)))
                                              (__tmp64135
                                               (let ((__tmp64136
                                                      (let ((__tmp64137
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56719_ '()))))
                (declare (not safe))
                (cons _L56721_ __tmp64137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56723_ __tmp64136))))
                                          (declare (not safe))
                                          (cons __tmp64138 __tmp64135))))
                                   (declare (not safe))
                                   (cons '() __tmp64134))))
                            (declare (not safe))
                            (cons '2 __tmp64133))))
                     (declare (not safe))
                     (cons _L56724_ __tmp64132))))
                (___kont6346163462_
                 (lambda (_L56572_ _L56574_ _L56575_ _L56576_)
                   (let ((__tmp64140
                          (let ((__tmp64141
                                 (let ((__tmp64142
                                        (let ((__tmp64146
                                               (let ((__tmp64147
                                                      (lambda (_g5659956602_
                                                               _g5660056605_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5659956602_
                                                                _g5660056605_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64147
                                                         '()
                                                         _L56574_)))
                                              (__tmp64143
                                               (let ((__tmp64144
                                                      (let ((__tmp64145
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56572_ '()))))
                (declare (not safe))
                (cons _L56572_ __tmp64145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56575_ __tmp64144))))
                                          (declare (not safe))
                                          (cons __tmp64146 __tmp64143))))
                                   (declare (not safe))
                                   (cons '() __tmp64142))))
                            (declare (not safe))
                            (cons '2 __tmp64141))))
                     (declare (not safe))
                     (cons _L56576_ __tmp64140))))
                (___kont6346563466_
                 (lambda (_L56475_)
                   (let ((__tmp64159 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64148
                          (let ((__tmp64149
                                 (let ((__tmp64156
                                        (let ((__tmp64158
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64157
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64158 __tmp64157)))
                                       (__tmp64150
                                        (let ((__tmp64153
                                               (let ((__tmp64155
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64154
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64155 __tmp64154)))
                                              (__tmp64151
                                               (let ((__tmp64152
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64152))))
                                          (declare (not safe))
                                          (cons __tmp64153 __tmp64151))))
                                   (declare (not safe))
                                   (cons __tmp64156 __tmp64150))))
                            (declare (not safe))
                            (cons _L56475_ __tmp64149))))
                     (declare (not safe))
                     (cons __tmp64159 __tmp64148))))
                (___kont6346763468_
                 (lambda (_L56398_
                          _L56400_
                          _L56401_
                          _L56402_
                          _L56403_
                          _L56404_)
                   (let ((__tmp64160
                          (let ((__tmp64161
                                 (let ((__tmp64163
                                        (let ((__tmp64164
                                               (let ((__tmp64165
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56401_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56402_ __tmp64165))))
                                          (declare (not safe))
                                          (cons __tmp64164 _L56403_)))
                                       (__tmp64162
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56400_ _L56398_))))
                                   (declare (not safe))
                                   (cons __tmp64163 __tmp64162))))
                            (declare (not safe))
                            (cons '2 __tmp64161))))
                     (declare (not safe))
                     (cons _L56404_ __tmp64160))))
                (___kont6346963470_
                 (lambda (_L56279_ _L56281_ _L56282_ _L56283_ _L56284_)
                   (let ((__tmp64166
                          (let ((__tmp64167
                                 (let ((__tmp64169
                                        (let ((__tmp64170
                                               (let ((__tmp64171
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56282_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56282_ __tmp64171))))
                                          (declare (not safe))
                                          (cons __tmp64170 _L56283_)))
                                       (__tmp64168
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56281_ _L56279_))))
                                   (declare (not safe))
                                   (cons __tmp64169 __tmp64168))))
                            (declare (not safe))
                            (cons '2 __tmp64167))))
                     (declare (not safe))
                     (cons _L56284_ __tmp64166))))
                (___kont6347163472_
                 (lambda (_L56196_ _L56198_ _L56199_)
                   (let ((__tmp64172
                          (let ((__tmp64173
                                 (let ((__tmp64174
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56198_ _L56196_))))
                                   (declare (not safe))
                                   (cons '() __tmp64174))))
                            (declare (not safe))
                            (cons '3 __tmp64173))))
                     (declare (not safe))
                     (cons _L56199_ __tmp64172))))
                (___kont6347363474_
                 (lambda (_L56117_ _L56119_ _L56120_ _L56121_ _L56122_)
                   (let ((__tmp64175
                          (let ((__tmp64176
                                 (let ((__tmp64178
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56120_ _L56121_)))
                                       (__tmp64177
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56119_ _L56117_))))
                                   (declare (not safe))
                                   (cons __tmp64178 __tmp64177))))
                            (declare (not safe))
                            (cons '3 __tmp64176))))
                     (declare (not safe))
                     (cons _L56122_ __tmp64175))))
                (___kont6347563476_
                 (lambda (_L56001_
                          _L56003_
                          _L56004_
                          _L56005_
                          _L56006_
                          _L56007_)
                   (let ((__tmp64226 (gx#datum->syntax '#f 'let))
                         (__tmp64179
                          (let ((__tmp64214
                                 (let ((__tmp64223
                                        (let ((__tmp64225
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64224
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56004_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64225 __tmp64224)))
                                       (__tmp64215
                                        (let ((__tmp64216
                                               (let ((__tmp64222
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64217
                                                      (let ((__tmp64218
                                                             (let ((__tmp64221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64219
                            (let ((__tmp64220
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56001_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64220))))
                       (declare (not safe))
                       (cons __tmp64221 __tmp64219))))
                (declare (not safe))
                (cons __tmp64218 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64222
                                                       __tmp64217))))
                                          (declare (not safe))
                                          (cons __tmp64216 '()))))
                                   (declare (not safe))
                                   (cons __tmp64223 __tmp64215)))
                                (__tmp64180
                                 (let ((__tmp64181
                                        (let ((__tmp64213
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64182
                                               (let ((__tmp64212
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64183
                                                      (let ((__tmp64187
                                                             (let ((__tmp64211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64188
                            (let ((__tmp64210 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64189
                                   (let ((__tmp64205
                                          (let ((__tmp64209
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64206
                                                 (let ((__tmp64207
                                                        (let ((__tmp64208
                                                               (lambda (_g5604156044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5604256047_)
                         (let ()
                           (declare (not safe))
                           (cons _g5604156044_ _g5604256047_)))))
                  (declare (not safe))
                  (foldr1 __tmp64208 '() _L56006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64207 '()))))
                                            (declare (not safe))
                                            (cons __tmp64209 __tmp64206)))
                                         (__tmp64190
                                          (let ((__tmp64197
                                                 (let ((__tmp64204
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64198
                                                        (let ((__tmp64199
                                                               (lambda (_g5603956050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5604056053_)
                         (let ((__tmp64200
                                (let ((__tmp64203
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64201
                                       (let ((__tmp64202
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5603956050_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64202))))
                                  (declare (not safe))
                                  (cons __tmp64203 __tmp64201))))
                           (declare (not safe))
                           (cons __tmp64200 _g5604056053_)))))
                  (declare (not safe))
                  (foldr1 __tmp64199 '() _L56005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64204
                                                         __tmp64198)))
                                                (__tmp64191
                                                 (let ((__tmp64194
                                                        (let ((__tmp64196
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64195
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56003_ '()))))
                  (declare (not safe))
                  (cons __tmp64196 __tmp64195)))
               (__tmp64192
                (let ((__tmp64193 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64193 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64194
                                                         __tmp64192))))
                                            (declare (not safe))
                                            (cons __tmp64197 __tmp64191))))
                                     (declare (not safe))
                                     (cons __tmp64205 __tmp64190))))
                              (declare (not safe))
                              (cons __tmp64210 __tmp64189))))
                       (declare (not safe))
                       (cons __tmp64211 __tmp64188)))
                    (__tmp64184
                     (let ((__tmp64185
                            (let ((__tmp64186 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64186 '()))))
                       (declare (not safe))
                       (cons __tmp64185 '()))))
                (declare (not safe))
                (cons __tmp64187 __tmp64184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64212
                                                       __tmp64183))))
                                          (declare (not safe))
                                          (cons __tmp64213 __tmp64182))))
                                   (declare (not safe))
                                   (cons __tmp64181 '()))))
                            (declare (not safe))
                            (cons __tmp64214 __tmp64180))))
                     (declare (not safe))
                     (cons __tmp64226 __tmp64179)))))
            (let* ((___match6380563806_
                    (lambda (_e5582455873_
                             _hd5582355877_
                             _tl5582255880_
                             _e5582755883_
                             _hd5582655887_
                             _tl5582555890_
                             _e5582855893_
                             _e5583155897_
                             _hd5583055901_
                             _tl5582955904_
                             ___splice6347763478_
                             _target5583255907_
                             _tl5583455910_)
                      (letrec ((_loop5583555913_
                                (lambda (_hd5583355917_
                                         _exprs5583955920_
                                         _names5584055922_)
                                  (if (gx#stx-pair? _hd5583355917_)
                                      (let ((_e5583655925_
                                             (gx#syntax-e _hd5583355917_)))
                                        (let ((_lp-tl5583855932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5583655925_)))
                                              (_lp-hd5583755929_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5583655925_))))
                                          (if (gx#stx-pair? _lp-hd5583755929_)
                                              (let ((_e5584555935_
                                                     (gx#syntax-e
                                                      _lp-hd5583755929_)))
                                                (let ((_tl5584355942_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5584555935_)))
                                                      (_hd5584455939_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5584555935_))))
                                                  (if (gx#stx-pair?
                                                       _tl5584355942_)
                                                      (let ((_e5584855945_
                                                             (gx#syntax-e
                                                              _tl5584355942_)))
                                                        (let ((_tl5584655952_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5584855945_)))
                      (_hd5584755949_
                       (let () (declare (not safe)) (##car _e5584855945_))))
                  (if (gx#stx-null? _tl5584655952_)
                      (_loop5583555913_
                       _lp-tl5583855932_
                       (let ()
                         (declare (not safe))
                         (cons _hd5584755949_ _exprs5583955920_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5584455939_ _names5584055922_)))
                      (let () (declare (not safe)) (_g5565255866_)))))
              (let () (declare (not safe)) (_g5565255866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5565255866_)))))
                                      (let ((_names5584255958_
                                             (reverse _names5584055922_))
                                            (_exprs5584155955_
                                             (reverse _exprs5583955920_)))
                                        (if (gx#stx-pair? _tl5582955904_)
                                            (let ((_e5585155961_
                                                   (gx#syntax-e
                                                    _tl5582955904_)))
                                              (let ((_tl5584955968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5585155961_)))
                                                    (_hd5585055965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5585155961_))))
                                                (if (gx#stx-null?
                                                     _hd5585055965_)
                                                    (if (gx#stx-pair?
                                                         _tl5584955968_)
                                                        (let ((_e5585455971_
                                                               (gx#syntax-e
                                                                _tl5584955968_)))
                                                          (let ((_tl5585255978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5585455971_)))
                        (_hd5585355975_
                         (let () (declare (not safe)) (##car _e5585455971_))))
                    (if (gx#stx-pair? _tl5585255978_)
                        (let ((_e5585755981_ (gx#syntax-e _tl5585255978_)))
                          (let ((_tl5585555988_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5585755981_)))
                                (_hd5585655985_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5585755981_))))
                            (if (gx#stx-pair? _tl5585555988_)
                                (let ((_e5586055991_
                                       (gx#syntax-e _tl5585555988_)))
                                  (let ((_tl5585855998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5586055991_)))
                                        (_hd5585955995_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5586055991_))))
                                    (if (gx#stx-null? _tl5585855998_)
                                        (___kont6347563476_
                                         _hd5585955995_
                                         _hd5585655985_
                                         _hd5585355975_
                                         _exprs5584155955_
                                         _names5584255958_
                                         _hd5582355877_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565255866_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5565255866_)))))
                        (let () (declare (not safe)) (_g5565255866_)))))
                (let () (declare (not safe)) (_g5565255866_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565255866_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5565255866_))))))))
                        (_loop5583555913_ _target5583255907_ '() '()))))
                   (___match6358363584_
                    (lambda (_e5569656498_
                             _hd5569556502_
                             _tl5569456505_
                             _e5569956508_
                             _hd5569856512_
                             _tl5569756515_
                             _e5570056518_
                             _e5570356522_
                             _hd5570256526_
                             _tl5570156529_
                             ___splice6346363464_
                             _target5570456532_
                             _tl5570656535_
                             _e5571556538_
                             _hd5571456542_
                             _tl5571356545_)
                      (letrec ((_loop5570756548_
                                (lambda (_hd5570556552_ _exprs5571156555_)
                                  (if (gx#stx-pair? _hd5570556552_)
                                      (let ((_e5570856558_
                                             (gx#syntax-e _hd5570556552_)))
                                        (let ((_lp-tl5571056565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5570856558_)))
                                              (_lp-hd5570956562_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5570856558_))))
                                          (_loop5570756548_
                                           _lp-tl5571056565_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5570956562_
                                                   _exprs5571156555_)))))
                                      (let ((_exprs5571256568_
                                             (reverse _exprs5571156555_)))
                                        (___kont6346163462_
                                         _hd5571456542_
                                         _exprs5571256568_
                                         _hd5570256526_
                                         _hd5569556502_))))))
                        (_loop5570756548_ _target5570456532_ '()))))
                   (___match6354363544_
                    (lambda (_e5566156615_
                             _hd5566056619_
                             _tl5565956622_
                             _e5566456625_
                             _hd5566356629_
                             _tl5566256632_
                             _e5566556635_
                             _e5566856639_
                             _hd5566756643_
                             _tl5566656646_
                             ___splice6345963460_
                             _target5566956649_
                             _tl5567156652_
                             _e5568056655_
                             _hd5567956659_
                             _tl5567856662_
                             _e5568356665_
                             _hd5568256669_
                             _tl5568156672_
                             _e5568656675_
                             _hd5568556679_
                             _tl5568456682_
                             _e5568956685_
                             _hd5568856689_
                             _tl5568756692_)
                      (letrec ((_loop5567256695_
                                (lambda (_hd5567056699_ _exprs5567656702_)
                                  (if (gx#stx-pair? _hd5567056699_)
                                      (let ((_e5567356705_
                                             (gx#syntax-e _hd5567056699_)))
                                        (let ((_lp-tl5567556712_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5567356705_)))
                                              (_lp-hd5567456709_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5567356705_))))
                                          (_loop5567256695_
                                           _lp-tl5567556712_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5567456709_
                                                   _exprs5567656702_)))))
                                      (let ((_exprs5567756715_
                                             (reverse _exprs5567656702_)))
                                        (___kont6345763458_
                                         _hd5568856689_
                                         _hd5568556679_
                                         _exprs5567756715_
                                         _hd5566756643_
                                         _hd5566056619_))))))
                        (_loop5567256695_ _target5566956649_ '())))))
              (if (gx#stx-pair? ___stx6345463455_)
                  (let ((_e5566156615_ (gx#syntax-e ___stx6345463455_)))
                    (let ((_tl5565956622_
                           (let () (declare (not safe)) (##cdr _e5566156615_)))
                          (_hd5566056619_
                           (let ()
                             (declare (not safe))
                             (##car _e5566156615_))))
                      (if (gx#stx-pair? _tl5565956622_)
                          (let ((_e5566456625_ (gx#syntax-e _tl5565956622_)))
                            (let ((_tl5566256632_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5566456625_)))
                                  (_hd5566356629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5566456625_))))
                              (if (gx#stx-datum? _hd5566356629_)
                                  (let ((_e5566556635_
                                         (gx#stx-e _hd5566356629_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5566556635_ '1))
                                        (if (gx#stx-pair? _tl5566256632_)
                                            (let ((_e5566856639_
                                                   (gx#syntax-e
                                                    _tl5566256632_)))
                                              (let ((_tl5566656646_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5566856639_)))
                                                    (_hd5566756643_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5566856639_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5566656646_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5566656646_)
                                                              '2)
                                                        (let ((___splice6345963460_
                                                               (gx#syntax-split-splice
                                                                _tl5566656646_
                                                                '2)))
                                                          (let ((_tl5567156652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6345963460_ '1)))
                        (_target5566956649_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6345963460_ '0))))
                    (if (gx#stx-pair? _tl5567156652_)
                        (let ((_e5568056655_ (gx#syntax-e _tl5567156652_)))
                          (let ((_tl5567856662_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5568056655_)))
                                (_hd5567956659_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5568056655_))))
                            (if (gx#stx-pair? _hd5567956659_)
                                (let ((_e5568356665_
                                       (gx#syntax-e _hd5567956659_)))
                                  (let ((_tl5568156672_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5568356665_)))
                                        (_hd5568256669_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5568356665_))))
                                    (if (gx#identifier? _hd5568256669_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64228_|
                                             _hd5568256669_)
                                            (if (gx#stx-pair? _tl5568156672_)
                                                (let ((_e5568656675_
                                                       (gx#syntax-e
                                                        _tl5568156672_)))
                                                  (let ((_tl5568456682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5568656675_)))
                                                        (_hd5568556679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5568656675_))))
                                                    (if (gx#stx-null?
                                                         _tl5568456682_)
                                                        (if (gx#stx-pair?
                                                             _tl5567856662_)
                                                            (let ((_e5568956685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5567856662_)))
                      (let ((_tl5568756692_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5568956685_)))
                            (_hd5568856689_
                             (let ()
                               (declare (not safe))
                               (##car _e5568956685_))))
                        (if (gx#stx-null? _tl5568756692_)
                            (___match6354363544_
                             _e5566156615_
                             _hd5566056619_
                             _tl5565956622_
                             _e5566456625_
                             _hd5566356629_
                             _tl5566256632_
                             _e5566556635_
                             _e5566856639_
                             _hd5566756643_
                             _tl5566656646_
                             ___splice6345963460_
                             _target5566956649_
                             _tl5567156652_
                             _e5568056655_
                             _hd5567956659_
                             _tl5567856662_
                             _e5568356665_
                             _hd5568256669_
                             _tl5568156672_
                             _e5568656675_
                             _hd5568556679_
                             _tl5568456682_
                             _e5568956685_
                             _hd5568856689_
                             _tl5568756692_)
                            (if (fx>= (gx#stx-length _tl5566656646_) '1)
                                (let ((___splice6346363464_
                                       (gx#syntax-split-splice
                                        _tl5566656646_
                                        '1)))
                                  (let ((_tl5570656535_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6346363464_
                                            '1)))
                                        (_target5570456532_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6346363464_
                                            '0))))
                                    (if (gx#stx-pair? _tl5570656535_)
                                        (let ((_e5571556538_
                                               (gx#syntax-e _tl5570656535_)))
                                          (let ((_tl5571356545_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5571556538_)))
                                                (_hd5571456542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5571556538_))))
                                            (if (gx#stx-null? _tl5571356545_)
                                                (___match6358363584_
                                                 _e5566156615_
                                                 _hd5566056619_
                                                 _tl5565956622_
                                                 _e5566456625_
                                                 _hd5566356629_
                                                 _tl5566256632_
                                                 _e5566556635_
                                                 _e5566856639_
                                                 _hd5566756643_
                                                 _tl5566656646_
                                                 ___splice6346363464_
                                                 _target5570456532_
                                                 _tl5570656535_
                                                 _e5571556538_
                                                 _hd5571456542_
                                                 _tl5571356545_)
                                                (if (gx#stx-null?
                                                     _tl5566656646_)
                                                    (___kont6346563466_
                                                     _hd5566756643_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565255866_))))))
                                        (if (gx#stx-null? _tl5566656646_)
                                            (___kont6346563466_ _hd5566756643_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5565255866_))))))
                                (if (gx#stx-null? _tl5566656646_)
                                    (___kont6346563466_ _hd5566756643_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5565255866_)))))))
                    (if (fx>= (gx#stx-length _tl5566656646_) '1)
                        (let ((___splice6346363464_
                               (gx#syntax-split-splice _tl5566656646_ '1)))
                          (let ((_tl5570656535_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6346363464_ '1)))
                                (_target5570456532_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6346363464_ '0))))
                            (if (gx#stx-pair? _tl5570656535_)
                                (let ((_e5571556538_
                                       (gx#syntax-e _tl5570656535_)))
                                  (let ((_tl5571356545_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5571556538_)))
                                        (_hd5571456542_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5571556538_))))
                                    (if (gx#stx-null? _tl5571356545_)
                                        (___match6358363584_
                                         _e5566156615_
                                         _hd5566056619_
                                         _tl5565956622_
                                         _e5566456625_
                                         _hd5566356629_
                                         _tl5566256632_
                                         _e5566556635_
                                         _e5566856639_
                                         _hd5566756643_
                                         _tl5566656646_
                                         ___splice6346363464_
                                         _target5570456532_
                                         _tl5570656535_
                                         _e5571556538_
                                         _hd5571456542_
                                         _tl5571356545_)
                                        (if (gx#stx-null? _tl5566656646_)
                                            (___kont6346563466_ _hd5566756643_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5565255866_))))))
                                (if (gx#stx-null? _tl5566656646_)
                                    (___kont6346563466_ _hd5566756643_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5565255866_))))))
                        (if (gx#stx-null? _tl5566656646_)
                            (___kont6346563466_ _hd5566756643_)
                            (let () (declare (not safe)) (_g5565255866_)))))
                (if (fx>= (gx#stx-length _tl5566656646_) '1)
                    (let ((___splice6346363464_
                           (gx#syntax-split-splice _tl5566656646_ '1)))
                      (let ((_tl5570656535_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346363464_ '1)))
                            (_target5570456532_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346363464_ '0))))
                        (if (gx#stx-pair? _tl5570656535_)
                            (let ((_e5571556538_ (gx#syntax-e _tl5570656535_)))
                              (let ((_tl5571356545_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5571556538_)))
                                    (_hd5571456542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5571556538_))))
                                (if (gx#stx-null? _tl5571356545_)
                                    (___match6358363584_
                                     _e5566156615_
                                     _hd5566056619_
                                     _tl5565956622_
                                     _e5566456625_
                                     _hd5566356629_
                                     _tl5566256632_
                                     _e5566556635_
                                     _e5566856639_
                                     _hd5566756643_
                                     _tl5566656646_
                                     ___splice6346363464_
                                     _target5570456532_
                                     _tl5570656535_
                                     _e5571556538_
                                     _hd5571456542_
                                     _tl5571356545_)
                                    (if (gx#stx-null? _tl5566656646_)
                                        (___kont6346563466_ _hd5566756643_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565255866_))))))
                            (if (gx#stx-null? _tl5566656646_)
                                (___kont6346563466_ _hd5566756643_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565255866_))))))
                    (if (gx#stx-null? _tl5566656646_)
                        (___kont6346563466_ _hd5566756643_)
                        (let () (declare (not safe)) (_g5565255866_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5566656646_)
                                                          '1)
                                                    (let ((___splice6346363464_
                                                           (gx#syntax-split-splice
                                                            _tl5566656646_
                                                            '1)))
                                                      (let ((_tl5570656535_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6346363464_ '1)))
                    (_target5570456532_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6346363464_ '0))))
                (if (gx#stx-pair? _tl5570656535_)
                    (let ((_e5571556538_ (gx#syntax-e _tl5570656535_)))
                      (let ((_tl5571356545_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5571556538_)))
                            (_hd5571456542_
                             (let ()
                               (declare (not safe))
                               (##car _e5571556538_))))
                        (if (gx#stx-null? _tl5571356545_)
                            (___match6358363584_
                             _e5566156615_
                             _hd5566056619_
                             _tl5565956622_
                             _e5566456625_
                             _hd5566356629_
                             _tl5566256632_
                             _e5566556635_
                             _e5566856639_
                             _hd5566756643_
                             _tl5566656646_
                             ___splice6346363464_
                             _target5570456532_
                             _tl5570656535_
                             _e5571556538_
                             _hd5571456542_
                             _tl5571356545_)
                            (if (gx#stx-null? _tl5566656646_)
                                (___kont6346563466_ _hd5566756643_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565255866_))))))
                    (if (gx#stx-null? _tl5566656646_)
                        (___kont6346563466_ _hd5566756643_)
                        (let () (declare (not safe)) (_g5565255866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5566656646_)
                                                        (___kont6346563466_
                                                         _hd5566756643_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565255866_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5566656646_)
                                                      '1)
                                                (let ((___splice6346363464_
                                                       (gx#syntax-split-splice
                                                        _tl5566656646_
                                                        '1)))
                                                  (let ((_tl5570656535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6346363464_
                                                            '1)))
                                                        (_target5570456532_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6346363464_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5570656535_)
                                                        (let ((_e5571556538_
                                                               (gx#syntax-e
                                                                _tl5570656535_)))
                                                          (let ((_tl5571356545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5571556538_)))
                        (_hd5571456542_
                         (let () (declare (not safe)) (##car _e5571556538_))))
                    (if (gx#stx-null? _tl5571356545_)
                        (___match6358363584_
                         _e5566156615_
                         _hd5566056619_
                         _tl5565956622_
                         _e5566456625_
                         _hd5566356629_
                         _tl5566256632_
                         _e5566556635_
                         _e5566856639_
                         _hd5566756643_
                         _tl5566656646_
                         ___splice6346363464_
                         _target5570456532_
                         _tl5570656535_
                         _e5571556538_
                         _hd5571456542_
                         _tl5571356545_)
                        (if (gx#stx-null? _tl5566656646_)
                            (___kont6346563466_ _hd5566756643_)
                            (let () (declare (not safe)) (_g5565255866_))))))
                (if (gx#stx-null? _tl5566656646_)
                    (___kont6346563466_ _hd5566756643_)
                    (let () (declare (not safe)) (_g5565255866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5566656646_)
                                                    (___kont6346563466_
                                                     _hd5566756643_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565255866_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5566656646_)
                                                  '1)
                                            (let ((___splice6346363464_
                                                   (gx#syntax-split-splice
                                                    _tl5566656646_
                                                    '1)))
                                              (let ((_tl5570656535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6346363464_
                                                        '1)))
                                                    (_target5570456532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6346363464_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5570656535_)
                                                    (let ((_e5571556538_
                                                           (gx#syntax-e
                                                            _tl5570656535_)))
                                                      (let ((_tl5571356545_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5571556538_)))
                    (_hd5571456542_
                     (let () (declare (not safe)) (##car _e5571556538_))))
                (if (gx#stx-null? _tl5571356545_)
                    (___match6358363584_
                     _e5566156615_
                     _hd5566056619_
                     _tl5565956622_
                     _e5566456625_
                     _hd5566356629_
                     _tl5566256632_
                     _e5566556635_
                     _e5566856639_
                     _hd5566756643_
                     _tl5566656646_
                     ___splice6346363464_
                     _target5570456532_
                     _tl5570656535_
                     _e5571556538_
                     _hd5571456542_
                     _tl5571356545_)
                    (if (gx#stx-null? _tl5566656646_)
                        (___kont6346563466_ _hd5566756643_)
                        (let () (declare (not safe)) (_g5565255866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5566656646_)
                                                        (___kont6346563466_
                                                         _hd5566756643_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565255866_))))))
                                            (if (gx#stx-null? _tl5566656646_)
                                                (___kont6346563466_
                                                 _hd5566756643_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565255866_)))))))
                                (if (fx>= (gx#stx-length _tl5566656646_) '1)
                                    (let ((___splice6346363464_
                                           (gx#syntax-split-splice
                                            _tl5566656646_
                                            '1)))
                                      (let ((_tl5570656535_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6346363464_
                                                '1)))
                                            (_target5570456532_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6346363464_
                                                '0))))
                                        (if (gx#stx-pair? _tl5570656535_)
                                            (let ((_e5571556538_
                                                   (gx#syntax-e
                                                    _tl5570656535_)))
                                              (let ((_tl5571356545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5571556538_)))
                                                    (_hd5571456542_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5571556538_))))
                                                (if (gx#stx-null?
                                                     _tl5571356545_)
                                                    (___match6358363584_
                                                     _e5566156615_
                                                     _hd5566056619_
                                                     _tl5565956622_
                                                     _e5566456625_
                                                     _hd5566356629_
                                                     _tl5566256632_
                                                     _e5566556635_
                                                     _e5566856639_
                                                     _hd5566756643_
                                                     _tl5566656646_
                                                     ___splice6346363464_
                                                     _target5570456532_
                                                     _tl5570656535_
                                                     _e5571556538_
                                                     _hd5571456542_
                                                     _tl5571356545_)
                                                    (if (gx#stx-null?
                                                         _tl5566656646_)
                                                        (___kont6346563466_
                                                         _hd5566756643_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565255866_))))))
                                            (if (gx#stx-null? _tl5566656646_)
                                                (___kont6346563466_
                                                 _hd5566756643_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565255866_))))))
                                    (if (gx#stx-null? _tl5566656646_)
                                        (___kont6346563466_ _hd5566756643_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565255866_)))))))
                        (if (fx>= (gx#stx-length _tl5566656646_) '1)
                            (let ((___splice6346363464_
                                   (gx#syntax-split-splice _tl5566656646_ '1)))
                              (let ((_tl5570656535_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6346363464_ '1)))
                                    (_target5570456532_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6346363464_
                                        '0))))
                                (if (gx#stx-pair? _tl5570656535_)
                                    (let ((_e5571556538_
                                           (gx#syntax-e _tl5570656535_)))
                                      (let ((_tl5571356545_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5571556538_)))
                                            (_hd5571456542_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5571556538_))))
                                        (if (gx#stx-null? _tl5571356545_)
                                            (___match6358363584_
                                             _e5566156615_
                                             _hd5566056619_
                                             _tl5565956622_
                                             _e5566456625_
                                             _hd5566356629_
                                             _tl5566256632_
                                             _e5566556635_
                                             _e5566856639_
                                             _hd5566756643_
                                             _tl5566656646_
                                             ___splice6346363464_
                                             _target5570456532_
                                             _tl5570656535_
                                             _e5571556538_
                                             _hd5571456542_
                                             _tl5571356545_)
                                            (if (gx#stx-null? _tl5566656646_)
                                                (___kont6346563466_
                                                 _hd5566756643_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565255866_))))))
                                    (if (gx#stx-null? _tl5566656646_)
                                        (___kont6346563466_ _hd5566756643_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565255866_))))))
                            (if (gx#stx-null? _tl5566656646_)
                                (___kont6346563466_ _hd5566756643_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565255866_)))))))
                (if (fx>= (gx#stx-length _tl5566656646_) '1)
                    (let ((___splice6346363464_
                           (gx#syntax-split-splice _tl5566656646_ '1)))
                      (let ((_tl5570656535_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346363464_ '1)))
                            (_target5570456532_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346363464_ '0))))
                        (if (gx#stx-pair? _tl5570656535_)
                            (let ((_e5571556538_ (gx#syntax-e _tl5570656535_)))
                              (let ((_tl5571356545_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5571556538_)))
                                    (_hd5571456542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5571556538_))))
                                (if (gx#stx-null? _tl5571356545_)
                                    (___match6358363584_
                                     _e5566156615_
                                     _hd5566056619_
                                     _tl5565956622_
                                     _e5566456625_
                                     _hd5566356629_
                                     _tl5566256632_
                                     _e5566556635_
                                     _e5566856639_
                                     _hd5566756643_
                                     _tl5566656646_
                                     ___splice6346363464_
                                     _target5570456532_
                                     _tl5570656535_
                                     _e5571556538_
                                     _hd5571456542_
                                     _tl5571356545_)
                                    (if (gx#stx-null? _tl5566656646_)
                                        (___kont6346563466_ _hd5566756643_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565255866_))))))
                            (if (gx#stx-null? _tl5566656646_)
                                (___kont6346563466_ _hd5566756643_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565255866_))))))
                    (if (gx#stx-null? _tl5566656646_)
                        (___kont6346563466_ _hd5566756643_)
                        (let () (declare (not safe)) (_g5565255866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5566656646_)
                                                        (___kont6346563466_
                                                         _hd5566756643_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565255866_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5565255866_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5566556635_ '2))
                                            (if (gx#stx-pair? _tl5566256632_)
                                                (let ((_e5574256338_
                                                       (gx#syntax-e
                                                        _tl5566256632_)))
                                                  (let ((_tl5574056345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5574256338_)))
                                                        (_hd5574156342_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5574256338_))))
                                                    (if (gx#stx-pair?
                                                         _tl5574056345_)
                                                        (let ((_e5574556348_
                                                               (gx#syntax-e
                                                                _tl5574056345_)))
                                                          (let ((_tl5574356355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5574556348_)))
                        (_hd5574456352_
                         (let () (declare (not safe)) (##car _e5574556348_))))
                    (if (gx#stx-pair? _hd5574456352_)
                        (let ((_e5574856358_ (gx#syntax-e _hd5574456352_)))
                          (let ((_tl5574656365_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5574856358_)))
                                (_hd5574756362_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5574856358_))))
                            (if (gx#stx-pair? _hd5574756362_)
                                (let ((_e5575156368_
                                       (gx#syntax-e _hd5574756362_)))
                                  (let ((_tl5574956375_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5575156368_)))
                                        (_hd5575056372_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5575156368_))))
                                    (if (gx#identifier? _hd5575056372_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64227_|
                                             _hd5575056372_)
                                            (if (gx#stx-pair? _tl5574956375_)
                                                (let ((_e5575456378_
                                                       (gx#syntax-e
                                                        _tl5574956375_)))
                                                  (let ((_tl5575256385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5575456378_)))
                                                        (_hd5575356382_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5575456378_))))
                                                    (if (gx#stx-null?
                                                         _tl5575256385_)
                                                        (if (gx#stx-pair?
                                                             _tl5574656365_)
                                                            (let ((_e5575756388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5574656365_)))
                      (let ((_tl5575556395_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5575756388_)))
                            (_hd5575656392_
                             (let ()
                               (declare (not safe))
                               (##car _e5575756388_))))
                        (___kont6346763468_
                         _tl5574356355_
                         _tl5575556395_
                         _hd5575656392_
                         _hd5575356382_
                         _hd5574156342_
                         _hd5566056619_)))
                    (___kont6346963470_
                     _tl5574356355_
                     _tl5574656365_
                     _hd5574756362_
                     _hd5574156342_
                     _hd5566056619_))
                (___kont6346963470_
                 _tl5574356355_
                 _tl5574656365_
                 _hd5574756362_
                 _hd5574156342_
                 _hd5566056619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6346963470_
                                                 _tl5574356355_
                                                 _tl5574656365_
                                                 _hd5574756362_
                                                 _hd5574156342_
                                                 _hd5566056619_))
                                            (___kont6346963470_
                                             _tl5574356355_
                                             _tl5574656365_
                                             _hd5574756362_
                                             _hd5574156342_
                                             _hd5566056619_))
                                        (___kont6346963470_
                                         _tl5574356355_
                                         _tl5574656365_
                                         _hd5574756362_
                                         _hd5574156342_
                                         _hd5566056619_))))
                                (___kont6346963470_
                                 _tl5574356355_
                                 _tl5574656365_
                                 _hd5574756362_
                                 _hd5574156342_
                                 _hd5566056619_))))
                        (if (gx#stx-null? _hd5574456352_)
                            (___kont6347163472_
                             _tl5574356355_
                             _hd5574156342_
                             _hd5566056619_)
                            (let () (declare (not safe)) (_g5565255866_))))))
                (let () (declare (not safe)) (_g5565255866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565255866_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5566556635_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5566256632_)
                                                    (let ((_e5580956087_
                                                           (gx#syntax-e
                                                            _tl5566256632_)))
                                                      (let ((_tl5580756094_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5580956087_)))
                    (_hd5580856091_
                     (let () (declare (not safe)) (##car _e5580956087_))))
                (if (gx#stx-pair? _tl5580756094_)
                    (let ((_e5581256097_ (gx#syntax-e _tl5580756094_)))
                      (let ((_tl5581056104_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5581256097_)))
                            (_hd5581156101_
                             (let ()
                               (declare (not safe))
                               (##car _e5581256097_))))
                        (if (gx#stx-pair? _hd5581156101_)
                            (let ((_e5581556107_ (gx#syntax-e _hd5581156101_)))
                              (let ((_tl5581356114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5581556107_)))
                                    (_hd5581456111_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5581556107_))))
                                (___kont6347363474_
                                 _tl5581056104_
                                 _tl5581356114_
                                 _hd5581456111_
                                 _hd5580856091_
                                 _hd5566056619_)))
                            (if (gx#stx-pair/null? _hd5580856091_)
                                (let ((___splice6347763478_
                                       (gx#syntax-split-splice
                                        _hd5580856091_
                                        '0)))
                                  (let ((_tl5583455910_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6347763478_
                                            '1)))
                                        (_target5583255907_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6347763478_
                                            '0))))
                                    (if (gx#stx-null? _tl5583455910_)
                                        (___match6380563806_
                                         _e5566156615_
                                         _hd5566056619_
                                         _tl5565956622_
                                         _e5566456625_
                                         _hd5566356629_
                                         _tl5566256632_
                                         _e5566556635_
                                         _e5580956087_
                                         _hd5580856091_
                                         _tl5580756094_
                                         ___splice6347763478_
                                         _target5583255907_
                                         _tl5583455910_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565255866_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5565255866_))))))
                    (if (gx#stx-pair/null? _hd5580856091_)
                        (let ((___splice6347763478_
                               (gx#syntax-split-splice _hd5580856091_ '0)))
                          (let ((_tl5583455910_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6347763478_ '1)))
                                (_target5583255907_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6347763478_ '0))))
                            (if (gx#stx-null? _tl5583455910_)
                                (___match6380563806_
                                 _e5566156615_
                                 _hd5566056619_
                                 _tl5565956622_
                                 _e5566456625_
                                 _hd5566356629_
                                 _tl5566256632_
                                 _e5566556635_
                                 _e5580956087_
                                 _hd5580856091_
                                 _tl5580756094_
                                 ___splice6347763478_
                                 _target5583255907_
                                 _tl5583455910_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565255866_)))))
                        (let () (declare (not safe)) (_g5565255866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565255866_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565255866_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5565255866_)))))
                          (let () (declare (not safe)) (_g5565255866_)))))
                  (let () (declare (not safe)) (_g5565255866_))))))))))
