(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g57246_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g57247_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx53042_)
        (let* ((_g5304653064_
                (lambda (_g5304753060_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5304753060_)))
               (_g5304553120_
                (lambda (_g5304753068_)
                  (if (gx#stx-pair? _g5304753068_)
                      (let ((_e5305253071_ (gx#syntax-e _g5304753068_)))
                        (let ((_hd5305153075_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5305253071_)))
                              (_tl5305053078_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5305253071_))))
                          (if (gx#stx-pair? _tl5305053078_)
                              (let ((_e5305553081_
                                     (gx#syntax-e _tl5305053078_)))
                                (let ((_hd5305453085_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5305553081_)))
                                      (_tl5305353088_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5305553081_))))
                                  (if (gx#stx-pair? _tl5305353088_)
                                      (let ((_e5305853091_
                                             (gx#syntax-e _tl5305353088_)))
                                        (let ((_hd5305753095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5305853091_)))
                                              (_tl5305653098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5305853091_))))
                                          (if (gx#stx-null? _tl5305653098_)
                                              ((lambda (_L53101_ _L53103_)
                                                 (let ((__tmp57007
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp56959
                                                        (let ((__tmp56998
                                                               (let ((__tmp56999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57006 (gx#datum->syntax '#f 'key))
                                    (__tmp57000
                                     (let ((__tmp57005
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57001
                                            (let ((__tmp57002
                                                   (let ((__tmp57004
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57003
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57004
                                                           __tmp57003))))
                                              (declare (not safe))
                                              (cons __tmp57002 '()))))
                                       (declare (not safe))
                                       (cons __tmp57005 __tmp57001))))
                                (declare (not safe))
                                (cons __tmp57006 __tmp57000))))
                         (declare (not safe))
                         (cons _L53103_ __tmp56999)))
                      (__tmp56960
                       (let ((__tmp56961
                              (let ((__tmp56997 (gx#datum->syntax '#f 'cond))
                                    (__tmp56962
                                     (let ((__tmp56979
                                            (let ((__tmp56984
                                                   (let ((__tmp56996
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp56985
                                                          (let ((__tmp56992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp56995 (gx#datum->syntax '#f 'pair?))
                               (__tmp56993
                                (let ((__tmp56994 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp56994 '()))))
                           (declare (not safe))
                           (cons __tmp56995 __tmp56993)))
                        (__tmp56986
                         (let ((__tmp56987
                                (let ((__tmp56988
                                       (let ((__tmp56991
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp56989
                                              (let ((__tmp56990
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp56990 '()))))
                                         (declare (not safe))
                                         (cons __tmp56991 __tmp56989))))
                                  (declare (not safe))
                                  (cons _L53101_ __tmp56988))))
                           (declare (not safe))
                           (cons __tmp56987 '()))))
                    (declare (not safe))
                    (cons __tmp56992 __tmp56986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56996
                                                           __tmp56985)))
                                                  (__tmp56980
                                                   (let ((__tmp56983
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp56981
                                                          (let ((__tmp56982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp56982 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56983
                                                           __tmp56981))))
                                              (declare (not safe))
                                              (cons __tmp56984 __tmp56980)))
                                           (__tmp56963
                                            (let ((__tmp56969
                                                   (let ((__tmp56975
                                                          (let ((__tmp56978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp56976
                         (let ((__tmp56977 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp56977 '()))))
                    (declare (not safe))
                    (cons __tmp56978 __tmp56976)))
                 (__tmp56970
                  (let ((__tmp56971
                         (let ((__tmp56974 (gx#datum->syntax '#f 'default))
                               (__tmp56972
                                (let ((__tmp56973 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp56973 '()))))
                           (declare (not safe))
                           (cons __tmp56974 __tmp56972))))
                    (declare (not safe))
                    (cons __tmp56971 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56975
                                                           __tmp56970)))
                                                  (__tmp56964
                                                   (let ((__tmp56965
                                                          (let ((__tmp56968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp56966
                         (let ((__tmp56967 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp56967 '()))))
                    (declare (not safe))
                    (cons __tmp56968 __tmp56966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56965 '()))))
                                              (declare (not safe))
                                              (cons __tmp56969 __tmp56964))))
                                       (declare (not safe))
                                       (cons __tmp56979 __tmp56963))))
                                (declare (not safe))
                                (cons __tmp56997 __tmp56962))))
                         (declare (not safe))
                         (cons __tmp56961 '()))))
                  (declare (not safe))
                  (cons __tmp56998 __tmp56960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57007
                                                         __tmp56959)))
                                               _hd5305753095_
                                               _hd5305453085_)
                                              (_g5304653064_ _g5304753068_))))
                                      (_g5304653064_ _g5304753068_))))
                              (_g5304653064_ _g5304753068_))))
                      (_g5304653064_ _g5304753068_)))))
          (_g5304553120_ _$stx53042_))))
    (define |[:0:]#defpget|
      (lambda (_$stx53124_)
        (let* ((_g5312853146_
                (lambda (_g5312953142_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5312953142_)))
               (_g5312753201_
                (lambda (_g5312953150_)
                  (if (gx#stx-pair? _g5312953150_)
                      (let ((_e5313453153_ (gx#syntax-e _g5312953150_)))
                        (let ((_hd5313353157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5313453153_)))
                              (_tl5313253160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5313453153_))))
                          (if (gx#stx-pair? _tl5313253160_)
                              (let ((_e5313753163_
                                     (gx#syntax-e _tl5313253160_)))
                                (let ((_hd5313653167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5313753163_)))
                                      (_tl5313553170_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5313753163_))))
                                  (if (gx#stx-pair? _tl5313553170_)
                                      (let ((_e5314053173_
                                             (gx#syntax-e _tl5313553170_)))
                                        (let ((_hd5313953177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5314053173_)))
                                              (_tl5313853180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5314053173_))))
                                          (if (gx#stx-null? _tl5313853180_)
                                              ((lambda (_L53183_ _L53185_)
                                                 (let ((__tmp57077
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57008
                                                        (let ((__tmp57068
                                                               (let ((__tmp57069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57076 (gx#datum->syntax '#f 'key))
                                    (__tmp57070
                                     (let ((__tmp57075
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57071
                                            (let ((__tmp57072
                                                   (let ((__tmp57074
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57073
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57074
                                                           __tmp57073))))
                                              (declare (not safe))
                                              (cons __tmp57072 '()))))
                                       (declare (not safe))
                                       (cons __tmp57075 __tmp57071))))
                                (declare (not safe))
                                (cons __tmp57076 __tmp57070))))
                         (declare (not safe))
                         (cons _L53185_ __tmp57069)))
                      (__tmp57009
                       (let ((__tmp57010
                              (let ((__tmp57067 (gx#datum->syntax '#f 'let))
                                    (__tmp57011
                                     (let ((__tmp57066
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57012
                                            (let ((__tmp57061
                                                   (let ((__tmp57062
                                                          (let ((__tmp57065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57063
                         (let ((__tmp57064 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57064 '()))))
                    (declare (not safe))
                    (cons __tmp57065 __tmp57063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57062 '())))
                                                  (__tmp57013
                                                   (let ((__tmp57014
                                                          (let ((__tmp57060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57015
                         (let ((__tmp57059 (gx#datum->syntax '#f 'rest))
                               (__tmp57016
                                (let ((__tmp57035
                                       (let ((__tmp57052
                                              (let ((__tmp57058
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57053
                                                     (let ((__tmp57057
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp57054
                                                            (let ((__tmp57056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp57055 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp57056 __tmp57055))))
               (declare (not safe))
               (cons __tmp57057 __tmp57054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57058 __tmp57053)))
                                             (__tmp57036
                                              (let ((__tmp57037
                                                     (let ((__tmp57051
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57038
                                                            (let ((__tmp57046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57047
                                  (let ((__tmp57050 (gx#datum->syntax '#f 'k))
                                        (__tmp57048
                                         (let ((__tmp57049
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp57049 '()))))
                                    (declare (not safe))
                                    (cons __tmp57050 __tmp57048))))
                             (declare (not safe))
                             (cons _L53183_ __tmp57047)))
                          (__tmp57039
                           (let ((__tmp57045 (gx#datum->syntax '#f 'v))
                                 (__tmp57040
                                  (let ((__tmp57041
                                         (let ((__tmp57044
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57042
                                                (let ((__tmp57043
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp57043 '()))))
                                           (declare (not safe))
                                           (cons __tmp57044 __tmp57042))))
                                    (declare (not safe))
                                    (cons __tmp57041 '()))))
                             (declare (not safe))
                             (cons __tmp57045 __tmp57040))))
                      (declare (not safe))
                      (cons __tmp57046 __tmp57039))))
               (declare (not safe))
               (cons __tmp57051 __tmp57038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57037 '()))))
                                         (declare (not safe))
                                         (cons __tmp57052 __tmp57036)))
                                      (__tmp57017
                                       (let ((__tmp57018
                                              (let ((__tmp57034
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57019
                                                     (let ((__tmp57020
                                                            (let ((__tmp57033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp57021
                           (let ((__tmp57029
                                  (let ((__tmp57032
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp57030
                                         (let ((__tmp57031
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57031 '()))))
                                    (declare (not safe))
                                    (cons __tmp57032 __tmp57030)))
                                 (__tmp57022
                                  (let ((__tmp57025
                                         (let ((__tmp57028
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp57026
                                                (let ((__tmp57027
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp57027 '()))))
                                           (declare (not safe))
                                           (cons __tmp57028 __tmp57026)))
                                        (__tmp57023
                                         (let ((__tmp57024
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57024 '()))))
                                    (declare (not safe))
                                    (cons __tmp57025 __tmp57023))))
                             (declare (not safe))
                             (cons __tmp57029 __tmp57022))))
                      (declare (not safe))
                      (cons __tmp57033 __tmp57021))))
               (declare (not safe))
               (cons __tmp57020 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57034 __tmp57019))))
                                         (declare (not safe))
                                         (cons __tmp57018 '()))))
                                  (declare (not safe))
                                  (cons __tmp57035 __tmp57017))))
                           (declare (not safe))
                           (cons __tmp57059 __tmp57016))))
                    (declare (not safe))
                    (cons __tmp57060 __tmp57015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57014 '()))))
                                              (declare (not safe))
                                              (cons __tmp57061 __tmp57013))))
                                       (declare (not safe))
                                       (cons __tmp57066 __tmp57012))))
                                (declare (not safe))
                                (cons __tmp57067 __tmp57011))))
                         (declare (not safe))
                         (cons __tmp57010 '()))))
                  (declare (not safe))
                  (cons __tmp57068 __tmp57009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57077
                                                         __tmp57008)))
                                               _hd5313953177_
                                               _hd5313653167_)
                                              (_g5312853146_ _g5312953150_))))
                                      (_g5312853146_ _g5312953150_))))
                              (_g5312853146_ _g5312953150_))))
                      (_g5312853146_ _g5312953150_)))))
          (_g5312753201_ _$stx53124_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx53205_)
        (let* ((_g5320953227_
                (lambda (_g5321053223_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5321053223_)))
               (_g5320853282_
                (lambda (_g5321053231_)
                  (if (gx#stx-pair? _g5321053231_)
                      (let ((_e5321553234_ (gx#syntax-e _g5321053231_)))
                        (let ((_hd5321453238_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5321553234_)))
                              (_tl5321353241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5321553234_))))
                          (if (gx#stx-pair? _tl5321353241_)
                              (let ((_e5321853244_
                                     (gx#syntax-e _tl5321353241_)))
                                (let ((_hd5321753248_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5321853244_)))
                                      (_tl5321653251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5321853244_))))
                                  (if (gx#stx-pair? _tl5321653251_)
                                      (let ((_e5322153254_
                                             (gx#syntax-e _tl5321653251_)))
                                        (let ((_hd5322053258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5322153254_)))
                                              (_tl5321953261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5322153254_))))
                                          (if (gx#stx-null? _tl5321953261_)
                                              ((lambda (_L53264_ _L53266_)
                                                 (let ((__tmp57148
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57078
                                                        (let ((__tmp57143
                                                               (let ((__tmp57144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57147 (gx#datum->syntax '#f 'el))
                                    (__tmp57145
                                     (let ((__tmp57146
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp57146 '()))))
                                (declare (not safe))
                                (cons __tmp57147 __tmp57145))))
                         (declare (not safe))
                         (cons _L53266_ __tmp57144)))
                      (__tmp57079
                       (let ((__tmp57080
                              (let ((__tmp57142 (gx#datum->syntax '#f 'let))
                                    (__tmp57081
                                     (let ((__tmp57141
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57082
                                            (let ((__tmp57130
                                                   (let ((__tmp57137
                                                          (let ((__tmp57140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57138
                         (let ((__tmp57139 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57139 '()))))
                    (declare (not safe))
                    (cons __tmp57140 __tmp57138)))
                 (__tmp57131
                  (let ((__tmp57132
                         (let ((__tmp57136 (gx#datum->syntax '#f 'r))
                               (__tmp57133
                                (let ((__tmp57134
                                       (let ((__tmp57135
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp57135 '()))))
                                  (declare (not safe))
                                  (cons __tmp57134 '()))))
                           (declare (not safe))
                           (cons __tmp57136 __tmp57133))))
                    (declare (not safe))
                    (cons __tmp57132 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57137
                                                           __tmp57131)))
                                                  (__tmp57083
                                                   (let ((__tmp57084
                                                          (let ((__tmp57129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57085
                         (let ((__tmp57128 (gx#datum->syntax '#f 'rest))
                               (__tmp57086
                                (let ((__tmp57092
                                       (let ((__tmp57123
                                              (let ((__tmp57127
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57124
                                                     (let ((__tmp57126
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp57125
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp57126
                                                             __tmp57125))))
                                                (declare (not safe))
                                                (cons __tmp57127 __tmp57124)))
                                             (__tmp57093
                                              (let ((__tmp57094
                                                     (let ((__tmp57122
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57095
                                                            (let ((__tmp57117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57118
                                  (let ((__tmp57121 (gx#datum->syntax '#f 'el))
                                        (__tmp57119
                                         (let ((__tmp57120
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp57120 '()))))
                                    (declare (not safe))
                                    (cons __tmp57121 __tmp57119))))
                             (declare (not safe))
                             (cons _L53264_ __tmp57118)))
                          (__tmp57096
                           (let ((__tmp57109
                                  (let ((__tmp57116
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp57110
                                         (let ((__tmp57115
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp57111
                                                (let ((__tmp57114
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57112
                                                       (let ((__tmp57113
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp57113
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57114
                                                        __tmp57112))))
                                           (declare (not safe))
                                           (cons __tmp57115 __tmp57111))))
                                    (declare (not safe))
                                    (cons __tmp57116 __tmp57110)))
                                 (__tmp57097
                                  (let ((__tmp57098
                                         (let ((__tmp57108
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57099
                                                (let ((__tmp57107
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57100
                                                       (let ((__tmp57101
                                                              (let ((__tmp57106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp57102
                             (let ((__tmp57105 (gx#datum->syntax '#f 'hd))
                                   (__tmp57103
                                    (let ((__tmp57104
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp57104 '()))))
                               (declare (not safe))
                               (cons __tmp57105 __tmp57103))))
                        (declare (not safe))
                        (cons __tmp57106 __tmp57102))))
                 (declare (not safe))
                 (cons __tmp57101 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57107
                                                        __tmp57100))))
                                           (declare (not safe))
                                           (cons __tmp57108 __tmp57099))))
                                    (declare (not safe))
                                    (cons __tmp57098 '()))))
                             (declare (not safe))
                             (cons __tmp57109 __tmp57097))))
                      (declare (not safe))
                      (cons __tmp57117 __tmp57096))))
               (declare (not safe))
               (cons __tmp57122 __tmp57095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57094 '()))))
                                         (declare (not safe))
                                         (cons __tmp57123 __tmp57093)))
                                      (__tmp57087
                                       (let ((__tmp57088
                                              (let ((__tmp57091
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57089
                                                     (let ((__tmp57090
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp57090 '()))))
                                                (declare (not safe))
                                                (cons __tmp57091 __tmp57089))))
                                         (declare (not safe))
                                         (cons __tmp57088 '()))))
                                  (declare (not safe))
                                  (cons __tmp57092 __tmp57087))))
                           (declare (not safe))
                           (cons __tmp57128 __tmp57086))))
                    (declare (not safe))
                    (cons __tmp57129 __tmp57085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57084 '()))))
                                              (declare (not safe))
                                              (cons __tmp57130 __tmp57083))))
                                       (declare (not safe))
                                       (cons __tmp57141 __tmp57082))))
                                (declare (not safe))
                                (cons __tmp57142 __tmp57081))))
                         (declare (not safe))
                         (cons __tmp57080 '()))))
                  (declare (not safe))
                  (cons __tmp57143 __tmp57079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57148
                                                         __tmp57078)))
                                               _hd5322053258_
                                               _hd5321753248_)
                                              (_g5320953227_ _g5321053231_))))
                                      (_g5320953227_ _g5321053231_))))
                              (_g5320953227_ _g5321053231_))))
                      (_g5320953227_ _g5321053231_)))))
          (_g5320853282_ _$stx53205_))))
    (define |[:0:]#DBG|
      (lambda (_$stx53286_)
        (let* ((_g5329053301_
                (lambda (_g5329153297_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5329153297_)))
               (_g5328953330_
                (lambda (_g5329153305_)
                  (if (gx#stx-pair? _g5329153305_)
                      (let ((_e5329553308_ (gx#syntax-e _g5329153305_)))
                        (let ((_hd5329453312_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5329553308_)))
                              (_tl5329353315_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5329553308_))))
                          ((lambda (_L53318_)
                             (let ((__tmp57150 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp57149
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L53318_))))
                               (declare (not safe))
                               (cons __tmp57150 __tmp57149)))
                           _tl5329353315_)))
                      (_g5329053301_ _g5329153305_)))))
          (_g5328953330_ _$stx53286_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx53334_)
        (let* ((___stx5649056491_ _$stx53334_)
               (_g5334553559_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5649056491_))))
          (let ((___kont5649356494_
                 (lambda (_L54412_ _L54414_ _L54415_ _L54416_ _L54417_)
                   (let ((__tmp57151
                          (let ((__tmp57152
                                 (let ((__tmp57153
                                        (let ((__tmp57157
                                               (let ((__tmp57158
                                                      (lambda (_g5444754450_
                                                               _g5444854453_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5444754450_
                                                                _g5444854453_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57158
                                                         '()
                                                         _L54415_)))
                                              (__tmp57154
                                               (let ((__tmp57155
                                                      (let ((__tmp57156
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54412_ '()))))
                (declare (not safe))
                (cons _L54414_ __tmp57156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54416_ __tmp57155))))
                                          (declare (not safe))
                                          (cons __tmp57157 __tmp57154))))
                                   (declare (not safe))
                                   (cons '() __tmp57153))))
                            (declare (not safe))
                            (cons '2 __tmp57152))))
                     (declare (not safe))
                     (cons _L54417_ __tmp57151))))
                (___kont5649756498_
                 (lambda (_L54265_ _L54267_ _L54268_ _L54269_)
                   (let ((__tmp57159
                          (let ((__tmp57160
                                 (let ((__tmp57161
                                        (let ((__tmp57165
                                               (let ((__tmp57166
                                                      (lambda (_g5429254295_
                                                               _g5429354298_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5429254295_
                                                                _g5429354298_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57166
                                                         '()
                                                         _L54267_)))
                                              (__tmp57162
                                               (let ((__tmp57163
                                                      (let ((__tmp57164
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54265_ '()))))
                (declare (not safe))
                (cons _L54265_ __tmp57164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54268_ __tmp57163))))
                                          (declare (not safe))
                                          (cons __tmp57165 __tmp57162))))
                                   (declare (not safe))
                                   (cons '() __tmp57161))))
                            (declare (not safe))
                            (cons '2 __tmp57160))))
                     (declare (not safe))
                     (cons _L54269_ __tmp57159))))
                (___kont5650156502_
                 (lambda (_L54168_)
                   (let ((__tmp57178 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp57167
                          (let ((__tmp57168
                                 (let ((__tmp57175
                                        (let ((__tmp57177
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp57176
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp57177 __tmp57176)))
                                       (__tmp57169
                                        (let ((__tmp57172
                                               (let ((__tmp57174
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp57173
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp57174 __tmp57173)))
                                              (__tmp57170
                                               (let ((__tmp57171
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp57171))))
                                          (declare (not safe))
                                          (cons __tmp57172 __tmp57170))))
                                   (declare (not safe))
                                   (cons __tmp57175 __tmp57169))))
                            (declare (not safe))
                            (cons _L54168_ __tmp57168))))
                     (declare (not safe))
                     (cons __tmp57178 __tmp57167))))
                (___kont5650356504_
                 (lambda (_L54091_
                          _L54093_
                          _L54094_
                          _L54095_
                          _L54096_
                          _L54097_)
                   (let ((__tmp57179
                          (let ((__tmp57180
                                 (let ((__tmp57182
                                        (let ((__tmp57183
                                               (let ((__tmp57184
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54094_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54095_ __tmp57184))))
                                          (declare (not safe))
                                          (cons __tmp57183 _L54096_)))
                                       (__tmp57181
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54093_ _L54091_))))
                                   (declare (not safe))
                                   (cons __tmp57182 __tmp57181))))
                            (declare (not safe))
                            (cons '2 __tmp57180))))
                     (declare (not safe))
                     (cons _L54097_ __tmp57179))))
                (___kont5650556506_
                 (lambda (_L53972_ _L53974_ _L53975_ _L53976_ _L53977_)
                   (let ((__tmp57185
                          (let ((__tmp57186
                                 (let ((__tmp57188
                                        (let ((__tmp57189
                                               (let ((__tmp57190
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L53975_ '()))))
                                                 (declare (not safe))
                                                 (cons _L53975_ __tmp57190))))
                                          (declare (not safe))
                                          (cons __tmp57189 _L53976_)))
                                       (__tmp57187
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53974_ _L53972_))))
                                   (declare (not safe))
                                   (cons __tmp57188 __tmp57187))))
                            (declare (not safe))
                            (cons '2 __tmp57186))))
                     (declare (not safe))
                     (cons _L53977_ __tmp57185))))
                (___kont5650756508_
                 (lambda (_L53889_ _L53891_ _L53892_)
                   (let ((__tmp57191
                          (let ((__tmp57192
                                 (let ((__tmp57193
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53891_ _L53889_))))
                                   (declare (not safe))
                                   (cons '() __tmp57193))))
                            (declare (not safe))
                            (cons '3 __tmp57192))))
                     (declare (not safe))
                     (cons _L53892_ __tmp57191))))
                (___kont5650956510_
                 (lambda (_L53810_ _L53812_ _L53813_ _L53814_ _L53815_)
                   (let ((__tmp57194
                          (let ((__tmp57195
                                 (let ((__tmp57197
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53813_ _L53814_)))
                                       (__tmp57196
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53812_ _L53810_))))
                                   (declare (not safe))
                                   (cons __tmp57197 __tmp57196))))
                            (declare (not safe))
                            (cons '3 __tmp57195))))
                     (declare (not safe))
                     (cons _L53815_ __tmp57194))))
                (___kont5651156512_
                 (lambda (_L53694_
                          _L53696_
                          _L53697_
                          _L53698_
                          _L53699_
                          _L53700_)
                   (let ((__tmp57245 (gx#datum->syntax '#f 'let))
                         (__tmp57198
                          (let ((__tmp57233
                                 (let ((__tmp57242
                                        (let ((__tmp57244
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp57243
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L53697_ '()))))
                                          (declare (not safe))
                                          (cons __tmp57244 __tmp57243)))
                                       (__tmp57234
                                        (let ((__tmp57235
                                               (let ((__tmp57241
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp57236
                                                      (let ((__tmp57237
                                                             (let ((__tmp57240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp57238
                            (let ((__tmp57239
                                   (let ()
                                     (declare (not safe))
                                     (cons _L53694_ '()))))
                              (declare (not safe))
                              (cons '() __tmp57239))))
                       (declare (not safe))
                       (cons __tmp57240 __tmp57238))))
                (declare (not safe))
                (cons __tmp57237 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57241
                                                       __tmp57236))))
                                          (declare (not safe))
                                          (cons __tmp57235 '()))))
                                   (declare (not safe))
                                   (cons __tmp57242 __tmp57234)))
                                (__tmp57199
                                 (let ((__tmp57200
                                        (let ((__tmp57232
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp57201
                                               (let ((__tmp57231
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp57202
                                                      (let ((__tmp57206
                                                             (let ((__tmp57230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp57207
                            (let ((__tmp57229 (gx#datum->syntax '#f 'tagval))
                                  (__tmp57208
                                   (let ((__tmp57224
                                          (let ((__tmp57228
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp57225
                                                 (let ((__tmp57226
                                                        (let ((__tmp57227
                                                               (lambda (_g5373453737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5373553740_)
                         (let ()
                           (declare (not safe))
                           (cons _g5373453737_ _g5373553740_)))))
                  (declare (not safe))
                  (foldr1 __tmp57227 '() _L53699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57226 '()))))
                                            (declare (not safe))
                                            (cons __tmp57228 __tmp57225)))
                                         (__tmp57209
                                          (let ((__tmp57216
                                                 (let ((__tmp57223
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp57217
                                                        (let ((__tmp57218
                                                               (lambda (_g5373253743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5373353746_)
                         (let ((__tmp57219
                                (let ((__tmp57222
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp57220
                                       (let ((__tmp57221
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5373253743_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp57221))))
                                  (declare (not safe))
                                  (cons __tmp57222 __tmp57220))))
                           (declare (not safe))
                           (cons __tmp57219 _g5373353746_)))))
                  (declare (not safe))
                  (foldr1 __tmp57218 '() _L53698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57223
                                                         __tmp57217)))
                                                (__tmp57210
                                                 (let ((__tmp57213
                                                        (let ((__tmp57215
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp57214
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L53696_ '()))))
                  (declare (not safe))
                  (cons __tmp57215 __tmp57214)))
               (__tmp57211
                (let ((__tmp57212 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp57212 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57213
                                                         __tmp57211))))
                                            (declare (not safe))
                                            (cons __tmp57216 __tmp57210))))
                                     (declare (not safe))
                                     (cons __tmp57224 __tmp57209))))
                              (declare (not safe))
                              (cons __tmp57229 __tmp57208))))
                       (declare (not safe))
                       (cons __tmp57230 __tmp57207)))
                    (__tmp57203
                     (let ((__tmp57204
                            (let ((__tmp57205 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp57205 '()))))
                       (declare (not safe))
                       (cons __tmp57204 '()))))
                (declare (not safe))
                (cons __tmp57206 __tmp57203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57231
                                                       __tmp57202))))
                                          (declare (not safe))
                                          (cons __tmp57232 __tmp57201))))
                                   (declare (not safe))
                                   (cons __tmp57200 '()))))
                            (declare (not safe))
                            (cons __tmp57233 __tmp57199))))
                     (declare (not safe))
                     (cons __tmp57245 __tmp57198)))))
            (let* ((___match5684156842_
                    (lambda (_e5351753566_
                             _hd5351653570_
                             _tl5351553573_
                             _e5352053576_
                             _hd5351953580_
                             _tl5351853583_
                             _e5352153586_
                             _e5352453590_
                             _hd5352353594_
                             _tl5352253597_
                             ___splice5651356514_
                             _target5352553600_
                             _tl5352753603_)
                      (letrec ((_loop5352853606_
                                (lambda (_hd5352653610_
                                         _exprs5353253613_
                                         _names5353353615_)
                                  (if (gx#stx-pair? _hd5352653610_)
                                      (let ((_e5352953618_
                                             (gx#syntax-e _hd5352653610_)))
                                        (let ((_lp-tl5353153625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5352953618_)))
                                              (_lp-hd5353053622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5352953618_))))
                                          (if (gx#stx-pair? _lp-hd5353053622_)
                                              (let ((_e5353853628_
                                                     (gx#syntax-e
                                                      _lp-hd5353053622_)))
                                                (let ((_tl5353653635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5353853628_)))
                                                      (_hd5353753632_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5353853628_))))
                                                  (if (gx#stx-pair?
                                                       _tl5353653635_)
                                                      (let ((_e5354153638_
                                                             (gx#syntax-e
                                                              _tl5353653635_)))
                                                        (let ((_tl5353953645_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5354153638_)))
                      (_hd5354053642_
                       (let () (declare (not safe)) (##car _e5354153638_))))
                  (if (gx#stx-null? _tl5353953645_)
                      (_loop5352853606_
                       _lp-tl5353153625_
                       (let ()
                         (declare (not safe))
                         (cons _hd5354053642_ _exprs5353253613_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5353753632_ _names5353353615_)))
                      (let () (declare (not safe)) (_g5334553559_)))))
              (let () (declare (not safe)) (_g5334553559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5334553559_)))))
                                      (let ((_names5353553651_
                                             (reverse _names5353353615_))
                                            (_exprs5353453648_
                                             (reverse _exprs5353253613_)))
                                        (if (gx#stx-pair? _tl5352253597_)
                                            (let ((_e5354453654_
                                                   (gx#syntax-e
                                                    _tl5352253597_)))
                                              (let ((_tl5354253661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5354453654_)))
                                                    (_hd5354353658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5354453654_))))
                                                (if (gx#stx-null?
                                                     _hd5354353658_)
                                                    (if (gx#stx-pair?
                                                         _tl5354253661_)
                                                        (let ((_e5354753664_
                                                               (gx#syntax-e
                                                                _tl5354253661_)))
                                                          (let ((_tl5354553671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5354753664_)))
                        (_hd5354653668_
                         (let () (declare (not safe)) (##car _e5354753664_))))
                    (if (gx#stx-pair? _tl5354553671_)
                        (let ((_e5355053674_ (gx#syntax-e _tl5354553671_)))
                          (let ((_tl5354853681_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5355053674_)))
                                (_hd5354953678_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5355053674_))))
                            (if (gx#stx-pair? _tl5354853681_)
                                (let ((_e5355353684_
                                       (gx#syntax-e _tl5354853681_)))
                                  (let ((_tl5355153691_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5355353684_)))
                                        (_hd5355253688_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5355353684_))))
                                    (if (gx#stx-null? _tl5355153691_)
                                        (___kont5651156512_
                                         _hd5355253688_
                                         _hd5354953678_
                                         _hd5354653668_
                                         _exprs5353453648_
                                         _names5353553651_
                                         _hd5351653570_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5334553559_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5334553559_)))))
                        (let () (declare (not safe)) (_g5334553559_)))))
                (let () (declare (not safe)) (_g5334553559_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5334553559_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5334553559_))))))))
                        (_loop5352853606_ _target5352553600_ '() '()))))
                   (___match5661956620_
                    (lambda (_e5338954191_
                             _hd5338854195_
                             _tl5338754198_
                             _e5339254201_
                             _hd5339154205_
                             _tl5339054208_
                             _e5339354211_
                             _e5339654215_
                             _hd5339554219_
                             _tl5339454222_
                             ___splice5649956500_
                             _target5339754225_
                             _tl5339954228_
                             _e5340854231_
                             _hd5340754235_
                             _tl5340654238_)
                      (letrec ((_loop5340054241_
                                (lambda (_hd5339854245_ _exprs5340454248_)
                                  (if (gx#stx-pair? _hd5339854245_)
                                      (let ((_e5340154251_
                                             (gx#syntax-e _hd5339854245_)))
                                        (let ((_lp-tl5340354258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5340154251_)))
                                              (_lp-hd5340254255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5340154251_))))
                                          (_loop5340054241_
                                           _lp-tl5340354258_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5340254255_
                                                   _exprs5340454248_)))))
                                      (let ((_exprs5340554261_
                                             (reverse _exprs5340454248_)))
                                        (___kont5649756498_
                                         _hd5340754235_
                                         _exprs5340554261_
                                         _hd5339554219_
                                         _hd5338854195_))))))
                        (_loop5340054241_ _target5339754225_ '()))))
                   (___match5657956580_
                    (lambda (_e5335454308_
                             _hd5335354312_
                             _tl5335254315_
                             _e5335754318_
                             _hd5335654322_
                             _tl5335554325_
                             _e5335854328_
                             _e5336154332_
                             _hd5336054336_
                             _tl5335954339_
                             ___splice5649556496_
                             _target5336254342_
                             _tl5336454345_
                             _e5337354348_
                             _hd5337254352_
                             _tl5337154355_
                             _e5337654358_
                             _hd5337554362_
                             _tl5337454365_
                             _e5337954368_
                             _hd5337854372_
                             _tl5337754375_
                             _e5338254378_
                             _hd5338154382_
                             _tl5338054385_)
                      (letrec ((_loop5336554388_
                                (lambda (_hd5336354392_ _exprs5336954395_)
                                  (if (gx#stx-pair? _hd5336354392_)
                                      (let ((_e5336654398_
                                             (gx#syntax-e _hd5336354392_)))
                                        (let ((_lp-tl5336854405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5336654398_)))
                                              (_lp-hd5336754402_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5336654398_))))
                                          (_loop5336554388_
                                           _lp-tl5336854405_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5336754402_
                                                   _exprs5336954395_)))))
                                      (let ((_exprs5337054408_
                                             (reverse _exprs5336954395_)))
                                        (___kont5649356494_
                                         _hd5338154382_
                                         _hd5337854372_
                                         _exprs5337054408_
                                         _hd5336054336_
                                         _hd5335354312_))))))
                        (_loop5336554388_ _target5336254342_ '())))))
              (if (gx#stx-pair? ___stx5649056491_)
                  (let ((_e5335454308_ (gx#syntax-e ___stx5649056491_)))
                    (let ((_tl5335254315_
                           (let () (declare (not safe)) (##cdr _e5335454308_)))
                          (_hd5335354312_
                           (let ()
                             (declare (not safe))
                             (##car _e5335454308_))))
                      (if (gx#stx-pair? _tl5335254315_)
                          (let ((_e5335754318_ (gx#syntax-e _tl5335254315_)))
                            (let ((_tl5335554325_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5335754318_)))
                                  (_hd5335654322_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5335754318_))))
                              (if (gx#stx-datum? _hd5335654322_)
                                  (let ((_e5335854328_
                                         (gx#stx-e _hd5335654322_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5335854328_ '1))
                                        (if (gx#stx-pair? _tl5335554325_)
                                            (let ((_e5336154332_
                                                   (gx#syntax-e
                                                    _tl5335554325_)))
                                              (let ((_tl5335954339_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5336154332_)))
                                                    (_hd5336054336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5336154332_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5335954339_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5335954339_)
                                                              '2)
                                                        (let ((___splice5649556496_
                                                               (gx#syntax-split-splice
                                                                _tl5335954339_
                                                                '2)))
                                                          (let ((_tl5336454345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5649556496_ '1)))
                        (_target5336254342_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5649556496_ '0))))
                    (if (gx#stx-pair? _tl5336454345_)
                        (let ((_e5337354348_ (gx#syntax-e _tl5336454345_)))
                          (let ((_tl5337154355_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5337354348_)))
                                (_hd5337254352_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5337354348_))))
                            (if (gx#stx-pair? _hd5337254352_)
                                (let ((_e5337654358_
                                       (gx#syntax-e _hd5337254352_)))
                                  (let ((_tl5337454365_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5337654358_)))
                                        (_hd5337554362_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5337654358_))))
                                    (if (gx#identifier? _hd5337554362_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57247_|
                                             _hd5337554362_)
                                            (if (gx#stx-pair? _tl5337454365_)
                                                (let ((_e5337954368_
                                                       (gx#syntax-e
                                                        _tl5337454365_)))
                                                  (let ((_tl5337754375_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5337954368_)))
                                                        (_hd5337854372_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5337954368_))))
                                                    (if (gx#stx-null?
                                                         _tl5337754375_)
                                                        (if (gx#stx-pair?
                                                             _tl5337154355_)
                                                            (let ((_e5338254378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5337154355_)))
                      (let ((_tl5338054385_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5338254378_)))
                            (_hd5338154382_
                             (let ()
                               (declare (not safe))
                               (##car _e5338254378_))))
                        (if (gx#stx-null? _tl5338054385_)
                            (___match5657956580_
                             _e5335454308_
                             _hd5335354312_
                             _tl5335254315_
                             _e5335754318_
                             _hd5335654322_
                             _tl5335554325_
                             _e5335854328_
                             _e5336154332_
                             _hd5336054336_
                             _tl5335954339_
                             ___splice5649556496_
                             _target5336254342_
                             _tl5336454345_
                             _e5337354348_
                             _hd5337254352_
                             _tl5337154355_
                             _e5337654358_
                             _hd5337554362_
                             _tl5337454365_
                             _e5337954368_
                             _hd5337854372_
                             _tl5337754375_
                             _e5338254378_
                             _hd5338154382_
                             _tl5338054385_)
                            (if (fx>= (gx#stx-length _tl5335954339_) '1)
                                (let ((___splice5649956500_
                                       (gx#syntax-split-splice
                                        _tl5335954339_
                                        '1)))
                                  (let ((_tl5339954228_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5649956500_
                                            '1)))
                                        (_target5339754225_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5649956500_
                                            '0))))
                                    (if (gx#stx-pair? _tl5339954228_)
                                        (let ((_e5340854231_
                                               (gx#syntax-e _tl5339954228_)))
                                          (let ((_tl5340654238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5340854231_)))
                                                (_hd5340754235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5340854231_))))
                                            (if (gx#stx-null? _tl5340654238_)
                                                (___match5661956620_
                                                 _e5335454308_
                                                 _hd5335354312_
                                                 _tl5335254315_
                                                 _e5335754318_
                                                 _hd5335654322_
                                                 _tl5335554325_
                                                 _e5335854328_
                                                 _e5336154332_
                                                 _hd5336054336_
                                                 _tl5335954339_
                                                 ___splice5649956500_
                                                 _target5339754225_
                                                 _tl5339954228_
                                                 _e5340854231_
                                                 _hd5340754235_
                                                 _tl5340654238_)
                                                (if (gx#stx-null?
                                                     _tl5335954339_)
                                                    (___kont5650156502_
                                                     _hd5336054336_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5334553559_))))))
                                        (if (gx#stx-null? _tl5335954339_)
                                            (___kont5650156502_ _hd5336054336_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5334553559_))))))
                                (if (gx#stx-null? _tl5335954339_)
                                    (___kont5650156502_ _hd5336054336_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5334553559_)))))))
                    (if (fx>= (gx#stx-length _tl5335954339_) '1)
                        (let ((___splice5649956500_
                               (gx#syntax-split-splice _tl5335954339_ '1)))
                          (let ((_tl5339954228_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5649956500_ '1)))
                                (_target5339754225_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5649956500_ '0))))
                            (if (gx#stx-pair? _tl5339954228_)
                                (let ((_e5340854231_
                                       (gx#syntax-e _tl5339954228_)))
                                  (let ((_tl5340654238_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5340854231_)))
                                        (_hd5340754235_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5340854231_))))
                                    (if (gx#stx-null? _tl5340654238_)
                                        (___match5661956620_
                                         _e5335454308_
                                         _hd5335354312_
                                         _tl5335254315_
                                         _e5335754318_
                                         _hd5335654322_
                                         _tl5335554325_
                                         _e5335854328_
                                         _e5336154332_
                                         _hd5336054336_
                                         _tl5335954339_
                                         ___splice5649956500_
                                         _target5339754225_
                                         _tl5339954228_
                                         _e5340854231_
                                         _hd5340754235_
                                         _tl5340654238_)
                                        (if (gx#stx-null? _tl5335954339_)
                                            (___kont5650156502_ _hd5336054336_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5334553559_))))))
                                (if (gx#stx-null? _tl5335954339_)
                                    (___kont5650156502_ _hd5336054336_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5334553559_))))))
                        (if (gx#stx-null? _tl5335954339_)
                            (___kont5650156502_ _hd5336054336_)
                            (let () (declare (not safe)) (_g5334553559_)))))
                (if (fx>= (gx#stx-length _tl5335954339_) '1)
                    (let ((___splice5649956500_
                           (gx#syntax-split-splice _tl5335954339_ '1)))
                      (let ((_tl5339954228_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5649956500_ '1)))
                            (_target5339754225_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5649956500_ '0))))
                        (if (gx#stx-pair? _tl5339954228_)
                            (let ((_e5340854231_ (gx#syntax-e _tl5339954228_)))
                              (let ((_tl5340654238_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5340854231_)))
                                    (_hd5340754235_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5340854231_))))
                                (if (gx#stx-null? _tl5340654238_)
                                    (___match5661956620_
                                     _e5335454308_
                                     _hd5335354312_
                                     _tl5335254315_
                                     _e5335754318_
                                     _hd5335654322_
                                     _tl5335554325_
                                     _e5335854328_
                                     _e5336154332_
                                     _hd5336054336_
                                     _tl5335954339_
                                     ___splice5649956500_
                                     _target5339754225_
                                     _tl5339954228_
                                     _e5340854231_
                                     _hd5340754235_
                                     _tl5340654238_)
                                    (if (gx#stx-null? _tl5335954339_)
                                        (___kont5650156502_ _hd5336054336_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5334553559_))))))
                            (if (gx#stx-null? _tl5335954339_)
                                (___kont5650156502_ _hd5336054336_)
                                (let ()
                                  (declare (not safe))
                                  (_g5334553559_))))))
                    (if (gx#stx-null? _tl5335954339_)
                        (___kont5650156502_ _hd5336054336_)
                        (let () (declare (not safe)) (_g5334553559_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5335954339_)
                                                          '1)
                                                    (let ((___splice5649956500_
                                                           (gx#syntax-split-splice
                                                            _tl5335954339_
                                                            '1)))
                                                      (let ((_tl5339954228_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5649956500_ '1)))
                    (_target5339754225_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5649956500_ '0))))
                (if (gx#stx-pair? _tl5339954228_)
                    (let ((_e5340854231_ (gx#syntax-e _tl5339954228_)))
                      (let ((_tl5340654238_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5340854231_)))
                            (_hd5340754235_
                             (let ()
                               (declare (not safe))
                               (##car _e5340854231_))))
                        (if (gx#stx-null? _tl5340654238_)
                            (___match5661956620_
                             _e5335454308_
                             _hd5335354312_
                             _tl5335254315_
                             _e5335754318_
                             _hd5335654322_
                             _tl5335554325_
                             _e5335854328_
                             _e5336154332_
                             _hd5336054336_
                             _tl5335954339_
                             ___splice5649956500_
                             _target5339754225_
                             _tl5339954228_
                             _e5340854231_
                             _hd5340754235_
                             _tl5340654238_)
                            (if (gx#stx-null? _tl5335954339_)
                                (___kont5650156502_ _hd5336054336_)
                                (let ()
                                  (declare (not safe))
                                  (_g5334553559_))))))
                    (if (gx#stx-null? _tl5335954339_)
                        (___kont5650156502_ _hd5336054336_)
                        (let () (declare (not safe)) (_g5334553559_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5335954339_)
                                                        (___kont5650156502_
                                                         _hd5336054336_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5334553559_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5335954339_)
                                                      '1)
                                                (let ((___splice5649956500_
                                                       (gx#syntax-split-splice
                                                        _tl5335954339_
                                                        '1)))
                                                  (let ((_tl5339954228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5649956500_
                                                            '1)))
                                                        (_target5339754225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5649956500_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5339954228_)
                                                        (let ((_e5340854231_
                                                               (gx#syntax-e
                                                                _tl5339954228_)))
                                                          (let ((_tl5340654238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5340854231_)))
                        (_hd5340754235_
                         (let () (declare (not safe)) (##car _e5340854231_))))
                    (if (gx#stx-null? _tl5340654238_)
                        (___match5661956620_
                         _e5335454308_
                         _hd5335354312_
                         _tl5335254315_
                         _e5335754318_
                         _hd5335654322_
                         _tl5335554325_
                         _e5335854328_
                         _e5336154332_
                         _hd5336054336_
                         _tl5335954339_
                         ___splice5649956500_
                         _target5339754225_
                         _tl5339954228_
                         _e5340854231_
                         _hd5340754235_
                         _tl5340654238_)
                        (if (gx#stx-null? _tl5335954339_)
                            (___kont5650156502_ _hd5336054336_)
                            (let () (declare (not safe)) (_g5334553559_))))))
                (if (gx#stx-null? _tl5335954339_)
                    (___kont5650156502_ _hd5336054336_)
                    (let () (declare (not safe)) (_g5334553559_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5335954339_)
                                                    (___kont5650156502_
                                                     _hd5336054336_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5334553559_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5335954339_)
                                                  '1)
                                            (let ((___splice5649956500_
                                                   (gx#syntax-split-splice
                                                    _tl5335954339_
                                                    '1)))
                                              (let ((_tl5339954228_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5649956500_
                                                        '1)))
                                                    (_target5339754225_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5649956500_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5339954228_)
                                                    (let ((_e5340854231_
                                                           (gx#syntax-e
                                                            _tl5339954228_)))
                                                      (let ((_tl5340654238_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5340854231_)))
                    (_hd5340754235_
                     (let () (declare (not safe)) (##car _e5340854231_))))
                (if (gx#stx-null? _tl5340654238_)
                    (___match5661956620_
                     _e5335454308_
                     _hd5335354312_
                     _tl5335254315_
                     _e5335754318_
                     _hd5335654322_
                     _tl5335554325_
                     _e5335854328_
                     _e5336154332_
                     _hd5336054336_
                     _tl5335954339_
                     ___splice5649956500_
                     _target5339754225_
                     _tl5339954228_
                     _e5340854231_
                     _hd5340754235_
                     _tl5340654238_)
                    (if (gx#stx-null? _tl5335954339_)
                        (___kont5650156502_ _hd5336054336_)
                        (let () (declare (not safe)) (_g5334553559_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5335954339_)
                                                        (___kont5650156502_
                                                         _hd5336054336_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5334553559_))))))
                                            (if (gx#stx-null? _tl5335954339_)
                                                (___kont5650156502_
                                                 _hd5336054336_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5334553559_)))))))
                                (if (fx>= (gx#stx-length _tl5335954339_) '1)
                                    (let ((___splice5649956500_
                                           (gx#syntax-split-splice
                                            _tl5335954339_
                                            '1)))
                                      (let ((_tl5339954228_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5649956500_
                                                '1)))
                                            (_target5339754225_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5649956500_
                                                '0))))
                                        (if (gx#stx-pair? _tl5339954228_)
                                            (let ((_e5340854231_
                                                   (gx#syntax-e
                                                    _tl5339954228_)))
                                              (let ((_tl5340654238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5340854231_)))
                                                    (_hd5340754235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5340854231_))))
                                                (if (gx#stx-null?
                                                     _tl5340654238_)
                                                    (___match5661956620_
                                                     _e5335454308_
                                                     _hd5335354312_
                                                     _tl5335254315_
                                                     _e5335754318_
                                                     _hd5335654322_
                                                     _tl5335554325_
                                                     _e5335854328_
                                                     _e5336154332_
                                                     _hd5336054336_
                                                     _tl5335954339_
                                                     ___splice5649956500_
                                                     _target5339754225_
                                                     _tl5339954228_
                                                     _e5340854231_
                                                     _hd5340754235_
                                                     _tl5340654238_)
                                                    (if (gx#stx-null?
                                                         _tl5335954339_)
                                                        (___kont5650156502_
                                                         _hd5336054336_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5334553559_))))))
                                            (if (gx#stx-null? _tl5335954339_)
                                                (___kont5650156502_
                                                 _hd5336054336_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5334553559_))))))
                                    (if (gx#stx-null? _tl5335954339_)
                                        (___kont5650156502_ _hd5336054336_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5334553559_)))))))
                        (if (fx>= (gx#stx-length _tl5335954339_) '1)
                            (let ((___splice5649956500_
                                   (gx#syntax-split-splice _tl5335954339_ '1)))
                              (let ((_tl5339954228_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5649956500_ '1)))
                                    (_target5339754225_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5649956500_
                                        '0))))
                                (if (gx#stx-pair? _tl5339954228_)
                                    (let ((_e5340854231_
                                           (gx#syntax-e _tl5339954228_)))
                                      (let ((_tl5340654238_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5340854231_)))
                                            (_hd5340754235_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5340854231_))))
                                        (if (gx#stx-null? _tl5340654238_)
                                            (___match5661956620_
                                             _e5335454308_
                                             _hd5335354312_
                                             _tl5335254315_
                                             _e5335754318_
                                             _hd5335654322_
                                             _tl5335554325_
                                             _e5335854328_
                                             _e5336154332_
                                             _hd5336054336_
                                             _tl5335954339_
                                             ___splice5649956500_
                                             _target5339754225_
                                             _tl5339954228_
                                             _e5340854231_
                                             _hd5340754235_
                                             _tl5340654238_)
                                            (if (gx#stx-null? _tl5335954339_)
                                                (___kont5650156502_
                                                 _hd5336054336_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5334553559_))))))
                                    (if (gx#stx-null? _tl5335954339_)
                                        (___kont5650156502_ _hd5336054336_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5334553559_))))))
                            (if (gx#stx-null? _tl5335954339_)
                                (___kont5650156502_ _hd5336054336_)
                                (let ()
                                  (declare (not safe))
                                  (_g5334553559_)))))))
                (if (fx>= (gx#stx-length _tl5335954339_) '1)
                    (let ((___splice5649956500_
                           (gx#syntax-split-splice _tl5335954339_ '1)))
                      (let ((_tl5339954228_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5649956500_ '1)))
                            (_target5339754225_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5649956500_ '0))))
                        (if (gx#stx-pair? _tl5339954228_)
                            (let ((_e5340854231_ (gx#syntax-e _tl5339954228_)))
                              (let ((_tl5340654238_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5340854231_)))
                                    (_hd5340754235_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5340854231_))))
                                (if (gx#stx-null? _tl5340654238_)
                                    (___match5661956620_
                                     _e5335454308_
                                     _hd5335354312_
                                     _tl5335254315_
                                     _e5335754318_
                                     _hd5335654322_
                                     _tl5335554325_
                                     _e5335854328_
                                     _e5336154332_
                                     _hd5336054336_
                                     _tl5335954339_
                                     ___splice5649956500_
                                     _target5339754225_
                                     _tl5339954228_
                                     _e5340854231_
                                     _hd5340754235_
                                     _tl5340654238_)
                                    (if (gx#stx-null? _tl5335954339_)
                                        (___kont5650156502_ _hd5336054336_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5334553559_))))))
                            (if (gx#stx-null? _tl5335954339_)
                                (___kont5650156502_ _hd5336054336_)
                                (let ()
                                  (declare (not safe))
                                  (_g5334553559_))))))
                    (if (gx#stx-null? _tl5335954339_)
                        (___kont5650156502_ _hd5336054336_)
                        (let () (declare (not safe)) (_g5334553559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5335954339_)
                                                        (___kont5650156502_
                                                         _hd5336054336_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5334553559_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5334553559_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5335854328_ '2))
                                            (if (gx#stx-pair? _tl5335554325_)
                                                (let ((_e5343554031_
                                                       (gx#syntax-e
                                                        _tl5335554325_)))
                                                  (let ((_tl5343354038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5343554031_)))
                                                        (_hd5343454035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5343554031_))))
                                                    (if (gx#stx-pair?
                                                         _tl5343354038_)
                                                        (let ((_e5343854041_
                                                               (gx#syntax-e
                                                                _tl5343354038_)))
                                                          (let ((_tl5343654048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5343854041_)))
                        (_hd5343754045_
                         (let () (declare (not safe)) (##car _e5343854041_))))
                    (if (gx#stx-pair? _hd5343754045_)
                        (let ((_e5344154051_ (gx#syntax-e _hd5343754045_)))
                          (let ((_tl5343954058_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5344154051_)))
                                (_hd5344054055_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5344154051_))))
                            (if (gx#stx-pair? _hd5344054055_)
                                (let ((_e5344454061_
                                       (gx#syntax-e _hd5344054055_)))
                                  (let ((_tl5344254068_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5344454061_)))
                                        (_hd5344354065_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5344454061_))))
                                    (if (gx#identifier? _hd5344354065_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57246_|
                                             _hd5344354065_)
                                            (if (gx#stx-pair? _tl5344254068_)
                                                (let ((_e5344754071_
                                                       (gx#syntax-e
                                                        _tl5344254068_)))
                                                  (let ((_tl5344554078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5344754071_)))
                                                        (_hd5344654075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5344754071_))))
                                                    (if (gx#stx-null?
                                                         _tl5344554078_)
                                                        (if (gx#stx-pair?
                                                             _tl5343954058_)
                                                            (let ((_e5345054081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5343954058_)))
                      (let ((_tl5344854088_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5345054081_)))
                            (_hd5344954085_
                             (let ()
                               (declare (not safe))
                               (##car _e5345054081_))))
                        (___kont5650356504_
                         _tl5343654048_
                         _tl5344854088_
                         _hd5344954085_
                         _hd5344654075_
                         _hd5343454035_
                         _hd5335354312_)))
                    (___kont5650556506_
                     _tl5343654048_
                     _tl5343954058_
                     _hd5344054055_
                     _hd5343454035_
                     _hd5335354312_))
                (___kont5650556506_
                 _tl5343654048_
                 _tl5343954058_
                 _hd5344054055_
                 _hd5343454035_
                 _hd5335354312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5650556506_
                                                 _tl5343654048_
                                                 _tl5343954058_
                                                 _hd5344054055_
                                                 _hd5343454035_
                                                 _hd5335354312_))
                                            (___kont5650556506_
                                             _tl5343654048_
                                             _tl5343954058_
                                             _hd5344054055_
                                             _hd5343454035_
                                             _hd5335354312_))
                                        (___kont5650556506_
                                         _tl5343654048_
                                         _tl5343954058_
                                         _hd5344054055_
                                         _hd5343454035_
                                         _hd5335354312_))))
                                (___kont5650556506_
                                 _tl5343654048_
                                 _tl5343954058_
                                 _hd5344054055_
                                 _hd5343454035_
                                 _hd5335354312_))))
                        (if (gx#stx-null? _hd5343754045_)
                            (___kont5650756508_
                             _tl5343654048_
                             _hd5343454035_
                             _hd5335354312_)
                            (let () (declare (not safe)) (_g5334553559_))))))
                (let () (declare (not safe)) (_g5334553559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5334553559_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5335854328_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5335554325_)
                                                    (let ((_e5350253780_
                                                           (gx#syntax-e
                                                            _tl5335554325_)))
                                                      (let ((_tl5350053787_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5350253780_)))
                    (_hd5350153784_
                     (let () (declare (not safe)) (##car _e5350253780_))))
                (if (gx#stx-pair? _tl5350053787_)
                    (let ((_e5350553790_ (gx#syntax-e _tl5350053787_)))
                      (let ((_tl5350353797_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5350553790_)))
                            (_hd5350453794_
                             (let ()
                               (declare (not safe))
                               (##car _e5350553790_))))
                        (if (gx#stx-pair? _hd5350453794_)
                            (let ((_e5350853800_ (gx#syntax-e _hd5350453794_)))
                              (let ((_tl5350653807_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5350853800_)))
                                    (_hd5350753804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5350853800_))))
                                (___kont5650956510_
                                 _tl5350353797_
                                 _tl5350653807_
                                 _hd5350753804_
                                 _hd5350153784_
                                 _hd5335354312_)))
                            (if (gx#stx-pair/null? _hd5350153784_)
                                (let ((___splice5651356514_
                                       (gx#syntax-split-splice
                                        _hd5350153784_
                                        '0)))
                                  (let ((_tl5352753603_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5651356514_
                                            '1)))
                                        (_target5352553600_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5651356514_
                                            '0))))
                                    (if (gx#stx-null? _tl5352753603_)
                                        (___match5684156842_
                                         _e5335454308_
                                         _hd5335354312_
                                         _tl5335254315_
                                         _e5335754318_
                                         _hd5335654322_
                                         _tl5335554325_
                                         _e5335854328_
                                         _e5350253780_
                                         _hd5350153784_
                                         _tl5350053787_
                                         ___splice5651356514_
                                         _target5352553600_
                                         _tl5352753603_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5334553559_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5334553559_))))))
                    (if (gx#stx-pair/null? _hd5350153784_)
                        (let ((___splice5651356514_
                               (gx#syntax-split-splice _hd5350153784_ '0)))
                          (let ((_tl5352753603_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5651356514_ '1)))
                                (_target5352553600_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5651356514_ '0))))
                            (if (gx#stx-null? _tl5352753603_)
                                (___match5684156842_
                                 _e5335454308_
                                 _hd5335354312_
                                 _tl5335254315_
                                 _e5335754318_
                                 _hd5335654322_
                                 _tl5335554325_
                                 _e5335854328_
                                 _e5350253780_
                                 _hd5350153784_
                                 _tl5350053787_
                                 ___splice5651356514_
                                 _target5352553600_
                                 _tl5352753603_)
                                (let ()
                                  (declare (not safe))
                                  (_g5334553559_)))))
                        (let () (declare (not safe)) (_g5334553559_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5334553559_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5334553559_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5334553559_)))))
                          (let () (declare (not safe)) (_g5334553559_)))))
                  (let () (declare (not safe)) (_g5334553559_))))))))))
