(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64232_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64233_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55354_)
        (let* ((_g5535855376_
                (lambda (_g5535955372_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5535955372_)))
               (_g5535755432_
                (lambda (_g5535955380_)
                  (if (gx#stx-pair? _g5535955380_)
                      (let ((_e5536455383_ (gx#syntax-e _g5535955380_)))
                        (let ((_hd5536355387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5536455383_)))
                              (_tl5536255390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5536455383_))))
                          (if (gx#stx-pair? _tl5536255390_)
                              (let ((_e5536755393_
                                     (gx#syntax-e _tl5536255390_)))
                                (let ((_hd5536655397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5536755393_)))
                                      (_tl5536555400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5536755393_))))
                                  (if (gx#stx-pair? _tl5536555400_)
                                      (let ((_e5537055403_
                                             (gx#syntax-e _tl5536555400_)))
                                        (let ((_hd5536955407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5537055403_)))
                                              (_tl5536855410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5537055403_))))
                                          (if (gx#stx-null? _tl5536855410_)
                                              ((lambda (_L55413_ _L55415_)
                                                 (let ((__tmp63993
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63945
                                                        (let ((__tmp63984
                                                               (let ((__tmp63985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63992 (gx#datum->syntax '#f 'key))
                                    (__tmp63986
                                     (let ((__tmp63991
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp63987
                                            (let ((__tmp63988
                                                   (let ((__tmp63990
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp63989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp63990
                                                           __tmp63989))))
                                              (declare (not safe))
                                              (cons __tmp63988 '()))))
                                       (declare (not safe))
                                       (cons __tmp63991 __tmp63987))))
                                (declare (not safe))
                                (cons __tmp63992 __tmp63986))))
                         (declare (not safe))
                         (cons _L55415_ __tmp63985)))
                      (__tmp63946
                       (let ((__tmp63947
                              (let ((__tmp63983 (gx#datum->syntax '#f 'cond))
                                    (__tmp63948
                                     (let ((__tmp63965
                                            (let ((__tmp63970
                                                   (let ((__tmp63982
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp63971
                                                          (let ((__tmp63978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63981 (gx#datum->syntax '#f 'pair?))
                               (__tmp63979
                                (let ((__tmp63980 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp63980 '()))))
                           (declare (not safe))
                           (cons __tmp63981 __tmp63979)))
                        (__tmp63972
                         (let ((__tmp63973
                                (let ((__tmp63974
                                       (let ((__tmp63977
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp63975
                                              (let ((__tmp63976
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp63976 '()))))
                                         (declare (not safe))
                                         (cons __tmp63977 __tmp63975))))
                                  (declare (not safe))
                                  (cons _L55413_ __tmp63974))))
                           (declare (not safe))
                           (cons __tmp63973 '()))))
                    (declare (not safe))
                    (cons __tmp63978 __tmp63972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63982
                                                           __tmp63971)))
                                                  (__tmp63966
                                                   (let ((__tmp63969
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp63967
                                                          (let ((__tmp63968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp63968 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63969
                                                           __tmp63967))))
                                              (declare (not safe))
                                              (cons __tmp63970 __tmp63966)))
                                           (__tmp63949
                                            (let ((__tmp63955
                                                   (let ((__tmp63961
                                                          (let ((__tmp63964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp63962
                         (let ((__tmp63963 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63963 '()))))
                    (declare (not safe))
                    (cons __tmp63964 __tmp63962)))
                 (__tmp63956
                  (let ((__tmp63957
                         (let ((__tmp63960 (gx#datum->syntax '#f 'default))
                               (__tmp63958
                                (let ((__tmp63959 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp63959 '()))))
                           (declare (not safe))
                           (cons __tmp63960 __tmp63958))))
                    (declare (not safe))
                    (cons __tmp63957 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63961
                                                           __tmp63956)))
                                                  (__tmp63950
                                                   (let ((__tmp63951
                                                          (let ((__tmp63954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp63952
                         (let ((__tmp63953 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63953 '()))))
                    (declare (not safe))
                    (cons __tmp63954 __tmp63952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63951 '()))))
                                              (declare (not safe))
                                              (cons __tmp63955 __tmp63950))))
                                       (declare (not safe))
                                       (cons __tmp63965 __tmp63949))))
                                (declare (not safe))
                                (cons __tmp63983 __tmp63948))))
                         (declare (not safe))
                         (cons __tmp63947 '()))))
                  (declare (not safe))
                  (cons __tmp63984 __tmp63946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63993
                                                         __tmp63945)))
                                               _hd5536955407_
                                               _hd5536655397_)
                                              (_g5535855376_ _g5535955380_))))
                                      (_g5535855376_ _g5535955380_))))
                              (_g5535855376_ _g5535955380_))))
                      (_g5535855376_ _g5535955380_)))))
          (_g5535755432_ _$stx55354_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55436_)
        (let* ((_g5544055458_
                (lambda (_g5544155454_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5544155454_)))
               (_g5543955513_
                (lambda (_g5544155462_)
                  (if (gx#stx-pair? _g5544155462_)
                      (let ((_e5544655465_ (gx#syntax-e _g5544155462_)))
                        (let ((_hd5544555469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5544655465_)))
                              (_tl5544455472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5544655465_))))
                          (if (gx#stx-pair? _tl5544455472_)
                              (let ((_e5544955475_
                                     (gx#syntax-e _tl5544455472_)))
                                (let ((_hd5544855479_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5544955475_)))
                                      (_tl5544755482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5544955475_))))
                                  (if (gx#stx-pair? _tl5544755482_)
                                      (let ((_e5545255485_
                                             (gx#syntax-e _tl5544755482_)))
                                        (let ((_hd5545155489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5545255485_)))
                                              (_tl5545055492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5545255485_))))
                                          (if (gx#stx-null? _tl5545055492_)
                                              ((lambda (_L55495_ _L55497_)
                                                 (let ((__tmp64063
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63994
                                                        (let ((__tmp64054
                                                               (let ((__tmp64055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64062 (gx#datum->syntax '#f 'key))
                                    (__tmp64056
                                     (let ((__tmp64061
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64057
                                            (let ((__tmp64058
                                                   (let ((__tmp64060
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64059
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64060
                                                           __tmp64059))))
                                              (declare (not safe))
                                              (cons __tmp64058 '()))))
                                       (declare (not safe))
                                       (cons __tmp64061 __tmp64057))))
                                (declare (not safe))
                                (cons __tmp64062 __tmp64056))))
                         (declare (not safe))
                         (cons _L55497_ __tmp64055)))
                      (__tmp63995
                       (let ((__tmp63996
                              (let ((__tmp64053 (gx#datum->syntax '#f 'let))
                                    (__tmp63997
                                     (let ((__tmp64052
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63998
                                            (let ((__tmp64047
                                                   (let ((__tmp64048
                                                          (let ((__tmp64051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64049
                         (let ((__tmp64050 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64050 '()))))
                    (declare (not safe))
                    (cons __tmp64051 __tmp64049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64048 '())))
                                                  (__tmp63999
                                                   (let ((__tmp64000
                                                          (let ((__tmp64046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64001
                         (let ((__tmp64045 (gx#datum->syntax '#f 'rest))
                               (__tmp64002
                                (let ((__tmp64021
                                       (let ((__tmp64038
                                              (let ((__tmp64044
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64039
                                                     (let ((__tmp64043
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64040
                                                            (let ((__tmp64042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64041 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64042 __tmp64041))))
               (declare (not safe))
               (cons __tmp64043 __tmp64040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64044 __tmp64039)))
                                             (__tmp64022
                                              (let ((__tmp64023
                                                     (let ((__tmp64037
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64024
                                                            (let ((__tmp64032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64033
                                  (let ((__tmp64036 (gx#datum->syntax '#f 'k))
                                        (__tmp64034
                                         (let ((__tmp64035
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64035 '()))))
                                    (declare (not safe))
                                    (cons __tmp64036 __tmp64034))))
                             (declare (not safe))
                             (cons _L55495_ __tmp64033)))
                          (__tmp64025
                           (let ((__tmp64031 (gx#datum->syntax '#f 'v))
                                 (__tmp64026
                                  (let ((__tmp64027
                                         (let ((__tmp64030
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64028
                                                (let ((__tmp64029
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64029 '()))))
                                           (declare (not safe))
                                           (cons __tmp64030 __tmp64028))))
                                    (declare (not safe))
                                    (cons __tmp64027 '()))))
                             (declare (not safe))
                             (cons __tmp64031 __tmp64026))))
                      (declare (not safe))
                      (cons __tmp64032 __tmp64025))))
               (declare (not safe))
               (cons __tmp64037 __tmp64024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64023 '()))))
                                         (declare (not safe))
                                         (cons __tmp64038 __tmp64022)))
                                      (__tmp64003
                                       (let ((__tmp64004
                                              (let ((__tmp64020
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64005
                                                     (let ((__tmp64006
                                                            (let ((__tmp64019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64007
                           (let ((__tmp64015
                                  (let ((__tmp64018
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64016
                                         (let ((__tmp64017
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64017 '()))))
                                    (declare (not safe))
                                    (cons __tmp64018 __tmp64016)))
                                 (__tmp64008
                                  (let ((__tmp64011
                                         (let ((__tmp64014
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64012
                                                (let ((__tmp64013
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64013 '()))))
                                           (declare (not safe))
                                           (cons __tmp64014 __tmp64012)))
                                        (__tmp64009
                                         (let ((__tmp64010
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64010 '()))))
                                    (declare (not safe))
                                    (cons __tmp64011 __tmp64009))))
                             (declare (not safe))
                             (cons __tmp64015 __tmp64008))))
                      (declare (not safe))
                      (cons __tmp64019 __tmp64007))))
               (declare (not safe))
               (cons __tmp64006 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64020 __tmp64005))))
                                         (declare (not safe))
                                         (cons __tmp64004 '()))))
                                  (declare (not safe))
                                  (cons __tmp64021 __tmp64003))))
                           (declare (not safe))
                           (cons __tmp64045 __tmp64002))))
                    (declare (not safe))
                    (cons __tmp64046 __tmp64001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64000 '()))))
                                              (declare (not safe))
                                              (cons __tmp64047 __tmp63999))))
                                       (declare (not safe))
                                       (cons __tmp64052 __tmp63998))))
                                (declare (not safe))
                                (cons __tmp64053 __tmp63997))))
                         (declare (not safe))
                         (cons __tmp63996 '()))))
                  (declare (not safe))
                  (cons __tmp64054 __tmp63995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64063
                                                         __tmp63994)))
                                               _hd5545155489_
                                               _hd5544855479_)
                                              (_g5544055458_ _g5544155462_))))
                                      (_g5544055458_ _g5544155462_))))
                              (_g5544055458_ _g5544155462_))))
                      (_g5544055458_ _g5544155462_)))))
          (_g5543955513_ _$stx55436_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55517_)
        (let* ((_g5552155539_
                (lambda (_g5552255535_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5552255535_)))
               (_g5552055594_
                (lambda (_g5552255543_)
                  (if (gx#stx-pair? _g5552255543_)
                      (let ((_e5552755546_ (gx#syntax-e _g5552255543_)))
                        (let ((_hd5552655550_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5552755546_)))
                              (_tl5552555553_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5552755546_))))
                          (if (gx#stx-pair? _tl5552555553_)
                              (let ((_e5553055556_
                                     (gx#syntax-e _tl5552555553_)))
                                (let ((_hd5552955560_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5553055556_)))
                                      (_tl5552855563_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5553055556_))))
                                  (if (gx#stx-pair? _tl5552855563_)
                                      (let ((_e5553355566_
                                             (gx#syntax-e _tl5552855563_)))
                                        (let ((_hd5553255570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5553355566_)))
                                              (_tl5553155573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5553355566_))))
                                          (if (gx#stx-null? _tl5553155573_)
                                              ((lambda (_L55576_ _L55578_)
                                                 (let ((__tmp64134
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64064
                                                        (let ((__tmp64129
                                                               (let ((__tmp64130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64133 (gx#datum->syntax '#f 'el))
                                    (__tmp64131
                                     (let ((__tmp64132
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64132 '()))))
                                (declare (not safe))
                                (cons __tmp64133 __tmp64131))))
                         (declare (not safe))
                         (cons _L55578_ __tmp64130)))
                      (__tmp64065
                       (let ((__tmp64066
                              (let ((__tmp64128 (gx#datum->syntax '#f 'let))
                                    (__tmp64067
                                     (let ((__tmp64127
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64068
                                            (let ((__tmp64116
                                                   (let ((__tmp64123
                                                          (let ((__tmp64126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64124
                         (let ((__tmp64125 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64125 '()))))
                    (declare (not safe))
                    (cons __tmp64126 __tmp64124)))
                 (__tmp64117
                  (let ((__tmp64118
                         (let ((__tmp64122 (gx#datum->syntax '#f 'r))
                               (__tmp64119
                                (let ((__tmp64120
                                       (let ((__tmp64121
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64121 '()))))
                                  (declare (not safe))
                                  (cons __tmp64120 '()))))
                           (declare (not safe))
                           (cons __tmp64122 __tmp64119))))
                    (declare (not safe))
                    (cons __tmp64118 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64123
                                                           __tmp64117)))
                                                  (__tmp64069
                                                   (let ((__tmp64070
                                                          (let ((__tmp64115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64071
                         (let ((__tmp64114 (gx#datum->syntax '#f 'rest))
                               (__tmp64072
                                (let ((__tmp64078
                                       (let ((__tmp64109
                                              (let ((__tmp64113
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64110
                                                     (let ((__tmp64112
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64111
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64112
                                                             __tmp64111))))
                                                (declare (not safe))
                                                (cons __tmp64113 __tmp64110)))
                                             (__tmp64079
                                              (let ((__tmp64080
                                                     (let ((__tmp64108
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64081
                                                            (let ((__tmp64103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64104
                                  (let ((__tmp64107 (gx#datum->syntax '#f 'el))
                                        (__tmp64105
                                         (let ((__tmp64106
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64106 '()))))
                                    (declare (not safe))
                                    (cons __tmp64107 __tmp64105))))
                             (declare (not safe))
                             (cons _L55576_ __tmp64104)))
                          (__tmp64082
                           (let ((__tmp64095
                                  (let ((__tmp64102
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64096
                                         (let ((__tmp64101
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64097
                                                (let ((__tmp64100
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64098
                                                       (let ((__tmp64099
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64099
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64100
                                                        __tmp64098))))
                                           (declare (not safe))
                                           (cons __tmp64101 __tmp64097))))
                                    (declare (not safe))
                                    (cons __tmp64102 __tmp64096)))
                                 (__tmp64083
                                  (let ((__tmp64084
                                         (let ((__tmp64094
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64085
                                                (let ((__tmp64093
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64086
                                                       (let ((__tmp64087
                                                              (let ((__tmp64092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64088
                             (let ((__tmp64091 (gx#datum->syntax '#f 'hd))
                                   (__tmp64089
                                    (let ((__tmp64090
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64090 '()))))
                               (declare (not safe))
                               (cons __tmp64091 __tmp64089))))
                        (declare (not safe))
                        (cons __tmp64092 __tmp64088))))
                 (declare (not safe))
                 (cons __tmp64087 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64093
                                                        __tmp64086))))
                                           (declare (not safe))
                                           (cons __tmp64094 __tmp64085))))
                                    (declare (not safe))
                                    (cons __tmp64084 '()))))
                             (declare (not safe))
                             (cons __tmp64095 __tmp64083))))
                      (declare (not safe))
                      (cons __tmp64103 __tmp64082))))
               (declare (not safe))
               (cons __tmp64108 __tmp64081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64080 '()))))
                                         (declare (not safe))
                                         (cons __tmp64109 __tmp64079)))
                                      (__tmp64073
                                       (let ((__tmp64074
                                              (let ((__tmp64077
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64075
                                                     (let ((__tmp64076
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64076 '()))))
                                                (declare (not safe))
                                                (cons __tmp64077 __tmp64075))))
                                         (declare (not safe))
                                         (cons __tmp64074 '()))))
                                  (declare (not safe))
                                  (cons __tmp64078 __tmp64073))))
                           (declare (not safe))
                           (cons __tmp64114 __tmp64072))))
                    (declare (not safe))
                    (cons __tmp64115 __tmp64071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64070 '()))))
                                              (declare (not safe))
                                              (cons __tmp64116 __tmp64069))))
                                       (declare (not safe))
                                       (cons __tmp64127 __tmp64068))))
                                (declare (not safe))
                                (cons __tmp64128 __tmp64067))))
                         (declare (not safe))
                         (cons __tmp64066 '()))))
                  (declare (not safe))
                  (cons __tmp64129 __tmp64065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64134
                                                         __tmp64064)))
                                               _hd5553255570_
                                               _hd5552955560_)
                                              (_g5552155539_ _g5552255543_))))
                                      (_g5552155539_ _g5552255543_))))
                              (_g5552155539_ _g5552255543_))))
                      (_g5552155539_ _g5552255543_)))))
          (_g5552055594_ _$stx55517_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55598_)
        (let* ((_g5560255613_
                (lambda (_g5560355609_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5560355609_)))
               (_g5560155642_
                (lambda (_g5560355617_)
                  (if (gx#stx-pair? _g5560355617_)
                      (let ((_e5560755620_ (gx#syntax-e _g5560355617_)))
                        (let ((_hd5560655624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5560755620_)))
                              (_tl5560555627_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5560755620_))))
                          ((lambda (_L55630_)
                             (let ((__tmp64136 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64135
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55630_))))
                               (declare (not safe))
                               (cons __tmp64136 __tmp64135)))
                           _tl5560555627_)))
                      (_g5560255613_ _g5560355617_)))))
          (_g5560155642_ _$stx55598_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55646_)
        (let* ((___stx6345963460_ _$stx55646_)
               (_g5565755871_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6345963460_))))
          (let ((___kont6346263463_
                 (lambda (_L56724_ _L56726_ _L56727_ _L56728_ _L56729_)
                   (let ((__tmp64137
                          (let ((__tmp64138
                                 (let ((__tmp64139
                                        (let ((__tmp64143
                                               (let ((__tmp64144
                                                      (lambda (_g5675956762_
                                                               _g5676056765_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5675956762_
                                                                _g5676056765_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64144
                                                         '()
                                                         _L56727_)))
                                              (__tmp64140
                                               (let ((__tmp64141
                                                      (let ((__tmp64142
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56724_ '()))))
                (declare (not safe))
                (cons _L56726_ __tmp64142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56728_ __tmp64141))))
                                          (declare (not safe))
                                          (cons __tmp64143 __tmp64140))))
                                   (declare (not safe))
                                   (cons '() __tmp64139))))
                            (declare (not safe))
                            (cons '2 __tmp64138))))
                     (declare (not safe))
                     (cons _L56729_ __tmp64137))))
                (___kont6346663467_
                 (lambda (_L56577_ _L56579_ _L56580_ _L56581_)
                   (let ((__tmp64145
                          (let ((__tmp64146
                                 (let ((__tmp64147
                                        (let ((__tmp64151
                                               (let ((__tmp64152
                                                      (lambda (_g5660456607_
                                                               _g5660556610_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5660456607_
                                                                _g5660556610_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64152
                                                         '()
                                                         _L56579_)))
                                              (__tmp64148
                                               (let ((__tmp64149
                                                      (let ((__tmp64150
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56577_ '()))))
                (declare (not safe))
                (cons _L56577_ __tmp64150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56580_ __tmp64149))))
                                          (declare (not safe))
                                          (cons __tmp64151 __tmp64148))))
                                   (declare (not safe))
                                   (cons '() __tmp64147))))
                            (declare (not safe))
                            (cons '2 __tmp64146))))
                     (declare (not safe))
                     (cons _L56581_ __tmp64145))))
                (___kont6347063471_
                 (lambda (_L56480_)
                   (let ((__tmp64164 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64153
                          (let ((__tmp64154
                                 (let ((__tmp64161
                                        (let ((__tmp64163
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64162
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64163 __tmp64162)))
                                       (__tmp64155
                                        (let ((__tmp64158
                                               (let ((__tmp64160
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64159
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64160 __tmp64159)))
                                              (__tmp64156
                                               (let ((__tmp64157
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64157))))
                                          (declare (not safe))
                                          (cons __tmp64158 __tmp64156))))
                                   (declare (not safe))
                                   (cons __tmp64161 __tmp64155))))
                            (declare (not safe))
                            (cons _L56480_ __tmp64154))))
                     (declare (not safe))
                     (cons __tmp64164 __tmp64153))))
                (___kont6347263473_
                 (lambda (_L56403_
                          _L56405_
                          _L56406_
                          _L56407_
                          _L56408_
                          _L56409_)
                   (let ((__tmp64165
                          (let ((__tmp64166
                                 (let ((__tmp64168
                                        (let ((__tmp64169
                                               (let ((__tmp64170
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56406_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56407_ __tmp64170))))
                                          (declare (not safe))
                                          (cons __tmp64169 _L56408_)))
                                       (__tmp64167
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56405_ _L56403_))))
                                   (declare (not safe))
                                   (cons __tmp64168 __tmp64167))))
                            (declare (not safe))
                            (cons '2 __tmp64166))))
                     (declare (not safe))
                     (cons _L56409_ __tmp64165))))
                (___kont6347463475_
                 (lambda (_L56284_ _L56286_ _L56287_ _L56288_ _L56289_)
                   (let ((__tmp64171
                          (let ((__tmp64172
                                 (let ((__tmp64174
                                        (let ((__tmp64175
                                               (let ((__tmp64176
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56287_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56287_ __tmp64176))))
                                          (declare (not safe))
                                          (cons __tmp64175 _L56288_)))
                                       (__tmp64173
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56286_ _L56284_))))
                                   (declare (not safe))
                                   (cons __tmp64174 __tmp64173))))
                            (declare (not safe))
                            (cons '2 __tmp64172))))
                     (declare (not safe))
                     (cons _L56289_ __tmp64171))))
                (___kont6347663477_
                 (lambda (_L56201_ _L56203_ _L56204_)
                   (let ((__tmp64177
                          (let ((__tmp64178
                                 (let ((__tmp64179
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56203_ _L56201_))))
                                   (declare (not safe))
                                   (cons '() __tmp64179))))
                            (declare (not safe))
                            (cons '3 __tmp64178))))
                     (declare (not safe))
                     (cons _L56204_ __tmp64177))))
                (___kont6347863479_
                 (lambda (_L56122_ _L56124_ _L56125_ _L56126_ _L56127_)
                   (let ((__tmp64180
                          (let ((__tmp64181
                                 (let ((__tmp64183
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56125_ _L56126_)))
                                       (__tmp64182
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56124_ _L56122_))))
                                   (declare (not safe))
                                   (cons __tmp64183 __tmp64182))))
                            (declare (not safe))
                            (cons '3 __tmp64181))))
                     (declare (not safe))
                     (cons _L56127_ __tmp64180))))
                (___kont6348063481_
                 (lambda (_L56006_
                          _L56008_
                          _L56009_
                          _L56010_
                          _L56011_
                          _L56012_)
                   (let ((__tmp64231 (gx#datum->syntax '#f 'let))
                         (__tmp64184
                          (let ((__tmp64219
                                 (let ((__tmp64228
                                        (let ((__tmp64230
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64229
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56009_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64230 __tmp64229)))
                                       (__tmp64220
                                        (let ((__tmp64221
                                               (let ((__tmp64227
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64222
                                                      (let ((__tmp64223
                                                             (let ((__tmp64226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64224
                            (let ((__tmp64225
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56006_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64225))))
                       (declare (not safe))
                       (cons __tmp64226 __tmp64224))))
                (declare (not safe))
                (cons __tmp64223 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64227
                                                       __tmp64222))))
                                          (declare (not safe))
                                          (cons __tmp64221 '()))))
                                   (declare (not safe))
                                   (cons __tmp64228 __tmp64220)))
                                (__tmp64185
                                 (let ((__tmp64186
                                        (let ((__tmp64218
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64187
                                               (let ((__tmp64217
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64188
                                                      (let ((__tmp64192
                                                             (let ((__tmp64216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64193
                            (let ((__tmp64215 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64194
                                   (let ((__tmp64210
                                          (let ((__tmp64214
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64211
                                                 (let ((__tmp64212
                                                        (let ((__tmp64213
                                                               (lambda (_g5604656049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5604756052_)
                         (let ()
                           (declare (not safe))
                           (cons _g5604656049_ _g5604756052_)))))
                  (declare (not safe))
                  (foldr1 __tmp64213 '() _L56011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64212 '()))))
                                            (declare (not safe))
                                            (cons __tmp64214 __tmp64211)))
                                         (__tmp64195
                                          (let ((__tmp64202
                                                 (let ((__tmp64209
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64203
                                                        (let ((__tmp64204
                                                               (lambda (_g5604456055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5604556058_)
                         (let ((__tmp64205
                                (let ((__tmp64208
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64206
                                       (let ((__tmp64207
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5604456055_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64207))))
                                  (declare (not safe))
                                  (cons __tmp64208 __tmp64206))))
                           (declare (not safe))
                           (cons __tmp64205 _g5604556058_)))))
                  (declare (not safe))
                  (foldr1 __tmp64204 '() _L56010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64209
                                                         __tmp64203)))
                                                (__tmp64196
                                                 (let ((__tmp64199
                                                        (let ((__tmp64201
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64200
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56008_ '()))))
                  (declare (not safe))
                  (cons __tmp64201 __tmp64200)))
               (__tmp64197
                (let ((__tmp64198 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64198 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64199
                                                         __tmp64197))))
                                            (declare (not safe))
                                            (cons __tmp64202 __tmp64196))))
                                     (declare (not safe))
                                     (cons __tmp64210 __tmp64195))))
                              (declare (not safe))
                              (cons __tmp64215 __tmp64194))))
                       (declare (not safe))
                       (cons __tmp64216 __tmp64193)))
                    (__tmp64189
                     (let ((__tmp64190
                            (let ((__tmp64191 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64191 '()))))
                       (declare (not safe))
                       (cons __tmp64190 '()))))
                (declare (not safe))
                (cons __tmp64192 __tmp64189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64217
                                                       __tmp64188))))
                                          (declare (not safe))
                                          (cons __tmp64218 __tmp64187))))
                                   (declare (not safe))
                                   (cons __tmp64186 '()))))
                            (declare (not safe))
                            (cons __tmp64219 __tmp64185))))
                     (declare (not safe))
                     (cons __tmp64231 __tmp64184)))))
            (let* ((___match6381063811_
                    (lambda (_e5582955878_
                             _hd5582855882_
                             _tl5582755885_
                             _e5583255888_
                             _hd5583155892_
                             _tl5583055895_
                             _e5583355898_
                             _e5583655902_
                             _hd5583555906_
                             _tl5583455909_
                             ___splice6348263483_
                             _target5583755912_
                             _tl5583955915_)
                      (letrec ((_loop5584055918_
                                (lambda (_hd5583855922_
                                         _exprs5584455925_
                                         _names5584555927_)
                                  (if (gx#stx-pair? _hd5583855922_)
                                      (let ((_e5584155930_
                                             (gx#syntax-e _hd5583855922_)))
                                        (let ((_lp-tl5584355937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5584155930_)))
                                              (_lp-hd5584255934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5584155930_))))
                                          (if (gx#stx-pair? _lp-hd5584255934_)
                                              (let ((_e5585055940_
                                                     (gx#syntax-e
                                                      _lp-hd5584255934_)))
                                                (let ((_tl5584855947_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5585055940_)))
                                                      (_hd5584955944_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5585055940_))))
                                                  (if (gx#stx-pair?
                                                       _tl5584855947_)
                                                      (let ((_e5585355950_
                                                             (gx#syntax-e
                                                              _tl5584855947_)))
                                                        (let ((_tl5585155957_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5585355950_)))
                      (_hd5585255954_
                       (let () (declare (not safe)) (##car _e5585355950_))))
                  (if (gx#stx-null? _tl5585155957_)
                      (_loop5584055918_
                       _lp-tl5584355937_
                       (let ()
                         (declare (not safe))
                         (cons _hd5585255954_ _exprs5584455925_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5584955944_ _names5584555927_)))
                      (let () (declare (not safe)) (_g5565755871_)))))
              (let () (declare (not safe)) (_g5565755871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5565755871_)))))
                                      (let ((_names5584755963_
                                             (reverse _names5584555927_))
                                            (_exprs5584655960_
                                             (reverse _exprs5584455925_)))
                                        (if (gx#stx-pair? _tl5583455909_)
                                            (let ((_e5585655966_
                                                   (gx#syntax-e
                                                    _tl5583455909_)))
                                              (let ((_tl5585455973_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5585655966_)))
                                                    (_hd5585555970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5585655966_))))
                                                (if (gx#stx-null?
                                                     _hd5585555970_)
                                                    (if (gx#stx-pair?
                                                         _tl5585455973_)
                                                        (let ((_e5585955976_
                                                               (gx#syntax-e
                                                                _tl5585455973_)))
                                                          (let ((_tl5585755983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5585955976_)))
                        (_hd5585855980_
                         (let () (declare (not safe)) (##car _e5585955976_))))
                    (if (gx#stx-pair? _tl5585755983_)
                        (let ((_e5586255986_ (gx#syntax-e _tl5585755983_)))
                          (let ((_tl5586055993_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5586255986_)))
                                (_hd5586155990_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5586255986_))))
                            (if (gx#stx-pair? _tl5586055993_)
                                (let ((_e5586555996_
                                       (gx#syntax-e _tl5586055993_)))
                                  (let ((_tl5586356003_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5586555996_)))
                                        (_hd5586456000_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5586555996_))))
                                    (if (gx#stx-null? _tl5586356003_)
                                        (___kont6348063481_
                                         _hd5586456000_
                                         _hd5586155990_
                                         _hd5585855980_
                                         _exprs5584655960_
                                         _names5584755963_
                                         _hd5582855882_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565755871_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5565755871_)))))
                        (let () (declare (not safe)) (_g5565755871_)))))
                (let () (declare (not safe)) (_g5565755871_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565755871_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5565755871_))))))))
                        (_loop5584055918_ _target5583755912_ '() '()))))
                   (___match6358863589_
                    (lambda (_e5570156503_
                             _hd5570056507_
                             _tl5569956510_
                             _e5570456513_
                             _hd5570356517_
                             _tl5570256520_
                             _e5570556523_
                             _e5570856527_
                             _hd5570756531_
                             _tl5570656534_
                             ___splice6346863469_
                             _target5570956537_
                             _tl5571156540_
                             _e5572056543_
                             _hd5571956547_
                             _tl5571856550_)
                      (letrec ((_loop5571256553_
                                (lambda (_hd5571056557_ _exprs5571656560_)
                                  (if (gx#stx-pair? _hd5571056557_)
                                      (let ((_e5571356563_
                                             (gx#syntax-e _hd5571056557_)))
                                        (let ((_lp-tl5571556570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5571356563_)))
                                              (_lp-hd5571456567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5571356563_))))
                                          (_loop5571256553_
                                           _lp-tl5571556570_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5571456567_
                                                   _exprs5571656560_)))))
                                      (let ((_exprs5571756573_
                                             (reverse _exprs5571656560_)))
                                        (___kont6346663467_
                                         _hd5571956547_
                                         _exprs5571756573_
                                         _hd5570756531_
                                         _hd5570056507_))))))
                        (_loop5571256553_ _target5570956537_ '()))))
                   (___match6354863549_
                    (lambda (_e5566656620_
                             _hd5566556624_
                             _tl5566456627_
                             _e5566956630_
                             _hd5566856634_
                             _tl5566756637_
                             _e5567056640_
                             _e5567356644_
                             _hd5567256648_
                             _tl5567156651_
                             ___splice6346463465_
                             _target5567456654_
                             _tl5567656657_
                             _e5568556660_
                             _hd5568456664_
                             _tl5568356667_
                             _e5568856670_
                             _hd5568756674_
                             _tl5568656677_
                             _e5569156680_
                             _hd5569056684_
                             _tl5568956687_
                             _e5569456690_
                             _hd5569356694_
                             _tl5569256697_)
                      (letrec ((_loop5567756700_
                                (lambda (_hd5567556704_ _exprs5568156707_)
                                  (if (gx#stx-pair? _hd5567556704_)
                                      (let ((_e5567856710_
                                             (gx#syntax-e _hd5567556704_)))
                                        (let ((_lp-tl5568056717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5567856710_)))
                                              (_lp-hd5567956714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5567856710_))))
                                          (_loop5567756700_
                                           _lp-tl5568056717_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5567956714_
                                                   _exprs5568156707_)))))
                                      (let ((_exprs5568256720_
                                             (reverse _exprs5568156707_)))
                                        (___kont6346263463_
                                         _hd5569356694_
                                         _hd5569056684_
                                         _exprs5568256720_
                                         _hd5567256648_
                                         _hd5566556624_))))))
                        (_loop5567756700_ _target5567456654_ '())))))
              (if (gx#stx-pair? ___stx6345963460_)
                  (let ((_e5566656620_ (gx#syntax-e ___stx6345963460_)))
                    (let ((_tl5566456627_
                           (let () (declare (not safe)) (##cdr _e5566656620_)))
                          (_hd5566556624_
                           (let ()
                             (declare (not safe))
                             (##car _e5566656620_))))
                      (if (gx#stx-pair? _tl5566456627_)
                          (let ((_e5566956630_ (gx#syntax-e _tl5566456627_)))
                            (let ((_tl5566756637_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5566956630_)))
                                  (_hd5566856634_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5566956630_))))
                              (if (gx#stx-datum? _hd5566856634_)
                                  (let ((_e5567056640_
                                         (gx#stx-e _hd5566856634_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5567056640_ '1))
                                        (if (gx#stx-pair? _tl5566756637_)
                                            (let ((_e5567356644_
                                                   (gx#syntax-e
                                                    _tl5566756637_)))
                                              (let ((_tl5567156651_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5567356644_)))
                                                    (_hd5567256648_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5567356644_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5567156651_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5567156651_)
                                                              '2)
                                                        (let ((___splice6346463465_
                                                               (gx#syntax-split-splice
                                                                _tl5567156651_
                                                                '2)))
                                                          (let ((_tl5567656657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6346463465_ '1)))
                        (_target5567456654_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6346463465_ '0))))
                    (if (gx#stx-pair? _tl5567656657_)
                        (let ((_e5568556660_ (gx#syntax-e _tl5567656657_)))
                          (let ((_tl5568356667_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5568556660_)))
                                (_hd5568456664_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5568556660_))))
                            (if (gx#stx-pair? _hd5568456664_)
                                (let ((_e5568856670_
                                       (gx#syntax-e _hd5568456664_)))
                                  (let ((_tl5568656677_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5568856670_)))
                                        (_hd5568756674_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5568856670_))))
                                    (if (gx#identifier? _hd5568756674_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64233_|
                                             _hd5568756674_)
                                            (if (gx#stx-pair? _tl5568656677_)
                                                (let ((_e5569156680_
                                                       (gx#syntax-e
                                                        _tl5568656677_)))
                                                  (let ((_tl5568956687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5569156680_)))
                                                        (_hd5569056684_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5569156680_))))
                                                    (if (gx#stx-null?
                                                         _tl5568956687_)
                                                        (if (gx#stx-pair?
                                                             _tl5568356667_)
                                                            (let ((_e5569456690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5568356667_)))
                      (let ((_tl5569256697_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5569456690_)))
                            (_hd5569356694_
                             (let ()
                               (declare (not safe))
                               (##car _e5569456690_))))
                        (if (gx#stx-null? _tl5569256697_)
                            (___match6354863549_
                             _e5566656620_
                             _hd5566556624_
                             _tl5566456627_
                             _e5566956630_
                             _hd5566856634_
                             _tl5566756637_
                             _e5567056640_
                             _e5567356644_
                             _hd5567256648_
                             _tl5567156651_
                             ___splice6346463465_
                             _target5567456654_
                             _tl5567656657_
                             _e5568556660_
                             _hd5568456664_
                             _tl5568356667_
                             _e5568856670_
                             _hd5568756674_
                             _tl5568656677_
                             _e5569156680_
                             _hd5569056684_
                             _tl5568956687_
                             _e5569456690_
                             _hd5569356694_
                             _tl5569256697_)
                            (if (fx>= (gx#stx-length _tl5567156651_) '1)
                                (let ((___splice6346863469_
                                       (gx#syntax-split-splice
                                        _tl5567156651_
                                        '1)))
                                  (let ((_tl5571156540_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6346863469_
                                            '1)))
                                        (_target5570956537_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6346863469_
                                            '0))))
                                    (if (gx#stx-pair? _tl5571156540_)
                                        (let ((_e5572056543_
                                               (gx#syntax-e _tl5571156540_)))
                                          (let ((_tl5571856550_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5572056543_)))
                                                (_hd5571956547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5572056543_))))
                                            (if (gx#stx-null? _tl5571856550_)
                                                (___match6358863589_
                                                 _e5566656620_
                                                 _hd5566556624_
                                                 _tl5566456627_
                                                 _e5566956630_
                                                 _hd5566856634_
                                                 _tl5566756637_
                                                 _e5567056640_
                                                 _e5567356644_
                                                 _hd5567256648_
                                                 _tl5567156651_
                                                 ___splice6346863469_
                                                 _target5570956537_
                                                 _tl5571156540_
                                                 _e5572056543_
                                                 _hd5571956547_
                                                 _tl5571856550_)
                                                (if (gx#stx-null?
                                                     _tl5567156651_)
                                                    (___kont6347063471_
                                                     _hd5567256648_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565755871_))))))
                                        (if (gx#stx-null? _tl5567156651_)
                                            (___kont6347063471_ _hd5567256648_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5565755871_))))))
                                (if (gx#stx-null? _tl5567156651_)
                                    (___kont6347063471_ _hd5567256648_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5565755871_)))))))
                    (if (fx>= (gx#stx-length _tl5567156651_) '1)
                        (let ((___splice6346863469_
                               (gx#syntax-split-splice _tl5567156651_ '1)))
                          (let ((_tl5571156540_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6346863469_ '1)))
                                (_target5570956537_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6346863469_ '0))))
                            (if (gx#stx-pair? _tl5571156540_)
                                (let ((_e5572056543_
                                       (gx#syntax-e _tl5571156540_)))
                                  (let ((_tl5571856550_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5572056543_)))
                                        (_hd5571956547_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5572056543_))))
                                    (if (gx#stx-null? _tl5571856550_)
                                        (___match6358863589_
                                         _e5566656620_
                                         _hd5566556624_
                                         _tl5566456627_
                                         _e5566956630_
                                         _hd5566856634_
                                         _tl5566756637_
                                         _e5567056640_
                                         _e5567356644_
                                         _hd5567256648_
                                         _tl5567156651_
                                         ___splice6346863469_
                                         _target5570956537_
                                         _tl5571156540_
                                         _e5572056543_
                                         _hd5571956547_
                                         _tl5571856550_)
                                        (if (gx#stx-null? _tl5567156651_)
                                            (___kont6347063471_ _hd5567256648_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5565755871_))))))
                                (if (gx#stx-null? _tl5567156651_)
                                    (___kont6347063471_ _hd5567256648_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5565755871_))))))
                        (if (gx#stx-null? _tl5567156651_)
                            (___kont6347063471_ _hd5567256648_)
                            (let () (declare (not safe)) (_g5565755871_)))))
                (if (fx>= (gx#stx-length _tl5567156651_) '1)
                    (let ((___splice6346863469_
                           (gx#syntax-split-splice _tl5567156651_ '1)))
                      (let ((_tl5571156540_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346863469_ '1)))
                            (_target5570956537_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346863469_ '0))))
                        (if (gx#stx-pair? _tl5571156540_)
                            (let ((_e5572056543_ (gx#syntax-e _tl5571156540_)))
                              (let ((_tl5571856550_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5572056543_)))
                                    (_hd5571956547_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5572056543_))))
                                (if (gx#stx-null? _tl5571856550_)
                                    (___match6358863589_
                                     _e5566656620_
                                     _hd5566556624_
                                     _tl5566456627_
                                     _e5566956630_
                                     _hd5566856634_
                                     _tl5566756637_
                                     _e5567056640_
                                     _e5567356644_
                                     _hd5567256648_
                                     _tl5567156651_
                                     ___splice6346863469_
                                     _target5570956537_
                                     _tl5571156540_
                                     _e5572056543_
                                     _hd5571956547_
                                     _tl5571856550_)
                                    (if (gx#stx-null? _tl5567156651_)
                                        (___kont6347063471_ _hd5567256648_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565755871_))))))
                            (if (gx#stx-null? _tl5567156651_)
                                (___kont6347063471_ _hd5567256648_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565755871_))))))
                    (if (gx#stx-null? _tl5567156651_)
                        (___kont6347063471_ _hd5567256648_)
                        (let () (declare (not safe)) (_g5565755871_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5567156651_)
                                                          '1)
                                                    (let ((___splice6346863469_
                                                           (gx#syntax-split-splice
                                                            _tl5567156651_
                                                            '1)))
                                                      (let ((_tl5571156540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6346863469_ '1)))
                    (_target5570956537_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6346863469_ '0))))
                (if (gx#stx-pair? _tl5571156540_)
                    (let ((_e5572056543_ (gx#syntax-e _tl5571156540_)))
                      (let ((_tl5571856550_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5572056543_)))
                            (_hd5571956547_
                             (let ()
                               (declare (not safe))
                               (##car _e5572056543_))))
                        (if (gx#stx-null? _tl5571856550_)
                            (___match6358863589_
                             _e5566656620_
                             _hd5566556624_
                             _tl5566456627_
                             _e5566956630_
                             _hd5566856634_
                             _tl5566756637_
                             _e5567056640_
                             _e5567356644_
                             _hd5567256648_
                             _tl5567156651_
                             ___splice6346863469_
                             _target5570956537_
                             _tl5571156540_
                             _e5572056543_
                             _hd5571956547_
                             _tl5571856550_)
                            (if (gx#stx-null? _tl5567156651_)
                                (___kont6347063471_ _hd5567256648_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565755871_))))))
                    (if (gx#stx-null? _tl5567156651_)
                        (___kont6347063471_ _hd5567256648_)
                        (let () (declare (not safe)) (_g5565755871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5567156651_)
                                                        (___kont6347063471_
                                                         _hd5567256648_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565755871_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5567156651_)
                                                      '1)
                                                (let ((___splice6346863469_
                                                       (gx#syntax-split-splice
                                                        _tl5567156651_
                                                        '1)))
                                                  (let ((_tl5571156540_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6346863469_
                                                            '1)))
                                                        (_target5570956537_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6346863469_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5571156540_)
                                                        (let ((_e5572056543_
                                                               (gx#syntax-e
                                                                _tl5571156540_)))
                                                          (let ((_tl5571856550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5572056543_)))
                        (_hd5571956547_
                         (let () (declare (not safe)) (##car _e5572056543_))))
                    (if (gx#stx-null? _tl5571856550_)
                        (___match6358863589_
                         _e5566656620_
                         _hd5566556624_
                         _tl5566456627_
                         _e5566956630_
                         _hd5566856634_
                         _tl5566756637_
                         _e5567056640_
                         _e5567356644_
                         _hd5567256648_
                         _tl5567156651_
                         ___splice6346863469_
                         _target5570956537_
                         _tl5571156540_
                         _e5572056543_
                         _hd5571956547_
                         _tl5571856550_)
                        (if (gx#stx-null? _tl5567156651_)
                            (___kont6347063471_ _hd5567256648_)
                            (let () (declare (not safe)) (_g5565755871_))))))
                (if (gx#stx-null? _tl5567156651_)
                    (___kont6347063471_ _hd5567256648_)
                    (let () (declare (not safe)) (_g5565755871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5567156651_)
                                                    (___kont6347063471_
                                                     _hd5567256648_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565755871_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5567156651_)
                                                  '1)
                                            (let ((___splice6346863469_
                                                   (gx#syntax-split-splice
                                                    _tl5567156651_
                                                    '1)))
                                              (let ((_tl5571156540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6346863469_
                                                        '1)))
                                                    (_target5570956537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6346863469_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5571156540_)
                                                    (let ((_e5572056543_
                                                           (gx#syntax-e
                                                            _tl5571156540_)))
                                                      (let ((_tl5571856550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5572056543_)))
                    (_hd5571956547_
                     (let () (declare (not safe)) (##car _e5572056543_))))
                (if (gx#stx-null? _tl5571856550_)
                    (___match6358863589_
                     _e5566656620_
                     _hd5566556624_
                     _tl5566456627_
                     _e5566956630_
                     _hd5566856634_
                     _tl5566756637_
                     _e5567056640_
                     _e5567356644_
                     _hd5567256648_
                     _tl5567156651_
                     ___splice6346863469_
                     _target5570956537_
                     _tl5571156540_
                     _e5572056543_
                     _hd5571956547_
                     _tl5571856550_)
                    (if (gx#stx-null? _tl5567156651_)
                        (___kont6347063471_ _hd5567256648_)
                        (let () (declare (not safe)) (_g5565755871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5567156651_)
                                                        (___kont6347063471_
                                                         _hd5567256648_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565755871_))))))
                                            (if (gx#stx-null? _tl5567156651_)
                                                (___kont6347063471_
                                                 _hd5567256648_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565755871_)))))))
                                (if (fx>= (gx#stx-length _tl5567156651_) '1)
                                    (let ((___splice6346863469_
                                           (gx#syntax-split-splice
                                            _tl5567156651_
                                            '1)))
                                      (let ((_tl5571156540_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6346863469_
                                                '1)))
                                            (_target5570956537_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6346863469_
                                                '0))))
                                        (if (gx#stx-pair? _tl5571156540_)
                                            (let ((_e5572056543_
                                                   (gx#syntax-e
                                                    _tl5571156540_)))
                                              (let ((_tl5571856550_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5572056543_)))
                                                    (_hd5571956547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5572056543_))))
                                                (if (gx#stx-null?
                                                     _tl5571856550_)
                                                    (___match6358863589_
                                                     _e5566656620_
                                                     _hd5566556624_
                                                     _tl5566456627_
                                                     _e5566956630_
                                                     _hd5566856634_
                                                     _tl5566756637_
                                                     _e5567056640_
                                                     _e5567356644_
                                                     _hd5567256648_
                                                     _tl5567156651_
                                                     ___splice6346863469_
                                                     _target5570956537_
                                                     _tl5571156540_
                                                     _e5572056543_
                                                     _hd5571956547_
                                                     _tl5571856550_)
                                                    (if (gx#stx-null?
                                                         _tl5567156651_)
                                                        (___kont6347063471_
                                                         _hd5567256648_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565755871_))))))
                                            (if (gx#stx-null? _tl5567156651_)
                                                (___kont6347063471_
                                                 _hd5567256648_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565755871_))))))
                                    (if (gx#stx-null? _tl5567156651_)
                                        (___kont6347063471_ _hd5567256648_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565755871_)))))))
                        (if (fx>= (gx#stx-length _tl5567156651_) '1)
                            (let ((___splice6346863469_
                                   (gx#syntax-split-splice _tl5567156651_ '1)))
                              (let ((_tl5571156540_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6346863469_ '1)))
                                    (_target5570956537_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6346863469_
                                        '0))))
                                (if (gx#stx-pair? _tl5571156540_)
                                    (let ((_e5572056543_
                                           (gx#syntax-e _tl5571156540_)))
                                      (let ((_tl5571856550_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5572056543_)))
                                            (_hd5571956547_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5572056543_))))
                                        (if (gx#stx-null? _tl5571856550_)
                                            (___match6358863589_
                                             _e5566656620_
                                             _hd5566556624_
                                             _tl5566456627_
                                             _e5566956630_
                                             _hd5566856634_
                                             _tl5566756637_
                                             _e5567056640_
                                             _e5567356644_
                                             _hd5567256648_
                                             _tl5567156651_
                                             ___splice6346863469_
                                             _target5570956537_
                                             _tl5571156540_
                                             _e5572056543_
                                             _hd5571956547_
                                             _tl5571856550_)
                                            (if (gx#stx-null? _tl5567156651_)
                                                (___kont6347063471_
                                                 _hd5567256648_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565755871_))))))
                                    (if (gx#stx-null? _tl5567156651_)
                                        (___kont6347063471_ _hd5567256648_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565755871_))))))
                            (if (gx#stx-null? _tl5567156651_)
                                (___kont6347063471_ _hd5567256648_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565755871_)))))))
                (if (fx>= (gx#stx-length _tl5567156651_) '1)
                    (let ((___splice6346863469_
                           (gx#syntax-split-splice _tl5567156651_ '1)))
                      (let ((_tl5571156540_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346863469_ '1)))
                            (_target5570956537_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346863469_ '0))))
                        (if (gx#stx-pair? _tl5571156540_)
                            (let ((_e5572056543_ (gx#syntax-e _tl5571156540_)))
                              (let ((_tl5571856550_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5572056543_)))
                                    (_hd5571956547_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5572056543_))))
                                (if (gx#stx-null? _tl5571856550_)
                                    (___match6358863589_
                                     _e5566656620_
                                     _hd5566556624_
                                     _tl5566456627_
                                     _e5566956630_
                                     _hd5566856634_
                                     _tl5566756637_
                                     _e5567056640_
                                     _e5567356644_
                                     _hd5567256648_
                                     _tl5567156651_
                                     ___splice6346863469_
                                     _target5570956537_
                                     _tl5571156540_
                                     _e5572056543_
                                     _hd5571956547_
                                     _tl5571856550_)
                                    (if (gx#stx-null? _tl5567156651_)
                                        (___kont6347063471_ _hd5567256648_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565755871_))))))
                            (if (gx#stx-null? _tl5567156651_)
                                (___kont6347063471_ _hd5567256648_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565755871_))))))
                    (if (gx#stx-null? _tl5567156651_)
                        (___kont6347063471_ _hd5567256648_)
                        (let () (declare (not safe)) (_g5565755871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5567156651_)
                                                        (___kont6347063471_
                                                         _hd5567256648_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565755871_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5565755871_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5567056640_ '2))
                                            (if (gx#stx-pair? _tl5566756637_)
                                                (let ((_e5574756343_
                                                       (gx#syntax-e
                                                        _tl5566756637_)))
                                                  (let ((_tl5574556350_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5574756343_)))
                                                        (_hd5574656347_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5574756343_))))
                                                    (if (gx#stx-pair?
                                                         _tl5574556350_)
                                                        (let ((_e5575056353_
                                                               (gx#syntax-e
                                                                _tl5574556350_)))
                                                          (let ((_tl5574856360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5575056353_)))
                        (_hd5574956357_
                         (let () (declare (not safe)) (##car _e5575056353_))))
                    (if (gx#stx-pair? _hd5574956357_)
                        (let ((_e5575356363_ (gx#syntax-e _hd5574956357_)))
                          (let ((_tl5575156370_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5575356363_)))
                                (_hd5575256367_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5575356363_))))
                            (if (gx#stx-pair? _hd5575256367_)
                                (let ((_e5575656373_
                                       (gx#syntax-e _hd5575256367_)))
                                  (let ((_tl5575456380_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5575656373_)))
                                        (_hd5575556377_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5575656373_))))
                                    (if (gx#identifier? _hd5575556377_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64232_|
                                             _hd5575556377_)
                                            (if (gx#stx-pair? _tl5575456380_)
                                                (let ((_e5575956383_
                                                       (gx#syntax-e
                                                        _tl5575456380_)))
                                                  (let ((_tl5575756390_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5575956383_)))
                                                        (_hd5575856387_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5575956383_))))
                                                    (if (gx#stx-null?
                                                         _tl5575756390_)
                                                        (if (gx#stx-pair?
                                                             _tl5575156370_)
                                                            (let ((_e5576256393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5575156370_)))
                      (let ((_tl5576056400_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5576256393_)))
                            (_hd5576156397_
                             (let ()
                               (declare (not safe))
                               (##car _e5576256393_))))
                        (___kont6347263473_
                         _tl5574856360_
                         _tl5576056400_
                         _hd5576156397_
                         _hd5575856387_
                         _hd5574656347_
                         _hd5566556624_)))
                    (___kont6347463475_
                     _tl5574856360_
                     _tl5575156370_
                     _hd5575256367_
                     _hd5574656347_
                     _hd5566556624_))
                (___kont6347463475_
                 _tl5574856360_
                 _tl5575156370_
                 _hd5575256367_
                 _hd5574656347_
                 _hd5566556624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6347463475_
                                                 _tl5574856360_
                                                 _tl5575156370_
                                                 _hd5575256367_
                                                 _hd5574656347_
                                                 _hd5566556624_))
                                            (___kont6347463475_
                                             _tl5574856360_
                                             _tl5575156370_
                                             _hd5575256367_
                                             _hd5574656347_
                                             _hd5566556624_))
                                        (___kont6347463475_
                                         _tl5574856360_
                                         _tl5575156370_
                                         _hd5575256367_
                                         _hd5574656347_
                                         _hd5566556624_))))
                                (___kont6347463475_
                                 _tl5574856360_
                                 _tl5575156370_
                                 _hd5575256367_
                                 _hd5574656347_
                                 _hd5566556624_))))
                        (if (gx#stx-null? _hd5574956357_)
                            (___kont6347663477_
                             _tl5574856360_
                             _hd5574656347_
                             _hd5566556624_)
                            (let () (declare (not safe)) (_g5565755871_))))))
                (let () (declare (not safe)) (_g5565755871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565755871_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5567056640_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5566756637_)
                                                    (let ((_e5581456092_
                                                           (gx#syntax-e
                                                            _tl5566756637_)))
                                                      (let ((_tl5581256099_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5581456092_)))
                    (_hd5581356096_
                     (let () (declare (not safe)) (##car _e5581456092_))))
                (if (gx#stx-pair? _tl5581256099_)
                    (let ((_e5581756102_ (gx#syntax-e _tl5581256099_)))
                      (let ((_tl5581556109_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5581756102_)))
                            (_hd5581656106_
                             (let ()
                               (declare (not safe))
                               (##car _e5581756102_))))
                        (if (gx#stx-pair? _hd5581656106_)
                            (let ((_e5582056112_ (gx#syntax-e _hd5581656106_)))
                              (let ((_tl5581856119_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5582056112_)))
                                    (_hd5581956116_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5582056112_))))
                                (___kont6347863479_
                                 _tl5581556109_
                                 _tl5581856119_
                                 _hd5581956116_
                                 _hd5581356096_
                                 _hd5566556624_)))
                            (if (gx#stx-pair/null? _hd5581356096_)
                                (let ((___splice6348263483_
                                       (gx#syntax-split-splice
                                        _hd5581356096_
                                        '0)))
                                  (let ((_tl5583955915_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6348263483_
                                            '1)))
                                        (_target5583755912_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6348263483_
                                            '0))))
                                    (if (gx#stx-null? _tl5583955915_)
                                        (___match6381063811_
                                         _e5566656620_
                                         _hd5566556624_
                                         _tl5566456627_
                                         _e5566956630_
                                         _hd5566856634_
                                         _tl5566756637_
                                         _e5567056640_
                                         _e5581456092_
                                         _hd5581356096_
                                         _tl5581256099_
                                         ___splice6348263483_
                                         _target5583755912_
                                         _tl5583955915_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565755871_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5565755871_))))))
                    (if (gx#stx-pair/null? _hd5581356096_)
                        (let ((___splice6348263483_
                               (gx#syntax-split-splice _hd5581356096_ '0)))
                          (let ((_tl5583955915_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6348263483_ '1)))
                                (_target5583755912_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6348263483_ '0))))
                            (if (gx#stx-null? _tl5583955915_)
                                (___match6381063811_
                                 _e5566656620_
                                 _hd5566556624_
                                 _tl5566456627_
                                 _e5566956630_
                                 _hd5566856634_
                                 _tl5566756637_
                                 _e5567056640_
                                 _e5581456092_
                                 _hd5581356096_
                                 _tl5581256099_
                                 ___splice6348263483_
                                 _target5583755912_
                                 _tl5583955915_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565755871_)))))
                        (let () (declare (not safe)) (_g5565755871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565755871_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565755871_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5565755871_)))))
                          (let () (declare (not safe)) (_g5565755871_)))))
                  (let () (declare (not safe)) (_g5565755871_))))))))))
