(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64225_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64226_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55347_)
        (let* ((_g5535155369_
                (lambda (_g5535255365_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5535255365_)))
               (_g5535055425_
                (lambda (_g5535255373_)
                  (if (gx#stx-pair? _g5535255373_)
                      (let ((_e5535755376_ (gx#syntax-e _g5535255373_)))
                        (let ((_hd5535655380_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5535755376_)))
                              (_tl5535555383_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5535755376_))))
                          (if (gx#stx-pair? _tl5535555383_)
                              (let ((_e5536055386_
                                     (gx#syntax-e _tl5535555383_)))
                                (let ((_hd5535955390_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5536055386_)))
                                      (_tl5535855393_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5536055386_))))
                                  (if (gx#stx-pair? _tl5535855393_)
                                      (let ((_e5536355396_
                                             (gx#syntax-e _tl5535855393_)))
                                        (let ((_hd5536255400_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5536355396_)))
                                              (_tl5536155403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5536355396_))))
                                          (if (gx#stx-null? _tl5536155403_)
                                              ((lambda (_L55406_ _L55408_)
                                                 (let ((__tmp63986
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63938
                                                        (let ((__tmp63977
                                                               (let ((__tmp63978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63985 (gx#datum->syntax '#f 'key))
                                    (__tmp63979
                                     (let ((__tmp63984
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp63980
                                            (let ((__tmp63981
                                                   (let ((__tmp63983
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp63982
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp63983
                                                           __tmp63982))))
                                              (declare (not safe))
                                              (cons __tmp63981 '()))))
                                       (declare (not safe))
                                       (cons __tmp63984 __tmp63980))))
                                (declare (not safe))
                                (cons __tmp63985 __tmp63979))))
                         (declare (not safe))
                         (cons _L55408_ __tmp63978)))
                      (__tmp63939
                       (let ((__tmp63940
                              (let ((__tmp63976 (gx#datum->syntax '#f 'cond))
                                    (__tmp63941
                                     (let ((__tmp63958
                                            (let ((__tmp63963
                                                   (let ((__tmp63975
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp63964
                                                          (let ((__tmp63971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63974 (gx#datum->syntax '#f 'pair?))
                               (__tmp63972
                                (let ((__tmp63973 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp63973 '()))))
                           (declare (not safe))
                           (cons __tmp63974 __tmp63972)))
                        (__tmp63965
                         (let ((__tmp63966
                                (let ((__tmp63967
                                       (let ((__tmp63970
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp63968
                                              (let ((__tmp63969
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp63969 '()))))
                                         (declare (not safe))
                                         (cons __tmp63970 __tmp63968))))
                                  (declare (not safe))
                                  (cons _L55406_ __tmp63967))))
                           (declare (not safe))
                           (cons __tmp63966 '()))))
                    (declare (not safe))
                    (cons __tmp63971 __tmp63965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63975
                                                           __tmp63964)))
                                                  (__tmp63959
                                                   (let ((__tmp63962
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp63960
                                                          (let ((__tmp63961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp63961 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63962
                                                           __tmp63960))))
                                              (declare (not safe))
                                              (cons __tmp63963 __tmp63959)))
                                           (__tmp63942
                                            (let ((__tmp63948
                                                   (let ((__tmp63954
                                                          (let ((__tmp63957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp63955
                         (let ((__tmp63956 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63956 '()))))
                    (declare (not safe))
                    (cons __tmp63957 __tmp63955)))
                 (__tmp63949
                  (let ((__tmp63950
                         (let ((__tmp63953 (gx#datum->syntax '#f 'default))
                               (__tmp63951
                                (let ((__tmp63952 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp63952 '()))))
                           (declare (not safe))
                           (cons __tmp63953 __tmp63951))))
                    (declare (not safe))
                    (cons __tmp63950 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63954
                                                           __tmp63949)))
                                                  (__tmp63943
                                                   (let ((__tmp63944
                                                          (let ((__tmp63947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp63945
                         (let ((__tmp63946 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63946 '()))))
                    (declare (not safe))
                    (cons __tmp63947 __tmp63945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63944 '()))))
                                              (declare (not safe))
                                              (cons __tmp63948 __tmp63943))))
                                       (declare (not safe))
                                       (cons __tmp63958 __tmp63942))))
                                (declare (not safe))
                                (cons __tmp63976 __tmp63941))))
                         (declare (not safe))
                         (cons __tmp63940 '()))))
                  (declare (not safe))
                  (cons __tmp63977 __tmp63939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63986
                                                         __tmp63938)))
                                               _hd5536255400_
                                               _hd5535955390_)
                                              (_g5535155369_ _g5535255373_))))
                                      (_g5535155369_ _g5535255373_))))
                              (_g5535155369_ _g5535255373_))))
                      (_g5535155369_ _g5535255373_)))))
          (_g5535055425_ _$stx55347_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55429_)
        (let* ((_g5543355451_
                (lambda (_g5543455447_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5543455447_)))
               (_g5543255506_
                (lambda (_g5543455455_)
                  (if (gx#stx-pair? _g5543455455_)
                      (let ((_e5543955458_ (gx#syntax-e _g5543455455_)))
                        (let ((_hd5543855462_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5543955458_)))
                              (_tl5543755465_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5543955458_))))
                          (if (gx#stx-pair? _tl5543755465_)
                              (let ((_e5544255468_
                                     (gx#syntax-e _tl5543755465_)))
                                (let ((_hd5544155472_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5544255468_)))
                                      (_tl5544055475_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5544255468_))))
                                  (if (gx#stx-pair? _tl5544055475_)
                                      (let ((_e5544555478_
                                             (gx#syntax-e _tl5544055475_)))
                                        (let ((_hd5544455482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5544555478_)))
                                              (_tl5544355485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5544555478_))))
                                          (if (gx#stx-null? _tl5544355485_)
                                              ((lambda (_L55488_ _L55490_)
                                                 (let ((__tmp64056
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63987
                                                        (let ((__tmp64047
                                                               (let ((__tmp64048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64055 (gx#datum->syntax '#f 'key))
                                    (__tmp64049
                                     (let ((__tmp64054
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64050
                                            (let ((__tmp64051
                                                   (let ((__tmp64053
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64052
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64053
                                                           __tmp64052))))
                                              (declare (not safe))
                                              (cons __tmp64051 '()))))
                                       (declare (not safe))
                                       (cons __tmp64054 __tmp64050))))
                                (declare (not safe))
                                (cons __tmp64055 __tmp64049))))
                         (declare (not safe))
                         (cons _L55490_ __tmp64048)))
                      (__tmp63988
                       (let ((__tmp63989
                              (let ((__tmp64046 (gx#datum->syntax '#f 'let))
                                    (__tmp63990
                                     (let ((__tmp64045
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63991
                                            (let ((__tmp64040
                                                   (let ((__tmp64041
                                                          (let ((__tmp64044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64042
                         (let ((__tmp64043 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64043 '()))))
                    (declare (not safe))
                    (cons __tmp64044 __tmp64042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64041 '())))
                                                  (__tmp63992
                                                   (let ((__tmp63993
                                                          (let ((__tmp64039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp63994
                         (let ((__tmp64038 (gx#datum->syntax '#f 'rest))
                               (__tmp63995
                                (let ((__tmp64014
                                       (let ((__tmp64031
                                              (let ((__tmp64037
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64032
                                                     (let ((__tmp64036
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64033
                                                            (let ((__tmp64035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64034 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64035 __tmp64034))))
               (declare (not safe))
               (cons __tmp64036 __tmp64033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64037 __tmp64032)))
                                             (__tmp64015
                                              (let ((__tmp64016
                                                     (let ((__tmp64030
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64017
                                                            (let ((__tmp64025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64026
                                  (let ((__tmp64029 (gx#datum->syntax '#f 'k))
                                        (__tmp64027
                                         (let ((__tmp64028
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64028 '()))))
                                    (declare (not safe))
                                    (cons __tmp64029 __tmp64027))))
                             (declare (not safe))
                             (cons _L55488_ __tmp64026)))
                          (__tmp64018
                           (let ((__tmp64024 (gx#datum->syntax '#f 'v))
                                 (__tmp64019
                                  (let ((__tmp64020
                                         (let ((__tmp64023
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64021
                                                (let ((__tmp64022
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64022 '()))))
                                           (declare (not safe))
                                           (cons __tmp64023 __tmp64021))))
                                    (declare (not safe))
                                    (cons __tmp64020 '()))))
                             (declare (not safe))
                             (cons __tmp64024 __tmp64019))))
                      (declare (not safe))
                      (cons __tmp64025 __tmp64018))))
               (declare (not safe))
               (cons __tmp64030 __tmp64017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64016 '()))))
                                         (declare (not safe))
                                         (cons __tmp64031 __tmp64015)))
                                      (__tmp63996
                                       (let ((__tmp63997
                                              (let ((__tmp64013
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63998
                                                     (let ((__tmp63999
                                                            (let ((__tmp64012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64000
                           (let ((__tmp64008
                                  (let ((__tmp64011
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64009
                                         (let ((__tmp64010
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64010 '()))))
                                    (declare (not safe))
                                    (cons __tmp64011 __tmp64009)))
                                 (__tmp64001
                                  (let ((__tmp64004
                                         (let ((__tmp64007
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64005
                                                (let ((__tmp64006
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64006 '()))))
                                           (declare (not safe))
                                           (cons __tmp64007 __tmp64005)))
                                        (__tmp64002
                                         (let ((__tmp64003
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64003 '()))))
                                    (declare (not safe))
                                    (cons __tmp64004 __tmp64002))))
                             (declare (not safe))
                             (cons __tmp64008 __tmp64001))))
                      (declare (not safe))
                      (cons __tmp64012 __tmp64000))))
               (declare (not safe))
               (cons __tmp63999 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64013 __tmp63998))))
                                         (declare (not safe))
                                         (cons __tmp63997 '()))))
                                  (declare (not safe))
                                  (cons __tmp64014 __tmp63996))))
                           (declare (not safe))
                           (cons __tmp64038 __tmp63995))))
                    (declare (not safe))
                    (cons __tmp64039 __tmp63994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63993 '()))))
                                              (declare (not safe))
                                              (cons __tmp64040 __tmp63992))))
                                       (declare (not safe))
                                       (cons __tmp64045 __tmp63991))))
                                (declare (not safe))
                                (cons __tmp64046 __tmp63990))))
                         (declare (not safe))
                         (cons __tmp63989 '()))))
                  (declare (not safe))
                  (cons __tmp64047 __tmp63988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64056
                                                         __tmp63987)))
                                               _hd5544455482_
                                               _hd5544155472_)
                                              (_g5543355451_ _g5543455455_))))
                                      (_g5543355451_ _g5543455455_))))
                              (_g5543355451_ _g5543455455_))))
                      (_g5543355451_ _g5543455455_)))))
          (_g5543255506_ _$stx55429_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55510_)
        (let* ((_g5551455532_
                (lambda (_g5551555528_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5551555528_)))
               (_g5551355587_
                (lambda (_g5551555536_)
                  (if (gx#stx-pair? _g5551555536_)
                      (let ((_e5552055539_ (gx#syntax-e _g5551555536_)))
                        (let ((_hd5551955543_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5552055539_)))
                              (_tl5551855546_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5552055539_))))
                          (if (gx#stx-pair? _tl5551855546_)
                              (let ((_e5552355549_
                                     (gx#syntax-e _tl5551855546_)))
                                (let ((_hd5552255553_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5552355549_)))
                                      (_tl5552155556_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5552355549_))))
                                  (if (gx#stx-pair? _tl5552155556_)
                                      (let ((_e5552655559_
                                             (gx#syntax-e _tl5552155556_)))
                                        (let ((_hd5552555563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5552655559_)))
                                              (_tl5552455566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5552655559_))))
                                          (if (gx#stx-null? _tl5552455566_)
                                              ((lambda (_L55569_ _L55571_)
                                                 (let ((__tmp64127
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64057
                                                        (let ((__tmp64122
                                                               (let ((__tmp64123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64126 (gx#datum->syntax '#f 'el))
                                    (__tmp64124
                                     (let ((__tmp64125
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64125 '()))))
                                (declare (not safe))
                                (cons __tmp64126 __tmp64124))))
                         (declare (not safe))
                         (cons _L55571_ __tmp64123)))
                      (__tmp64058
                       (let ((__tmp64059
                              (let ((__tmp64121 (gx#datum->syntax '#f 'let))
                                    (__tmp64060
                                     (let ((__tmp64120
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64061
                                            (let ((__tmp64109
                                                   (let ((__tmp64116
                                                          (let ((__tmp64119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64117
                         (let ((__tmp64118 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64118 '()))))
                    (declare (not safe))
                    (cons __tmp64119 __tmp64117)))
                 (__tmp64110
                  (let ((__tmp64111
                         (let ((__tmp64115 (gx#datum->syntax '#f 'r))
                               (__tmp64112
                                (let ((__tmp64113
                                       (let ((__tmp64114
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64114 '()))))
                                  (declare (not safe))
                                  (cons __tmp64113 '()))))
                           (declare (not safe))
                           (cons __tmp64115 __tmp64112))))
                    (declare (not safe))
                    (cons __tmp64111 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64116
                                                           __tmp64110)))
                                                  (__tmp64062
                                                   (let ((__tmp64063
                                                          (let ((__tmp64108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64064
                         (let ((__tmp64107 (gx#datum->syntax '#f 'rest))
                               (__tmp64065
                                (let ((__tmp64071
                                       (let ((__tmp64102
                                              (let ((__tmp64106
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64103
                                                     (let ((__tmp64105
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64104
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64105
                                                             __tmp64104))))
                                                (declare (not safe))
                                                (cons __tmp64106 __tmp64103)))
                                             (__tmp64072
                                              (let ((__tmp64073
                                                     (let ((__tmp64101
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64074
                                                            (let ((__tmp64096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64097
                                  (let ((__tmp64100 (gx#datum->syntax '#f 'el))
                                        (__tmp64098
                                         (let ((__tmp64099
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64099 '()))))
                                    (declare (not safe))
                                    (cons __tmp64100 __tmp64098))))
                             (declare (not safe))
                             (cons _L55569_ __tmp64097)))
                          (__tmp64075
                           (let ((__tmp64088
                                  (let ((__tmp64095
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64089
                                         (let ((__tmp64094
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64090
                                                (let ((__tmp64093
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64091
                                                       (let ((__tmp64092
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64092
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64093
                                                        __tmp64091))))
                                           (declare (not safe))
                                           (cons __tmp64094 __tmp64090))))
                                    (declare (not safe))
                                    (cons __tmp64095 __tmp64089)))
                                 (__tmp64076
                                  (let ((__tmp64077
                                         (let ((__tmp64087
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64078
                                                (let ((__tmp64086
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64079
                                                       (let ((__tmp64080
                                                              (let ((__tmp64085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64081
                             (let ((__tmp64084 (gx#datum->syntax '#f 'hd))
                                   (__tmp64082
                                    (let ((__tmp64083
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64083 '()))))
                               (declare (not safe))
                               (cons __tmp64084 __tmp64082))))
                        (declare (not safe))
                        (cons __tmp64085 __tmp64081))))
                 (declare (not safe))
                 (cons __tmp64080 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64086
                                                        __tmp64079))))
                                           (declare (not safe))
                                           (cons __tmp64087 __tmp64078))))
                                    (declare (not safe))
                                    (cons __tmp64077 '()))))
                             (declare (not safe))
                             (cons __tmp64088 __tmp64076))))
                      (declare (not safe))
                      (cons __tmp64096 __tmp64075))))
               (declare (not safe))
               (cons __tmp64101 __tmp64074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64073 '()))))
                                         (declare (not safe))
                                         (cons __tmp64102 __tmp64072)))
                                      (__tmp64066
                                       (let ((__tmp64067
                                              (let ((__tmp64070
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64068
                                                     (let ((__tmp64069
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64069 '()))))
                                                (declare (not safe))
                                                (cons __tmp64070 __tmp64068))))
                                         (declare (not safe))
                                         (cons __tmp64067 '()))))
                                  (declare (not safe))
                                  (cons __tmp64071 __tmp64066))))
                           (declare (not safe))
                           (cons __tmp64107 __tmp64065))))
                    (declare (not safe))
                    (cons __tmp64108 __tmp64064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64063 '()))))
                                              (declare (not safe))
                                              (cons __tmp64109 __tmp64062))))
                                       (declare (not safe))
                                       (cons __tmp64120 __tmp64061))))
                                (declare (not safe))
                                (cons __tmp64121 __tmp64060))))
                         (declare (not safe))
                         (cons __tmp64059 '()))))
                  (declare (not safe))
                  (cons __tmp64122 __tmp64058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64127
                                                         __tmp64057)))
                                               _hd5552555563_
                                               _hd5552255553_)
                                              (_g5551455532_ _g5551555536_))))
                                      (_g5551455532_ _g5551555536_))))
                              (_g5551455532_ _g5551555536_))))
                      (_g5551455532_ _g5551555536_)))))
          (_g5551355587_ _$stx55510_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55591_)
        (let* ((_g5559555606_
                (lambda (_g5559655602_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5559655602_)))
               (_g5559455635_
                (lambda (_g5559655610_)
                  (if (gx#stx-pair? _g5559655610_)
                      (let ((_e5560055613_ (gx#syntax-e _g5559655610_)))
                        (let ((_hd5559955617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5560055613_)))
                              (_tl5559855620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5560055613_))))
                          ((lambda (_L55623_)
                             (let ((__tmp64129 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64128
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55623_))))
                               (declare (not safe))
                               (cons __tmp64129 __tmp64128)))
                           _tl5559855620_)))
                      (_g5559555606_ _g5559655610_)))))
          (_g5559455635_ _$stx55591_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55639_)
        (let* ((___stx6345263453_ _$stx55639_)
               (_g5565055864_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6345263453_))))
          (let ((___kont6345563456_
                 (lambda (_L56717_ _L56719_ _L56720_ _L56721_ _L56722_)
                   (let ((__tmp64130
                          (let ((__tmp64131
                                 (let ((__tmp64132
                                        (let ((__tmp64136
                                               (let ((__tmp64137
                                                      (lambda (_g5675256755_
                                                               _g5675356758_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5675256755_
                                                                _g5675356758_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64137
                                                         '()
                                                         _L56720_)))
                                              (__tmp64133
                                               (let ((__tmp64134
                                                      (let ((__tmp64135
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56717_ '()))))
                (declare (not safe))
                (cons _L56719_ __tmp64135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56721_ __tmp64134))))
                                          (declare (not safe))
                                          (cons __tmp64136 __tmp64133))))
                                   (declare (not safe))
                                   (cons '() __tmp64132))))
                            (declare (not safe))
                            (cons '2 __tmp64131))))
                     (declare (not safe))
                     (cons _L56722_ __tmp64130))))
                (___kont6345963460_
                 (lambda (_L56570_ _L56572_ _L56573_ _L56574_)
                   (let ((__tmp64138
                          (let ((__tmp64139
                                 (let ((__tmp64140
                                        (let ((__tmp64144
                                               (let ((__tmp64145
                                                      (lambda (_g5659756600_
                                                               _g5659856603_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5659756600_
                                                                _g5659856603_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64145
                                                         '()
                                                         _L56572_)))
                                              (__tmp64141
                                               (let ((__tmp64142
                                                      (let ((__tmp64143
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56570_ '()))))
                (declare (not safe))
                (cons _L56570_ __tmp64143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56573_ __tmp64142))))
                                          (declare (not safe))
                                          (cons __tmp64144 __tmp64141))))
                                   (declare (not safe))
                                   (cons '() __tmp64140))))
                            (declare (not safe))
                            (cons '2 __tmp64139))))
                     (declare (not safe))
                     (cons _L56574_ __tmp64138))))
                (___kont6346363464_
                 (lambda (_L56473_)
                   (let ((__tmp64157 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64146
                          (let ((__tmp64147
                                 (let ((__tmp64154
                                        (let ((__tmp64156
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64155
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64156 __tmp64155)))
                                       (__tmp64148
                                        (let ((__tmp64151
                                               (let ((__tmp64153
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64152
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64153 __tmp64152)))
                                              (__tmp64149
                                               (let ((__tmp64150
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64150))))
                                          (declare (not safe))
                                          (cons __tmp64151 __tmp64149))))
                                   (declare (not safe))
                                   (cons __tmp64154 __tmp64148))))
                            (declare (not safe))
                            (cons _L56473_ __tmp64147))))
                     (declare (not safe))
                     (cons __tmp64157 __tmp64146))))
                (___kont6346563466_
                 (lambda (_L56396_
                          _L56398_
                          _L56399_
                          _L56400_
                          _L56401_
                          _L56402_)
                   (let ((__tmp64158
                          (let ((__tmp64159
                                 (let ((__tmp64161
                                        (let ((__tmp64162
                                               (let ((__tmp64163
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56399_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56400_ __tmp64163))))
                                          (declare (not safe))
                                          (cons __tmp64162 _L56401_)))
                                       (__tmp64160
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56398_ _L56396_))))
                                   (declare (not safe))
                                   (cons __tmp64161 __tmp64160))))
                            (declare (not safe))
                            (cons '2 __tmp64159))))
                     (declare (not safe))
                     (cons _L56402_ __tmp64158))))
                (___kont6346763468_
                 (lambda (_L56277_ _L56279_ _L56280_ _L56281_ _L56282_)
                   (let ((__tmp64164
                          (let ((__tmp64165
                                 (let ((__tmp64167
                                        (let ((__tmp64168
                                               (let ((__tmp64169
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56280_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56280_ __tmp64169))))
                                          (declare (not safe))
                                          (cons __tmp64168 _L56281_)))
                                       (__tmp64166
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56279_ _L56277_))))
                                   (declare (not safe))
                                   (cons __tmp64167 __tmp64166))))
                            (declare (not safe))
                            (cons '2 __tmp64165))))
                     (declare (not safe))
                     (cons _L56282_ __tmp64164))))
                (___kont6346963470_
                 (lambda (_L56194_ _L56196_ _L56197_)
                   (let ((__tmp64170
                          (let ((__tmp64171
                                 (let ((__tmp64172
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56196_ _L56194_))))
                                   (declare (not safe))
                                   (cons '() __tmp64172))))
                            (declare (not safe))
                            (cons '3 __tmp64171))))
                     (declare (not safe))
                     (cons _L56197_ __tmp64170))))
                (___kont6347163472_
                 (lambda (_L56115_ _L56117_ _L56118_ _L56119_ _L56120_)
                   (let ((__tmp64173
                          (let ((__tmp64174
                                 (let ((__tmp64176
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56118_ _L56119_)))
                                       (__tmp64175
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56117_ _L56115_))))
                                   (declare (not safe))
                                   (cons __tmp64176 __tmp64175))))
                            (declare (not safe))
                            (cons '3 __tmp64174))))
                     (declare (not safe))
                     (cons _L56120_ __tmp64173))))
                (___kont6347363474_
                 (lambda (_L55999_
                          _L56001_
                          _L56002_
                          _L56003_
                          _L56004_
                          _L56005_)
                   (let ((__tmp64224 (gx#datum->syntax '#f 'let))
                         (__tmp64177
                          (let ((__tmp64212
                                 (let ((__tmp64221
                                        (let ((__tmp64223
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64222
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56002_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64223 __tmp64222)))
                                       (__tmp64213
                                        (let ((__tmp64214
                                               (let ((__tmp64220
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64215
                                                      (let ((__tmp64216
                                                             (let ((__tmp64219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64217
                            (let ((__tmp64218
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55999_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64218))))
                       (declare (not safe))
                       (cons __tmp64219 __tmp64217))))
                (declare (not safe))
                (cons __tmp64216 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64220
                                                       __tmp64215))))
                                          (declare (not safe))
                                          (cons __tmp64214 '()))))
                                   (declare (not safe))
                                   (cons __tmp64221 __tmp64213)))
                                (__tmp64178
                                 (let ((__tmp64179
                                        (let ((__tmp64211
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64180
                                               (let ((__tmp64210
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64181
                                                      (let ((__tmp64185
                                                             (let ((__tmp64209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64186
                            (let ((__tmp64208 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64187
                                   (let ((__tmp64203
                                          (let ((__tmp64207
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64204
                                                 (let ((__tmp64205
                                                        (let ((__tmp64206
                                                               (lambda (_g5603956042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5604056045_)
                         (let ()
                           (declare (not safe))
                           (cons _g5603956042_ _g5604056045_)))))
                  (declare (not safe))
                  (foldr1 __tmp64206 '() _L56004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64205 '()))))
                                            (declare (not safe))
                                            (cons __tmp64207 __tmp64204)))
                                         (__tmp64188
                                          (let ((__tmp64195
                                                 (let ((__tmp64202
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64196
                                                        (let ((__tmp64197
                                                               (lambda (_g5603756048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5603856051_)
                         (let ((__tmp64198
                                (let ((__tmp64201
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64199
                                       (let ((__tmp64200
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5603756048_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64200))))
                                  (declare (not safe))
                                  (cons __tmp64201 __tmp64199))))
                           (declare (not safe))
                           (cons __tmp64198 _g5603856051_)))))
                  (declare (not safe))
                  (foldr1 __tmp64197 '() _L56003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64202
                                                         __tmp64196)))
                                                (__tmp64189
                                                 (let ((__tmp64192
                                                        (let ((__tmp64194
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64193
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56001_ '()))))
                  (declare (not safe))
                  (cons __tmp64194 __tmp64193)))
               (__tmp64190
                (let ((__tmp64191 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64191 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64192
                                                         __tmp64190))))
                                            (declare (not safe))
                                            (cons __tmp64195 __tmp64189))))
                                     (declare (not safe))
                                     (cons __tmp64203 __tmp64188))))
                              (declare (not safe))
                              (cons __tmp64208 __tmp64187))))
                       (declare (not safe))
                       (cons __tmp64209 __tmp64186)))
                    (__tmp64182
                     (let ((__tmp64183
                            (let ((__tmp64184 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64184 '()))))
                       (declare (not safe))
                       (cons __tmp64183 '()))))
                (declare (not safe))
                (cons __tmp64185 __tmp64182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64210
                                                       __tmp64181))))
                                          (declare (not safe))
                                          (cons __tmp64211 __tmp64180))))
                                   (declare (not safe))
                                   (cons __tmp64179 '()))))
                            (declare (not safe))
                            (cons __tmp64212 __tmp64178))))
                     (declare (not safe))
                     (cons __tmp64224 __tmp64177)))))
            (let* ((___match6380363804_
                    (lambda (_e5582255871_
                             _hd5582155875_
                             _tl5582055878_
                             _e5582555881_
                             _hd5582455885_
                             _tl5582355888_
                             _e5582655891_
                             _e5582955895_
                             _hd5582855899_
                             _tl5582755902_
                             ___splice6347563476_
                             _target5583055905_
                             _tl5583255908_)
                      (letrec ((_loop5583355911_
                                (lambda (_hd5583155915_
                                         _exprs5583755918_
                                         _names5583855920_)
                                  (if (gx#stx-pair? _hd5583155915_)
                                      (let ((_e5583455923_
                                             (gx#syntax-e _hd5583155915_)))
                                        (let ((_lp-tl5583655930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5583455923_)))
                                              (_lp-hd5583555927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5583455923_))))
                                          (if (gx#stx-pair? _lp-hd5583555927_)
                                              (let ((_e5584355933_
                                                     (gx#syntax-e
                                                      _lp-hd5583555927_)))
                                                (let ((_tl5584155940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5584355933_)))
                                                      (_hd5584255937_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5584355933_))))
                                                  (if (gx#stx-pair?
                                                       _tl5584155940_)
                                                      (let ((_e5584655943_
                                                             (gx#syntax-e
                                                              _tl5584155940_)))
                                                        (let ((_tl5584455950_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5584655943_)))
                      (_hd5584555947_
                       (let () (declare (not safe)) (##car _e5584655943_))))
                  (if (gx#stx-null? _tl5584455950_)
                      (_loop5583355911_
                       _lp-tl5583655930_
                       (let ()
                         (declare (not safe))
                         (cons _hd5584555947_ _exprs5583755918_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5584255937_ _names5583855920_)))
                      (let () (declare (not safe)) (_g5565055864_)))))
              (let () (declare (not safe)) (_g5565055864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5565055864_)))))
                                      (let ((_names5584055956_
                                             (reverse _names5583855920_))
                                            (_exprs5583955953_
                                             (reverse _exprs5583755918_)))
                                        (if (gx#stx-pair? _tl5582755902_)
                                            (let ((_e5584955959_
                                                   (gx#syntax-e
                                                    _tl5582755902_)))
                                              (let ((_tl5584755966_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5584955959_)))
                                                    (_hd5584855963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5584955959_))))
                                                (if (gx#stx-null?
                                                     _hd5584855963_)
                                                    (if (gx#stx-pair?
                                                         _tl5584755966_)
                                                        (let ((_e5585255969_
                                                               (gx#syntax-e
                                                                _tl5584755966_)))
                                                          (let ((_tl5585055976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5585255969_)))
                        (_hd5585155973_
                         (let () (declare (not safe)) (##car _e5585255969_))))
                    (if (gx#stx-pair? _tl5585055976_)
                        (let ((_e5585555979_ (gx#syntax-e _tl5585055976_)))
                          (let ((_tl5585355986_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5585555979_)))
                                (_hd5585455983_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5585555979_))))
                            (if (gx#stx-pair? _tl5585355986_)
                                (let ((_e5585855989_
                                       (gx#syntax-e _tl5585355986_)))
                                  (let ((_tl5585655996_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5585855989_)))
                                        (_hd5585755993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5585855989_))))
                                    (if (gx#stx-null? _tl5585655996_)
                                        (___kont6347363474_
                                         _hd5585755993_
                                         _hd5585455983_
                                         _hd5585155973_
                                         _exprs5583955953_
                                         _names5584055956_
                                         _hd5582155875_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565055864_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5565055864_)))))
                        (let () (declare (not safe)) (_g5565055864_)))))
                (let () (declare (not safe)) (_g5565055864_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565055864_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5565055864_))))))))
                        (_loop5583355911_ _target5583055905_ '() '()))))
                   (___match6358163582_
                    (lambda (_e5569456496_
                             _hd5569356500_
                             _tl5569256503_
                             _e5569756506_
                             _hd5569656510_
                             _tl5569556513_
                             _e5569856516_
                             _e5570156520_
                             _hd5570056524_
                             _tl5569956527_
                             ___splice6346163462_
                             _target5570256530_
                             _tl5570456533_
                             _e5571356536_
                             _hd5571256540_
                             _tl5571156543_)
                      (letrec ((_loop5570556546_
                                (lambda (_hd5570356550_ _exprs5570956553_)
                                  (if (gx#stx-pair? _hd5570356550_)
                                      (let ((_e5570656556_
                                             (gx#syntax-e _hd5570356550_)))
                                        (let ((_lp-tl5570856563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5570656556_)))
                                              (_lp-hd5570756560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5570656556_))))
                                          (_loop5570556546_
                                           _lp-tl5570856563_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5570756560_
                                                   _exprs5570956553_)))))
                                      (let ((_exprs5571056566_
                                             (reverse _exprs5570956553_)))
                                        (___kont6345963460_
                                         _hd5571256540_
                                         _exprs5571056566_
                                         _hd5570056524_
                                         _hd5569356500_))))))
                        (_loop5570556546_ _target5570256530_ '()))))
                   (___match6354163542_
                    (lambda (_e5565956613_
                             _hd5565856617_
                             _tl5565756620_
                             _e5566256623_
                             _hd5566156627_
                             _tl5566056630_
                             _e5566356633_
                             _e5566656637_
                             _hd5566556641_
                             _tl5566456644_
                             ___splice6345763458_
                             _target5566756647_
                             _tl5566956650_
                             _e5567856653_
                             _hd5567756657_
                             _tl5567656660_
                             _e5568156663_
                             _hd5568056667_
                             _tl5567956670_
                             _e5568456673_
                             _hd5568356677_
                             _tl5568256680_
                             _e5568756683_
                             _hd5568656687_
                             _tl5568556690_)
                      (letrec ((_loop5567056693_
                                (lambda (_hd5566856697_ _exprs5567456700_)
                                  (if (gx#stx-pair? _hd5566856697_)
                                      (let ((_e5567156703_
                                             (gx#syntax-e _hd5566856697_)))
                                        (let ((_lp-tl5567356710_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5567156703_)))
                                              (_lp-hd5567256707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5567156703_))))
                                          (_loop5567056693_
                                           _lp-tl5567356710_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5567256707_
                                                   _exprs5567456700_)))))
                                      (let ((_exprs5567556713_
                                             (reverse _exprs5567456700_)))
                                        (___kont6345563456_
                                         _hd5568656687_
                                         _hd5568356677_
                                         _exprs5567556713_
                                         _hd5566556641_
                                         _hd5565856617_))))))
                        (_loop5567056693_ _target5566756647_ '())))))
              (if (gx#stx-pair? ___stx6345263453_)
                  (let ((_e5565956613_ (gx#syntax-e ___stx6345263453_)))
                    (let ((_tl5565756620_
                           (let () (declare (not safe)) (##cdr _e5565956613_)))
                          (_hd5565856617_
                           (let ()
                             (declare (not safe))
                             (##car _e5565956613_))))
                      (if (gx#stx-pair? _tl5565756620_)
                          (let ((_e5566256623_ (gx#syntax-e _tl5565756620_)))
                            (let ((_tl5566056630_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5566256623_)))
                                  (_hd5566156627_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5566256623_))))
                              (if (gx#stx-datum? _hd5566156627_)
                                  (let ((_e5566356633_
                                         (gx#stx-e _hd5566156627_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5566356633_ '1))
                                        (if (gx#stx-pair? _tl5566056630_)
                                            (let ((_e5566656637_
                                                   (gx#syntax-e
                                                    _tl5566056630_)))
                                              (let ((_tl5566456644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5566656637_)))
                                                    (_hd5566556641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5566656637_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5566456644_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5566456644_)
                                                              '2)
                                                        (let ((___splice6345763458_
                                                               (gx#syntax-split-splice
                                                                _tl5566456644_
                                                                '2)))
                                                          (let ((_tl5566956650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6345763458_ '1)))
                        (_target5566756647_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6345763458_ '0))))
                    (if (gx#stx-pair? _tl5566956650_)
                        (let ((_e5567856653_ (gx#syntax-e _tl5566956650_)))
                          (let ((_tl5567656660_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5567856653_)))
                                (_hd5567756657_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5567856653_))))
                            (if (gx#stx-pair? _hd5567756657_)
                                (let ((_e5568156663_
                                       (gx#syntax-e _hd5567756657_)))
                                  (let ((_tl5567956670_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5568156663_)))
                                        (_hd5568056667_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5568156663_))))
                                    (if (gx#identifier? _hd5568056667_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64226_|
                                             _hd5568056667_)
                                            (if (gx#stx-pair? _tl5567956670_)
                                                (let ((_e5568456673_
                                                       (gx#syntax-e
                                                        _tl5567956670_)))
                                                  (let ((_tl5568256680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5568456673_)))
                                                        (_hd5568356677_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5568456673_))))
                                                    (if (gx#stx-null?
                                                         _tl5568256680_)
                                                        (if (gx#stx-pair?
                                                             _tl5567656660_)
                                                            (let ((_e5568756683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5567656660_)))
                      (let ((_tl5568556690_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5568756683_)))
                            (_hd5568656687_
                             (let ()
                               (declare (not safe))
                               (##car _e5568756683_))))
                        (if (gx#stx-null? _tl5568556690_)
                            (___match6354163542_
                             _e5565956613_
                             _hd5565856617_
                             _tl5565756620_
                             _e5566256623_
                             _hd5566156627_
                             _tl5566056630_
                             _e5566356633_
                             _e5566656637_
                             _hd5566556641_
                             _tl5566456644_
                             ___splice6345763458_
                             _target5566756647_
                             _tl5566956650_
                             _e5567856653_
                             _hd5567756657_
                             _tl5567656660_
                             _e5568156663_
                             _hd5568056667_
                             _tl5567956670_
                             _e5568456673_
                             _hd5568356677_
                             _tl5568256680_
                             _e5568756683_
                             _hd5568656687_
                             _tl5568556690_)
                            (if (fx>= (gx#stx-length _tl5566456644_) '1)
                                (let ((___splice6346163462_
                                       (gx#syntax-split-splice
                                        _tl5566456644_
                                        '1)))
                                  (let ((_tl5570456533_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6346163462_
                                            '1)))
                                        (_target5570256530_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6346163462_
                                            '0))))
                                    (if (gx#stx-pair? _tl5570456533_)
                                        (let ((_e5571356536_
                                               (gx#syntax-e _tl5570456533_)))
                                          (let ((_tl5571156543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5571356536_)))
                                                (_hd5571256540_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5571356536_))))
                                            (if (gx#stx-null? _tl5571156543_)
                                                (___match6358163582_
                                                 _e5565956613_
                                                 _hd5565856617_
                                                 _tl5565756620_
                                                 _e5566256623_
                                                 _hd5566156627_
                                                 _tl5566056630_
                                                 _e5566356633_
                                                 _e5566656637_
                                                 _hd5566556641_
                                                 _tl5566456644_
                                                 ___splice6346163462_
                                                 _target5570256530_
                                                 _tl5570456533_
                                                 _e5571356536_
                                                 _hd5571256540_
                                                 _tl5571156543_)
                                                (if (gx#stx-null?
                                                     _tl5566456644_)
                                                    (___kont6346363464_
                                                     _hd5566556641_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565055864_))))))
                                        (if (gx#stx-null? _tl5566456644_)
                                            (___kont6346363464_ _hd5566556641_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5565055864_))))))
                                (if (gx#stx-null? _tl5566456644_)
                                    (___kont6346363464_ _hd5566556641_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5565055864_)))))))
                    (if (fx>= (gx#stx-length _tl5566456644_) '1)
                        (let ((___splice6346163462_
                               (gx#syntax-split-splice _tl5566456644_ '1)))
                          (let ((_tl5570456533_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6346163462_ '1)))
                                (_target5570256530_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6346163462_ '0))))
                            (if (gx#stx-pair? _tl5570456533_)
                                (let ((_e5571356536_
                                       (gx#syntax-e _tl5570456533_)))
                                  (let ((_tl5571156543_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5571356536_)))
                                        (_hd5571256540_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5571356536_))))
                                    (if (gx#stx-null? _tl5571156543_)
                                        (___match6358163582_
                                         _e5565956613_
                                         _hd5565856617_
                                         _tl5565756620_
                                         _e5566256623_
                                         _hd5566156627_
                                         _tl5566056630_
                                         _e5566356633_
                                         _e5566656637_
                                         _hd5566556641_
                                         _tl5566456644_
                                         ___splice6346163462_
                                         _target5570256530_
                                         _tl5570456533_
                                         _e5571356536_
                                         _hd5571256540_
                                         _tl5571156543_)
                                        (if (gx#stx-null? _tl5566456644_)
                                            (___kont6346363464_ _hd5566556641_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5565055864_))))))
                                (if (gx#stx-null? _tl5566456644_)
                                    (___kont6346363464_ _hd5566556641_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5565055864_))))))
                        (if (gx#stx-null? _tl5566456644_)
                            (___kont6346363464_ _hd5566556641_)
                            (let () (declare (not safe)) (_g5565055864_)))))
                (if (fx>= (gx#stx-length _tl5566456644_) '1)
                    (let ((___splice6346163462_
                           (gx#syntax-split-splice _tl5566456644_ '1)))
                      (let ((_tl5570456533_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346163462_ '1)))
                            (_target5570256530_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346163462_ '0))))
                        (if (gx#stx-pair? _tl5570456533_)
                            (let ((_e5571356536_ (gx#syntax-e _tl5570456533_)))
                              (let ((_tl5571156543_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5571356536_)))
                                    (_hd5571256540_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5571356536_))))
                                (if (gx#stx-null? _tl5571156543_)
                                    (___match6358163582_
                                     _e5565956613_
                                     _hd5565856617_
                                     _tl5565756620_
                                     _e5566256623_
                                     _hd5566156627_
                                     _tl5566056630_
                                     _e5566356633_
                                     _e5566656637_
                                     _hd5566556641_
                                     _tl5566456644_
                                     ___splice6346163462_
                                     _target5570256530_
                                     _tl5570456533_
                                     _e5571356536_
                                     _hd5571256540_
                                     _tl5571156543_)
                                    (if (gx#stx-null? _tl5566456644_)
                                        (___kont6346363464_ _hd5566556641_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565055864_))))))
                            (if (gx#stx-null? _tl5566456644_)
                                (___kont6346363464_ _hd5566556641_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565055864_))))))
                    (if (gx#stx-null? _tl5566456644_)
                        (___kont6346363464_ _hd5566556641_)
                        (let () (declare (not safe)) (_g5565055864_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5566456644_)
                                                          '1)
                                                    (let ((___splice6346163462_
                                                           (gx#syntax-split-splice
                                                            _tl5566456644_
                                                            '1)))
                                                      (let ((_tl5570456533_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6346163462_ '1)))
                    (_target5570256530_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6346163462_ '0))))
                (if (gx#stx-pair? _tl5570456533_)
                    (let ((_e5571356536_ (gx#syntax-e _tl5570456533_)))
                      (let ((_tl5571156543_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5571356536_)))
                            (_hd5571256540_
                             (let ()
                               (declare (not safe))
                               (##car _e5571356536_))))
                        (if (gx#stx-null? _tl5571156543_)
                            (___match6358163582_
                             _e5565956613_
                             _hd5565856617_
                             _tl5565756620_
                             _e5566256623_
                             _hd5566156627_
                             _tl5566056630_
                             _e5566356633_
                             _e5566656637_
                             _hd5566556641_
                             _tl5566456644_
                             ___splice6346163462_
                             _target5570256530_
                             _tl5570456533_
                             _e5571356536_
                             _hd5571256540_
                             _tl5571156543_)
                            (if (gx#stx-null? _tl5566456644_)
                                (___kont6346363464_ _hd5566556641_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565055864_))))))
                    (if (gx#stx-null? _tl5566456644_)
                        (___kont6346363464_ _hd5566556641_)
                        (let () (declare (not safe)) (_g5565055864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5566456644_)
                                                        (___kont6346363464_
                                                         _hd5566556641_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565055864_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5566456644_)
                                                      '1)
                                                (let ((___splice6346163462_
                                                       (gx#syntax-split-splice
                                                        _tl5566456644_
                                                        '1)))
                                                  (let ((_tl5570456533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6346163462_
                                                            '1)))
                                                        (_target5570256530_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6346163462_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5570456533_)
                                                        (let ((_e5571356536_
                                                               (gx#syntax-e
                                                                _tl5570456533_)))
                                                          (let ((_tl5571156543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5571356536_)))
                        (_hd5571256540_
                         (let () (declare (not safe)) (##car _e5571356536_))))
                    (if (gx#stx-null? _tl5571156543_)
                        (___match6358163582_
                         _e5565956613_
                         _hd5565856617_
                         _tl5565756620_
                         _e5566256623_
                         _hd5566156627_
                         _tl5566056630_
                         _e5566356633_
                         _e5566656637_
                         _hd5566556641_
                         _tl5566456644_
                         ___splice6346163462_
                         _target5570256530_
                         _tl5570456533_
                         _e5571356536_
                         _hd5571256540_
                         _tl5571156543_)
                        (if (gx#stx-null? _tl5566456644_)
                            (___kont6346363464_ _hd5566556641_)
                            (let () (declare (not safe)) (_g5565055864_))))))
                (if (gx#stx-null? _tl5566456644_)
                    (___kont6346363464_ _hd5566556641_)
                    (let () (declare (not safe)) (_g5565055864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5566456644_)
                                                    (___kont6346363464_
                                                     _hd5566556641_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565055864_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5566456644_)
                                                  '1)
                                            (let ((___splice6346163462_
                                                   (gx#syntax-split-splice
                                                    _tl5566456644_
                                                    '1)))
                                              (let ((_tl5570456533_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6346163462_
                                                        '1)))
                                                    (_target5570256530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6346163462_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5570456533_)
                                                    (let ((_e5571356536_
                                                           (gx#syntax-e
                                                            _tl5570456533_)))
                                                      (let ((_tl5571156543_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5571356536_)))
                    (_hd5571256540_
                     (let () (declare (not safe)) (##car _e5571356536_))))
                (if (gx#stx-null? _tl5571156543_)
                    (___match6358163582_
                     _e5565956613_
                     _hd5565856617_
                     _tl5565756620_
                     _e5566256623_
                     _hd5566156627_
                     _tl5566056630_
                     _e5566356633_
                     _e5566656637_
                     _hd5566556641_
                     _tl5566456644_
                     ___splice6346163462_
                     _target5570256530_
                     _tl5570456533_
                     _e5571356536_
                     _hd5571256540_
                     _tl5571156543_)
                    (if (gx#stx-null? _tl5566456644_)
                        (___kont6346363464_ _hd5566556641_)
                        (let () (declare (not safe)) (_g5565055864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5566456644_)
                                                        (___kont6346363464_
                                                         _hd5566556641_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565055864_))))))
                                            (if (gx#stx-null? _tl5566456644_)
                                                (___kont6346363464_
                                                 _hd5566556641_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565055864_)))))))
                                (if (fx>= (gx#stx-length _tl5566456644_) '1)
                                    (let ((___splice6346163462_
                                           (gx#syntax-split-splice
                                            _tl5566456644_
                                            '1)))
                                      (let ((_tl5570456533_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6346163462_
                                                '1)))
                                            (_target5570256530_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6346163462_
                                                '0))))
                                        (if (gx#stx-pair? _tl5570456533_)
                                            (let ((_e5571356536_
                                                   (gx#syntax-e
                                                    _tl5570456533_)))
                                              (let ((_tl5571156543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5571356536_)))
                                                    (_hd5571256540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5571356536_))))
                                                (if (gx#stx-null?
                                                     _tl5571156543_)
                                                    (___match6358163582_
                                                     _e5565956613_
                                                     _hd5565856617_
                                                     _tl5565756620_
                                                     _e5566256623_
                                                     _hd5566156627_
                                                     _tl5566056630_
                                                     _e5566356633_
                                                     _e5566656637_
                                                     _hd5566556641_
                                                     _tl5566456644_
                                                     ___splice6346163462_
                                                     _target5570256530_
                                                     _tl5570456533_
                                                     _e5571356536_
                                                     _hd5571256540_
                                                     _tl5571156543_)
                                                    (if (gx#stx-null?
                                                         _tl5566456644_)
                                                        (___kont6346363464_
                                                         _hd5566556641_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565055864_))))))
                                            (if (gx#stx-null? _tl5566456644_)
                                                (___kont6346363464_
                                                 _hd5566556641_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565055864_))))))
                                    (if (gx#stx-null? _tl5566456644_)
                                        (___kont6346363464_ _hd5566556641_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565055864_)))))))
                        (if (fx>= (gx#stx-length _tl5566456644_) '1)
                            (let ((___splice6346163462_
                                   (gx#syntax-split-splice _tl5566456644_ '1)))
                              (let ((_tl5570456533_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6346163462_ '1)))
                                    (_target5570256530_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6346163462_
                                        '0))))
                                (if (gx#stx-pair? _tl5570456533_)
                                    (let ((_e5571356536_
                                           (gx#syntax-e _tl5570456533_)))
                                      (let ((_tl5571156543_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5571356536_)))
                                            (_hd5571256540_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5571356536_))))
                                        (if (gx#stx-null? _tl5571156543_)
                                            (___match6358163582_
                                             _e5565956613_
                                             _hd5565856617_
                                             _tl5565756620_
                                             _e5566256623_
                                             _hd5566156627_
                                             _tl5566056630_
                                             _e5566356633_
                                             _e5566656637_
                                             _hd5566556641_
                                             _tl5566456644_
                                             ___splice6346163462_
                                             _target5570256530_
                                             _tl5570456533_
                                             _e5571356536_
                                             _hd5571256540_
                                             _tl5571156543_)
                                            (if (gx#stx-null? _tl5566456644_)
                                                (___kont6346363464_
                                                 _hd5566556641_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565055864_))))))
                                    (if (gx#stx-null? _tl5566456644_)
                                        (___kont6346363464_ _hd5566556641_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565055864_))))))
                            (if (gx#stx-null? _tl5566456644_)
                                (___kont6346363464_ _hd5566556641_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565055864_)))))))
                (if (fx>= (gx#stx-length _tl5566456644_) '1)
                    (let ((___splice6346163462_
                           (gx#syntax-split-splice _tl5566456644_ '1)))
                      (let ((_tl5570456533_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346163462_ '1)))
                            (_target5570256530_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6346163462_ '0))))
                        (if (gx#stx-pair? _tl5570456533_)
                            (let ((_e5571356536_ (gx#syntax-e _tl5570456533_)))
                              (let ((_tl5571156543_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5571356536_)))
                                    (_hd5571256540_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5571356536_))))
                                (if (gx#stx-null? _tl5571156543_)
                                    (___match6358163582_
                                     _e5565956613_
                                     _hd5565856617_
                                     _tl5565756620_
                                     _e5566256623_
                                     _hd5566156627_
                                     _tl5566056630_
                                     _e5566356633_
                                     _e5566656637_
                                     _hd5566556641_
                                     _tl5566456644_
                                     ___splice6346163462_
                                     _target5570256530_
                                     _tl5570456533_
                                     _e5571356536_
                                     _hd5571256540_
                                     _tl5571156543_)
                                    (if (gx#stx-null? _tl5566456644_)
                                        (___kont6346363464_ _hd5566556641_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565055864_))))))
                            (if (gx#stx-null? _tl5566456644_)
                                (___kont6346363464_ _hd5566556641_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565055864_))))))
                    (if (gx#stx-null? _tl5566456644_)
                        (___kont6346363464_ _hd5566556641_)
                        (let () (declare (not safe)) (_g5565055864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5566456644_)
                                                        (___kont6346363464_
                                                         _hd5566556641_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5565055864_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5565055864_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5566356633_ '2))
                                            (if (gx#stx-pair? _tl5566056630_)
                                                (let ((_e5574056336_
                                                       (gx#syntax-e
                                                        _tl5566056630_)))
                                                  (let ((_tl5573856343_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5574056336_)))
                                                        (_hd5573956340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5574056336_))))
                                                    (if (gx#stx-pair?
                                                         _tl5573856343_)
                                                        (let ((_e5574356346_
                                                               (gx#syntax-e
                                                                _tl5573856343_)))
                                                          (let ((_tl5574156353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5574356346_)))
                        (_hd5574256350_
                         (let () (declare (not safe)) (##car _e5574356346_))))
                    (if (gx#stx-pair? _hd5574256350_)
                        (let ((_e5574656356_ (gx#syntax-e _hd5574256350_)))
                          (let ((_tl5574456363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5574656356_)))
                                (_hd5574556360_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5574656356_))))
                            (if (gx#stx-pair? _hd5574556360_)
                                (let ((_e5574956366_
                                       (gx#syntax-e _hd5574556360_)))
                                  (let ((_tl5574756373_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5574956366_)))
                                        (_hd5574856370_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5574956366_))))
                                    (if (gx#identifier? _hd5574856370_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64225_|
                                             _hd5574856370_)
                                            (if (gx#stx-pair? _tl5574756373_)
                                                (let ((_e5575256376_
                                                       (gx#syntax-e
                                                        _tl5574756373_)))
                                                  (let ((_tl5575056383_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5575256376_)))
                                                        (_hd5575156380_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5575256376_))))
                                                    (if (gx#stx-null?
                                                         _tl5575056383_)
                                                        (if (gx#stx-pair?
                                                             _tl5574456363_)
                                                            (let ((_e5575556386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5574456363_)))
                      (let ((_tl5575356393_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5575556386_)))
                            (_hd5575456390_
                             (let ()
                               (declare (not safe))
                               (##car _e5575556386_))))
                        (___kont6346563466_
                         _tl5574156353_
                         _tl5575356393_
                         _hd5575456390_
                         _hd5575156380_
                         _hd5573956340_
                         _hd5565856617_)))
                    (___kont6346763468_
                     _tl5574156353_
                     _tl5574456363_
                     _hd5574556360_
                     _hd5573956340_
                     _hd5565856617_))
                (___kont6346763468_
                 _tl5574156353_
                 _tl5574456363_
                 _hd5574556360_
                 _hd5573956340_
                 _hd5565856617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6346763468_
                                                 _tl5574156353_
                                                 _tl5574456363_
                                                 _hd5574556360_
                                                 _hd5573956340_
                                                 _hd5565856617_))
                                            (___kont6346763468_
                                             _tl5574156353_
                                             _tl5574456363_
                                             _hd5574556360_
                                             _hd5573956340_
                                             _hd5565856617_))
                                        (___kont6346763468_
                                         _tl5574156353_
                                         _tl5574456363_
                                         _hd5574556360_
                                         _hd5573956340_
                                         _hd5565856617_))))
                                (___kont6346763468_
                                 _tl5574156353_
                                 _tl5574456363_
                                 _hd5574556360_
                                 _hd5573956340_
                                 _hd5565856617_))))
                        (if (gx#stx-null? _hd5574256350_)
                            (___kont6346963470_
                             _tl5574156353_
                             _hd5573956340_
                             _hd5565856617_)
                            (let () (declare (not safe)) (_g5565055864_))))))
                (let () (declare (not safe)) (_g5565055864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565055864_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5566356633_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5566056630_)
                                                    (let ((_e5580756085_
                                                           (gx#syntax-e
                                                            _tl5566056630_)))
                                                      (let ((_tl5580556092_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5580756085_)))
                    (_hd5580656089_
                     (let () (declare (not safe)) (##car _e5580756085_))))
                (if (gx#stx-pair? _tl5580556092_)
                    (let ((_e5581056095_ (gx#syntax-e _tl5580556092_)))
                      (let ((_tl5580856102_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5581056095_)))
                            (_hd5580956099_
                             (let ()
                               (declare (not safe))
                               (##car _e5581056095_))))
                        (if (gx#stx-pair? _hd5580956099_)
                            (let ((_e5581356105_ (gx#syntax-e _hd5580956099_)))
                              (let ((_tl5581156112_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5581356105_)))
                                    (_hd5581256109_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5581356105_))))
                                (___kont6347163472_
                                 _tl5580856102_
                                 _tl5581156112_
                                 _hd5581256109_
                                 _hd5580656089_
                                 _hd5565856617_)))
                            (if (gx#stx-pair/null? _hd5580656089_)
                                (let ((___splice6347563476_
                                       (gx#syntax-split-splice
                                        _hd5580656089_
                                        '0)))
                                  (let ((_tl5583255908_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6347563476_
                                            '1)))
                                        (_target5583055905_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6347563476_
                                            '0))))
                                    (if (gx#stx-null? _tl5583255908_)
                                        (___match6380363804_
                                         _e5565956613_
                                         _hd5565856617_
                                         _tl5565756620_
                                         _e5566256623_
                                         _hd5566156627_
                                         _tl5566056630_
                                         _e5566356633_
                                         _e5580756085_
                                         _hd5580656089_
                                         _tl5580556092_
                                         ___splice6347563476_
                                         _target5583055905_
                                         _tl5583255908_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5565055864_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5565055864_))))))
                    (if (gx#stx-pair/null? _hd5580656089_)
                        (let ((___splice6347563476_
                               (gx#syntax-split-splice _hd5580656089_ '0)))
                          (let ((_tl5583255908_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6347563476_ '1)))
                                (_target5583055905_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6347563476_ '0))))
                            (if (gx#stx-null? _tl5583255908_)
                                (___match6380363804_
                                 _e5565956613_
                                 _hd5565856617_
                                 _tl5565756620_
                                 _e5566256623_
                                 _hd5566156627_
                                 _tl5566056630_
                                 _e5566356633_
                                 _e5580756085_
                                 _hd5580656089_
                                 _tl5580556092_
                                 ___splice6347563476_
                                 _target5583055905_
                                 _tl5583255908_)
                                (let ()
                                  (declare (not safe))
                                  (_g5565055864_)))))
                        (let () (declare (not safe)) (_g5565055864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5565055864_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5565055864_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5565055864_)))))
                          (let () (declare (not safe)) (_g5565055864_)))))
                  (let () (declare (not safe)) (_g5565055864_))))))))))
