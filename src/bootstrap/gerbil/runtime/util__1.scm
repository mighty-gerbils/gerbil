(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g63234_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g63235_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx54753_)
        (let* ((_g5475754775_
                (lambda (_g5475854771_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5475854771_)))
               (_g5475654831_
                (lambda (_g5475854779_)
                  (if (gx#stx-pair? _g5475854779_)
                      (let ((_e5476154782_ (gx#syntax-e _g5475854779_)))
                        (let ((_hd5476254786_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5476154782_)))
                              (_tl5476354789_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5476154782_))))
                          (if (gx#stx-pair? _tl5476354789_)
                              (let ((_e5476454792_
                                     (gx#syntax-e _tl5476354789_)))
                                (let ((_hd5476554796_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5476454792_)))
                                      (_tl5476654799_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5476454792_))))
                                  (if (gx#stx-pair? _tl5476654799_)
                                      (let ((_e5476754802_
                                             (gx#syntax-e _tl5476654799_)))
                                        (let ((_hd5476854806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5476754802_)))
                                              (_tl5476954809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5476754802_))))
                                          (if (gx#stx-null? _tl5476954809_)
                                              ((lambda (_L54812_ _L54814_)
                                                 (let ((__tmp62995
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp62947
                                                        (let ((__tmp62986
                                                               (let ((__tmp62987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp62994 (gx#datum->syntax '#f 'key))
                                    (__tmp62988
                                     (let ((__tmp62993
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp62989
                                            (let ((__tmp62990
                                                   (let ((__tmp62992
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp62991
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp62992
                                                           __tmp62991))))
                                              (declare (not safe))
                                              (cons __tmp62990 '()))))
                                       (declare (not safe))
                                       (cons __tmp62993 __tmp62989))))
                                (declare (not safe))
                                (cons __tmp62994 __tmp62988))))
                         (declare (not safe))
                         (cons _L54814_ __tmp62987)))
                      (__tmp62948
                       (let ((__tmp62949
                              (let ((__tmp62985 (gx#datum->syntax '#f 'cond))
                                    (__tmp62950
                                     (let ((__tmp62967
                                            (let ((__tmp62972
                                                   (let ((__tmp62984
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp62973
                                                          (let ((__tmp62980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp62983 (gx#datum->syntax '#f 'pair?))
                               (__tmp62981
                                (let ((__tmp62982 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp62982 '()))))
                           (declare (not safe))
                           (cons __tmp62983 __tmp62981)))
                        (__tmp62974
                         (let ((__tmp62975
                                (let ((__tmp62976
                                       (let ((__tmp62979
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp62977
                                              (let ((__tmp62978
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp62978 '()))))
                                         (declare (not safe))
                                         (cons __tmp62979 __tmp62977))))
                                  (declare (not safe))
                                  (cons _L54812_ __tmp62976))))
                           (declare (not safe))
                           (cons __tmp62975 '()))))
                    (declare (not safe))
                    (cons __tmp62980 __tmp62974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62984
                                                           __tmp62973)))
                                                  (__tmp62968
                                                   (let ((__tmp62971
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp62969
                                                          (let ((__tmp62970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp62970 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62971
                                                           __tmp62969))))
                                              (declare (not safe))
                                              (cons __tmp62972 __tmp62968)))
                                           (__tmp62951
                                            (let ((__tmp62957
                                                   (let ((__tmp62963
                                                          (let ((__tmp62966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp62964
                         (let ((__tmp62965 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp62965 '()))))
                    (declare (not safe))
                    (cons __tmp62966 __tmp62964)))
                 (__tmp62958
                  (let ((__tmp62959
                         (let ((__tmp62962 (gx#datum->syntax '#f 'default))
                               (__tmp62960
                                (let ((__tmp62961 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp62961 '()))))
                           (declare (not safe))
                           (cons __tmp62962 __tmp62960))))
                    (declare (not safe))
                    (cons __tmp62959 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62963
                                                           __tmp62958)))
                                                  (__tmp62952
                                                   (let ((__tmp62953
                                                          (let ((__tmp62956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp62954
                         (let ((__tmp62955 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp62955 '()))))
                    (declare (not safe))
                    (cons __tmp62956 __tmp62954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62953 '()))))
                                              (declare (not safe))
                                              (cons __tmp62957 __tmp62952))))
                                       (declare (not safe))
                                       (cons __tmp62967 __tmp62951))))
                                (declare (not safe))
                                (cons __tmp62985 __tmp62950))))
                         (declare (not safe))
                         (cons __tmp62949 '()))))
                  (declare (not safe))
                  (cons __tmp62986 __tmp62948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62995
                                                         __tmp62947)))
                                               _hd5476854806_
                                               _hd5476554796_)
                                              (_g5475754775_ _g5475854779_))))
                                      (_g5475754775_ _g5475854779_))))
                              (_g5475754775_ _g5475854779_))))
                      (_g5475754775_ _g5475854779_)))))
          (_g5475654831_ _$stx54753_))))
    (define |[:0:]#defpget|
      (lambda (_$stx54835_)
        (let* ((_g5483954857_
                (lambda (_g5484054853_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5484054853_)))
               (_g5483854912_
                (lambda (_g5484054861_)
                  (if (gx#stx-pair? _g5484054861_)
                      (let ((_e5484354864_ (gx#syntax-e _g5484054861_)))
                        (let ((_hd5484454868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5484354864_)))
                              (_tl5484554871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5484354864_))))
                          (if (gx#stx-pair? _tl5484554871_)
                              (let ((_e5484654874_
                                     (gx#syntax-e _tl5484554871_)))
                                (let ((_hd5484754878_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5484654874_)))
                                      (_tl5484854881_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5484654874_))))
                                  (if (gx#stx-pair? _tl5484854881_)
                                      (let ((_e5484954884_
                                             (gx#syntax-e _tl5484854881_)))
                                        (let ((_hd5485054888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5484954884_)))
                                              (_tl5485154891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5484954884_))))
                                          (if (gx#stx-null? _tl5485154891_)
                                              ((lambda (_L54894_ _L54896_)
                                                 (let ((__tmp63065
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp62996
                                                        (let ((__tmp63056
                                                               (let ((__tmp63057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63064 (gx#datum->syntax '#f 'key))
                                    (__tmp63058
                                     (let ((__tmp63063
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp63059
                                            (let ((__tmp63060
                                                   (let ((__tmp63062
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp63061
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp63062
                                                           __tmp63061))))
                                              (declare (not safe))
                                              (cons __tmp63060 '()))))
                                       (declare (not safe))
                                       (cons __tmp63063 __tmp63059))))
                                (declare (not safe))
                                (cons __tmp63064 __tmp63058))))
                         (declare (not safe))
                         (cons _L54896_ __tmp63057)))
                      (__tmp62997
                       (let ((__tmp62998
                              (let ((__tmp63055 (gx#datum->syntax '#f 'let))
                                    (__tmp62999
                                     (let ((__tmp63054
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63000
                                            (let ((__tmp63049
                                                   (let ((__tmp63050
                                                          (let ((__tmp63053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp63051
                         (let ((__tmp63052 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp63052 '()))))
                    (declare (not safe))
                    (cons __tmp63053 __tmp63051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63050 '())))
                                                  (__tmp63001
                                                   (let ((__tmp63002
                                                          (let ((__tmp63048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp63003
                         (let ((__tmp63047 (gx#datum->syntax '#f 'rest))
                               (__tmp63004
                                (let ((__tmp63023
                                       (let ((__tmp63040
                                              (let ((__tmp63046
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp63041
                                                     (let ((__tmp63045
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp63042
                                                            (let ((__tmp63044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp63043 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp63044 __tmp63043))))
               (declare (not safe))
               (cons __tmp63045 __tmp63042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63046 __tmp63041)))
                                             (__tmp63024
                                              (let ((__tmp63025
                                                     (let ((__tmp63039
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp63026
                                                            (let ((__tmp63034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63035
                                  (let ((__tmp63038 (gx#datum->syntax '#f 'k))
                                        (__tmp63036
                                         (let ((__tmp63037
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp63037 '()))))
                                    (declare (not safe))
                                    (cons __tmp63038 __tmp63036))))
                             (declare (not safe))
                             (cons _L54894_ __tmp63035)))
                          (__tmp63027
                           (let ((__tmp63033 (gx#datum->syntax '#f 'v))
                                 (__tmp63028
                                  (let ((__tmp63029
                                         (let ((__tmp63032
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp63030
                                                (let ((__tmp63031
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp63031 '()))))
                                           (declare (not safe))
                                           (cons __tmp63032 __tmp63030))))
                                    (declare (not safe))
                                    (cons __tmp63029 '()))))
                             (declare (not safe))
                             (cons __tmp63033 __tmp63028))))
                      (declare (not safe))
                      (cons __tmp63034 __tmp63027))))
               (declare (not safe))
               (cons __tmp63039 __tmp63026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63025 '()))))
                                         (declare (not safe))
                                         (cons __tmp63040 __tmp63024)))
                                      (__tmp63005
                                       (let ((__tmp63006
                                              (let ((__tmp63022
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63007
                                                     (let ((__tmp63008
                                                            (let ((__tmp63021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp63009
                           (let ((__tmp63017
                                  (let ((__tmp63020
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp63018
                                         (let ((__tmp63019
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp63019 '()))))
                                    (declare (not safe))
                                    (cons __tmp63020 __tmp63018)))
                                 (__tmp63010
                                  (let ((__tmp63013
                                         (let ((__tmp63016
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp63014
                                                (let ((__tmp63015
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp63015 '()))))
                                           (declare (not safe))
                                           (cons __tmp63016 __tmp63014)))
                                        (__tmp63011
                                         (let ((__tmp63012
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp63012 '()))))
                                    (declare (not safe))
                                    (cons __tmp63013 __tmp63011))))
                             (declare (not safe))
                             (cons __tmp63017 __tmp63010))))
                      (declare (not safe))
                      (cons __tmp63021 __tmp63009))))
               (declare (not safe))
               (cons __tmp63008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63022 __tmp63007))))
                                         (declare (not safe))
                                         (cons __tmp63006 '()))))
                                  (declare (not safe))
                                  (cons __tmp63023 __tmp63005))))
                           (declare (not safe))
                           (cons __tmp63047 __tmp63004))))
                    (declare (not safe))
                    (cons __tmp63048 __tmp63003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63002 '()))))
                                              (declare (not safe))
                                              (cons __tmp63049 __tmp63001))))
                                       (declare (not safe))
                                       (cons __tmp63054 __tmp63000))))
                                (declare (not safe))
                                (cons __tmp63055 __tmp62999))))
                         (declare (not safe))
                         (cons __tmp62998 '()))))
                  (declare (not safe))
                  (cons __tmp63056 __tmp62997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63065
                                                         __tmp62996)))
                                               _hd5485054888_
                                               _hd5484754878_)
                                              (_g5483954857_ _g5484054861_))))
                                      (_g5483954857_ _g5484054861_))))
                              (_g5483954857_ _g5484054861_))))
                      (_g5483954857_ _g5484054861_)))))
          (_g5483854912_ _$stx54835_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx54916_)
        (let* ((_g5492054938_
                (lambda (_g5492154934_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5492154934_)))
               (_g5491954993_
                (lambda (_g5492154942_)
                  (if (gx#stx-pair? _g5492154942_)
                      (let ((_e5492454945_ (gx#syntax-e _g5492154942_)))
                        (let ((_hd5492554949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5492454945_)))
                              (_tl5492654952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5492454945_))))
                          (if (gx#stx-pair? _tl5492654952_)
                              (let ((_e5492754955_
                                     (gx#syntax-e _tl5492654952_)))
                                (let ((_hd5492854959_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5492754955_)))
                                      (_tl5492954962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5492754955_))))
                                  (if (gx#stx-pair? _tl5492954962_)
                                      (let ((_e5493054965_
                                             (gx#syntax-e _tl5492954962_)))
                                        (let ((_hd5493154969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5493054965_)))
                                              (_tl5493254972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5493054965_))))
                                          (if (gx#stx-null? _tl5493254972_)
                                              ((lambda (_L54975_ _L54977_)
                                                 (let ((__tmp63136
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63066
                                                        (let ((__tmp63131
                                                               (let ((__tmp63132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63135 (gx#datum->syntax '#f 'el))
                                    (__tmp63133
                                     (let ((__tmp63134
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp63134 '()))))
                                (declare (not safe))
                                (cons __tmp63135 __tmp63133))))
                         (declare (not safe))
                         (cons _L54977_ __tmp63132)))
                      (__tmp63067
                       (let ((__tmp63068
                              (let ((__tmp63130 (gx#datum->syntax '#f 'let))
                                    (__tmp63069
                                     (let ((__tmp63129
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63070
                                            (let ((__tmp63118
                                                   (let ((__tmp63125
                                                          (let ((__tmp63128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp63126
                         (let ((__tmp63127 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp63127 '()))))
                    (declare (not safe))
                    (cons __tmp63128 __tmp63126)))
                 (__tmp63119
                  (let ((__tmp63120
                         (let ((__tmp63124 (gx#datum->syntax '#f 'r))
                               (__tmp63121
                                (let ((__tmp63122
                                       (let ((__tmp63123
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp63123 '()))))
                                  (declare (not safe))
                                  (cons __tmp63122 '()))))
                           (declare (not safe))
                           (cons __tmp63124 __tmp63121))))
                    (declare (not safe))
                    (cons __tmp63120 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63125
                                                           __tmp63119)))
                                                  (__tmp63071
                                                   (let ((__tmp63072
                                                          (let ((__tmp63117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp63073
                         (let ((__tmp63116 (gx#datum->syntax '#f 'rest))
                               (__tmp63074
                                (let ((__tmp63080
                                       (let ((__tmp63111
                                              (let ((__tmp63115
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp63112
                                                     (let ((__tmp63114
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp63113
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp63114
                                                             __tmp63113))))
                                                (declare (not safe))
                                                (cons __tmp63115 __tmp63112)))
                                             (__tmp63081
                                              (let ((__tmp63082
                                                     (let ((__tmp63110
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp63083
                                                            (let ((__tmp63105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63106
                                  (let ((__tmp63109 (gx#datum->syntax '#f 'el))
                                        (__tmp63107
                                         (let ((__tmp63108
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp63108 '()))))
                                    (declare (not safe))
                                    (cons __tmp63109 __tmp63107))))
                             (declare (not safe))
                             (cons _L54975_ __tmp63106)))
                          (__tmp63084
                           (let ((__tmp63097
                                  (let ((__tmp63104
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp63098
                                         (let ((__tmp63103
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp63099
                                                (let ((__tmp63102
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp63100
                                                       (let ((__tmp63101
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp63101
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp63102
                                                        __tmp63100))))
                                           (declare (not safe))
                                           (cons __tmp63103 __tmp63099))))
                                    (declare (not safe))
                                    (cons __tmp63104 __tmp63098)))
                                 (__tmp63085
                                  (let ((__tmp63086
                                         (let ((__tmp63096
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp63087
                                                (let ((__tmp63095
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp63088
                                                       (let ((__tmp63089
                                                              (let ((__tmp63094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp63090
                             (let ((__tmp63093 (gx#datum->syntax '#f 'hd))
                                   (__tmp63091
                                    (let ((__tmp63092
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp63092 '()))))
                               (declare (not safe))
                               (cons __tmp63093 __tmp63091))))
                        (declare (not safe))
                        (cons __tmp63094 __tmp63090))))
                 (declare (not safe))
                 (cons __tmp63089 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63095
                                                        __tmp63088))))
                                           (declare (not safe))
                                           (cons __tmp63096 __tmp63087))))
                                    (declare (not safe))
                                    (cons __tmp63086 '()))))
                             (declare (not safe))
                             (cons __tmp63097 __tmp63085))))
                      (declare (not safe))
                      (cons __tmp63105 __tmp63084))))
               (declare (not safe))
               (cons __tmp63110 __tmp63083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63082 '()))))
                                         (declare (not safe))
                                         (cons __tmp63111 __tmp63081)))
                                      (__tmp63075
                                       (let ((__tmp63076
                                              (let ((__tmp63079
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63077
                                                     (let ((__tmp63078
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp63078 '()))))
                                                (declare (not safe))
                                                (cons __tmp63079 __tmp63077))))
                                         (declare (not safe))
                                         (cons __tmp63076 '()))))
                                  (declare (not safe))
                                  (cons __tmp63080 __tmp63075))))
                           (declare (not safe))
                           (cons __tmp63116 __tmp63074))))
                    (declare (not safe))
                    (cons __tmp63117 __tmp63073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63072 '()))))
                                              (declare (not safe))
                                              (cons __tmp63118 __tmp63071))))
                                       (declare (not safe))
                                       (cons __tmp63129 __tmp63070))))
                                (declare (not safe))
                                (cons __tmp63130 __tmp63069))))
                         (declare (not safe))
                         (cons __tmp63068 '()))))
                  (declare (not safe))
                  (cons __tmp63131 __tmp63067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63136
                                                         __tmp63066)))
                                               _hd5493154969_
                                               _hd5492854959_)
                                              (_g5492054938_ _g5492154942_))))
                                      (_g5492054938_ _g5492154942_))))
                              (_g5492054938_ _g5492154942_))))
                      (_g5492054938_ _g5492154942_)))))
          (_g5491954993_ _$stx54916_))))
    (define |[:0:]#DBG|
      (lambda (_$stx54997_)
        (let* ((_g5500155012_
                (lambda (_g5500255008_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5500255008_)))
               (_g5500055041_
                (lambda (_g5500255016_)
                  (if (gx#stx-pair? _g5500255016_)
                      (let ((_e5500455019_ (gx#syntax-e _g5500255016_)))
                        (let ((_hd5500555023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5500455019_)))
                              (_tl5500655026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5500455019_))))
                          ((lambda (_L55029_)
                             (let ((__tmp63138 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp63137
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55029_))))
                               (declare (not safe))
                               (cons __tmp63138 __tmp63137)))
                           _tl5500655026_)))
                      (_g5500155012_ _g5500255016_)))))
          (_g5500055041_ _$stx54997_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55045_)
        (let* ((___stx6246062461_ _$stx55045_)
               (_g5505655270_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6246062461_))))
          (let ((___kont6246362464_
                 (lambda (_L56123_ _L56125_ _L56126_ _L56127_ _L56128_)
                   (let ((__tmp63139
                          (let ((__tmp63140
                                 (let ((__tmp63141
                                        (let ((__tmp63145
                                               (let ((__tmp63146
                                                      (lambda (_g5615856161_
                                                               _g5615956164_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5615856161_
                                                                _g5615956164_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp63146
                                                         '()
                                                         _L56126_)))
                                              (__tmp63142
                                               (let ((__tmp63143
                                                      (let ((__tmp63144
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56123_ '()))))
                (declare (not safe))
                (cons _L56125_ __tmp63144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56127_ __tmp63143))))
                                          (declare (not safe))
                                          (cons __tmp63145 __tmp63142))))
                                   (declare (not safe))
                                   (cons '() __tmp63141))))
                            (declare (not safe))
                            (cons '2 __tmp63140))))
                     (declare (not safe))
                     (cons _L56128_ __tmp63139))))
                (___kont6246762468_
                 (lambda (_L55976_ _L55978_ _L55979_ _L55980_)
                   (let ((__tmp63147
                          (let ((__tmp63148
                                 (let ((__tmp63149
                                        (let ((__tmp63153
                                               (let ((__tmp63154
                                                      (lambda (_g5600356006_
                                                               _g5600456009_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5600356006_
                                                                _g5600456009_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp63154
                                                         '()
                                                         _L55978_)))
                                              (__tmp63150
                                               (let ((__tmp63151
                                                      (let ((__tmp63152
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L55976_ '()))))
                (declare (not safe))
                (cons _L55976_ __tmp63152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L55979_ __tmp63151))))
                                          (declare (not safe))
                                          (cons __tmp63153 __tmp63150))))
                                   (declare (not safe))
                                   (cons '() __tmp63149))))
                            (declare (not safe))
                            (cons '2 __tmp63148))))
                     (declare (not safe))
                     (cons _L55980_ __tmp63147))))
                (___kont6247162472_
                 (lambda (_L55879_)
                   (let ((__tmp63166 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp63155
                          (let ((__tmp63156
                                 (let ((__tmp63163
                                        (let ((__tmp63165
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp63164
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp63165 __tmp63164)))
                                       (__tmp63157
                                        (let ((__tmp63160
                                               (let ((__tmp63162
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp63161
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp63162 __tmp63161)))
                                              (__tmp63158
                                               (let ((__tmp63159
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp63159))))
                                          (declare (not safe))
                                          (cons __tmp63160 __tmp63158))))
                                   (declare (not safe))
                                   (cons __tmp63163 __tmp63157))))
                            (declare (not safe))
                            (cons _L55879_ __tmp63156))))
                     (declare (not safe))
                     (cons __tmp63166 __tmp63155))))
                (___kont6247362474_
                 (lambda (_L55802_
                          _L55804_
                          _L55805_
                          _L55806_
                          _L55807_
                          _L55808_)
                   (let ((__tmp63167
                          (let ((__tmp63168
                                 (let ((__tmp63170
                                        (let ((__tmp63171
                                               (let ((__tmp63172
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L55805_ '()))))
                                                 (declare (not safe))
                                                 (cons _L55806_ __tmp63172))))
                                          (declare (not safe))
                                          (cons __tmp63171 _L55807_)))
                                       (__tmp63169
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55804_ _L55802_))))
                                   (declare (not safe))
                                   (cons __tmp63170 __tmp63169))))
                            (declare (not safe))
                            (cons '2 __tmp63168))))
                     (declare (not safe))
                     (cons _L55808_ __tmp63167))))
                (___kont6247562476_
                 (lambda (_L55683_ _L55685_ _L55686_ _L55687_ _L55688_)
                   (let ((__tmp63173
                          (let ((__tmp63174
                                 (let ((__tmp63176
                                        (let ((__tmp63177
                                               (let ((__tmp63178
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L55686_ '()))))
                                                 (declare (not safe))
                                                 (cons _L55686_ __tmp63178))))
                                          (declare (not safe))
                                          (cons __tmp63177 _L55687_)))
                                       (__tmp63175
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55685_ _L55683_))))
                                   (declare (not safe))
                                   (cons __tmp63176 __tmp63175))))
                            (declare (not safe))
                            (cons '2 __tmp63174))))
                     (declare (not safe))
                     (cons _L55688_ __tmp63173))))
                (___kont6247762478_
                 (lambda (_L55600_ _L55602_ _L55603_)
                   (let ((__tmp63179
                          (let ((__tmp63180
                                 (let ((__tmp63181
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55602_ _L55600_))))
                                   (declare (not safe))
                                   (cons '() __tmp63181))))
                            (declare (not safe))
                            (cons '3 __tmp63180))))
                     (declare (not safe))
                     (cons _L55603_ __tmp63179))))
                (___kont6247962480_
                 (lambda (_L55521_ _L55523_ _L55524_ _L55525_ _L55526_)
                   (let ((__tmp63182
                          (let ((__tmp63183
                                 (let ((__tmp63185
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55524_ _L55525_)))
                                       (__tmp63184
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55523_ _L55521_))))
                                   (declare (not safe))
                                   (cons __tmp63185 __tmp63184))))
                            (declare (not safe))
                            (cons '3 __tmp63183))))
                     (declare (not safe))
                     (cons _L55526_ __tmp63182))))
                (___kont6248162482_
                 (lambda (_L55405_
                          _L55407_
                          _L55408_
                          _L55409_
                          _L55410_
                          _L55411_)
                   (let ((__tmp63233 (gx#datum->syntax '#f 'let))
                         (__tmp63186
                          (let ((__tmp63221
                                 (let ((__tmp63230
                                        (let ((__tmp63232
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp63231
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L55408_ '()))))
                                          (declare (not safe))
                                          (cons __tmp63232 __tmp63231)))
                                       (__tmp63222
                                        (let ((__tmp63223
                                               (let ((__tmp63229
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp63224
                                                      (let ((__tmp63225
                                                             (let ((__tmp63228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp63226
                            (let ((__tmp63227
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55405_ '()))))
                              (declare (not safe))
                              (cons '() __tmp63227))))
                       (declare (not safe))
                       (cons __tmp63228 __tmp63226))))
                (declare (not safe))
                (cons __tmp63225 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63229
                                                       __tmp63224))))
                                          (declare (not safe))
                                          (cons __tmp63223 '()))))
                                   (declare (not safe))
                                   (cons __tmp63230 __tmp63222)))
                                (__tmp63187
                                 (let ((__tmp63188
                                        (let ((__tmp63220
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp63189
                                               (let ((__tmp63219
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp63190
                                                      (let ((__tmp63194
                                                             (let ((__tmp63218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp63195
                            (let ((__tmp63217 (gx#datum->syntax '#f 'tagval))
                                  (__tmp63196
                                   (let ((__tmp63212
                                          (let ((__tmp63216
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp63213
                                                 (let ((__tmp63214
                                                        (let ((__tmp63215
                                                               (lambda (_g5544355448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5544455451_)
                         (let ()
                           (declare (not safe))
                           (cons _g5544355448_ _g5544455451_)))))
                  (declare (not safe))
                  (foldr1 __tmp63215 '() _L55410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63214 '()))))
                                            (declare (not safe))
                                            (cons __tmp63216 __tmp63213)))
                                         (__tmp63197
                                          (let ((__tmp63204
                                                 (let ((__tmp63211
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp63205
                                                        (let ((__tmp63206
                                                               (lambda (_g5544555454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5544655457_)
                         (let ((__tmp63207
                                (let ((__tmp63210
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp63208
                                       (let ((__tmp63209
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5544555454_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp63209))))
                                  (declare (not safe))
                                  (cons __tmp63210 __tmp63208))))
                           (declare (not safe))
                           (cons __tmp63207 _g5544655457_)))))
                  (declare (not safe))
                  (foldr1 __tmp63206 '() _L55409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63211
                                                         __tmp63205)))
                                                (__tmp63198
                                                 (let ((__tmp63201
                                                        (let ((__tmp63203
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp63202
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L55407_ '()))))
                  (declare (not safe))
                  (cons __tmp63203 __tmp63202)))
               (__tmp63199
                (let ((__tmp63200 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp63200 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63201
                                                         __tmp63199))))
                                            (declare (not safe))
                                            (cons __tmp63204 __tmp63198))))
                                     (declare (not safe))
                                     (cons __tmp63212 __tmp63197))))
                              (declare (not safe))
                              (cons __tmp63217 __tmp63196))))
                       (declare (not safe))
                       (cons __tmp63218 __tmp63195)))
                    (__tmp63191
                     (let ((__tmp63192
                            (let ((__tmp63193 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp63193 '()))))
                       (declare (not safe))
                       (cons __tmp63192 '()))))
                (declare (not safe))
                (cons __tmp63194 __tmp63191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63219
                                                       __tmp63190))))
                                          (declare (not safe))
                                          (cons __tmp63220 __tmp63189))))
                                   (declare (not safe))
                                   (cons __tmp63188 '()))))
                            (declare (not safe))
                            (cons __tmp63221 __tmp63187))))
                     (declare (not safe))
                     (cons __tmp63233 __tmp63186)))))
            (let* ((___match6281162812_
                    (lambda (_e5522655277_
                             _hd5522755281_
                             _tl5522855284_
                             _e5522955287_
                             _hd5523055291_
                             _tl5523155294_
                             _e5523255297_
                             _e5523355301_
                             _hd5523455305_
                             _tl5523555308_
                             ___splice6248362484_
                             _target5523655311_
                             _tl5523855314_)
                      (letrec ((_loop5523955317_
                                (lambda (_hd5523755321_
                                         _exprs5524355324_
                                         _names5524455326_)
                                  (if (gx#stx-pair? _hd5523755321_)
                                      (let ((_e5524055329_
                                             (gx#syntax-e _hd5523755321_)))
                                        (let ((_lp-tl5524255336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5524055329_)))
                                              (_lp-hd5524155333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5524055329_))))
                                          (if (gx#stx-pair? _lp-hd5524155333_)
                                              (let ((_e5524755339_
                                                     (gx#syntax-e
                                                      _lp-hd5524155333_)))
                                                (let ((_tl5524955346_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5524755339_)))
                                                      (_hd5524855343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5524755339_))))
                                                  (if (gx#stx-pair?
                                                       _tl5524955346_)
                                                      (let ((_e5525055349_
                                                             (gx#syntax-e
                                                              _tl5524955346_)))
                                                        (let ((_tl5525255356_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5525055349_)))
                      (_hd5525155353_
                       (let () (declare (not safe)) (##car _e5525055349_))))
                  (if (gx#stx-null? _tl5525255356_)
                      (_loop5523955317_
                       _lp-tl5524255336_
                       (let ()
                         (declare (not safe))
                         (cons _hd5525155353_ _exprs5524355324_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5524855343_ _names5524455326_)))
                      (let () (declare (not safe)) (_g5505655270_)))))
              (let () (declare (not safe)) (_g5505655270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5505655270_)))))
                                      (let ((_names5524655362_
                                             (reverse _names5524455326_))
                                            (_exprs5524555359_
                                             (reverse _exprs5524355324_)))
                                        (if (gx#stx-pair? _tl5523555308_)
                                            (let ((_e5525355365_
                                                   (gx#syntax-e
                                                    _tl5523555308_)))
                                              (let ((_tl5525555372_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5525355365_)))
                                                    (_hd5525455369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5525355365_))))
                                                (if (gx#stx-null?
                                                     _hd5525455369_)
                                                    (if (gx#stx-pair?
                                                         _tl5525555372_)
                                                        (let ((_e5525655375_
                                                               (gx#syntax-e
                                                                _tl5525555372_)))
                                                          (let ((_tl5525855382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5525655375_)))
                        (_hd5525755379_
                         (let () (declare (not safe)) (##car _e5525655375_))))
                    (if (gx#stx-pair? _tl5525855382_)
                        (let ((_e5525955385_ (gx#syntax-e _tl5525855382_)))
                          (let ((_tl5526155392_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5525955385_)))
                                (_hd5526055389_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5525955385_))))
                            (if (gx#stx-pair? _tl5526155392_)
                                (let ((_e5526255395_
                                       (gx#syntax-e _tl5526155392_)))
                                  (let ((_tl5526455402_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5526255395_)))
                                        (_hd5526355399_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5526255395_))))
                                    (if (gx#stx-null? _tl5526455402_)
                                        (___kont6248162482_
                                         _hd5526355399_
                                         _hd5526055389_
                                         _hd5525755379_
                                         _exprs5524555359_
                                         _names5524655362_
                                         _hd5522755281_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_)))))
                        (let () (declare (not safe)) (_g5505655270_)))))
                (let () (declare (not safe)) (_g5505655270_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5505655270_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5505655270_))))))))
                        (_loop5523955317_ _target5523655311_ '() '()))))
                   (___match6258962590_
                    (lambda (_e5509855902_
                             _hd5509955906_
                             _tl5510055909_
                             _e5510155912_
                             _hd5510255916_
                             _tl5510355919_
                             _e5510455922_
                             _e5510555926_
                             _hd5510655930_
                             _tl5510755933_
                             ___splice6246962470_
                             _target5510855936_
                             _tl5511055939_
                             _e5511755942_
                             _hd5511855946_
                             _tl5511955949_)
                      (letrec ((_loop5511155952_
                                (lambda (_hd5510955956_ _exprs5511555959_)
                                  (if (gx#stx-pair? _hd5510955956_)
                                      (let ((_e5511255962_
                                             (gx#syntax-e _hd5510955956_)))
                                        (let ((_lp-tl5511455969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5511255962_)))
                                              (_lp-hd5511355966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5511255962_))))
                                          (_loop5511155952_
                                           _lp-tl5511455969_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5511355966_
                                                   _exprs5511555959_)))))
                                      (let ((_exprs5511655972_
                                             (reverse _exprs5511555959_)))
                                        (___kont6246762468_
                                         _hd5511855946_
                                         _exprs5511655972_
                                         _hd5510655930_
                                         _hd5509955906_))))))
                        (_loop5511155952_ _target5510855936_ '()))))
                   (___match6254962550_
                    (lambda (_e5506356019_
                             _hd5506456023_
                             _tl5506556026_
                             _e5506656029_
                             _hd5506756033_
                             _tl5506856036_
                             _e5506956039_
                             _e5507056043_
                             _hd5507156047_
                             _tl5507256050_
                             ___splice6246562466_
                             _target5507356053_
                             _tl5507556056_
                             _e5508256059_
                             _hd5508356063_
                             _tl5508456066_
                             _e5508556069_
                             _hd5508656073_
                             _tl5508756076_
                             _e5508856079_
                             _hd5508956083_
                             _tl5509056086_
                             _e5509156089_
                             _hd5509256093_
                             _tl5509356096_)
                      (letrec ((_loop5507656099_
                                (lambda (_hd5507456103_ _exprs5508056106_)
                                  (if (gx#stx-pair? _hd5507456103_)
                                      (let ((_e5507756109_
                                             (gx#syntax-e _hd5507456103_)))
                                        (let ((_lp-tl5507956116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5507756109_)))
                                              (_lp-hd5507856113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5507756109_))))
                                          (_loop5507656099_
                                           _lp-tl5507956116_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5507856113_
                                                   _exprs5508056106_)))))
                                      (let ((_exprs5508156119_
                                             (reverse _exprs5508056106_)))
                                        (___kont6246362464_
                                         _hd5509256093_
                                         _hd5508956083_
                                         _exprs5508156119_
                                         _hd5507156047_
                                         _hd5506456023_))))))
                        (_loop5507656099_ _target5507356053_ '())))))
              (if (gx#stx-pair? ___stx6246062461_)
                  (let ((_e5506356019_ (gx#syntax-e ___stx6246062461_)))
                    (let ((_tl5506556026_
                           (let () (declare (not safe)) (##cdr _e5506356019_)))
                          (_hd5506456023_
                           (let ()
                             (declare (not safe))
                             (##car _e5506356019_))))
                      (if (gx#stx-pair? _tl5506556026_)
                          (let ((_e5506656029_ (gx#syntax-e _tl5506556026_)))
                            (let ((_tl5506856036_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5506656029_)))
                                  (_hd5506756033_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5506656029_))))
                              (if (gx#stx-datum? _hd5506756033_)
                                  (let ((_e5506956039_
                                         (gx#stx-e _hd5506756033_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5506956039_ '1))
                                        (if (gx#stx-pair? _tl5506856036_)
                                            (let ((_e5507056043_
                                                   (gx#syntax-e
                                                    _tl5506856036_)))
                                              (let ((_tl5507256050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5507056043_)))
                                                    (_hd5507156047_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5507056043_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5507256050_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5507256050_)
                                                              '2)
                                                        (let ((___splice6246562466_
                                                               (gx#syntax-split-splice
                                                                _tl5507256050_
                                                                '2)))
                                                          (let ((_tl5507556056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6246562466_ '1)))
                        (_target5507356053_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6246562466_ '0))))
                    (if (gx#stx-pair? _tl5507556056_)
                        (let ((_e5508256059_ (gx#syntax-e _tl5507556056_)))
                          (let ((_tl5508456066_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5508256059_)))
                                (_hd5508356063_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5508256059_))))
                            (if (gx#stx-pair? _hd5508356063_)
                                (let ((_e5508556069_
                                       (gx#syntax-e _hd5508356063_)))
                                  (let ((_tl5508756076_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5508556069_)))
                                        (_hd5508656073_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5508556069_))))
                                    (if (gx#identifier? _hd5508656073_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g63234_|
                                             _hd5508656073_)
                                            (if (gx#stx-pair? _tl5508756076_)
                                                (let ((_e5508856079_
                                                       (gx#syntax-e
                                                        _tl5508756076_)))
                                                  (let ((_tl5509056086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5508856079_)))
                                                        (_hd5508956083_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5508856079_))))
                                                    (if (gx#stx-null?
                                                         _tl5509056086_)
                                                        (if (gx#stx-pair?
                                                             _tl5508456066_)
                                                            (let ((_e5509156089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5508456066_)))
                      (let ((_tl5509356096_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5509156089_)))
                            (_hd5509256093_
                             (let ()
                               (declare (not safe))
                               (##car _e5509156089_))))
                        (if (gx#stx-null? _tl5509356096_)
                            (___match6254962550_
                             _e5506356019_
                             _hd5506456023_
                             _tl5506556026_
                             _e5506656029_
                             _hd5506756033_
                             _tl5506856036_
                             _e5506956039_
                             _e5507056043_
                             _hd5507156047_
                             _tl5507256050_
                             ___splice6246562466_
                             _target5507356053_
                             _tl5507556056_
                             _e5508256059_
                             _hd5508356063_
                             _tl5508456066_
                             _e5508556069_
                             _hd5508656073_
                             _tl5508756076_
                             _e5508856079_
                             _hd5508956083_
                             _tl5509056086_
                             _e5509156089_
                             _hd5509256093_
                             _tl5509356096_)
                            (if (fx>= (gx#stx-length _tl5507256050_) '1)
                                (let ((___splice6246962470_
                                       (gx#syntax-split-splice
                                        _tl5507256050_
                                        '1)))
                                  (let ((_tl5511055939_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6246962470_
                                            '1)))
                                        (_target5510855936_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6246962470_
                                            '0))))
                                    (if (gx#stx-pair? _tl5511055939_)
                                        (let ((_e5511755942_
                                               (gx#syntax-e _tl5511055939_)))
                                          (let ((_tl5511955949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5511755942_)))
                                                (_hd5511855946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5511755942_))))
                                            (if (gx#stx-null? _tl5511955949_)
                                                (___match6258962590_
                                                 _e5506356019_
                                                 _hd5506456023_
                                                 _tl5506556026_
                                                 _e5506656029_
                                                 _hd5506756033_
                                                 _tl5506856036_
                                                 _e5506956039_
                                                 _e5507056043_
                                                 _hd5507156047_
                                                 _tl5507256050_
                                                 ___splice6246962470_
                                                 _target5510855936_
                                                 _tl5511055939_
                                                 _e5511755942_
                                                 _hd5511855946_
                                                 _tl5511955949_)
                                                (if (gx#stx-null?
                                                     _tl5507256050_)
                                                    (___kont6247162472_
                                                     _hd5507156047_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5505655270_))))))
                                        (if (gx#stx-null? _tl5507256050_)
                                            (___kont6247162472_ _hd5507156047_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5505655270_))))))
                                (if (gx#stx-null? _tl5507256050_)
                                    (___kont6247162472_ _hd5507156047_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5505655270_)))))))
                    (if (fx>= (gx#stx-length _tl5507256050_) '1)
                        (let ((___splice6246962470_
                               (gx#syntax-split-splice _tl5507256050_ '1)))
                          (let ((_tl5511055939_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6246962470_ '1)))
                                (_target5510855936_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6246962470_ '0))))
                            (if (gx#stx-pair? _tl5511055939_)
                                (let ((_e5511755942_
                                       (gx#syntax-e _tl5511055939_)))
                                  (let ((_tl5511955949_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5511755942_)))
                                        (_hd5511855946_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5511755942_))))
                                    (if (gx#stx-null? _tl5511955949_)
                                        (___match6258962590_
                                         _e5506356019_
                                         _hd5506456023_
                                         _tl5506556026_
                                         _e5506656029_
                                         _hd5506756033_
                                         _tl5506856036_
                                         _e5506956039_
                                         _e5507056043_
                                         _hd5507156047_
                                         _tl5507256050_
                                         ___splice6246962470_
                                         _target5510855936_
                                         _tl5511055939_
                                         _e5511755942_
                                         _hd5511855946_
                                         _tl5511955949_)
                                        (if (gx#stx-null? _tl5507256050_)
                                            (___kont6247162472_ _hd5507156047_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5505655270_))))))
                                (if (gx#stx-null? _tl5507256050_)
                                    (___kont6247162472_ _hd5507156047_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5505655270_))))))
                        (if (gx#stx-null? _tl5507256050_)
                            (___kont6247162472_ _hd5507156047_)
                            (let () (declare (not safe)) (_g5505655270_)))))
                (if (fx>= (gx#stx-length _tl5507256050_) '1)
                    (let ((___splice6246962470_
                           (gx#syntax-split-splice _tl5507256050_ '1)))
                      (let ((_tl5511055939_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6246962470_ '1)))
                            (_target5510855936_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6246962470_ '0))))
                        (if (gx#stx-pair? _tl5511055939_)
                            (let ((_e5511755942_ (gx#syntax-e _tl5511055939_)))
                              (let ((_tl5511955949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5511755942_)))
                                    (_hd5511855946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5511755942_))))
                                (if (gx#stx-null? _tl5511955949_)
                                    (___match6258962590_
                                     _e5506356019_
                                     _hd5506456023_
                                     _tl5506556026_
                                     _e5506656029_
                                     _hd5506756033_
                                     _tl5506856036_
                                     _e5506956039_
                                     _e5507056043_
                                     _hd5507156047_
                                     _tl5507256050_
                                     ___splice6246962470_
                                     _target5510855936_
                                     _tl5511055939_
                                     _e5511755942_
                                     _hd5511855946_
                                     _tl5511955949_)
                                    (if (gx#stx-null? _tl5507256050_)
                                        (___kont6247162472_ _hd5507156047_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_))))))
                            (if (gx#stx-null? _tl5507256050_)
                                (___kont6247162472_ _hd5507156047_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_))))))
                    (if (gx#stx-null? _tl5507256050_)
                        (___kont6247162472_ _hd5507156047_)
                        (let () (declare (not safe)) (_g5505655270_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5507256050_)
                                                          '1)
                                                    (let ((___splice6246962470_
                                                           (gx#syntax-split-splice
                                                            _tl5507256050_
                                                            '1)))
                                                      (let ((_tl5511055939_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6246962470_ '1)))
                    (_target5510855936_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6246962470_ '0))))
                (if (gx#stx-pair? _tl5511055939_)
                    (let ((_e5511755942_ (gx#syntax-e _tl5511055939_)))
                      (let ((_tl5511955949_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5511755942_)))
                            (_hd5511855946_
                             (let ()
                               (declare (not safe))
                               (##car _e5511755942_))))
                        (if (gx#stx-null? _tl5511955949_)
                            (___match6258962590_
                             _e5506356019_
                             _hd5506456023_
                             _tl5506556026_
                             _e5506656029_
                             _hd5506756033_
                             _tl5506856036_
                             _e5506956039_
                             _e5507056043_
                             _hd5507156047_
                             _tl5507256050_
                             ___splice6246962470_
                             _target5510855936_
                             _tl5511055939_
                             _e5511755942_
                             _hd5511855946_
                             _tl5511955949_)
                            (if (gx#stx-null? _tl5507256050_)
                                (___kont6247162472_ _hd5507156047_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_))))))
                    (if (gx#stx-null? _tl5507256050_)
                        (___kont6247162472_ _hd5507156047_)
                        (let () (declare (not safe)) (_g5505655270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5507256050_)
                                                        (___kont6247162472_
                                                         _hd5507156047_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5505655270_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5507256050_)
                                                      '1)
                                                (let ((___splice6246962470_
                                                       (gx#syntax-split-splice
                                                        _tl5507256050_
                                                        '1)))
                                                  (let ((_tl5511055939_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6246962470_
                                                            '1)))
                                                        (_target5510855936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6246962470_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5511055939_)
                                                        (let ((_e5511755942_
                                                               (gx#syntax-e
                                                                _tl5511055939_)))
                                                          (let ((_tl5511955949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5511755942_)))
                        (_hd5511855946_
                         (let () (declare (not safe)) (##car _e5511755942_))))
                    (if (gx#stx-null? _tl5511955949_)
                        (___match6258962590_
                         _e5506356019_
                         _hd5506456023_
                         _tl5506556026_
                         _e5506656029_
                         _hd5506756033_
                         _tl5506856036_
                         _e5506956039_
                         _e5507056043_
                         _hd5507156047_
                         _tl5507256050_
                         ___splice6246962470_
                         _target5510855936_
                         _tl5511055939_
                         _e5511755942_
                         _hd5511855946_
                         _tl5511955949_)
                        (if (gx#stx-null? _tl5507256050_)
                            (___kont6247162472_ _hd5507156047_)
                            (let () (declare (not safe)) (_g5505655270_))))))
                (if (gx#stx-null? _tl5507256050_)
                    (___kont6247162472_ _hd5507156047_)
                    (let () (declare (not safe)) (_g5505655270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5507256050_)
                                                    (___kont6247162472_
                                                     _hd5507156047_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5505655270_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5507256050_)
                                                  '1)
                                            (let ((___splice6246962470_
                                                   (gx#syntax-split-splice
                                                    _tl5507256050_
                                                    '1)))
                                              (let ((_tl5511055939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6246962470_
                                                        '1)))
                                                    (_target5510855936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6246962470_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5511055939_)
                                                    (let ((_e5511755942_
                                                           (gx#syntax-e
                                                            _tl5511055939_)))
                                                      (let ((_tl5511955949_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5511755942_)))
                    (_hd5511855946_
                     (let () (declare (not safe)) (##car _e5511755942_))))
                (if (gx#stx-null? _tl5511955949_)
                    (___match6258962590_
                     _e5506356019_
                     _hd5506456023_
                     _tl5506556026_
                     _e5506656029_
                     _hd5506756033_
                     _tl5506856036_
                     _e5506956039_
                     _e5507056043_
                     _hd5507156047_
                     _tl5507256050_
                     ___splice6246962470_
                     _target5510855936_
                     _tl5511055939_
                     _e5511755942_
                     _hd5511855946_
                     _tl5511955949_)
                    (if (gx#stx-null? _tl5507256050_)
                        (___kont6247162472_ _hd5507156047_)
                        (let () (declare (not safe)) (_g5505655270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5507256050_)
                                                        (___kont6247162472_
                                                         _hd5507156047_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5505655270_))))))
                                            (if (gx#stx-null? _tl5507256050_)
                                                (___kont6247162472_
                                                 _hd5507156047_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_)))))))
                                (if (fx>= (gx#stx-length _tl5507256050_) '1)
                                    (let ((___splice6246962470_
                                           (gx#syntax-split-splice
                                            _tl5507256050_
                                            '1)))
                                      (let ((_tl5511055939_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6246962470_
                                                '1)))
                                            (_target5510855936_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6246962470_
                                                '0))))
                                        (if (gx#stx-pair? _tl5511055939_)
                                            (let ((_e5511755942_
                                                   (gx#syntax-e
                                                    _tl5511055939_)))
                                              (let ((_tl5511955949_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5511755942_)))
                                                    (_hd5511855946_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5511755942_))))
                                                (if (gx#stx-null?
                                                     _tl5511955949_)
                                                    (___match6258962590_
                                                     _e5506356019_
                                                     _hd5506456023_
                                                     _tl5506556026_
                                                     _e5506656029_
                                                     _hd5506756033_
                                                     _tl5506856036_
                                                     _e5506956039_
                                                     _e5507056043_
                                                     _hd5507156047_
                                                     _tl5507256050_
                                                     ___splice6246962470_
                                                     _target5510855936_
                                                     _tl5511055939_
                                                     _e5511755942_
                                                     _hd5511855946_
                                                     _tl5511955949_)
                                                    (if (gx#stx-null?
                                                         _tl5507256050_)
                                                        (___kont6247162472_
                                                         _hd5507156047_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5505655270_))))))
                                            (if (gx#stx-null? _tl5507256050_)
                                                (___kont6247162472_
                                                 _hd5507156047_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_))))))
                                    (if (gx#stx-null? _tl5507256050_)
                                        (___kont6247162472_ _hd5507156047_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_)))))))
                        (if (fx>= (gx#stx-length _tl5507256050_) '1)
                            (let ((___splice6246962470_
                                   (gx#syntax-split-splice _tl5507256050_ '1)))
                              (let ((_tl5511055939_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6246962470_ '1)))
                                    (_target5510855936_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6246962470_
                                        '0))))
                                (if (gx#stx-pair? _tl5511055939_)
                                    (let ((_e5511755942_
                                           (gx#syntax-e _tl5511055939_)))
                                      (let ((_tl5511955949_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5511755942_)))
                                            (_hd5511855946_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5511755942_))))
                                        (if (gx#stx-null? _tl5511955949_)
                                            (___match6258962590_
                                             _e5506356019_
                                             _hd5506456023_
                                             _tl5506556026_
                                             _e5506656029_
                                             _hd5506756033_
                                             _tl5506856036_
                                             _e5506956039_
                                             _e5507056043_
                                             _hd5507156047_
                                             _tl5507256050_
                                             ___splice6246962470_
                                             _target5510855936_
                                             _tl5511055939_
                                             _e5511755942_
                                             _hd5511855946_
                                             _tl5511955949_)
                                            (if (gx#stx-null? _tl5507256050_)
                                                (___kont6247162472_
                                                 _hd5507156047_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_))))))
                                    (if (gx#stx-null? _tl5507256050_)
                                        (___kont6247162472_ _hd5507156047_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_))))))
                            (if (gx#stx-null? _tl5507256050_)
                                (___kont6247162472_ _hd5507156047_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_)))))))
                (if (fx>= (gx#stx-length _tl5507256050_) '1)
                    (let ((___splice6246962470_
                           (gx#syntax-split-splice _tl5507256050_ '1)))
                      (let ((_tl5511055939_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6246962470_ '1)))
                            (_target5510855936_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6246962470_ '0))))
                        (if (gx#stx-pair? _tl5511055939_)
                            (let ((_e5511755942_ (gx#syntax-e _tl5511055939_)))
                              (let ((_tl5511955949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5511755942_)))
                                    (_hd5511855946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5511755942_))))
                                (if (gx#stx-null? _tl5511955949_)
                                    (___match6258962590_
                                     _e5506356019_
                                     _hd5506456023_
                                     _tl5506556026_
                                     _e5506656029_
                                     _hd5506756033_
                                     _tl5506856036_
                                     _e5506956039_
                                     _e5507056043_
                                     _hd5507156047_
                                     _tl5507256050_
                                     ___splice6246962470_
                                     _target5510855936_
                                     _tl5511055939_
                                     _e5511755942_
                                     _hd5511855946_
                                     _tl5511955949_)
                                    (if (gx#stx-null? _tl5507256050_)
                                        (___kont6247162472_ _hd5507156047_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_))))))
                            (if (gx#stx-null? _tl5507256050_)
                                (___kont6247162472_ _hd5507156047_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_))))))
                    (if (gx#stx-null? _tl5507256050_)
                        (___kont6247162472_ _hd5507156047_)
                        (let () (declare (not safe)) (_g5505655270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5507256050_)
                                                        (___kont6247162472_
                                                         _hd5507156047_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5505655270_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5505655270_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5506956039_ '2))
                                            (if (gx#stx-pair? _tl5506856036_)
                                                (let ((_e5514455742_
                                                       (gx#syntax-e
                                                        _tl5506856036_)))
                                                  (let ((_tl5514655749_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5514455742_)))
                                                        (_hd5514555746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5514455742_))))
                                                    (if (gx#stx-pair?
                                                         _tl5514655749_)
                                                        (let ((_e5514755752_
                                                               (gx#syntax-e
                                                                _tl5514655749_)))
                                                          (let ((_tl5514955759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5514755752_)))
                        (_hd5514855756_
                         (let () (declare (not safe)) (##car _e5514755752_))))
                    (if (gx#stx-pair? _hd5514855756_)
                        (let ((_e5515055762_ (gx#syntax-e _hd5514855756_)))
                          (let ((_tl5515255769_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5515055762_)))
                                (_hd5515155766_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5515055762_))))
                            (if (gx#stx-pair? _hd5515155766_)
                                (let ((_e5515355772_
                                       (gx#syntax-e _hd5515155766_)))
                                  (let ((_tl5515555779_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5515355772_)))
                                        (_hd5515455776_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5515355772_))))
                                    (if (gx#identifier? _hd5515455776_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g63235_|
                                             _hd5515455776_)
                                            (if (gx#stx-pair? _tl5515555779_)
                                                (let ((_e5515655782_
                                                       (gx#syntax-e
                                                        _tl5515555779_)))
                                                  (let ((_tl5515855789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5515655782_)))
                                                        (_hd5515755786_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5515655782_))))
                                                    (if (gx#stx-null?
                                                         _tl5515855789_)
                                                        (if (gx#stx-pair?
                                                             _tl5515255769_)
                                                            (let ((_e5515955792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5515255769_)))
                      (let ((_tl5516155799_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5515955792_)))
                            (_hd5516055796_
                             (let ()
                               (declare (not safe))
                               (##car _e5515955792_))))
                        (___kont6247362474_
                         _tl5514955759_
                         _tl5516155799_
                         _hd5516055796_
                         _hd5515755786_
                         _hd5514555746_
                         _hd5506456023_)))
                    (___kont6247562476_
                     _tl5514955759_
                     _tl5515255769_
                     _hd5515155766_
                     _hd5514555746_
                     _hd5506456023_))
                (___kont6247562476_
                 _tl5514955759_
                 _tl5515255769_
                 _hd5515155766_
                 _hd5514555746_
                 _hd5506456023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6247562476_
                                                 _tl5514955759_
                                                 _tl5515255769_
                                                 _hd5515155766_
                                                 _hd5514555746_
                                                 _hd5506456023_))
                                            (___kont6247562476_
                                             _tl5514955759_
                                             _tl5515255769_
                                             _hd5515155766_
                                             _hd5514555746_
                                             _hd5506456023_))
                                        (___kont6247562476_
                                         _tl5514955759_
                                         _tl5515255769_
                                         _hd5515155766_
                                         _hd5514555746_
                                         _hd5506456023_))))
                                (___kont6247562476_
                                 _tl5514955759_
                                 _tl5515255769_
                                 _hd5515155766_
                                 _hd5514555746_
                                 _hd5506456023_))))
                        (if (gx#stx-null? _hd5514855756_)
                            (___kont6247762478_
                             _tl5514955759_
                             _hd5514555746_
                             _hd5506456023_)
                            (let () (declare (not safe)) (_g5505655270_))))))
                (let () (declare (not safe)) (_g5505655270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5506956039_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5506856036_)
                                                    (let ((_e5521155491_
                                                           (gx#syntax-e
                                                            _tl5506856036_)))
                                                      (let ((_tl5521355498_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5521155491_)))
                    (_hd5521255495_
                     (let () (declare (not safe)) (##car _e5521155491_))))
                (if (gx#stx-pair? _tl5521355498_)
                    (let ((_e5521455501_ (gx#syntax-e _tl5521355498_)))
                      (let ((_tl5521655508_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5521455501_)))
                            (_hd5521555505_
                             (let ()
                               (declare (not safe))
                               (##car _e5521455501_))))
                        (if (gx#stx-pair? _hd5521555505_)
                            (let ((_e5521755511_ (gx#syntax-e _hd5521555505_)))
                              (let ((_tl5521955518_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5521755511_)))
                                    (_hd5521855515_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5521755511_))))
                                (___kont6247962480_
                                 _tl5521655508_
                                 _tl5521955518_
                                 _hd5521855515_
                                 _hd5521255495_
                                 _hd5506456023_)))
                            (if (gx#stx-pair/null? _hd5521255495_)
                                (let ((___splice6248362484_
                                       (gx#syntax-split-splice
                                        _hd5521255495_
                                        '0)))
                                  (let ((_tl5523855314_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6248362484_
                                            '1)))
                                        (_target5523655311_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6248362484_
                                            '0))))
                                    (if (gx#stx-null? _tl5523855314_)
                                        (___match6281162812_
                                         _e5506356019_
                                         _hd5506456023_
                                         _tl5506556026_
                                         _e5506656029_
                                         _hd5506756033_
                                         _tl5506856036_
                                         _e5506956039_
                                         _e5521155491_
                                         _hd5521255495_
                                         _tl5521355498_
                                         ___splice6248362484_
                                         _target5523655311_
                                         _tl5523855314_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_))))))
                    (if (gx#stx-pair/null? _hd5521255495_)
                        (let ((___splice6248362484_
                               (gx#syntax-split-splice _hd5521255495_ '0)))
                          (let ((_tl5523855314_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6248362484_ '1)))
                                (_target5523655311_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6248362484_ '0))))
                            (if (gx#stx-null? _tl5523855314_)
                                (___match6281162812_
                                 _e5506356019_
                                 _hd5506456023_
                                 _tl5506556026_
                                 _e5506656029_
                                 _hd5506756033_
                                 _tl5506856036_
                                 _e5506956039_
                                 _e5521155491_
                                 _hd5521255495_
                                 _tl5521355498_
                                 ___splice6248362484_
                                 _target5523655311_
                                 _tl5523855314_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_)))))
                        (let () (declare (not safe)) (_g5505655270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5505655270_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5505655270_)))))
                          (let () (declare (not safe)) (_g5505655270_)))))
                  (let () (declare (not safe)) (_g5505655270_))))))))))
