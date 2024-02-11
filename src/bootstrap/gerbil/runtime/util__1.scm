(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64321_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64322_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55443_)
        (let* ((_g5544755465_
                (lambda (_g5544855461_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5544855461_)))
               (_g5544655521_
                (lambda (_g5544855469_)
                  (if (gx#stx-pair? _g5544855469_)
                      (let ((_e5545355472_ (gx#syntax-e _g5544855469_)))
                        (let ((_hd5545255476_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5545355472_)))
                              (_tl5545155479_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5545355472_))))
                          (if (gx#stx-pair? _tl5545155479_)
                              (let ((_e5545655482_
                                     (gx#syntax-e _tl5545155479_)))
                                (let ((_hd5545555486_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5545655482_)))
                                      (_tl5545455489_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5545655482_))))
                                  (if (gx#stx-pair? _tl5545455489_)
                                      (let ((_e5545955492_
                                             (gx#syntax-e _tl5545455489_)))
                                        (let ((_hd5545855496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5545955492_)))
                                              (_tl5545755499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5545955492_))))
                                          (if (gx#stx-null? _tl5545755499_)
                                              ((lambda (_L55502_ _L55504_)
                                                 (let ((__tmp64082
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64034
                                                        (let ((__tmp64073
                                                               (let ((__tmp64074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64081 (gx#datum->syntax '#f 'key))
                                    (__tmp64075
                                     (let ((__tmp64080
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64076
                                            (let ((__tmp64077
                                                   (let ((__tmp64079
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64078
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64079
                                                           __tmp64078))))
                                              (declare (not safe))
                                              (cons __tmp64077 '()))))
                                       (declare (not safe))
                                       (cons __tmp64080 __tmp64076))))
                                (declare (not safe))
                                (cons __tmp64081 __tmp64075))))
                         (declare (not safe))
                         (cons _L55504_ __tmp64074)))
                      (__tmp64035
                       (let ((__tmp64036
                              (let ((__tmp64072 (gx#datum->syntax '#f 'cond))
                                    (__tmp64037
                                     (let ((__tmp64054
                                            (let ((__tmp64059
                                                   (let ((__tmp64071
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp64060
                                                          (let ((__tmp64067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64070 (gx#datum->syntax '#f 'pair?))
                               (__tmp64068
                                (let ((__tmp64069 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp64069 '()))))
                           (declare (not safe))
                           (cons __tmp64070 __tmp64068)))
                        (__tmp64061
                         (let ((__tmp64062
                                (let ((__tmp64063
                                       (let ((__tmp64066
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp64064
                                              (let ((__tmp64065
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp64065 '()))))
                                         (declare (not safe))
                                         (cons __tmp64066 __tmp64064))))
                                  (declare (not safe))
                                  (cons _L55502_ __tmp64063))))
                           (declare (not safe))
                           (cons __tmp64062 '()))))
                    (declare (not safe))
                    (cons __tmp64067 __tmp64061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64071
                                                           __tmp64060)))
                                                  (__tmp64055
                                                   (let ((__tmp64058
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp64056
                                                          (let ((__tmp64057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp64057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64058
                                                           __tmp64056))))
                                              (declare (not safe))
                                              (cons __tmp64059 __tmp64055)))
                                           (__tmp64038
                                            (let ((__tmp64044
                                                   (let ((__tmp64050
                                                          (let ((__tmp64053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp64051
                         (let ((__tmp64052 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64052 '()))))
                    (declare (not safe))
                    (cons __tmp64053 __tmp64051)))
                 (__tmp64045
                  (let ((__tmp64046
                         (let ((__tmp64049 (gx#datum->syntax '#f 'default))
                               (__tmp64047
                                (let ((__tmp64048 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp64048 '()))))
                           (declare (not safe))
                           (cons __tmp64049 __tmp64047))))
                    (declare (not safe))
                    (cons __tmp64046 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64050
                                                           __tmp64045)))
                                                  (__tmp64039
                                                   (let ((__tmp64040
                                                          (let ((__tmp64043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp64041
                         (let ((__tmp64042 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64042 '()))))
                    (declare (not safe))
                    (cons __tmp64043 __tmp64041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64040 '()))))
                                              (declare (not safe))
                                              (cons __tmp64044 __tmp64039))))
                                       (declare (not safe))
                                       (cons __tmp64054 __tmp64038))))
                                (declare (not safe))
                                (cons __tmp64072 __tmp64037))))
                         (declare (not safe))
                         (cons __tmp64036 '()))))
                  (declare (not safe))
                  (cons __tmp64073 __tmp64035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64082
                                                         __tmp64034)))
                                               _hd5545855496_
                                               _hd5545555486_)
                                              (_g5544755465_ _g5544855469_))))
                                      (_g5544755465_ _g5544855469_))))
                              (_g5544755465_ _g5544855469_))))
                      (_g5544755465_ _g5544855469_)))))
          (_g5544655521_ _$stx55443_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55525_)
        (let* ((_g5552955547_
                (lambda (_g5553055543_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5553055543_)))
               (_g5552855602_
                (lambda (_g5553055551_)
                  (if (gx#stx-pair? _g5553055551_)
                      (let ((_e5553555554_ (gx#syntax-e _g5553055551_)))
                        (let ((_hd5553455558_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5553555554_)))
                              (_tl5553355561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5553555554_))))
                          (if (gx#stx-pair? _tl5553355561_)
                              (let ((_e5553855564_
                                     (gx#syntax-e _tl5553355561_)))
                                (let ((_hd5553755568_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5553855564_)))
                                      (_tl5553655571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5553855564_))))
                                  (if (gx#stx-pair? _tl5553655571_)
                                      (let ((_e5554155574_
                                             (gx#syntax-e _tl5553655571_)))
                                        (let ((_hd5554055578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5554155574_)))
                                              (_tl5553955581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5554155574_))))
                                          (if (gx#stx-null? _tl5553955581_)
                                              ((lambda (_L55584_ _L55586_)
                                                 (let ((__tmp64152
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64083
                                                        (let ((__tmp64143
                                                               (let ((__tmp64144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64151 (gx#datum->syntax '#f 'key))
                                    (__tmp64145
                                     (let ((__tmp64150
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64146
                                            (let ((__tmp64147
                                                   (let ((__tmp64149
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64148
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64149
                                                           __tmp64148))))
                                              (declare (not safe))
                                              (cons __tmp64147 '()))))
                                       (declare (not safe))
                                       (cons __tmp64150 __tmp64146))))
                                (declare (not safe))
                                (cons __tmp64151 __tmp64145))))
                         (declare (not safe))
                         (cons _L55586_ __tmp64144)))
                      (__tmp64084
                       (let ((__tmp64085
                              (let ((__tmp64142 (gx#datum->syntax '#f 'let))
                                    (__tmp64086
                                     (let ((__tmp64141
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64087
                                            (let ((__tmp64136
                                                   (let ((__tmp64137
                                                          (let ((__tmp64140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64138
                         (let ((__tmp64139 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64139 '()))))
                    (declare (not safe))
                    (cons __tmp64140 __tmp64138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64137 '())))
                                                  (__tmp64088
                                                   (let ((__tmp64089
                                                          (let ((__tmp64135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64090
                         (let ((__tmp64134 (gx#datum->syntax '#f 'rest))
                               (__tmp64091
                                (let ((__tmp64110
                                       (let ((__tmp64127
                                              (let ((__tmp64133
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64128
                                                     (let ((__tmp64132
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64129
                                                            (let ((__tmp64131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64130 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64131 __tmp64130))))
               (declare (not safe))
               (cons __tmp64132 __tmp64129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64133 __tmp64128)))
                                             (__tmp64111
                                              (let ((__tmp64112
                                                     (let ((__tmp64126
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64113
                                                            (let ((__tmp64121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64122
                                  (let ((__tmp64125 (gx#datum->syntax '#f 'k))
                                        (__tmp64123
                                         (let ((__tmp64124
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64124 '()))))
                                    (declare (not safe))
                                    (cons __tmp64125 __tmp64123))))
                             (declare (not safe))
                             (cons _L55584_ __tmp64122)))
                          (__tmp64114
                           (let ((__tmp64120 (gx#datum->syntax '#f 'v))
                                 (__tmp64115
                                  (let ((__tmp64116
                                         (let ((__tmp64119
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64117
                                                (let ((__tmp64118
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64118 '()))))
                                           (declare (not safe))
                                           (cons __tmp64119 __tmp64117))))
                                    (declare (not safe))
                                    (cons __tmp64116 '()))))
                             (declare (not safe))
                             (cons __tmp64120 __tmp64115))))
                      (declare (not safe))
                      (cons __tmp64121 __tmp64114))))
               (declare (not safe))
               (cons __tmp64126 __tmp64113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64112 '()))))
                                         (declare (not safe))
                                         (cons __tmp64127 __tmp64111)))
                                      (__tmp64092
                                       (let ((__tmp64093
                                              (let ((__tmp64109
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64094
                                                     (let ((__tmp64095
                                                            (let ((__tmp64108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64096
                           (let ((__tmp64104
                                  (let ((__tmp64107
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64105
                                         (let ((__tmp64106
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64106 '()))))
                                    (declare (not safe))
                                    (cons __tmp64107 __tmp64105)))
                                 (__tmp64097
                                  (let ((__tmp64100
                                         (let ((__tmp64103
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64101
                                                (let ((__tmp64102
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64102 '()))))
                                           (declare (not safe))
                                           (cons __tmp64103 __tmp64101)))
                                        (__tmp64098
                                         (let ((__tmp64099
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64099 '()))))
                                    (declare (not safe))
                                    (cons __tmp64100 __tmp64098))))
                             (declare (not safe))
                             (cons __tmp64104 __tmp64097))))
                      (declare (not safe))
                      (cons __tmp64108 __tmp64096))))
               (declare (not safe))
               (cons __tmp64095 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64109 __tmp64094))))
                                         (declare (not safe))
                                         (cons __tmp64093 '()))))
                                  (declare (not safe))
                                  (cons __tmp64110 __tmp64092))))
                           (declare (not safe))
                           (cons __tmp64134 __tmp64091))))
                    (declare (not safe))
                    (cons __tmp64135 __tmp64090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64089 '()))))
                                              (declare (not safe))
                                              (cons __tmp64136 __tmp64088))))
                                       (declare (not safe))
                                       (cons __tmp64141 __tmp64087))))
                                (declare (not safe))
                                (cons __tmp64142 __tmp64086))))
                         (declare (not safe))
                         (cons __tmp64085 '()))))
                  (declare (not safe))
                  (cons __tmp64143 __tmp64084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64152
                                                         __tmp64083)))
                                               _hd5554055578_
                                               _hd5553755568_)
                                              (_g5552955547_ _g5553055551_))))
                                      (_g5552955547_ _g5553055551_))))
                              (_g5552955547_ _g5553055551_))))
                      (_g5552955547_ _g5553055551_)))))
          (_g5552855602_ _$stx55525_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55606_)
        (let* ((_g5561055628_
                (lambda (_g5561155624_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5561155624_)))
               (_g5560955683_
                (lambda (_g5561155632_)
                  (if (gx#stx-pair? _g5561155632_)
                      (let ((_e5561655635_ (gx#syntax-e _g5561155632_)))
                        (let ((_hd5561555639_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5561655635_)))
                              (_tl5561455642_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5561655635_))))
                          (if (gx#stx-pair? _tl5561455642_)
                              (let ((_e5561955645_
                                     (gx#syntax-e _tl5561455642_)))
                                (let ((_hd5561855649_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5561955645_)))
                                      (_tl5561755652_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5561955645_))))
                                  (if (gx#stx-pair? _tl5561755652_)
                                      (let ((_e5562255655_
                                             (gx#syntax-e _tl5561755652_)))
                                        (let ((_hd5562155659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5562255655_)))
                                              (_tl5562055662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5562255655_))))
                                          (if (gx#stx-null? _tl5562055662_)
                                              ((lambda (_L55665_ _L55667_)
                                                 (let ((__tmp64223
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64153
                                                        (let ((__tmp64218
                                                               (let ((__tmp64219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64222 (gx#datum->syntax '#f 'el))
                                    (__tmp64220
                                     (let ((__tmp64221
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64221 '()))))
                                (declare (not safe))
                                (cons __tmp64222 __tmp64220))))
                         (declare (not safe))
                         (cons _L55667_ __tmp64219)))
                      (__tmp64154
                       (let ((__tmp64155
                              (let ((__tmp64217 (gx#datum->syntax '#f 'let))
                                    (__tmp64156
                                     (let ((__tmp64216
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64157
                                            (let ((__tmp64205
                                                   (let ((__tmp64212
                                                          (let ((__tmp64215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64213
                         (let ((__tmp64214 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64214 '()))))
                    (declare (not safe))
                    (cons __tmp64215 __tmp64213)))
                 (__tmp64206
                  (let ((__tmp64207
                         (let ((__tmp64211 (gx#datum->syntax '#f 'r))
                               (__tmp64208
                                (let ((__tmp64209
                                       (let ((__tmp64210
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64210 '()))))
                                  (declare (not safe))
                                  (cons __tmp64209 '()))))
                           (declare (not safe))
                           (cons __tmp64211 __tmp64208))))
                    (declare (not safe))
                    (cons __tmp64207 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64212
                                                           __tmp64206)))
                                                  (__tmp64158
                                                   (let ((__tmp64159
                                                          (let ((__tmp64204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64160
                         (let ((__tmp64203 (gx#datum->syntax '#f 'rest))
                               (__tmp64161
                                (let ((__tmp64167
                                       (let ((__tmp64198
                                              (let ((__tmp64202
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64199
                                                     (let ((__tmp64201
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64200
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64201
                                                             __tmp64200))))
                                                (declare (not safe))
                                                (cons __tmp64202 __tmp64199)))
                                             (__tmp64168
                                              (let ((__tmp64169
                                                     (let ((__tmp64197
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64170
                                                            (let ((__tmp64192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64193
                                  (let ((__tmp64196 (gx#datum->syntax '#f 'el))
                                        (__tmp64194
                                         (let ((__tmp64195
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64195 '()))))
                                    (declare (not safe))
                                    (cons __tmp64196 __tmp64194))))
                             (declare (not safe))
                             (cons _L55665_ __tmp64193)))
                          (__tmp64171
                           (let ((__tmp64184
                                  (let ((__tmp64191
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64185
                                         (let ((__tmp64190
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64186
                                                (let ((__tmp64189
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64187
                                                       (let ((__tmp64188
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64188
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64189
                                                        __tmp64187))))
                                           (declare (not safe))
                                           (cons __tmp64190 __tmp64186))))
                                    (declare (not safe))
                                    (cons __tmp64191 __tmp64185)))
                                 (__tmp64172
                                  (let ((__tmp64173
                                         (let ((__tmp64183
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64174
                                                (let ((__tmp64182
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64175
                                                       (let ((__tmp64176
                                                              (let ((__tmp64181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64177
                             (let ((__tmp64180 (gx#datum->syntax '#f 'hd))
                                   (__tmp64178
                                    (let ((__tmp64179
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64179 '()))))
                               (declare (not safe))
                               (cons __tmp64180 __tmp64178))))
                        (declare (not safe))
                        (cons __tmp64181 __tmp64177))))
                 (declare (not safe))
                 (cons __tmp64176 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64182
                                                        __tmp64175))))
                                           (declare (not safe))
                                           (cons __tmp64183 __tmp64174))))
                                    (declare (not safe))
                                    (cons __tmp64173 '()))))
                             (declare (not safe))
                             (cons __tmp64184 __tmp64172))))
                      (declare (not safe))
                      (cons __tmp64192 __tmp64171))))
               (declare (not safe))
               (cons __tmp64197 __tmp64170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64169 '()))))
                                         (declare (not safe))
                                         (cons __tmp64198 __tmp64168)))
                                      (__tmp64162
                                       (let ((__tmp64163
                                              (let ((__tmp64166
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64164
                                                     (let ((__tmp64165
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64165 '()))))
                                                (declare (not safe))
                                                (cons __tmp64166 __tmp64164))))
                                         (declare (not safe))
                                         (cons __tmp64163 '()))))
                                  (declare (not safe))
                                  (cons __tmp64167 __tmp64162))))
                           (declare (not safe))
                           (cons __tmp64203 __tmp64161))))
                    (declare (not safe))
                    (cons __tmp64204 __tmp64160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64159 '()))))
                                              (declare (not safe))
                                              (cons __tmp64205 __tmp64158))))
                                       (declare (not safe))
                                       (cons __tmp64216 __tmp64157))))
                                (declare (not safe))
                                (cons __tmp64217 __tmp64156))))
                         (declare (not safe))
                         (cons __tmp64155 '()))))
                  (declare (not safe))
                  (cons __tmp64218 __tmp64154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64223
                                                         __tmp64153)))
                                               _hd5562155659_
                                               _hd5561855649_)
                                              (_g5561055628_ _g5561155632_))))
                                      (_g5561055628_ _g5561155632_))))
                              (_g5561055628_ _g5561155632_))))
                      (_g5561055628_ _g5561155632_)))))
          (_g5560955683_ _$stx55606_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55687_)
        (let* ((_g5569155702_
                (lambda (_g5569255698_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5569255698_)))
               (_g5569055731_
                (lambda (_g5569255706_)
                  (if (gx#stx-pair? _g5569255706_)
                      (let ((_e5569655709_ (gx#syntax-e _g5569255706_)))
                        (let ((_hd5569555713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5569655709_)))
                              (_tl5569455716_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5569655709_))))
                          ((lambda (_L55719_)
                             (let ((__tmp64225 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64224
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55719_))))
                               (declare (not safe))
                               (cons __tmp64225 __tmp64224)))
                           _tl5569455716_)))
                      (_g5569155702_ _g5569255706_)))))
          (_g5569055731_ _$stx55687_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55735_)
        (let* ((___stx6354863549_ _$stx55735_)
               (_g5574655960_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6354863549_))))
          (let ((___kont6355163552_
                 (lambda (_L56813_ _L56815_ _L56816_ _L56817_ _L56818_)
                   (let ((__tmp64226
                          (let ((__tmp64227
                                 (let ((__tmp64228
                                        (let ((__tmp64232
                                               (let ((__tmp64233
                                                      (lambda (_g5684856851_
                                                               _g5684956854_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5684856851_
                                                                _g5684956854_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64233
                                                         '()
                                                         _L56816_)))
                                              (__tmp64229
                                               (let ((__tmp64230
                                                      (let ((__tmp64231
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56813_ '()))))
                (declare (not safe))
                (cons _L56815_ __tmp64231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56817_ __tmp64230))))
                                          (declare (not safe))
                                          (cons __tmp64232 __tmp64229))))
                                   (declare (not safe))
                                   (cons '() __tmp64228))))
                            (declare (not safe))
                            (cons '2 __tmp64227))))
                     (declare (not safe))
                     (cons _L56818_ __tmp64226))))
                (___kont6355563556_
                 (lambda (_L56666_ _L56668_ _L56669_ _L56670_)
                   (let ((__tmp64234
                          (let ((__tmp64235
                                 (let ((__tmp64236
                                        (let ((__tmp64240
                                               (let ((__tmp64241
                                                      (lambda (_g5669356696_
                                                               _g5669456699_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5669356696_
                                                                _g5669456699_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64241
                                                         '()
                                                         _L56668_)))
                                              (__tmp64237
                                               (let ((__tmp64238
                                                      (let ((__tmp64239
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56666_ '()))))
                (declare (not safe))
                (cons _L56666_ __tmp64239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56669_ __tmp64238))))
                                          (declare (not safe))
                                          (cons __tmp64240 __tmp64237))))
                                   (declare (not safe))
                                   (cons '() __tmp64236))))
                            (declare (not safe))
                            (cons '2 __tmp64235))))
                     (declare (not safe))
                     (cons _L56670_ __tmp64234))))
                (___kont6355963560_
                 (lambda (_L56569_)
                   (let ((__tmp64253 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64242
                          (let ((__tmp64243
                                 (let ((__tmp64250
                                        (let ((__tmp64252
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64251
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64252 __tmp64251)))
                                       (__tmp64244
                                        (let ((__tmp64247
                                               (let ((__tmp64249
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64248
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64249 __tmp64248)))
                                              (__tmp64245
                                               (let ((__tmp64246
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64246))))
                                          (declare (not safe))
                                          (cons __tmp64247 __tmp64245))))
                                   (declare (not safe))
                                   (cons __tmp64250 __tmp64244))))
                            (declare (not safe))
                            (cons _L56569_ __tmp64243))))
                     (declare (not safe))
                     (cons __tmp64253 __tmp64242))))
                (___kont6356163562_
                 (lambda (_L56492_
                          _L56494_
                          _L56495_
                          _L56496_
                          _L56497_
                          _L56498_)
                   (let ((__tmp64254
                          (let ((__tmp64255
                                 (let ((__tmp64257
                                        (let ((__tmp64258
                                               (let ((__tmp64259
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56495_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56496_ __tmp64259))))
                                          (declare (not safe))
                                          (cons __tmp64258 _L56497_)))
                                       (__tmp64256
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56494_ _L56492_))))
                                   (declare (not safe))
                                   (cons __tmp64257 __tmp64256))))
                            (declare (not safe))
                            (cons '2 __tmp64255))))
                     (declare (not safe))
                     (cons _L56498_ __tmp64254))))
                (___kont6356363564_
                 (lambda (_L56373_ _L56375_ _L56376_ _L56377_ _L56378_)
                   (let ((__tmp64260
                          (let ((__tmp64261
                                 (let ((__tmp64263
                                        (let ((__tmp64264
                                               (let ((__tmp64265
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56376_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56376_ __tmp64265))))
                                          (declare (not safe))
                                          (cons __tmp64264 _L56377_)))
                                       (__tmp64262
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56375_ _L56373_))))
                                   (declare (not safe))
                                   (cons __tmp64263 __tmp64262))))
                            (declare (not safe))
                            (cons '2 __tmp64261))))
                     (declare (not safe))
                     (cons _L56378_ __tmp64260))))
                (___kont6356563566_
                 (lambda (_L56290_ _L56292_ _L56293_)
                   (let ((__tmp64266
                          (let ((__tmp64267
                                 (let ((__tmp64268
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56292_ _L56290_))))
                                   (declare (not safe))
                                   (cons '() __tmp64268))))
                            (declare (not safe))
                            (cons '3 __tmp64267))))
                     (declare (not safe))
                     (cons _L56293_ __tmp64266))))
                (___kont6356763568_
                 (lambda (_L56211_ _L56213_ _L56214_ _L56215_ _L56216_)
                   (let ((__tmp64269
                          (let ((__tmp64270
                                 (let ((__tmp64272
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56214_ _L56215_)))
                                       (__tmp64271
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56213_ _L56211_))))
                                   (declare (not safe))
                                   (cons __tmp64272 __tmp64271))))
                            (declare (not safe))
                            (cons '3 __tmp64270))))
                     (declare (not safe))
                     (cons _L56216_ __tmp64269))))
                (___kont6356963570_
                 (lambda (_L56095_
                          _L56097_
                          _L56098_
                          _L56099_
                          _L56100_
                          _L56101_)
                   (let ((__tmp64320 (gx#datum->syntax '#f 'let))
                         (__tmp64273
                          (let ((__tmp64308
                                 (let ((__tmp64317
                                        (let ((__tmp64319
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64318
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56098_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64319 __tmp64318)))
                                       (__tmp64309
                                        (let ((__tmp64310
                                               (let ((__tmp64316
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64311
                                                      (let ((__tmp64312
                                                             (let ((__tmp64315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64313
                            (let ((__tmp64314
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56095_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64314))))
                       (declare (not safe))
                       (cons __tmp64315 __tmp64313))))
                (declare (not safe))
                (cons __tmp64312 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64316
                                                       __tmp64311))))
                                          (declare (not safe))
                                          (cons __tmp64310 '()))))
                                   (declare (not safe))
                                   (cons __tmp64317 __tmp64309)))
                                (__tmp64274
                                 (let ((__tmp64275
                                        (let ((__tmp64307
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64276
                                               (let ((__tmp64306
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64277
                                                      (let ((__tmp64281
                                                             (let ((__tmp64305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64282
                            (let ((__tmp64304 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64283
                                   (let ((__tmp64299
                                          (let ((__tmp64303
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64300
                                                 (let ((__tmp64301
                                                        (let ((__tmp64302
                                                               (lambda (_g5613556138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5613656141_)
                         (let ()
                           (declare (not safe))
                           (cons _g5613556138_ _g5613656141_)))))
                  (declare (not safe))
                  (foldr1 __tmp64302 '() _L56100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64301 '()))))
                                            (declare (not safe))
                                            (cons __tmp64303 __tmp64300)))
                                         (__tmp64284
                                          (let ((__tmp64291
                                                 (let ((__tmp64298
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64292
                                                        (let ((__tmp64293
                                                               (lambda (_g5613356144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5613456147_)
                         (let ((__tmp64294
                                (let ((__tmp64297
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64295
                                       (let ((__tmp64296
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5613356144_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64296))))
                                  (declare (not safe))
                                  (cons __tmp64297 __tmp64295))))
                           (declare (not safe))
                           (cons __tmp64294 _g5613456147_)))))
                  (declare (not safe))
                  (foldr1 __tmp64293 '() _L56099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64298
                                                         __tmp64292)))
                                                (__tmp64285
                                                 (let ((__tmp64288
                                                        (let ((__tmp64290
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64289
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56097_ '()))))
                  (declare (not safe))
                  (cons __tmp64290 __tmp64289)))
               (__tmp64286
                (let ((__tmp64287 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64287 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64288
                                                         __tmp64286))))
                                            (declare (not safe))
                                            (cons __tmp64291 __tmp64285))))
                                     (declare (not safe))
                                     (cons __tmp64299 __tmp64284))))
                              (declare (not safe))
                              (cons __tmp64304 __tmp64283))))
                       (declare (not safe))
                       (cons __tmp64305 __tmp64282)))
                    (__tmp64278
                     (let ((__tmp64279
                            (let ((__tmp64280 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64280 '()))))
                       (declare (not safe))
                       (cons __tmp64279 '()))))
                (declare (not safe))
                (cons __tmp64281 __tmp64278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64306
                                                       __tmp64277))))
                                          (declare (not safe))
                                          (cons __tmp64307 __tmp64276))))
                                   (declare (not safe))
                                   (cons __tmp64275 '()))))
                            (declare (not safe))
                            (cons __tmp64308 __tmp64274))))
                     (declare (not safe))
                     (cons __tmp64320 __tmp64273)))))
            (let* ((___match6389963900_
                    (lambda (_e5591855967_
                             _hd5591755971_
                             _tl5591655974_
                             _e5592155977_
                             _hd5592055981_
                             _tl5591955984_
                             _e5592255987_
                             _e5592555991_
                             _hd5592455995_
                             _tl5592355998_
                             ___splice6357163572_
                             _target5592656001_
                             _tl5592856004_)
                      (letrec ((_loop5592956007_
                                (lambda (_hd5592756011_
                                         _exprs5593356014_
                                         _names5593456016_)
                                  (if (gx#stx-pair? _hd5592756011_)
                                      (let ((_e5593056019_
                                             (gx#syntax-e _hd5592756011_)))
                                        (let ((_lp-tl5593256026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5593056019_)))
                                              (_lp-hd5593156023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5593056019_))))
                                          (if (gx#stx-pair? _lp-hd5593156023_)
                                              (let ((_e5593956029_
                                                     (gx#syntax-e
                                                      _lp-hd5593156023_)))
                                                (let ((_tl5593756036_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5593956029_)))
                                                      (_hd5593856033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5593956029_))))
                                                  (if (gx#stx-pair?
                                                       _tl5593756036_)
                                                      (let ((_e5594256039_
                                                             (gx#syntax-e
                                                              _tl5593756036_)))
                                                        (let ((_tl5594056046_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5594256039_)))
                      (_hd5594156043_
                       (let () (declare (not safe)) (##car _e5594256039_))))
                  (if (gx#stx-null? _tl5594056046_)
                      (_loop5592956007_
                       _lp-tl5593256026_
                       (let ()
                         (declare (not safe))
                         (cons _hd5594156043_ _exprs5593356014_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5593856033_ _names5593456016_)))
                      (let () (declare (not safe)) (_g5574655960_)))))
              (let () (declare (not safe)) (_g5574655960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5574655960_)))))
                                      (let ((_names5593656052_
                                             (reverse _names5593456016_))
                                            (_exprs5593556049_
                                             (reverse _exprs5593356014_)))
                                        (if (gx#stx-pair? _tl5592355998_)
                                            (let ((_e5594556055_
                                                   (gx#syntax-e
                                                    _tl5592355998_)))
                                              (let ((_tl5594356062_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5594556055_)))
                                                    (_hd5594456059_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5594556055_))))
                                                (if (gx#stx-null?
                                                     _hd5594456059_)
                                                    (if (gx#stx-pair?
                                                         _tl5594356062_)
                                                        (let ((_e5594856065_
                                                               (gx#syntax-e
                                                                _tl5594356062_)))
                                                          (let ((_tl5594656072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5594856065_)))
                        (_hd5594756069_
                         (let () (declare (not safe)) (##car _e5594856065_))))
                    (if (gx#stx-pair? _tl5594656072_)
                        (let ((_e5595156075_ (gx#syntax-e _tl5594656072_)))
                          (let ((_tl5594956082_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5595156075_)))
                                (_hd5595056079_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5595156075_))))
                            (if (gx#stx-pair? _tl5594956082_)
                                (let ((_e5595456085_
                                       (gx#syntax-e _tl5594956082_)))
                                  (let ((_tl5595256092_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5595456085_)))
                                        (_hd5595356089_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5595456085_))))
                                    (if (gx#stx-null? _tl5595256092_)
                                        (___kont6356963570_
                                         _hd5595356089_
                                         _hd5595056079_
                                         _hd5594756069_
                                         _exprs5593556049_
                                         _names5593656052_
                                         _hd5591755971_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5574655960_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5574655960_)))))
                        (let () (declare (not safe)) (_g5574655960_)))))
                (let () (declare (not safe)) (_g5574655960_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5574655960_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5574655960_))))))))
                        (_loop5592956007_ _target5592656001_ '() '()))))
                   (___match6367763678_
                    (lambda (_e5579056592_
                             _hd5578956596_
                             _tl5578856599_
                             _e5579356602_
                             _hd5579256606_
                             _tl5579156609_
                             _e5579456612_
                             _e5579756616_
                             _hd5579656620_
                             _tl5579556623_
                             ___splice6355763558_
                             _target5579856626_
                             _tl5580056629_
                             _e5580956632_
                             _hd5580856636_
                             _tl5580756639_)
                      (letrec ((_loop5580156642_
                                (lambda (_hd5579956646_ _exprs5580556649_)
                                  (if (gx#stx-pair? _hd5579956646_)
                                      (let ((_e5580256652_
                                             (gx#syntax-e _hd5579956646_)))
                                        (let ((_lp-tl5580456659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5580256652_)))
                                              (_lp-hd5580356656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5580256652_))))
                                          (_loop5580156642_
                                           _lp-tl5580456659_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5580356656_
                                                   _exprs5580556649_)))))
                                      (let ((_exprs5580656662_
                                             (reverse _exprs5580556649_)))
                                        (___kont6355563556_
                                         _hd5580856636_
                                         _exprs5580656662_
                                         _hd5579656620_
                                         _hd5578956596_))))))
                        (_loop5580156642_ _target5579856626_ '()))))
                   (___match6363763638_
                    (lambda (_e5575556709_
                             _hd5575456713_
                             _tl5575356716_
                             _e5575856719_
                             _hd5575756723_
                             _tl5575656726_
                             _e5575956729_
                             _e5576256733_
                             _hd5576156737_
                             _tl5576056740_
                             ___splice6355363554_
                             _target5576356743_
                             _tl5576556746_
                             _e5577456749_
                             _hd5577356753_
                             _tl5577256756_
                             _e5577756759_
                             _hd5577656763_
                             _tl5577556766_
                             _e5578056769_
                             _hd5577956773_
                             _tl5577856776_
                             _e5578356779_
                             _hd5578256783_
                             _tl5578156786_)
                      (letrec ((_loop5576656789_
                                (lambda (_hd5576456793_ _exprs5577056796_)
                                  (if (gx#stx-pair? _hd5576456793_)
                                      (let ((_e5576756799_
                                             (gx#syntax-e _hd5576456793_)))
                                        (let ((_lp-tl5576956806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5576756799_)))
                                              (_lp-hd5576856803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5576756799_))))
                                          (_loop5576656789_
                                           _lp-tl5576956806_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5576856803_
                                                   _exprs5577056796_)))))
                                      (let ((_exprs5577156809_
                                             (reverse _exprs5577056796_)))
                                        (___kont6355163552_
                                         _hd5578256783_
                                         _hd5577956773_
                                         _exprs5577156809_
                                         _hd5576156737_
                                         _hd5575456713_))))))
                        (_loop5576656789_ _target5576356743_ '())))))
              (if (gx#stx-pair? ___stx6354863549_)
                  (let ((_e5575556709_ (gx#syntax-e ___stx6354863549_)))
                    (let ((_tl5575356716_
                           (let () (declare (not safe)) (##cdr _e5575556709_)))
                          (_hd5575456713_
                           (let ()
                             (declare (not safe))
                             (##car _e5575556709_))))
                      (if (gx#stx-pair? _tl5575356716_)
                          (let ((_e5575856719_ (gx#syntax-e _tl5575356716_)))
                            (let ((_tl5575656726_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5575856719_)))
                                  (_hd5575756723_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5575856719_))))
                              (if (gx#stx-datum? _hd5575756723_)
                                  (let ((_e5575956729_
                                         (gx#stx-e _hd5575756723_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5575956729_ '1))
                                        (if (gx#stx-pair? _tl5575656726_)
                                            (let ((_e5576256733_
                                                   (gx#syntax-e
                                                    _tl5575656726_)))
                                              (let ((_tl5576056740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5576256733_)))
                                                    (_hd5576156737_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5576256733_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5576056740_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5576056740_)
                                                              '2)
                                                        (let ((___splice6355363554_
                                                               (gx#syntax-split-splice
                                                                _tl5576056740_
                                                                '2)))
                                                          (let ((_tl5576556746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6355363554_ '1)))
                        (_target5576356743_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6355363554_ '0))))
                    (if (gx#stx-pair? _tl5576556746_)
                        (let ((_e5577456749_ (gx#syntax-e _tl5576556746_)))
                          (let ((_tl5577256756_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5577456749_)))
                                (_hd5577356753_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5577456749_))))
                            (if (gx#stx-pair? _hd5577356753_)
                                (let ((_e5577756759_
                                       (gx#syntax-e _hd5577356753_)))
                                  (let ((_tl5577556766_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5577756759_)))
                                        (_hd5577656763_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5577756759_))))
                                    (if (gx#identifier? _hd5577656763_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64322_|
                                             _hd5577656763_)
                                            (if (gx#stx-pair? _tl5577556766_)
                                                (let ((_e5578056769_
                                                       (gx#syntax-e
                                                        _tl5577556766_)))
                                                  (let ((_tl5577856776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5578056769_)))
                                                        (_hd5577956773_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5578056769_))))
                                                    (if (gx#stx-null?
                                                         _tl5577856776_)
                                                        (if (gx#stx-pair?
                                                             _tl5577256756_)
                                                            (let ((_e5578356779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5577256756_)))
                      (let ((_tl5578156786_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5578356779_)))
                            (_hd5578256783_
                             (let ()
                               (declare (not safe))
                               (##car _e5578356779_))))
                        (if (gx#stx-null? _tl5578156786_)
                            (___match6363763638_
                             _e5575556709_
                             _hd5575456713_
                             _tl5575356716_
                             _e5575856719_
                             _hd5575756723_
                             _tl5575656726_
                             _e5575956729_
                             _e5576256733_
                             _hd5576156737_
                             _tl5576056740_
                             ___splice6355363554_
                             _target5576356743_
                             _tl5576556746_
                             _e5577456749_
                             _hd5577356753_
                             _tl5577256756_
                             _e5577756759_
                             _hd5577656763_
                             _tl5577556766_
                             _e5578056769_
                             _hd5577956773_
                             _tl5577856776_
                             _e5578356779_
                             _hd5578256783_
                             _tl5578156786_)
                            (if (fx>= (gx#stx-length _tl5576056740_) '1)
                                (let ((___splice6355763558_
                                       (gx#syntax-split-splice
                                        _tl5576056740_
                                        '1)))
                                  (let ((_tl5580056629_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6355763558_
                                            '1)))
                                        (_target5579856626_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6355763558_
                                            '0))))
                                    (if (gx#stx-pair? _tl5580056629_)
                                        (let ((_e5580956632_
                                               (gx#syntax-e _tl5580056629_)))
                                          (let ((_tl5580756639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5580956632_)))
                                                (_hd5580856636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5580956632_))))
                                            (if (gx#stx-null? _tl5580756639_)
                                                (___match6367763678_
                                                 _e5575556709_
                                                 _hd5575456713_
                                                 _tl5575356716_
                                                 _e5575856719_
                                                 _hd5575756723_
                                                 _tl5575656726_
                                                 _e5575956729_
                                                 _e5576256733_
                                                 _hd5576156737_
                                                 _tl5576056740_
                                                 ___splice6355763558_
                                                 _target5579856626_
                                                 _tl5580056629_
                                                 _e5580956632_
                                                 _hd5580856636_
                                                 _tl5580756639_)
                                                (if (gx#stx-null?
                                                     _tl5576056740_)
                                                    (___kont6355963560_
                                                     _hd5576156737_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5574655960_))))))
                                        (if (gx#stx-null? _tl5576056740_)
                                            (___kont6355963560_ _hd5576156737_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5574655960_))))))
                                (if (gx#stx-null? _tl5576056740_)
                                    (___kont6355963560_ _hd5576156737_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5574655960_)))))))
                    (if (fx>= (gx#stx-length _tl5576056740_) '1)
                        (let ((___splice6355763558_
                               (gx#syntax-split-splice _tl5576056740_ '1)))
                          (let ((_tl5580056629_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6355763558_ '1)))
                                (_target5579856626_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6355763558_ '0))))
                            (if (gx#stx-pair? _tl5580056629_)
                                (let ((_e5580956632_
                                       (gx#syntax-e _tl5580056629_)))
                                  (let ((_tl5580756639_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5580956632_)))
                                        (_hd5580856636_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5580956632_))))
                                    (if (gx#stx-null? _tl5580756639_)
                                        (___match6367763678_
                                         _e5575556709_
                                         _hd5575456713_
                                         _tl5575356716_
                                         _e5575856719_
                                         _hd5575756723_
                                         _tl5575656726_
                                         _e5575956729_
                                         _e5576256733_
                                         _hd5576156737_
                                         _tl5576056740_
                                         ___splice6355763558_
                                         _target5579856626_
                                         _tl5580056629_
                                         _e5580956632_
                                         _hd5580856636_
                                         _tl5580756639_)
                                        (if (gx#stx-null? _tl5576056740_)
                                            (___kont6355963560_ _hd5576156737_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5574655960_))))))
                                (if (gx#stx-null? _tl5576056740_)
                                    (___kont6355963560_ _hd5576156737_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5574655960_))))))
                        (if (gx#stx-null? _tl5576056740_)
                            (___kont6355963560_ _hd5576156737_)
                            (let () (declare (not safe)) (_g5574655960_)))))
                (if (fx>= (gx#stx-length _tl5576056740_) '1)
                    (let ((___splice6355763558_
                           (gx#syntax-split-splice _tl5576056740_ '1)))
                      (let ((_tl5580056629_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6355763558_ '1)))
                            (_target5579856626_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6355763558_ '0))))
                        (if (gx#stx-pair? _tl5580056629_)
                            (let ((_e5580956632_ (gx#syntax-e _tl5580056629_)))
                              (let ((_tl5580756639_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5580956632_)))
                                    (_hd5580856636_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5580956632_))))
                                (if (gx#stx-null? _tl5580756639_)
                                    (___match6367763678_
                                     _e5575556709_
                                     _hd5575456713_
                                     _tl5575356716_
                                     _e5575856719_
                                     _hd5575756723_
                                     _tl5575656726_
                                     _e5575956729_
                                     _e5576256733_
                                     _hd5576156737_
                                     _tl5576056740_
                                     ___splice6355763558_
                                     _target5579856626_
                                     _tl5580056629_
                                     _e5580956632_
                                     _hd5580856636_
                                     _tl5580756639_)
                                    (if (gx#stx-null? _tl5576056740_)
                                        (___kont6355963560_ _hd5576156737_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5574655960_))))))
                            (if (gx#stx-null? _tl5576056740_)
                                (___kont6355963560_ _hd5576156737_)
                                (let ()
                                  (declare (not safe))
                                  (_g5574655960_))))))
                    (if (gx#stx-null? _tl5576056740_)
                        (___kont6355963560_ _hd5576156737_)
                        (let () (declare (not safe)) (_g5574655960_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5576056740_)
                                                          '1)
                                                    (let ((___splice6355763558_
                                                           (gx#syntax-split-splice
                                                            _tl5576056740_
                                                            '1)))
                                                      (let ((_tl5580056629_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6355763558_ '1)))
                    (_target5579856626_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6355763558_ '0))))
                (if (gx#stx-pair? _tl5580056629_)
                    (let ((_e5580956632_ (gx#syntax-e _tl5580056629_)))
                      (let ((_tl5580756639_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5580956632_)))
                            (_hd5580856636_
                             (let ()
                               (declare (not safe))
                               (##car _e5580956632_))))
                        (if (gx#stx-null? _tl5580756639_)
                            (___match6367763678_
                             _e5575556709_
                             _hd5575456713_
                             _tl5575356716_
                             _e5575856719_
                             _hd5575756723_
                             _tl5575656726_
                             _e5575956729_
                             _e5576256733_
                             _hd5576156737_
                             _tl5576056740_
                             ___splice6355763558_
                             _target5579856626_
                             _tl5580056629_
                             _e5580956632_
                             _hd5580856636_
                             _tl5580756639_)
                            (if (gx#stx-null? _tl5576056740_)
                                (___kont6355963560_ _hd5576156737_)
                                (let ()
                                  (declare (not safe))
                                  (_g5574655960_))))))
                    (if (gx#stx-null? _tl5576056740_)
                        (___kont6355963560_ _hd5576156737_)
                        (let () (declare (not safe)) (_g5574655960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5576056740_)
                                                        (___kont6355963560_
                                                         _hd5576156737_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5574655960_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5576056740_)
                                                      '1)
                                                (let ((___splice6355763558_
                                                       (gx#syntax-split-splice
                                                        _tl5576056740_
                                                        '1)))
                                                  (let ((_tl5580056629_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6355763558_
                                                            '1)))
                                                        (_target5579856626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6355763558_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5580056629_)
                                                        (let ((_e5580956632_
                                                               (gx#syntax-e
                                                                _tl5580056629_)))
                                                          (let ((_tl5580756639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5580956632_)))
                        (_hd5580856636_
                         (let () (declare (not safe)) (##car _e5580956632_))))
                    (if (gx#stx-null? _tl5580756639_)
                        (___match6367763678_
                         _e5575556709_
                         _hd5575456713_
                         _tl5575356716_
                         _e5575856719_
                         _hd5575756723_
                         _tl5575656726_
                         _e5575956729_
                         _e5576256733_
                         _hd5576156737_
                         _tl5576056740_
                         ___splice6355763558_
                         _target5579856626_
                         _tl5580056629_
                         _e5580956632_
                         _hd5580856636_
                         _tl5580756639_)
                        (if (gx#stx-null? _tl5576056740_)
                            (___kont6355963560_ _hd5576156737_)
                            (let () (declare (not safe)) (_g5574655960_))))))
                (if (gx#stx-null? _tl5576056740_)
                    (___kont6355963560_ _hd5576156737_)
                    (let () (declare (not safe)) (_g5574655960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5576056740_)
                                                    (___kont6355963560_
                                                     _hd5576156737_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5574655960_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5576056740_)
                                                  '1)
                                            (let ((___splice6355763558_
                                                   (gx#syntax-split-splice
                                                    _tl5576056740_
                                                    '1)))
                                              (let ((_tl5580056629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6355763558_
                                                        '1)))
                                                    (_target5579856626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6355763558_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5580056629_)
                                                    (let ((_e5580956632_
                                                           (gx#syntax-e
                                                            _tl5580056629_)))
                                                      (let ((_tl5580756639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5580956632_)))
                    (_hd5580856636_
                     (let () (declare (not safe)) (##car _e5580956632_))))
                (if (gx#stx-null? _tl5580756639_)
                    (___match6367763678_
                     _e5575556709_
                     _hd5575456713_
                     _tl5575356716_
                     _e5575856719_
                     _hd5575756723_
                     _tl5575656726_
                     _e5575956729_
                     _e5576256733_
                     _hd5576156737_
                     _tl5576056740_
                     ___splice6355763558_
                     _target5579856626_
                     _tl5580056629_
                     _e5580956632_
                     _hd5580856636_
                     _tl5580756639_)
                    (if (gx#stx-null? _tl5576056740_)
                        (___kont6355963560_ _hd5576156737_)
                        (let () (declare (not safe)) (_g5574655960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5576056740_)
                                                        (___kont6355963560_
                                                         _hd5576156737_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5574655960_))))))
                                            (if (gx#stx-null? _tl5576056740_)
                                                (___kont6355963560_
                                                 _hd5576156737_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5574655960_)))))))
                                (if (fx>= (gx#stx-length _tl5576056740_) '1)
                                    (let ((___splice6355763558_
                                           (gx#syntax-split-splice
                                            _tl5576056740_
                                            '1)))
                                      (let ((_tl5580056629_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6355763558_
                                                '1)))
                                            (_target5579856626_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6355763558_
                                                '0))))
                                        (if (gx#stx-pair? _tl5580056629_)
                                            (let ((_e5580956632_
                                                   (gx#syntax-e
                                                    _tl5580056629_)))
                                              (let ((_tl5580756639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5580956632_)))
                                                    (_hd5580856636_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5580956632_))))
                                                (if (gx#stx-null?
                                                     _tl5580756639_)
                                                    (___match6367763678_
                                                     _e5575556709_
                                                     _hd5575456713_
                                                     _tl5575356716_
                                                     _e5575856719_
                                                     _hd5575756723_
                                                     _tl5575656726_
                                                     _e5575956729_
                                                     _e5576256733_
                                                     _hd5576156737_
                                                     _tl5576056740_
                                                     ___splice6355763558_
                                                     _target5579856626_
                                                     _tl5580056629_
                                                     _e5580956632_
                                                     _hd5580856636_
                                                     _tl5580756639_)
                                                    (if (gx#stx-null?
                                                         _tl5576056740_)
                                                        (___kont6355963560_
                                                         _hd5576156737_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5574655960_))))))
                                            (if (gx#stx-null? _tl5576056740_)
                                                (___kont6355963560_
                                                 _hd5576156737_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5574655960_))))))
                                    (if (gx#stx-null? _tl5576056740_)
                                        (___kont6355963560_ _hd5576156737_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5574655960_)))))))
                        (if (fx>= (gx#stx-length _tl5576056740_) '1)
                            (let ((___splice6355763558_
                                   (gx#syntax-split-splice _tl5576056740_ '1)))
                              (let ((_tl5580056629_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6355763558_ '1)))
                                    (_target5579856626_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6355763558_
                                        '0))))
                                (if (gx#stx-pair? _tl5580056629_)
                                    (let ((_e5580956632_
                                           (gx#syntax-e _tl5580056629_)))
                                      (let ((_tl5580756639_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5580956632_)))
                                            (_hd5580856636_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5580956632_))))
                                        (if (gx#stx-null? _tl5580756639_)
                                            (___match6367763678_
                                             _e5575556709_
                                             _hd5575456713_
                                             _tl5575356716_
                                             _e5575856719_
                                             _hd5575756723_
                                             _tl5575656726_
                                             _e5575956729_
                                             _e5576256733_
                                             _hd5576156737_
                                             _tl5576056740_
                                             ___splice6355763558_
                                             _target5579856626_
                                             _tl5580056629_
                                             _e5580956632_
                                             _hd5580856636_
                                             _tl5580756639_)
                                            (if (gx#stx-null? _tl5576056740_)
                                                (___kont6355963560_
                                                 _hd5576156737_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5574655960_))))))
                                    (if (gx#stx-null? _tl5576056740_)
                                        (___kont6355963560_ _hd5576156737_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5574655960_))))))
                            (if (gx#stx-null? _tl5576056740_)
                                (___kont6355963560_ _hd5576156737_)
                                (let ()
                                  (declare (not safe))
                                  (_g5574655960_)))))))
                (if (fx>= (gx#stx-length _tl5576056740_) '1)
                    (let ((___splice6355763558_
                           (gx#syntax-split-splice _tl5576056740_ '1)))
                      (let ((_tl5580056629_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6355763558_ '1)))
                            (_target5579856626_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6355763558_ '0))))
                        (if (gx#stx-pair? _tl5580056629_)
                            (let ((_e5580956632_ (gx#syntax-e _tl5580056629_)))
                              (let ((_tl5580756639_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5580956632_)))
                                    (_hd5580856636_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5580956632_))))
                                (if (gx#stx-null? _tl5580756639_)
                                    (___match6367763678_
                                     _e5575556709_
                                     _hd5575456713_
                                     _tl5575356716_
                                     _e5575856719_
                                     _hd5575756723_
                                     _tl5575656726_
                                     _e5575956729_
                                     _e5576256733_
                                     _hd5576156737_
                                     _tl5576056740_
                                     ___splice6355763558_
                                     _target5579856626_
                                     _tl5580056629_
                                     _e5580956632_
                                     _hd5580856636_
                                     _tl5580756639_)
                                    (if (gx#stx-null? _tl5576056740_)
                                        (___kont6355963560_ _hd5576156737_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5574655960_))))))
                            (if (gx#stx-null? _tl5576056740_)
                                (___kont6355963560_ _hd5576156737_)
                                (let ()
                                  (declare (not safe))
                                  (_g5574655960_))))))
                    (if (gx#stx-null? _tl5576056740_)
                        (___kont6355963560_ _hd5576156737_)
                        (let () (declare (not safe)) (_g5574655960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5576056740_)
                                                        (___kont6355963560_
                                                         _hd5576156737_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5574655960_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5574655960_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5575956729_ '2))
                                            (if (gx#stx-pair? _tl5575656726_)
                                                (let ((_e5583656432_
                                                       (gx#syntax-e
                                                        _tl5575656726_)))
                                                  (let ((_tl5583456439_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5583656432_)))
                                                        (_hd5583556436_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5583656432_))))
                                                    (if (gx#stx-pair?
                                                         _tl5583456439_)
                                                        (let ((_e5583956442_
                                                               (gx#syntax-e
                                                                _tl5583456439_)))
                                                          (let ((_tl5583756449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5583956442_)))
                        (_hd5583856446_
                         (let () (declare (not safe)) (##car _e5583956442_))))
                    (if (gx#stx-pair? _hd5583856446_)
                        (let ((_e5584256452_ (gx#syntax-e _hd5583856446_)))
                          (let ((_tl5584056459_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5584256452_)))
                                (_hd5584156456_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5584256452_))))
                            (if (gx#stx-pair? _hd5584156456_)
                                (let ((_e5584556462_
                                       (gx#syntax-e _hd5584156456_)))
                                  (let ((_tl5584356469_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5584556462_)))
                                        (_hd5584456466_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5584556462_))))
                                    (if (gx#identifier? _hd5584456466_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64321_|
                                             _hd5584456466_)
                                            (if (gx#stx-pair? _tl5584356469_)
                                                (let ((_e5584856472_
                                                       (gx#syntax-e
                                                        _tl5584356469_)))
                                                  (let ((_tl5584656479_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5584856472_)))
                                                        (_hd5584756476_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5584856472_))))
                                                    (if (gx#stx-null?
                                                         _tl5584656479_)
                                                        (if (gx#stx-pair?
                                                             _tl5584056459_)
                                                            (let ((_e5585156482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5584056459_)))
                      (let ((_tl5584956489_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5585156482_)))
                            (_hd5585056486_
                             (let ()
                               (declare (not safe))
                               (##car _e5585156482_))))
                        (___kont6356163562_
                         _tl5583756449_
                         _tl5584956489_
                         _hd5585056486_
                         _hd5584756476_
                         _hd5583556436_
                         _hd5575456713_)))
                    (___kont6356363564_
                     _tl5583756449_
                     _tl5584056459_
                     _hd5584156456_
                     _hd5583556436_
                     _hd5575456713_))
                (___kont6356363564_
                 _tl5583756449_
                 _tl5584056459_
                 _hd5584156456_
                 _hd5583556436_
                 _hd5575456713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6356363564_
                                                 _tl5583756449_
                                                 _tl5584056459_
                                                 _hd5584156456_
                                                 _hd5583556436_
                                                 _hd5575456713_))
                                            (___kont6356363564_
                                             _tl5583756449_
                                             _tl5584056459_
                                             _hd5584156456_
                                             _hd5583556436_
                                             _hd5575456713_))
                                        (___kont6356363564_
                                         _tl5583756449_
                                         _tl5584056459_
                                         _hd5584156456_
                                         _hd5583556436_
                                         _hd5575456713_))))
                                (___kont6356363564_
                                 _tl5583756449_
                                 _tl5584056459_
                                 _hd5584156456_
                                 _hd5583556436_
                                 _hd5575456713_))))
                        (if (gx#stx-null? _hd5583856446_)
                            (___kont6356563566_
                             _tl5583756449_
                             _hd5583556436_
                             _hd5575456713_)
                            (let () (declare (not safe)) (_g5574655960_))))))
                (let () (declare (not safe)) (_g5574655960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5574655960_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5575956729_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5575656726_)
                                                    (let ((_e5590356181_
                                                           (gx#syntax-e
                                                            _tl5575656726_)))
                                                      (let ((_tl5590156188_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5590356181_)))
                    (_hd5590256185_
                     (let () (declare (not safe)) (##car _e5590356181_))))
                (if (gx#stx-pair? _tl5590156188_)
                    (let ((_e5590656191_ (gx#syntax-e _tl5590156188_)))
                      (let ((_tl5590456198_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5590656191_)))
                            (_hd5590556195_
                             (let ()
                               (declare (not safe))
                               (##car _e5590656191_))))
                        (if (gx#stx-pair? _hd5590556195_)
                            (let ((_e5590956201_ (gx#syntax-e _hd5590556195_)))
                              (let ((_tl5590756208_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5590956201_)))
                                    (_hd5590856205_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5590956201_))))
                                (___kont6356763568_
                                 _tl5590456198_
                                 _tl5590756208_
                                 _hd5590856205_
                                 _hd5590256185_
                                 _hd5575456713_)))
                            (if (gx#stx-pair/null? _hd5590256185_)
                                (let ((___splice6357163572_
                                       (gx#syntax-split-splice
                                        _hd5590256185_
                                        '0)))
                                  (let ((_tl5592856004_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6357163572_
                                            '1)))
                                        (_target5592656001_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6357163572_
                                            '0))))
                                    (if (gx#stx-null? _tl5592856004_)
                                        (___match6389963900_
                                         _e5575556709_
                                         _hd5575456713_
                                         _tl5575356716_
                                         _e5575856719_
                                         _hd5575756723_
                                         _tl5575656726_
                                         _e5575956729_
                                         _e5590356181_
                                         _hd5590256185_
                                         _tl5590156188_
                                         ___splice6357163572_
                                         _target5592656001_
                                         _tl5592856004_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5574655960_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5574655960_))))))
                    (if (gx#stx-pair/null? _hd5590256185_)
                        (let ((___splice6357163572_
                               (gx#syntax-split-splice _hd5590256185_ '0)))
                          (let ((_tl5592856004_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6357163572_ '1)))
                                (_target5592656001_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6357163572_ '0))))
                            (if (gx#stx-null? _tl5592856004_)
                                (___match6389963900_
                                 _e5575556709_
                                 _hd5575456713_
                                 _tl5575356716_
                                 _e5575856719_
                                 _hd5575756723_
                                 _tl5575656726_
                                 _e5575956729_
                                 _e5590356181_
                                 _hd5590256185_
                                 _tl5590156188_
                                 ___splice6357163572_
                                 _target5592656001_
                                 _tl5592856004_)
                                (let ()
                                  (declare (not safe))
                                  (_g5574655960_)))))
                        (let () (declare (not safe)) (_g5574655960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5574655960_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5574655960_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5574655960_)))))
                          (let () (declare (not safe)) (_g5574655960_)))))
                  (let () (declare (not safe)) (_g5574655960_))))))))))
