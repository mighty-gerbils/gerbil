(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx59671_)
      (let* ((___stx6272162722_ _$stx59671_)
             (_g5967659705_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6272162722_))))
        (let ((___kont6272462725_
               (lambda (_L59798_ _L59800_)
                 (let ((__tmp63078 (gx#datum->syntax '#f '##fx=))
                       (__tmp63072
                        (let ((__tmp63074
                               (let ((__tmp63077
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63075
                                      (let ((__tmp63076
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59798_ '()))))
                                        (declare (not safe))
                                        (cons _L59800_ __tmp63076))))
                                 (declare (not safe))
                                 (cons __tmp63077 __tmp63075)))
                              (__tmp63073
                               (let ()
                                 (declare (not safe))
                                 (cons _L59798_ '()))))
                          (declare (not safe))
                          (cons __tmp63074 __tmp63073))))
                   (declare (not safe))
                   (cons __tmp63078 __tmp63072))))
              (___kont6272662727_
               (lambda (_L59742_ _L59744_)
                 (let ((__tmp63091 (gx#datum->syntax '#f 'let))
                       (__tmp63079
                        (let ((__tmp63089
                               (let ((__tmp63090
                                      (let ()
                                        (declare (not safe))
                                        (cons _L59742_ '()))))
                                 (declare (not safe))
                                 (cons _L59742_ __tmp63090)))
                              (__tmp63080
                               (let ((__tmp63081
                                      (let ((__tmp63088
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63082
                                             (let ((__tmp63084
                                                    (let ((__tmp63087
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63085
                                                           (let ((__tmp63086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L59742_ '()))))
                     (declare (not safe))
                     (cons _L59744_ __tmp63086))))
              (declare (not safe))
              (cons __tmp63087 __tmp63085)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63083
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L59742_ '()))))
                                               (declare (not safe))
                                               (cons __tmp63084 __tmp63083))))
                                        (declare (not safe))
                                        (cons __tmp63088 __tmp63082))))
                                 (declare (not safe))
                                 (cons __tmp63081 '()))))
                          (declare (not safe))
                          (cons __tmp63089 __tmp63080))))
                   (declare (not safe))
                   (cons __tmp63091 __tmp63079)))))
          (let ((___match6274862749_
                 (lambda (_e5968059768_
                          _hd5968159772_
                          _tl5968259775_
                          _e5968359778_
                          _hd5968459782_
                          _tl5968559785_
                          _e5968659788_
                          _hd5968759792_
                          _tl5968859795_)
                   (let ((_L59798_ _hd5968759792_) (_L59800_ _hd5968459782_))
                     (if (or (gx#identifier? _L59798_)
                             (gx#stx-fixnum? _L59798_))
                         (___kont6272462725_ _L59798_ _L59800_)
                         (___kont6272662727_
                          _hd5968759792_
                          _hd5968459782_))))))
            (if (gx#stx-pair? ___stx6272162722_)
                (let ((_e5968059768_ (gx#syntax-e ___stx6272162722_)))
                  (let ((_tl5968259775_
                         (let () (declare (not safe)) (##cdr _e5968059768_)))
                        (_hd5968159772_
                         (let () (declare (not safe)) (##car _e5968059768_))))
                    (if (gx#stx-pair? _tl5968259775_)
                        (let ((_e5968359778_ (gx#syntax-e _tl5968259775_)))
                          (let ((_tl5968559785_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5968359778_)))
                                (_hd5968459782_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5968359778_))))
                            (if (gx#stx-pair? _tl5968559785_)
                                (let ((_e5968659788_
                                       (gx#syntax-e _tl5968559785_)))
                                  (let ((_tl5968859795_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5968659788_)))
                                        (_hd5968759792_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5968659788_))))
                                    (if (gx#stx-null? _tl5968859795_)
                                        (___match6274862749_
                                         _e5968059768_
                                         _hd5968159772_
                                         _tl5968259775_
                                         _e5968359778_
                                         _hd5968459782_
                                         _tl5968559785_
                                         _e5968659788_
                                         _hd5968759792_
                                         _tl5968859795_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5967659705_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5967659705_)))))
                        (let () (declare (not safe)) (_g5967659705_)))))
                (let () (declare (not safe)) (_g5967659705_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx59823_)
      (let* ((___stx6277162772_ _$stx59823_)
             (_g5982859857_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6277162772_))))
        (let ((___kont6277462775_
               (lambda (_L59949_ _L59951_)
                 (let ((__tmp63098 (gx#datum->syntax '#f '##fx=))
                       (__tmp63092
                        (let ((__tmp63094
                               (let ((__tmp63097
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63095
                                      (let ((__tmp63096
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59949_ '()))))
                                        (declare (not safe))
                                        (cons _L59951_ __tmp63096))))
                                 (declare (not safe))
                                 (cons __tmp63097 __tmp63095)))
                              (__tmp63093
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp63094 __tmp63093))))
                   (declare (not safe))
                   (cons __tmp63098 __tmp63092))))
              (___kont6277662777_
               (lambda (_L59894_ _L59896_)
                 (let ((__tmp63111 (gx#datum->syntax '#f 'let))
                       (__tmp63099
                        (let ((__tmp63109
                               (let ((__tmp63110
                                      (let ()
                                        (declare (not safe))
                                        (cons _L59894_ '()))))
                                 (declare (not safe))
                                 (cons _L59894_ __tmp63110)))
                              (__tmp63100
                               (let ((__tmp63101
                                      (let ((__tmp63108
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63102
                                             (let ((__tmp63104
                                                    (let ((__tmp63107
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63105
                                                           (let ((__tmp63106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L59894_ '()))))
                     (declare (not safe))
                     (cons _L59896_ __tmp63106))))
              (declare (not safe))
              (cons __tmp63107 __tmp63105)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63103
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp63104 __tmp63103))))
                                        (declare (not safe))
                                        (cons __tmp63108 __tmp63102))))
                                 (declare (not safe))
                                 (cons __tmp63101 '()))))
                          (declare (not safe))
                          (cons __tmp63109 __tmp63100))))
                   (declare (not safe))
                   (cons __tmp63111 __tmp63099)))))
          (let ((___match6279862799_
                 (lambda (_e5983259919_
                          _hd5983359923_
                          _tl5983459926_
                          _e5983559929_
                          _hd5983659933_
                          _tl5983759936_
                          _e5983859939_
                          _hd5983959943_
                          _tl5984059946_)
                   (let ((_L59949_ _hd5983959943_) (_L59951_ _hd5983659933_))
                     (if (or (gx#identifier? _L59949_)
                             (gx#stx-fixnum? _L59949_))
                         (___kont6277462775_ _L59949_ _L59951_)
                         (___kont6277662777_
                          _hd5983959943_
                          _hd5983659933_))))))
            (if (gx#stx-pair? ___stx6277162772_)
                (let ((_e5983259919_ (gx#syntax-e ___stx6277162772_)))
                  (let ((_tl5983459926_
                         (let () (declare (not safe)) (##cdr _e5983259919_)))
                        (_hd5983359923_
                         (let () (declare (not safe)) (##car _e5983259919_))))
                    (if (gx#stx-pair? _tl5983459926_)
                        (let ((_e5983559929_ (gx#syntax-e _tl5983459926_)))
                          (let ((_tl5983759936_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5983559929_)))
                                (_hd5983659933_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5983559929_))))
                            (if (gx#stx-pair? _tl5983759936_)
                                (let ((_e5983859939_
                                       (gx#syntax-e _tl5983759936_)))
                                  (let ((_tl5984059946_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5983859939_)))
                                        (_hd5983959943_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5983859939_))))
                                    (if (gx#stx-null? _tl5984059946_)
                                        (___match6279862799_
                                         _e5983259919_
                                         _hd5983359923_
                                         _tl5983459926_
                                         _e5983559929_
                                         _hd5983659933_
                                         _tl5983759936_
                                         _e5983859939_
                                         _hd5983959943_
                                         _tl5984059946_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5982859857_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5982859857_)))))
                        (let () (declare (not safe)) (_g5982859857_)))))
                (let () (declare (not safe)) (_g5982859857_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx59974_)
      (let* ((_g5997759998_
              (lambda (_g5997859994_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5997859994_)))
             (_g5997660226_
              (lambda (_g5997860002_)
                (if (gx#stx-pair? _g5997860002_)
                    (let ((_e5998160005_ (gx#syntax-e _g5997860002_)))
                      (let ((_hd5998260009_
                             (let ()
                               (declare (not safe))
                               (##car _e5998160005_)))
                            (_tl5998360012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5998160005_))))
                        (if (gx#stx-pair? _tl5998360012_)
                            (let ((_e5998460015_ (gx#syntax-e _tl5998360012_)))
                              (let ((_hd5998560019_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5998460015_)))
                                    (_tl5998660022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5998460015_))))
                                (if (gx#stx-pair? _hd5998560019_)
                                    (let ((_e5998760025_
                                           (gx#syntax-e _hd5998560019_)))
                                      (let ((_hd5998860029_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5998760025_)))
                                            (_tl5998960032_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5998760025_))))
                                        (if (gx#stx-pair? _tl5998960032_)
                                            (let ((_e5999060035_
                                                   (gx#syntax-e
                                                    _tl5998960032_)))
                                              (let ((_hd5999160039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5999060035_)))
                                                    (_tl5999260042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5999060035_))))
                                                (if (gx#stx-null?
                                                     _tl5999260042_)
                                                    (if (gx#stx-null?
                                                         _tl5998660022_)
                                                        ((lambda (_L60045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L60047_)
                   (let* ((_g6006560073_
                           (lambda (_g6006660069_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6006660069_)))
                          (_g6006460222_
                           (lambda (_g6006660077_)
                             ((lambda (_L60080_)
                                (let ()
                                  (let* ((_g6009260100_
                                          (lambda (_g6009360096_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6009360096_)))
                                         (_g6009160218_
                                          (lambda (_g6009360104_)
                                            ((lambda (_L60107_)
                                               (let ()
                                                 (let* ((_g6012060128_
                                                         (lambda (_g6012160124_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6012160124_)))
                                                        (_g6011960214_
                                                         (lambda (_g6012160132_)
                                                           ((lambda (_L60135_)
                                                              (let ()
                                                                (let* ((_g6014860156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6014960152_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6014960152_)))
                               (_g6014760210_
                                (lambda (_g6014960160_)
                                  ((lambda (_L60163_)
                                     (let ()
                                       (let* ((_g6017660184_
                                               (lambda (_g6017760180_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6017760180_)))
                                              (_g6017560206_
                                               (lambda (_g6017760188_)
                                                 ((lambda (_L60191_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp63244
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp63112
                                                               (let ((__tmp63214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63243 (gx#datum->syntax '#f 'def))
                                    (__tmp63215
                                     (let ((__tmp63216
                                            (let ((__tmp63217
                                                   (let ((__tmp63242
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp63218
                                                          (let ((__tmp63237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63241
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp63238
                                (let ((__tmp63239
                                       (let ((__tmp63240
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L60047_ __tmp63240))))
                                  (declare (not safe))
                                  (cons _L60080_ __tmp63239))))
                           (declare (not safe))
                           (cons __tmp63241 __tmp63238)))
                        (__tmp63219
                         (let ((__tmp63220
                                (let ((__tmp63236
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp63221
                                       (let ((__tmp63234
                                              (let ((__tmp63235
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp63235 '())))
                                             (__tmp63222
                                              (let ((__tmp63223
                                                     (let ((__tmp63233
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp63224
                                                            (let ((__tmp63232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63225
                           (let ((__tmp63226
                                  (let ((__tmp63231
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp63227
                                         (let ((__tmp63228
                                                (let ((__tmp63230
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp63229
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L60047_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp63230
                                                        __tmp63229))))
                                           (declare (not safe))
                                           (cons __tmp63228 '()))))
                                    (declare (not safe))
                                    (cons __tmp63231 __tmp63227))))
                             (declare (not safe))
                             (cons _L60045_ __tmp63226))))
                      (declare (not safe))
                      (cons __tmp63232 __tmp63225))))
               (declare (not safe))
               (cons __tmp63233 __tmp63224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63223 '()))))
                                         (declare (not safe))
                                         (cons __tmp63234 __tmp63222))))
                                  (declare (not safe))
                                  (cons __tmp63236 __tmp63221))))
                           (declare (not safe))
                           (cons __tmp63220 '()))))
                    (declare (not safe))
                    (cons __tmp63237 __tmp63219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63242
                                                           __tmp63218))))
                                              (declare (not safe))
                                              (cons __tmp63217 '()))))
                                       (declare (not safe))
                                       (cons _L60107_ __tmp63216))))
                                (declare (not safe))
                                (cons __tmp63243 __tmp63215)))
                             (__tmp63113
                              (let ((__tmp63184
                                     (let ((__tmp63213
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp63185
                                            (let ((__tmp63186
                                                   (let ((__tmp63187
                                                          (let ((__tmp63212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp63188
                         (let ((__tmp63207
                                (let ((__tmp63211
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp63208
                                       (let ((__tmp63209
                                              (let ((__tmp63210
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L60047_ __tmp63210))))
                                         (declare (not safe))
                                         (cons _L60080_ __tmp63209))))
                                  (declare (not safe))
                                  (cons __tmp63211 __tmp63208)))
                               (__tmp63189
                                (let ((__tmp63190
                                       (let ((__tmp63206
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp63191
                                              (let ((__tmp63204
                                                     (let ((__tmp63205
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp63205 '())))
                                                    (__tmp63192
                                                     (let ((__tmp63193
                                                            (let ((__tmp63203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp63194
                           (let ((__tmp63202 (gx#datum->syntax '#f 'klass))
                                 (__tmp63195
                                  (let ((__tmp63196
                                         (let ((__tmp63201
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp63197
                                                (let ((__tmp63198
                                                       (let ((__tmp63200
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp63199
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L60047_ '()))))
                 (declare (not safe))
                 (cons __tmp63200 __tmp63199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63198 '()))))
                                           (declare (not safe))
                                           (cons __tmp63201 __tmp63197))))
                                    (declare (not safe))
                                    (cons _L60045_ __tmp63196))))
                             (declare (not safe))
                             (cons __tmp63202 __tmp63195))))
                      (declare (not safe))
                      (cons __tmp63203 __tmp63194))))
               (declare (not safe))
               (cons __tmp63193 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63204 __tmp63192))))
                                         (declare (not safe))
                                         (cons __tmp63206 __tmp63191))))
                                  (declare (not safe))
                                  (cons __tmp63190 '()))))
                           (declare (not safe))
                           (cons __tmp63207 __tmp63189))))
                    (declare (not safe))
                    (cons __tmp63212 __tmp63188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63187 '()))))
                                              (declare (not safe))
                                              (cons _L60135_ __tmp63186))))
                                       (declare (not safe))
                                       (cons __tmp63213 __tmp63185)))
                                    (__tmp63114
                                     (let ((__tmp63150
                                            (let ((__tmp63183
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp63151
                                                   (let ((__tmp63152
                                                          (let ((__tmp63153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63182
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp63154
                                (let ((__tmp63177
                                       (let ((__tmp63181
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp63178
                                              (let ((__tmp63179
                                                     (let ((__tmp63180
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L60047_
                                                             __tmp63180))))
                                                (declare (not safe))
                                                (cons _L60080_ __tmp63179))))
                                         (declare (not safe))
                                         (cons __tmp63181 __tmp63178)))
                                      (__tmp63155
                                       (let ((__tmp63156
                                              (let ((__tmp63176
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp63157
                                                     (let ((__tmp63172
                                                            (let ((__tmp63175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63173
                           (let ((__tmp63174 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp63174 '()))))
                      (declare (not safe))
                      (cons __tmp63175 __tmp63173)))
                   (__tmp63158
                    (let ((__tmp63159
                           (let ((__tmp63171
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp63160
                                  (let ((__tmp63170
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63161
                                         (let ((__tmp63169
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp63162
                                                (let ((__tmp63163
                                                       (let ((__tmp63168
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp63164
                                                              (let ((__tmp63165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp63167 (gx#datum->syntax '#f 'quote))
                                   (__tmp63166
                                    (let ()
                                      (declare (not safe))
                                      (cons _L60047_ '()))))
                               (declare (not safe))
                               (cons __tmp63167 __tmp63166))))
                        (declare (not safe))
                        (cons __tmp63165 '()))))
                 (declare (not safe))
                 (cons __tmp63168 __tmp63164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L60045_ __tmp63163))))
                                           (declare (not safe))
                                           (cons __tmp63169 __tmp63162))))
                                    (declare (not safe))
                                    (cons __tmp63170 __tmp63161))))
                             (declare (not safe))
                             (cons __tmp63171 __tmp63160))))
                      (declare (not safe))
                      (cons __tmp63159 '()))))
               (declare (not safe))
               (cons __tmp63172 __tmp63158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63176 __tmp63157))))
                                         (declare (not safe))
                                         (cons __tmp63156 '()))))
                                  (declare (not safe))
                                  (cons __tmp63177 __tmp63155))))
                           (declare (not safe))
                           (cons __tmp63182 __tmp63154))))
                    (declare (not safe))
                    (cons __tmp63153 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L60163_
                                                           __tmp63152))))
                                              (declare (not safe))
                                              (cons __tmp63183 __tmp63151)))
                                           (__tmp63115
                                            (let ((__tmp63116
                                                   (let ((__tmp63149
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp63117
                                                          (let ((__tmp63118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63119
                                (let ((__tmp63148
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp63120
                                       (let ((__tmp63143
                                              (let ((__tmp63147
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp63144
                                                     (let ((__tmp63145
                                                            (let ((__tmp63146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L60047_ __tmp63146))))
               (declare (not safe))
               (cons _L60080_ __tmp63145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63147 __tmp63144)))
                                             (__tmp63121
                                              (let ((__tmp63122
                                                     (let ((__tmp63142
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp63123
                                                            (let ((__tmp63138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63141 (gx#datum->syntax '#f 'klass))
                                 (__tmp63139
                                  (let ((__tmp63140
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp63140 '()))))
                             (declare (not safe))
                             (cons __tmp63141 __tmp63139)))
                          (__tmp63124
                           (let ((__tmp63125
                                  (let ((__tmp63137
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp63126
                                         (let ((__tmp63136
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp63127
                                                (let ((__tmp63135
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp63128
                                                       (let ((__tmp63129
                                                              (let ((__tmp63134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp63130
                             (let ((__tmp63131
                                    (let ((__tmp63133
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp63132
                                           (let ()
                                             (declare (not safe))
                                             (cons _L60047_ '()))))
                                      (declare (not safe))
                                      (cons __tmp63133 __tmp63132))))
                               (declare (not safe))
                               (cons __tmp63131 '()))))
                        (declare (not safe))
                        (cons __tmp63134 __tmp63130))))
                 (declare (not safe))
                 (cons _L60045_ __tmp63129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63135
                                                        __tmp63128))))
                                           (declare (not safe))
                                           (cons __tmp63136 __tmp63127))))
                                    (declare (not safe))
                                    (cons __tmp63137 __tmp63126))))
                             (declare (not safe))
                             (cons __tmp63125 '()))))
                      (declare (not safe))
                      (cons __tmp63138 __tmp63124))))
               (declare (not safe))
               (cons __tmp63142 __tmp63123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63122 '()))))
                                         (declare (not safe))
                                         (cons __tmp63143 __tmp63121))))
                                  (declare (not safe))
                                  (cons __tmp63148 __tmp63120))))
                           (declare (not safe))
                           (cons __tmp63119 '()))))
                    (declare (not safe))
                    (cons _L60191_ __tmp63118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63149
                                                           __tmp63117))))
                                              (declare (not safe))
                                              (cons __tmp63116 '()))))
                                       (declare (not safe))
                                       (cons __tmp63150 __tmp63115))))
                                (declare (not safe))
                                (cons __tmp63184 __tmp63114))))
                         (declare (not safe))
                         (cons __tmp63214 __tmp63113))))
                  (declare (not safe))
                  (cons __tmp63244 __tmp63112)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6017760188_))))
                                         (_g6017560206_
                                          (gx#stx-identifier
                                           _L60047_
                                           '"&"
                                           _L60163_)))))
                                   _g6014960160_))))
                          (_g6014760210_
                           (gx#stx-identifier _L60047_ _L60107_ '"-set!")))))
                    _g6012160132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6011960214_
                                                    (gx#stx-identifier
                                                     _L60047_
                                                     '"&"
                                                     _L60107_)))))
                                             _g6009360104_))))
                                    (_g6009160218_
                                     (gx#stx-identifier
                                      _L60047_
                                      '"class-type-"
                                      _L60047_)))))
                              _g6006660077_))))
                     (_g6006460222_ (gx#core-quote-syntax 'class::t))))
                 _hd5999160039_
                 _hd5998860029_)
                (_g5997759998_ _g5997860002_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5997759998_
                                                     _g5997860002_))))
                                            (_g5997759998_ _g5997860002_))))
                                    (_g5997759998_ _g5997860002_))))
                            (_g5997759998_ _g5997860002_))))
                    (_g5997759998_ _g5997860002_)))))
        (_g5997660226_ _stx59974_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx60230_)
      (let* ((_g6023460263_
              (lambda (_g6023560259_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6023560259_)))
             (_g6023360363_
              (lambda (_g6023560267_)
                (if (gx#stx-pair? _g6023560267_)
                    (let ((_e6023860270_ (gx#syntax-e _g6023560267_)))
                      (let ((_hd6023960274_
                             (let ()
                               (declare (not safe))
                               (##car _e6023860270_)))
                            (_tl6024060277_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6023860270_))))
                        (if (gx#stx-pair/null? _tl6024060277_)
                            (let ((_g63245_
                                   (gx#syntax-split-splice _tl6024060277_ '0)))
                              (begin
                                (let ((_g63246_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g63245_)
                                             (##vector-length _g63245_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g63246_ 2)))
                                      (error "Context expects 2 values"
                                             _g63246_)))
                                (let ((_target6024160280_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63245_ 0)))
                                      (_tl6024360283_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63245_ 1))))
                                  (if (gx#stx-null? _tl6024360283_)
                                      (letrec ((_loop6024460286_
                                                (lambda (_hd6024260290_
                                                         _field6024860293_
                                                         _slot6024960295_)
                                                  (if (gx#stx-pair?
                                                       _hd6024260290_)
                                                      (let ((_e6024560298_
                                                             (gx#syntax-e
                                                              _hd6024260290_)))
                                                        (let ((_lp-hd6024660302_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6024560298_)))
                      (_lp-tl6024760305_
                       (let () (declare (not safe)) (##cdr _e6024560298_))))
                  (if (gx#stx-pair? _lp-hd6024660302_)
                      (let ((_e6025260308_ (gx#syntax-e _lp-hd6024660302_)))
                        (let ((_hd6025360312_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6025260308_)))
                              (_tl6025460315_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6025260308_))))
                          (if (gx#stx-pair? _tl6025460315_)
                              (let ((_e6025560318_
                                     (gx#syntax-e _tl6025460315_)))
                                (let ((_hd6025660322_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6025560318_)))
                                      (_tl6025760325_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6025560318_))))
                                  (if (gx#stx-null? _tl6025760325_)
                                      (_loop6024460286_
                                       _lp-tl6024760305_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6025660322_
                                               _field6024860293_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6025360312_
                                               _slot6024960295_)))
                                      (_g6023460263_ _g6023560267_))))
                              (_g6023460263_ _g6023560267_))))
                      (_g6023460263_ _g6023560267_))))
              (let ((_field6025060328_ (reverse _field6024860293_))
                    (_slot6025160331_ (reverse _slot6024960295_)))
                ((lambda (_L60334_ _L60336_)
                   (let ((__tmp63254 (gx#datum->syntax '#f 'begin))
                         (__tmp63247
                          (begin
                            (gx#syntax-check-splice-targets _L60334_ _L60336_)
                            (let ((__tmp63248
                                   (lambda (_g6035160355_
                                            _g6035260358_
                                            _g6035360360_)
                                     (let ((__tmp63249
                                            (let ((__tmp63253
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp63250
                                                   (let ((__tmp63251
                                                          (let ((__tmp63252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6035160355_ '()))))
                    (declare (not safe))
                    (cons _g6035260358_ __tmp63252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63251 '()))))
                                              (declare (not safe))
                                              (cons __tmp63253 __tmp63250))))
                                       (declare (not safe))
                                       (cons __tmp63249 _g6035360360_)))))
                              (declare (not safe))
                              (foldr2 __tmp63248 '() _L60334_ _L60336_)))))
                     (declare (not safe))
                     (cons __tmp63254 __tmp63247)))
                 _field6025060328_
                 _slot6025160331_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6024460286_
                                         _target6024160280_
                                         '()
                                         '()))
                                      (_g6023460263_ _g6023560267_)))))
                            (_g6023460263_ _g6023560267_))))
                    (_g6023460263_ _g6023560267_)))))
        (_g6023360363_ _$stx60230_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx60368_)
      (let* ((_g6037260398_
              (lambda (_g6037360394_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6037360394_)))
             (_g6037160481_
              (lambda (_g6037360402_)
                (if (gx#stx-pair? _g6037360402_)
                    (let ((_e6037860405_ (gx#syntax-e _g6037360402_)))
                      (let ((_hd6037960409_
                             (let ()
                               (declare (not safe))
                               (##car _e6037860405_)))
                            (_tl6038060412_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6037860405_))))
                        (if (gx#stx-pair? _tl6038060412_)
                            (let ((_e6038160415_ (gx#syntax-e _tl6038060412_)))
                              (let ((_hd6038260419_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6038160415_)))
                                    (_tl6038360422_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6038160415_))))
                                (if (gx#stx-pair? _tl6038360422_)
                                    (let ((_e6038460425_
                                           (gx#syntax-e _tl6038360422_)))
                                      (let ((_hd6038560429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6038460425_)))
                                            (_tl6038660432_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6038460425_))))
                                        (if (gx#stx-pair? _tl6038660432_)
                                            (let ((_e6038760435_
                                                   (gx#syntax-e
                                                    _tl6038660432_)))
                                              (let ((_hd6038860439_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6038760435_)))
                                                    (_tl6038960442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6038760435_))))
                                                (if (gx#stx-pair?
                                                     _tl6038960442_)
                                                    (let ((_e6039060445_
                                                           (gx#syntax-e
                                                            _tl6038960442_)))
                                                      (let ((_hd6039160449_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6039060445_)))
                    (_tl6039260452_
                     (let () (declare (not safe)) (##cdr _e6039060445_))))
                (if (gx#stx-null? _tl6039260452_)
                    ((lambda (_L60455_ _L60457_ _L60458_ _L60459_)
                       (let ((__tmp63301 (gx#datum->syntax '#f 'if))
                             (__tmp63255
                              (let ((__tmp63298
                                     (let ((__tmp63300
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp63299
                                            (let ()
                                              (declare (not safe))
                                              (cons _L60459_ '()))))
                                       (declare (not safe))
                                       (cons __tmp63300 __tmp63299)))
                                    (__tmp63256
                                     (let ((__tmp63261
                                            (let ((__tmp63297
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp63262
                                                   (let ((__tmp63291
                                                          (let ((__tmp63296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp63292
                         (let ((__tmp63293
                                (let ((__tmp63295
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp63294
                                       (let ()
                                         (declare (not safe))
                                         (cons _L60459_ '()))))
                                  (declare (not safe))
                                  (cons __tmp63295 __tmp63294))))
                           (declare (not safe))
                           (cons __tmp63293 '()))))
                    (declare (not safe))
                    (cons __tmp63296 __tmp63292)))
                 (__tmp63263
                  (let ((__tmp63264
                         (let ((__tmp63290 (gx#datum->syntax '#f 'cond))
                               (__tmp63265
                                (let ((__tmp63273
                                       (let ((__tmp63277
                                              (let ((__tmp63289
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp63278
                                                     (let ((__tmp63285
                                                            (let ((__tmp63288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp63286
                           (let ((__tmp63287 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp63287 '()))))
                      (declare (not safe))
                      (cons __tmp63288 __tmp63286)))
                   (__tmp63279
                    (let ((__tmp63280
                           (let ((__tmp63284
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp63281
                                  (let ((__tmp63283
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63282
                                         (let ()
                                           (declare (not safe))
                                           (cons _L60458_ '()))))
                                    (declare (not safe))
                                    (cons __tmp63283 __tmp63282))))
                             (declare (not safe))
                             (cons __tmp63284 __tmp63281))))
                      (declare (not safe))
                      (cons __tmp63280 '()))))
               (declare (not safe))
               (cons __tmp63285 __tmp63279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63289 __tmp63278)))
                                             (__tmp63274
                                              (let ((__tmp63276
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp63275
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L60457_ '()))))
                                                (declare (not safe))
                                                (cons __tmp63276 __tmp63275))))
                                         (declare (not safe))
                                         (cons __tmp63277 __tmp63274)))
                                      (__tmp63266
                                       (let ((__tmp63267
                                              (let ((__tmp63272
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63268
                                                     (let ((__tmp63269
                                                            (let ((__tmp63270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63271
                                  (let ()
                                    (declare (not safe))
                                    (cons _L60458_ '()))))
                             (declare (not safe))
                             (cons _L60459_ __tmp63271))))
                      (declare (not safe))
                      (cons _L60455_ __tmp63270))))
               (declare (not safe))
               (cons __tmp63269 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63272 __tmp63268))))
                                         (declare (not safe))
                                         (cons __tmp63267 '()))))
                                  (declare (not safe))
                                  (cons __tmp63273 __tmp63266))))
                           (declare (not safe))
                           (cons __tmp63290 __tmp63265))))
                    (declare (not safe))
                    (cons __tmp63264 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63291
                                                           __tmp63263))))
                                              (declare (not safe))
                                              (cons __tmp63297 __tmp63262)))
                                           (__tmp63257
                                            (let ((__tmp63258
                                                   (let ((__tmp63259
                                                          (let ((__tmp63260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L60458_ '()))))
                    (declare (not safe))
                    (cons _L60459_ __tmp63260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L60455_
                                                           __tmp63259))))
                                              (declare (not safe))
                                              (cons __tmp63258 '()))))
                                       (declare (not safe))
                                       (cons __tmp63261 __tmp63257))))
                                (declare (not safe))
                                (cons __tmp63298 __tmp63256))))
                         (declare (not safe))
                         (cons __tmp63301 __tmp63255)))
                     _hd6039160449_
                     _hd6038860439_
                     _hd6038560429_
                     _hd6038260419_)
                    (_g6037260398_ _g6037360402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6037260398_
                                                     _g6037360402_))))
                                            (_g6037260398_ _g6037360402_))))
                                    (_g6037260398_ _g6037360402_))))
                            (_g6037260398_ _g6037360402_))))
                    (_g6037260398_ _g6037360402_)))))
        (_g6037160481_ _$stx60368_))))
  (define |[:0:]#defsubtype|
    (lambda (_$stx60485_)
      (let* ((_g6048960518_
              (lambda (_g6049060514_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6049060514_)))
             (_g6048860618_
              (lambda (_g6049060522_)
                (if (gx#stx-pair? _g6049060522_)
                    (let ((_e6049360525_ (gx#syntax-e _g6049060522_)))
                      (let ((_hd6049460529_
                             (let ()
                               (declare (not safe))
                               (##car _e6049360525_)))
                            (_tl6049560532_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6049360525_))))
                        (if (gx#stx-pair/null? _tl6049560532_)
                            (let ((_g63302_
                                   (gx#syntax-split-splice _tl6049560532_ '0)))
                              (begin
                                (let ((_g63303_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g63302_)
                                             (##vector-length _g63302_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g63303_ 2)))
                                      (error "Context expects 2 values"
                                             _g63303_)))
                                (let ((_target6049660535_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63302_ 0)))
                                      (_tl6049860538_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63302_ 1))))
                                  (if (gx#stx-null? _tl6049860538_)
                                      (letrec ((_loop6049960541_
                                                (lambda (_hd6049760545_
                                                         _name6050360548_
                                                         _t6050460550_)
                                                  (if (gx#stx-pair?
                                                       _hd6049760545_)
                                                      (let ((_e6050060553_
                                                             (gx#syntax-e
                                                              _hd6049760545_)))
                                                        (let ((_lp-hd6050160557_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6050060553_)))
                      (_lp-tl6050260560_
                       (let () (declare (not safe)) (##cdr _e6050060553_))))
                  (if (gx#stx-pair? _lp-hd6050160557_)
                      (let ((_e6050760563_ (gx#syntax-e _lp-hd6050160557_)))
                        (let ((_hd6050860567_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6050760563_)))
                              (_tl6050960570_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6050760563_))))
                          (if (gx#stx-pair? _tl6050960570_)
                              (let ((_e6051060573_
                                     (gx#syntax-e _tl6050960570_)))
                                (let ((_hd6051160577_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6051060573_)))
                                      (_tl6051260580_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6051060573_))))
                                  (if (gx#stx-null? _tl6051260580_)
                                      (_loop6049960541_
                                       _lp-tl6050260560_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6051160577_
                                               _name6050360548_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6050860567_ _t6050460550_)))
                                      (_g6048960518_ _g6049060522_))))
                              (_g6048960518_ _g6049060522_))))
                      (_g6048960518_ _g6049060522_))))
              (let ((_name6050560583_ (reverse _name6050360548_))
                    (_t6050660586_ (reverse _t6050460550_)))
                ((lambda (_L60589_ _L60591_)
                   (let ((__tmp63315 (gx#datum->syntax '#f 'begin))
                         (__tmp63304
                          (begin
                            (gx#syntax-check-splice-targets _L60589_ _L60591_)
                            (let ((__tmp63305
                                   (lambda (_g6060660610_
                                            _g6060760613_
                                            _g6060860615_)
                                     (let ((__tmp63306
                                            (let ((__tmp63314
                                                   (gx#datum->syntax
                                                    '#f
                                                    'vector-set!))
                                                  (__tmp63307
                                                   (let ((__tmp63313
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__subtype-id))
                                                         (__tmp63308
                                                          (let ((__tmp63309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63310
                                (let ((__tmp63312
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp63311
                                       (let ()
                                         (declare (not safe))
                                         (cons _g6060660610_ '()))))
                                  (declare (not safe))
                                  (cons __tmp63312 __tmp63311))))
                           (declare (not safe))
                           (cons __tmp63310 '()))))
                    (declare (not safe))
                    (cons _g6060760613_ __tmp63309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63313
                                                           __tmp63308))))
                                              (declare (not safe))
                                              (cons __tmp63314 __tmp63307))))
                                       (declare (not safe))
                                       (cons __tmp63306 _g6060860615_)))))
                              (declare (not safe))
                              (foldr2 __tmp63305 '() _L60589_ _L60591_)))))
                     (declare (not safe))
                     (cons __tmp63315 __tmp63304)))
                 _name6050560583_
                 _t6050660586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6049960541_
                                         _target6049660535_
                                         '()
                                         '()))
                                      (_g6048960518_ _g6049060522_)))))
                            (_g6048960518_ _g6049060522_))))
                    (_g6048960518_ _g6049060522_)))))
        (_g6048860618_ _$stx60485_))))
  (define |[:0:]#defsystem-class|
    (lambda (_$stx60623_)
      (let* ((_g6062760658_
              (lambda (_g6062860654_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6062860654_)))
             (_g6062660777_
              (lambda (_g6062860662_)
                (if (gx#stx-pair? _g6062860662_)
                    (let ((_e6063260665_ (gx#syntax-e _g6062860662_)))
                      (let ((_hd6063360669_
                             (let ()
                               (declare (not safe))
                               (##car _e6063260665_)))
                            (_tl6063460672_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6063260665_))))
                        (if (gx#stx-pair? _tl6063460672_)
                            (let ((_e6063560675_ (gx#syntax-e _tl6063460672_)))
                              (let ((_hd6063660679_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6063560675_)))
                                    (_tl6063760682_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6063560675_))))
                                (if (gx#stx-pair? _tl6063760682_)
                                    (let ((_e6063860685_
                                           (gx#syntax-e _tl6063760682_)))
                                      (let ((_hd6063960689_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6063860685_)))
                                            (_tl6064060692_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6063860685_))))
                                        (if (gx#stx-pair? _tl6064060692_)
                                            (let ((_e6064160695_
                                                   (gx#syntax-e
                                                    _tl6064060692_)))
                                              (let ((_hd6064260699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6064160695_)))
                                                    (_tl6064360702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6064160695_))))
                                                (if (gx#stx-pair/null?
                                                     _hd6064260699_)
                                                    (let ((_g63316_
                                                           (gx#syntax-split-splice
                                                            _hd6064260699_
                                                            '0)))
                                                      (begin
                                                        (let ((_g63317_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g63316_)
                             (##vector-length _g63316_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g63317_ 2)))
                      (error "Context expects 2 values" _g63317_)))
                (let ((_target6064460705_
                       (let () (declare (not safe)) (##vector-ref _g63316_ 0)))
                      (_tl6064660708_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g63316_ 1))))
                  (if (gx#stx-null? _tl6064660708_)
                      (letrec ((_loop6064760711_
                                (lambda (_hd6064560715_ _super6065160718_)
                                  (if (gx#stx-pair? _hd6064560715_)
                                      (let ((_e6064860721_
                                             (gx#syntax-e _hd6064560715_)))
                                        (let ((_lp-hd6064960725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6064860721_)))
                                              (_lp-tl6065060728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6064860721_))))
                                          (_loop6064760711_
                                           _lp-tl6065060728_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd6064960725_
                                                   _super6065160718_)))))
                                      (let ((_super6065260731_
                                             (reverse _super6065160718_)))
                                        (if (gx#stx-null? _tl6064360702_)
                                            ((lambda (_L60735_
                                                      _L60737_
                                                      _L60738_)
                                               (let ((__tmp63341
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp63318
                                                      (let ((__tmp63319
                                                             (let ((__tmp63320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp63340
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp63321
                                   (let ((__tmp63334
                                          (let ((__tmp63339
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp63335
                                                 (let ((__tmp63336
                                                        (let ((__tmp63337
                                                               (let ((__tmp63338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6076060765_ _g6076160768_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6076060765_ _g6076160768_)))))
                         (declare (not safe))
                         (foldr1 __tmp63338 '() _L60735_))))
                  (declare (not safe))
                  (cons __tmp63337 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L60737_
                                                         __tmp63336))))
                                            (declare (not safe))
                                            (cons __tmp63339 __tmp63335)))
                                         (__tmp63322
                                          (let ((__tmp63323
                                                 (let ((__tmp63333
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__make-system-class))
                                                       (__tmp63324
                                                        (let ((__tmp63330
                                                               (let ((__tmp63332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp63331
                              (let ()
                                (declare (not safe))
                                (cons _L60737_ '()))))
                         (declare (not safe))
                         (cons __tmp63332 __tmp63331)))
                      (__tmp63325
                       (let ((__tmp63326
                              (let ((__tmp63329 (gx#datum->syntax '#f '@list))
                                    (__tmp63327
                                     (let ((__tmp63328
                                            (lambda (_g6076260771_
                                                     _g6076360774_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g6076260771_
                                                      _g6076360774_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp63328 '() _L60735_))))
                                (declare (not safe))
                                (cons __tmp63329 __tmp63327))))
                         (declare (not safe))
                         (cons __tmp63326 '()))))
                  (declare (not safe))
                  (cons __tmp63330 __tmp63325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63333
                                                         __tmp63324))))
                                            (declare (not safe))
                                            (cons __tmp63323 '()))))
                                     (declare (not safe))
                                     (cons __tmp63334 __tmp63322))))
                              (declare (not safe))
                              (cons __tmp63340 __tmp63321))))
                       (declare (not safe))
                       (cons __tmp63320 '()))))
                (declare (not safe))
                (cons _L60738_ __tmp63319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63341 __tmp63318)))
                                             _super6065260731_
                                             _hd6063960689_
                                             _hd6063660679_)
                                            (_g6062760658_ _g6062860662_)))))))
                        (_loop6064760711_ _target6064460705_ '()))
                      (_g6062760658_ _g6062860662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6062760658_
                                                     _g6062860662_))))
                                            (_g6062760658_ _g6062860662_))))
                                    (_g6062760658_ _g6062860662_))))
                            (_g6062760658_ _g6062860662_))))
                    (_g6062760658_ _g6062860662_)))))
        (_g6062660777_ _$stx60623_))))
  (define |[:0:]#defshadow-class|
    (lambda (_$stx60782_)
      (let* ((_g6078660817_
              (lambda (_g6078760813_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6078760813_)))
             (_g6078560928_
              (lambda (_g6078760821_)
                (if (gx#stx-pair? _g6078760821_)
                    (let ((_e6079160824_ (gx#syntax-e _g6078760821_)))
                      (let ((_hd6079260828_
                             (let ()
                               (declare (not safe))
                               (##car _e6079160824_)))
                            (_tl6079360831_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6079160824_))))
                        (if (gx#stx-pair? _tl6079360831_)
                            (let ((_e6079460834_ (gx#syntax-e _tl6079360831_)))
                              (let ((_hd6079560838_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6079460834_)))
                                    (_tl6079660841_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6079460834_))))
                                (if (gx#stx-pair? _tl6079660841_)
                                    (let ((_e6079760844_
                                           (gx#syntax-e _tl6079660841_)))
                                      (let ((_hd6079860848_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6079760844_)))
                                            (_tl6079960851_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6079760844_))))
                                        (if (gx#stx-pair/null? _hd6079860848_)
                                            (let ((_g63342_
                                                   (gx#syntax-split-splice
                                                    _hd6079860848_
                                                    '0)))
                                              (begin
                                                (let ((_g63343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g63342_)
                                                             (##vector-length
                                                              _g63342_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g63343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g63343_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target6080060854_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g63342_
                                                          0)))
                                                      (_tl6080260857_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g63342_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl6080260857_)
                                                      (letrec ((_loop6080360860_
                                                                (lambda (_hd6080160864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _super6080760867_)
                          (if (gx#stx-pair? _hd6080160864_)
                              (let ((_e6080460870_
                                     (gx#syntax-e _hd6080160864_)))
                                (let ((_lp-hd6080560874_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6080460870_)))
                                      (_lp-tl6080660877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6080460870_))))
                                  (_loop6080360860_
                                   _lp-tl6080660877_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd6080560874_
                                           _super6080760867_)))))
                              (let ((_super6080860880_
                                     (reverse _super6080760867_)))
                                (if (gx#stx-pair? _tl6079960851_)
                                    (let ((_e6080960884_
                                           (gx#syntax-e _tl6079960851_)))
                                      (let ((_hd6081060888_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6080960884_)))
                                            (_tl6081160891_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6080960884_))))
                                        (if (gx#stx-null? _tl6081160891_)
                                            ((lambda (_L60894_
                                                      _L60896_
                                                      _L60897_)
                                               (let ((__tmp63359
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp63344
                                                      (let ((__tmp63345
                                                             (let ((__tmp63346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp63358
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp63347
                                   (let ((__tmp63352
                                          (let ((__tmp63357
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp63353
                                                 (let ((__tmp63354
                                                        (let ((__tmp63355
                                                               (let ((__tmp63356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6091960922_ _g6092060925_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6091960922_ _g6092060925_)))))
                         (declare (not safe))
                         (foldr1 __tmp63356 '() _L60896_))))
                  (declare (not safe))
                  (cons __tmp63355 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L60897_
                                                         __tmp63354))))
                                            (declare (not safe))
                                            (cons __tmp63357 __tmp63353)))
                                         (__tmp63348
                                          (let ((__tmp63349
                                                 (let ((__tmp63351
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__shadow-class))
                                                       (__tmp63350
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L60894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp63351
                                                         __tmp63350))))
                                            (declare (not safe))
                                            (cons __tmp63349 '()))))
                                     (declare (not safe))
                                     (cons __tmp63352 __tmp63348))))
                              (declare (not safe))
                              (cons __tmp63358 __tmp63347))))
                       (declare (not safe))
                       (cons __tmp63346 '()))))
                (declare (not safe))
                (cons _L60897_ __tmp63345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63359 __tmp63344)))
                                             _hd6081060888_
                                             _super6080860880_
                                             _hd6079560838_)
                                            (_g6078660817_ _g6078760821_))))
                                    (_g6078660817_ _g6078760821_)))))))
                (_loop6080360860_ _target6080060854_ '()))
              (_g6078660817_ _g6078760821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g6078660817_ _g6078760821_))))
                                    (_g6078660817_ _g6078760821_))))
                            (_g6078660817_ _g6078760821_))))
                    (_g6078660817_ _g6078760821_)))))
        (_g6078560928_ _$stx60782_)))))
