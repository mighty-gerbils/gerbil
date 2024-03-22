(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx62630_)
      (let* ((___stx6573865739_ _$stx62630_)
             (_g6263562664_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6573865739_))))
        (let ((___kont6574165742_
               (lambda (_L62757_ _L62759_)
                 (let ((__tmp66105 (gx#datum->syntax '#f '##fx=))
                       (__tmp66099
                        (let ((__tmp66101
                               (let ((__tmp66104
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp66102
                                      (let ((__tmp66103
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62757_ '()))))
                                        (declare (not safe))
                                        (cons _L62759_ __tmp66103))))
                                 (declare (not safe))
                                 (cons __tmp66104 __tmp66102)))
                              (__tmp66100
                               (let ()
                                 (declare (not safe))
                                 (cons _L62757_ '()))))
                          (declare (not safe))
                          (cons __tmp66101 __tmp66100))))
                   (declare (not safe))
                   (cons __tmp66105 __tmp66099))))
              (___kont6574365744_
               (lambda (_L62701_ _L62703_)
                 (let ((__tmp66118 (gx#datum->syntax '#f 'let))
                       (__tmp66106
                        (let ((__tmp66116
                               (let ((__tmp66117
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62701_ '()))))
                                 (declare (not safe))
                                 (cons _L62701_ __tmp66117)))
                              (__tmp66107
                               (let ((__tmp66108
                                      (let ((__tmp66115
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp66109
                                             (let ((__tmp66111
                                                    (let ((__tmp66114
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp66112
                                                           (let ((__tmp66113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62701_ '()))))
                     (declare (not safe))
                     (cons _L62703_ __tmp66113))))
              (declare (not safe))
              (cons __tmp66114 __tmp66112)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp66110
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L62701_ '()))))
                                               (declare (not safe))
                                               (cons __tmp66111 __tmp66110))))
                                        (declare (not safe))
                                        (cons __tmp66115 __tmp66109))))
                                 (declare (not safe))
                                 (cons __tmp66108 '()))))
                          (declare (not safe))
                          (cons __tmp66116 __tmp66107))))
                   (declare (not safe))
                   (cons __tmp66118 __tmp66106)))))
          (let ((___match6576565766_
                 (lambda (_e6264162727_
                          _hd6264062731_
                          _tl6263962734_
                          _e6264462737_
                          _hd6264362741_
                          _tl6264262744_
                          _e6264762747_
                          _hd6264662751_
                          _tl6264562754_)
                   (let ((_L62757_ _hd6264662751_) (_L62759_ _hd6264362741_))
                     (if (or (gx#identifier? _L62757_)
                             (gx#stx-fixnum? _L62757_))
                         (___kont6574165742_ _L62757_ _L62759_)
                         (___kont6574365744_
                          _hd6264662751_
                          _hd6264362741_))))))
            (if (gx#stx-pair? ___stx6573865739_)
                (let ((_e6264162727_ (gx#syntax-e ___stx6573865739_)))
                  (let ((_tl6263962734_
                         (let () (declare (not safe)) (##cdr _e6264162727_)))
                        (_hd6264062731_
                         (let () (declare (not safe)) (##car _e6264162727_))))
                    (if (gx#stx-pair? _tl6263962734_)
                        (let ((_e6264462737_ (gx#syntax-e _tl6263962734_)))
                          (let ((_tl6264262744_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6264462737_)))
                                (_hd6264362741_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6264462737_))))
                            (if (gx#stx-pair? _tl6264262744_)
                                (let ((_e6264762747_
                                       (gx#syntax-e _tl6264262744_)))
                                  (let ((_tl6264562754_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6264762747_)))
                                        (_hd6264662751_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6264762747_))))
                                    (if (gx#stx-null? _tl6264562754_)
                                        (___match6576565766_
                                         _e6264162727_
                                         _hd6264062731_
                                         _tl6263962734_
                                         _e6264462737_
                                         _hd6264362741_
                                         _tl6264262744_
                                         _e6264762747_
                                         _hd6264662751_
                                         _tl6264562754_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6263562664_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6263562664_)))))
                        (let () (declare (not safe)) (_g6263562664_)))))
                (let () (declare (not safe)) (_g6263562664_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62782_)
      (let* ((___stx6578865789_ _$stx62782_)
             (_g6278762816_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6578865789_))))
        (let ((___kont6579165792_
               (lambda (_L62908_ _L62910_)
                 (let ((__tmp66125 (gx#datum->syntax '#f '##fx=))
                       (__tmp66119
                        (let ((__tmp66121
                               (let ((__tmp66124
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp66122
                                      (let ((__tmp66123
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62908_ '()))))
                                        (declare (not safe))
                                        (cons _L62910_ __tmp66123))))
                                 (declare (not safe))
                                 (cons __tmp66124 __tmp66122)))
                              (__tmp66120
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp66121 __tmp66120))))
                   (declare (not safe))
                   (cons __tmp66125 __tmp66119))))
              (___kont6579365794_
               (lambda (_L62853_ _L62855_)
                 (let ((__tmp66138 (gx#datum->syntax '#f 'let))
                       (__tmp66126
                        (let ((__tmp66136
                               (let ((__tmp66137
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62853_ '()))))
                                 (declare (not safe))
                                 (cons _L62853_ __tmp66137)))
                              (__tmp66127
                               (let ((__tmp66128
                                      (let ((__tmp66135
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp66129
                                             (let ((__tmp66131
                                                    (let ((__tmp66134
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp66132
                                                           (let ((__tmp66133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62853_ '()))))
                     (declare (not safe))
                     (cons _L62855_ __tmp66133))))
              (declare (not safe))
              (cons __tmp66134 __tmp66132)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp66130
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp66131 __tmp66130))))
                                        (declare (not safe))
                                        (cons __tmp66135 __tmp66129))))
                                 (declare (not safe))
                                 (cons __tmp66128 '()))))
                          (declare (not safe))
                          (cons __tmp66136 __tmp66127))))
                   (declare (not safe))
                   (cons __tmp66138 __tmp66126)))))
          (let ((___match6581565816_
                 (lambda (_e6279362878_
                          _hd6279262882_
                          _tl6279162885_
                          _e6279662888_
                          _hd6279562892_
                          _tl6279462895_
                          _e6279962898_
                          _hd6279862902_
                          _tl6279762905_)
                   (let ((_L62908_ _hd6279862902_) (_L62910_ _hd6279562892_))
                     (if (or (gx#identifier? _L62908_)
                             (gx#stx-fixnum? _L62908_))
                         (___kont6579165792_ _L62908_ _L62910_)
                         (___kont6579365794_
                          _hd6279862902_
                          _hd6279562892_))))))
            (if (gx#stx-pair? ___stx6578865789_)
                (let ((_e6279362878_ (gx#syntax-e ___stx6578865789_)))
                  (let ((_tl6279162885_
                         (let () (declare (not safe)) (##cdr _e6279362878_)))
                        (_hd6279262882_
                         (let () (declare (not safe)) (##car _e6279362878_))))
                    (if (gx#stx-pair? _tl6279162885_)
                        (let ((_e6279662888_ (gx#syntax-e _tl6279162885_)))
                          (let ((_tl6279462895_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6279662888_)))
                                (_hd6279562892_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6279662888_))))
                            (if (gx#stx-pair? _tl6279462895_)
                                (let ((_e6279962898_
                                       (gx#syntax-e _tl6279462895_)))
                                  (let ((_tl6279762905_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6279962898_)))
                                        (_hd6279862902_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6279962898_))))
                                    (if (gx#stx-null? _tl6279762905_)
                                        (___match6581565816_
                                         _e6279362878_
                                         _hd6279262882_
                                         _tl6279162885_
                                         _e6279662888_
                                         _hd6279562892_
                                         _tl6279462895_
                                         _e6279962898_
                                         _hd6279862902_
                                         _tl6279762905_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6278762816_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6278762816_)))))
                        (let () (declare (not safe)) (_g6278762816_)))))
                (let () (declare (not safe)) (_g6278762816_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62933_)
      (let* ((_g6293662957_
              (lambda (_g6293762953_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6293762953_)))
             (_g6293563185_
              (lambda (_g6293762961_)
                (if (gx#stx-pair? _g6293762961_)
                    (let ((_e6294262964_ (gx#syntax-e _g6293762961_)))
                      (let ((_hd6294162968_
                             (let ()
                               (declare (not safe))
                               (##car _e6294262964_)))
                            (_tl6294062971_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6294262964_))))
                        (if (gx#stx-pair? _tl6294062971_)
                            (let ((_e6294562974_ (gx#syntax-e _tl6294062971_)))
                              (let ((_hd6294462978_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6294562974_)))
                                    (_tl6294362981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6294562974_))))
                                (if (gx#stx-pair? _hd6294462978_)
                                    (let ((_e6294862984_
                                           (gx#syntax-e _hd6294462978_)))
                                      (let ((_hd6294762988_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6294862984_)))
                                            (_tl6294662991_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6294862984_))))
                                        (if (gx#stx-pair? _tl6294662991_)
                                            (let ((_e6295162994_
                                                   (gx#syntax-e
                                                    _tl6294662991_)))
                                              (let ((_hd6295062998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6295162994_)))
                                                    (_tl6294963001_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6295162994_))))
                                                (if (gx#stx-null?
                                                     _tl6294963001_)
                                                    (if (gx#stx-null?
                                                         _tl6294362981_)
                                                        ((lambda (_L63004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L63006_)
                   (let* ((_g6302463032_
                           (lambda (_g6302563028_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6302563028_)))
                          (_g6302363181_
                           (lambda (_g6302563036_)
                             ((lambda (_L63039_)
                                (let ()
                                  (let* ((_g6305163059_
                                          (lambda (_g6305263055_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6305263055_)))
                                         (_g6305063177_
                                          (lambda (_g6305263063_)
                                            ((lambda (_L63066_)
                                               (let ()
                                                 (let* ((_g6307963087_
                                                         (lambda (_g6308063083_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6308063083_)))
                                                        (_g6307863173_
                                                         (lambda (_g6308063091_)
                                                           ((lambda (_L63094_)
                                                              (let ()
                                                                (let* ((_g6310763115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6310863111_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6310863111_)))
                               (_g6310663169_
                                (lambda (_g6310863119_)
                                  ((lambda (_L63122_)
                                     (let ()
                                       (let* ((_g6313563143_
                                               (lambda (_g6313663139_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6313663139_)))
                                              (_g6313463165_
                                               (lambda (_g6313663147_)
                                                 ((lambda (_L63150_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp66271
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp66139
                                                               (let ((__tmp66241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp66270 (gx#datum->syntax '#f 'def))
                                    (__tmp66242
                                     (let ((__tmp66243
                                            (let ((__tmp66244
                                                   (let ((__tmp66269
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp66245
                                                          (let ((__tmp66264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp66268
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp66265
                                (let ((__tmp66266
                                       (let ((__tmp66267
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L63006_ __tmp66267))))
                                  (declare (not safe))
                                  (cons _L63039_ __tmp66266))))
                           (declare (not safe))
                           (cons __tmp66268 __tmp66265)))
                        (__tmp66246
                         (let ((__tmp66247
                                (let ((__tmp66263
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp66248
                                       (let ((__tmp66261
                                              (let ((__tmp66262
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp66262 '())))
                                             (__tmp66249
                                              (let ((__tmp66250
                                                     (let ((__tmp66260
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp66251
                                                            (let ((__tmp66259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp66252
                           (let ((__tmp66253
                                  (let ((__tmp66258
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp66254
                                         (let ((__tmp66255
                                                (let ((__tmp66257
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp66256
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L63006_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp66257
                                                        __tmp66256))))
                                           (declare (not safe))
                                           (cons __tmp66255 '()))))
                                    (declare (not safe))
                                    (cons __tmp66258 __tmp66254))))
                             (declare (not safe))
                             (cons _L63004_ __tmp66253))))
                      (declare (not safe))
                      (cons __tmp66259 __tmp66252))))
               (declare (not safe))
               (cons __tmp66260 __tmp66251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp66250 '()))))
                                         (declare (not safe))
                                         (cons __tmp66261 __tmp66249))))
                                  (declare (not safe))
                                  (cons __tmp66263 __tmp66248))))
                           (declare (not safe))
                           (cons __tmp66247 '()))))
                    (declare (not safe))
                    (cons __tmp66264 __tmp66246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66269
                                                           __tmp66245))))
                                              (declare (not safe))
                                              (cons __tmp66244 '()))))
                                       (declare (not safe))
                                       (cons _L63066_ __tmp66243))))
                                (declare (not safe))
                                (cons __tmp66270 __tmp66242)))
                             (__tmp66140
                              (let ((__tmp66211
                                     (let ((__tmp66240
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp66212
                                            (let ((__tmp66213
                                                   (let ((__tmp66214
                                                          (let ((__tmp66239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp66215
                         (let ((__tmp66234
                                (let ((__tmp66238
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp66235
                                       (let ((__tmp66236
                                              (let ((__tmp66237
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L63006_ __tmp66237))))
                                         (declare (not safe))
                                         (cons _L63039_ __tmp66236))))
                                  (declare (not safe))
                                  (cons __tmp66238 __tmp66235)))
                               (__tmp66216
                                (let ((__tmp66217
                                       (let ((__tmp66233
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp66218
                                              (let ((__tmp66231
                                                     (let ((__tmp66232
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp66232 '())))
                                                    (__tmp66219
                                                     (let ((__tmp66220
                                                            (let ((__tmp66230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp66221
                           (let ((__tmp66229 (gx#datum->syntax '#f 'klass))
                                 (__tmp66222
                                  (let ((__tmp66223
                                         (let ((__tmp66228
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp66224
                                                (let ((__tmp66225
                                                       (let ((__tmp66227
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp66226
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L63006_ '()))))
                 (declare (not safe))
                 (cons __tmp66227 __tmp66226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp66225 '()))))
                                           (declare (not safe))
                                           (cons __tmp66228 __tmp66224))))
                                    (declare (not safe))
                                    (cons _L63004_ __tmp66223))))
                             (declare (not safe))
                             (cons __tmp66229 __tmp66222))))
                      (declare (not safe))
                      (cons __tmp66230 __tmp66221))))
               (declare (not safe))
               (cons __tmp66220 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp66231 __tmp66219))))
                                         (declare (not safe))
                                         (cons __tmp66233 __tmp66218))))
                                  (declare (not safe))
                                  (cons __tmp66217 '()))))
                           (declare (not safe))
                           (cons __tmp66234 __tmp66216))))
                    (declare (not safe))
                    (cons __tmp66239 __tmp66215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66214 '()))))
                                              (declare (not safe))
                                              (cons _L63094_ __tmp66213))))
                                       (declare (not safe))
                                       (cons __tmp66240 __tmp66212)))
                                    (__tmp66141
                                     (let ((__tmp66177
                                            (let ((__tmp66210
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp66178
                                                   (let ((__tmp66179
                                                          (let ((__tmp66180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp66209
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp66181
                                (let ((__tmp66204
                                       (let ((__tmp66208
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp66205
                                              (let ((__tmp66206
                                                     (let ((__tmp66207
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L63006_
                                                             __tmp66207))))
                                                (declare (not safe))
                                                (cons _L63039_ __tmp66206))))
                                         (declare (not safe))
                                         (cons __tmp66208 __tmp66205)))
                                      (__tmp66182
                                       (let ((__tmp66183
                                              (let ((__tmp66203
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp66184
                                                     (let ((__tmp66199
                                                            (let ((__tmp66202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp66200
                           (let ((__tmp66201 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp66201 '()))))
                      (declare (not safe))
                      (cons __tmp66202 __tmp66200)))
                   (__tmp66185
                    (let ((__tmp66186
                           (let ((__tmp66198
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp66187
                                  (let ((__tmp66197
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp66188
                                         (let ((__tmp66196
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp66189
                                                (let ((__tmp66190
                                                       (let ((__tmp66195
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp66191
                                                              (let ((__tmp66192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp66194 (gx#datum->syntax '#f 'quote))
                                   (__tmp66193
                                    (let ()
                                      (declare (not safe))
                                      (cons _L63006_ '()))))
                               (declare (not safe))
                               (cons __tmp66194 __tmp66193))))
                        (declare (not safe))
                        (cons __tmp66192 '()))))
                 (declare (not safe))
                 (cons __tmp66195 __tmp66191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L63004_ __tmp66190))))
                                           (declare (not safe))
                                           (cons __tmp66196 __tmp66189))))
                                    (declare (not safe))
                                    (cons __tmp66197 __tmp66188))))
                             (declare (not safe))
                             (cons __tmp66198 __tmp66187))))
                      (declare (not safe))
                      (cons __tmp66186 '()))))
               (declare (not safe))
               (cons __tmp66199 __tmp66185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp66203 __tmp66184))))
                                         (declare (not safe))
                                         (cons __tmp66183 '()))))
                                  (declare (not safe))
                                  (cons __tmp66204 __tmp66182))))
                           (declare (not safe))
                           (cons __tmp66209 __tmp66181))))
                    (declare (not safe))
                    (cons __tmp66180 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63122_
                                                           __tmp66179))))
                                              (declare (not safe))
                                              (cons __tmp66210 __tmp66178)))
                                           (__tmp66142
                                            (let ((__tmp66143
                                                   (let ((__tmp66176
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp66144
                                                          (let ((__tmp66145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp66146
                                (let ((__tmp66175
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp66147
                                       (let ((__tmp66170
                                              (let ((__tmp66174
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp66171
                                                     (let ((__tmp66172
                                                            (let ((__tmp66173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L63006_ __tmp66173))))
               (declare (not safe))
               (cons _L63039_ __tmp66172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp66174 __tmp66171)))
                                             (__tmp66148
                                              (let ((__tmp66149
                                                     (let ((__tmp66169
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp66150
                                                            (let ((__tmp66165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp66168 (gx#datum->syntax '#f 'klass))
                                 (__tmp66166
                                  (let ((__tmp66167
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp66167 '()))))
                             (declare (not safe))
                             (cons __tmp66168 __tmp66166)))
                          (__tmp66151
                           (let ((__tmp66152
                                  (let ((__tmp66164
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp66153
                                         (let ((__tmp66163
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp66154
                                                (let ((__tmp66162
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp66155
                                                       (let ((__tmp66156
                                                              (let ((__tmp66161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp66157
                             (let ((__tmp66158
                                    (let ((__tmp66160
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp66159
                                           (let ()
                                             (declare (not safe))
                                             (cons _L63006_ '()))))
                                      (declare (not safe))
                                      (cons __tmp66160 __tmp66159))))
                               (declare (not safe))
                               (cons __tmp66158 '()))))
                        (declare (not safe))
                        (cons __tmp66161 __tmp66157))))
                 (declare (not safe))
                 (cons _L63004_ __tmp66156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp66162
                                                        __tmp66155))))
                                           (declare (not safe))
                                           (cons __tmp66163 __tmp66154))))
                                    (declare (not safe))
                                    (cons __tmp66164 __tmp66153))))
                             (declare (not safe))
                             (cons __tmp66152 '()))))
                      (declare (not safe))
                      (cons __tmp66165 __tmp66151))))
               (declare (not safe))
               (cons __tmp66169 __tmp66150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp66149 '()))))
                                         (declare (not safe))
                                         (cons __tmp66170 __tmp66148))))
                                  (declare (not safe))
                                  (cons __tmp66175 __tmp66147))))
                           (declare (not safe))
                           (cons __tmp66146 '()))))
                    (declare (not safe))
                    (cons _L63150_ __tmp66145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66176
                                                           __tmp66144))))
                                              (declare (not safe))
                                              (cons __tmp66143 '()))))
                                       (declare (not safe))
                                       (cons __tmp66177 __tmp66142))))
                                (declare (not safe))
                                (cons __tmp66211 __tmp66141))))
                         (declare (not safe))
                         (cons __tmp66241 __tmp66140))))
                  (declare (not safe))
                  (cons __tmp66271 __tmp66139)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6313663147_))))
                                         (_g6313463165_
                                          (gx#stx-identifier
                                           _L63006_
                                           '"&"
                                           _L63122_)))))
                                   _g6310863119_))))
                          (_g6310663169_
                           (gx#stx-identifier _L63006_ _L63066_ '"-set!")))))
                    _g6308063091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6307863173_
                                                    (gx#stx-identifier
                                                     _L63006_
                                                     '"&"
                                                     _L63066_)))))
                                             _g6305263063_))))
                                    (_g6305063177_
                                     (gx#stx-identifier
                                      _L63006_
                                      '"class-type-"
                                      _L63006_)))))
                              _g6302563036_))))
                     (_g6302363181_ (gx#core-quote-syntax 'class::t))))
                 _hd6295062998_
                 _hd6294762988_)
                (_g6293662957_ _g6293762961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6293662957_
                                                     _g6293762961_))))
                                            (_g6293662957_ _g6293762961_))))
                                    (_g6293662957_ _g6293762961_))))
                            (_g6293662957_ _g6293762961_))))
                    (_g6293662957_ _g6293762961_)))))
        (_g6293563185_ _stx62933_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx63189_)
      (let* ((_g6319363222_
              (lambda (_g6319463218_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6319463218_)))
             (_g6319263322_
              (lambda (_g6319463226_)
                (if (gx#stx-pair? _g6319463226_)
                    (let ((_e6319963229_ (gx#syntax-e _g6319463226_)))
                      (let ((_hd6319863233_
                             (let ()
                               (declare (not safe))
                               (##car _e6319963229_)))
                            (_tl6319763236_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6319963229_))))
                        (if (gx#stx-pair/null? _tl6319763236_)
                            (let ((_g66272_
                                   (gx#syntax-split-splice _tl6319763236_ '0)))
                              (begin
                                (let ((_g66273_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g66272_)
                                             (##vector-length _g66272_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g66273_ 2)))
                                      (error "Context expects 2 values"
                                             _g66273_)))
                                (let ((_target6320063239_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66272_ 0)))
                                      (_tl6320263242_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66272_ 1))))
                                  (if (gx#stx-null? _tl6320263242_)
                                      (letrec ((_loop6320363245_
                                                (lambda (_hd6320163249_
                                                         _field6320763252_
                                                         _slot6320863254_)
                                                  (if (gx#stx-pair?
                                                       _hd6320163249_)
                                                      (let ((_e6320463257_
                                                             (gx#syntax-e
                                                              _hd6320163249_)))
                                                        (let ((_lp-hd6320563261_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6320463257_)))
                      (_lp-tl6320663264_
                       (let () (declare (not safe)) (##cdr _e6320463257_))))
                  (if (gx#stx-pair? _lp-hd6320563261_)
                      (let ((_e6321363267_ (gx#syntax-e _lp-hd6320563261_)))
                        (let ((_hd6321263271_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6321363267_)))
                              (_tl6321163274_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6321363267_))))
                          (if (gx#stx-pair? _tl6321163274_)
                              (let ((_e6321663277_
                                     (gx#syntax-e _tl6321163274_)))
                                (let ((_hd6321563281_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6321663277_)))
                                      (_tl6321463284_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6321663277_))))
                                  (if (gx#stx-null? _tl6321463284_)
                                      (_loop6320363245_
                                       _lp-tl6320663264_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6321563281_
                                               _field6320763252_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6321263271_
                                               _slot6320863254_)))
                                      (_g6319363222_ _g6319463226_))))
                              (_g6319363222_ _g6319463226_))))
                      (_g6319363222_ _g6319463226_))))
              (let ((_field6320963287_ (reverse _field6320763252_))
                    (_slot6321063290_ (reverse _slot6320863254_)))
                ((lambda (_L63293_ _L63295_)
                   (let ((__tmp66281 (gx#datum->syntax '#f 'begin))
                         (__tmp66274
                          (begin
                            (gx#syntax-check-splice-targets _L63293_ _L63295_)
                            (let ((__tmp66275
                                   (lambda (_g6331063314_
                                            _g6331163317_
                                            _g6331263319_)
                                     (let ((__tmp66276
                                            (let ((__tmp66280
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp66277
                                                   (let ((__tmp66278
                                                          (let ((__tmp66279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6331063314_ '()))))
                    (declare (not safe))
                    (cons _g6331163317_ __tmp66279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66278 '()))))
                                              (declare (not safe))
                                              (cons __tmp66280 __tmp66277))))
                                       (declare (not safe))
                                       (cons __tmp66276 _g6331263319_)))))
                              (declare (not safe))
                              (foldr2 __tmp66275 '() _L63293_ _L63295_)))))
                     (declare (not safe))
                     (cons __tmp66281 __tmp66274)))
                 _field6320963287_
                 _slot6321063290_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6320363245_
                                         _target6320063239_
                                         '()
                                         '()))
                                      (_g6319363222_ _g6319463226_)))))
                            (_g6319363222_ _g6319463226_))))
                    (_g6319363222_ _g6319463226_)))))
        (_g6319263322_ _$stx63189_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx63327_)
      (let* ((_g6333163357_
              (lambda (_g6333263353_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6333263353_)))
             (_g6333063440_
              (lambda (_g6333263361_)
                (if (gx#stx-pair? _g6333263361_)
                    (let ((_e6333963364_ (gx#syntax-e _g6333263361_)))
                      (let ((_hd6333863368_
                             (let ()
                               (declare (not safe))
                               (##car _e6333963364_)))
                            (_tl6333763371_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6333963364_))))
                        (if (gx#stx-pair? _tl6333763371_)
                            (let ((_e6334263374_ (gx#syntax-e _tl6333763371_)))
                              (let ((_hd6334163378_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6334263374_)))
                                    (_tl6334063381_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6334263374_))))
                                (if (gx#stx-pair? _tl6334063381_)
                                    (let ((_e6334563384_
                                           (gx#syntax-e _tl6334063381_)))
                                      (let ((_hd6334463388_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6334563384_)))
                                            (_tl6334363391_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6334563384_))))
                                        (if (gx#stx-pair? _tl6334363391_)
                                            (let ((_e6334863394_
                                                   (gx#syntax-e
                                                    _tl6334363391_)))
                                              (let ((_hd6334763398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6334863394_)))
                                                    (_tl6334663401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6334863394_))))
                                                (if (gx#stx-pair?
                                                     _tl6334663401_)
                                                    (let ((_e6335163404_
                                                           (gx#syntax-e
                                                            _tl6334663401_)))
                                                      (let ((_hd6335063408_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6335163404_)))
                    (_tl6334963411_
                     (let () (declare (not safe)) (##cdr _e6335163404_))))
                (if (gx#stx-null? _tl6334963411_)
                    ((lambda (_L63414_ _L63416_ _L63417_ _L63418_)
                       (let ((__tmp66309 (gx#datum->syntax '#f 'let))
                             (__tmp66282
                              (let ((__tmp66303
                                     (let ((__tmp66308
                                            (gx#datum->syntax '#f 'klass))
                                           (__tmp66304
                                            (let ((__tmp66305
                                                   (let ((__tmp66307
                                                          (gx#datum->syntax
                                                           '#f
                                                           'class-of))
                                                         (__tmp66306
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L63418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66307
                                                           __tmp66306))))
                                              (declare (not safe))
                                              (cons __tmp66305 '()))))
                                       (declare (not safe))
                                       (cons __tmp66308 __tmp66304)))
                                    (__tmp66283
                                     (let ((__tmp66284
                                            (let ((__tmp66302
                                                   (gx#datum->syntax
                                                    '#f
                                                    'cond))
                                                  (__tmp66285
                                                   (let ((__tmp66293
                                                          (let ((__tmp66297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp66301
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp66298
                                (let ((__tmp66300
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp66299
                                       (let ()
                                         (declare (not safe))
                                         (cons _L63417_ '()))))
                                  (declare (not safe))
                                  (cons __tmp66300 __tmp66299))))
                           (declare (not safe))
                           (cons __tmp66301 __tmp66298)))
                        (__tmp66294
                         (let ((__tmp66296 (gx#datum->syntax '#f '=>))
                               (__tmp66295
                                (let ()
                                  (declare (not safe))
                                  (cons _L63416_ '()))))
                           (declare (not safe))
                           (cons __tmp66296 __tmp66295))))
                    (declare (not safe))
                    (cons __tmp66297 __tmp66294)))
                 (__tmp66286
                  (let ((__tmp66287
                         (let ((__tmp66292 (gx#datum->syntax '#f 'else))
                               (__tmp66288
                                (let ((__tmp66289
                                       (let ((__tmp66290
                                              (let ((__tmp66291
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L63417_ '()))))
                                                (declare (not safe))
                                                (cons _L63418_ __tmp66291))))
                                         (declare (not safe))
                                         (cons _L63414_ __tmp66290))))
                                  (declare (not safe))
                                  (cons __tmp66289 '()))))
                           (declare (not safe))
                           (cons __tmp66292 __tmp66288))))
                    (declare (not safe))
                    (cons __tmp66287 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66293
                                                           __tmp66286))))
                                              (declare (not safe))
                                              (cons __tmp66302 __tmp66285))))
                                       (declare (not safe))
                                       (cons __tmp66284 '()))))
                                (declare (not safe))
                                (cons __tmp66303 __tmp66283))))
                         (declare (not safe))
                         (cons __tmp66309 __tmp66282)))
                     _hd6335063408_
                     _hd6334763398_
                     _hd6334463388_
                     _hd6334163378_)
                    (_g6333163357_ _g6333263361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6333163357_
                                                     _g6333263361_))))
                                            (_g6333163357_ _g6333263361_))))
                                    (_g6333163357_ _g6333263361_))))
                            (_g6333163357_ _g6333263361_))))
                    (_g6333163357_ _g6333263361_)))))
        (_g6333063440_ _$stx63327_))))
  (define |[:0:]#defsubtype|
    (lambda (_$stx63444_)
      (let* ((_g6344863477_
              (lambda (_g6344963473_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6344963473_)))
             (_g6344763577_
              (lambda (_g6344963481_)
                (if (gx#stx-pair? _g6344963481_)
                    (let ((_e6345463484_ (gx#syntax-e _g6344963481_)))
                      (let ((_hd6345363488_
                             (let ()
                               (declare (not safe))
                               (##car _e6345463484_)))
                            (_tl6345263491_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6345463484_))))
                        (if (gx#stx-pair/null? _tl6345263491_)
                            (let ((_g66310_
                                   (gx#syntax-split-splice _tl6345263491_ '0)))
                              (begin
                                (let ((_g66311_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g66310_)
                                             (##vector-length _g66310_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g66311_ 2)))
                                      (error "Context expects 2 values"
                                             _g66311_)))
                                (let ((_target6345563494_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66310_ 0)))
                                      (_tl6345763497_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66310_ 1))))
                                  (if (gx#stx-null? _tl6345763497_)
                                      (letrec ((_loop6345863500_
                                                (lambda (_hd6345663504_
                                                         _name6346263507_
                                                         _t6346363509_)
                                                  (if (gx#stx-pair?
                                                       _hd6345663504_)
                                                      (let ((_e6345963512_
                                                             (gx#syntax-e
                                                              _hd6345663504_)))
                                                        (let ((_lp-hd6346063516_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6345963512_)))
                      (_lp-tl6346163519_
                       (let () (declare (not safe)) (##cdr _e6345963512_))))
                  (if (gx#stx-pair? _lp-hd6346063516_)
                      (let ((_e6346863522_ (gx#syntax-e _lp-hd6346063516_)))
                        (let ((_hd6346763526_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6346863522_)))
                              (_tl6346663529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6346863522_))))
                          (if (gx#stx-pair? _tl6346663529_)
                              (let ((_e6347163532_
                                     (gx#syntax-e _tl6346663529_)))
                                (let ((_hd6347063536_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6347163532_)))
                                      (_tl6346963539_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6347163532_))))
                                  (if (gx#stx-null? _tl6346963539_)
                                      (_loop6345863500_
                                       _lp-tl6346163519_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6347063536_
                                               _name6346263507_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6346763526_ _t6346363509_)))
                                      (_g6344863477_ _g6344963481_))))
                              (_g6344863477_ _g6344963481_))))
                      (_g6344863477_ _g6344963481_))))
              (let ((_name6346463542_ (reverse _name6346263507_))
                    (_t6346563545_ (reverse _t6346363509_)))
                ((lambda (_L63548_ _L63550_)
                   (let ((__tmp66323 (gx#datum->syntax '#f 'begin))
                         (__tmp66312
                          (begin
                            (gx#syntax-check-splice-targets _L63548_ _L63550_)
                            (let ((__tmp66313
                                   (lambda (_g6356563569_
                                            _g6356663572_
                                            _g6356763574_)
                                     (let ((__tmp66314
                                            (let ((__tmp66322
                                                   (gx#datum->syntax
                                                    '#f
                                                    'vector-set!))
                                                  (__tmp66315
                                                   (let ((__tmp66321
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__subtype-id))
                                                         (__tmp66316
                                                          (let ((__tmp66317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp66318
                                (let ((__tmp66320
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp66319
                                       (let ()
                                         (declare (not safe))
                                         (cons _g6356563569_ '()))))
                                  (declare (not safe))
                                  (cons __tmp66320 __tmp66319))))
                           (declare (not safe))
                           (cons __tmp66318 '()))))
                    (declare (not safe))
                    (cons _g6356663572_ __tmp66317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66321
                                                           __tmp66316))))
                                              (declare (not safe))
                                              (cons __tmp66322 __tmp66315))))
                                       (declare (not safe))
                                       (cons __tmp66314 _g6356763574_)))))
                              (declare (not safe))
                              (foldr2 __tmp66313 '() _L63548_ _L63550_)))))
                     (declare (not safe))
                     (cons __tmp66323 __tmp66312)))
                 _name6346463542_
                 _t6346563545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6345863500_
                                         _target6345563494_
                                         '()
                                         '()))
                                      (_g6344863477_ _g6344963481_)))))
                            (_g6344863477_ _g6344963481_))))
                    (_g6344863477_ _g6344963481_)))))
        (_g6344763577_ _$stx63444_))))
  (define |[:0:]#defsystem-class|
    (lambda (_$stx63582_)
      (let* ((_g6358663617_
              (lambda (_g6358763613_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6358763613_)))
             (_g6358563736_
              (lambda (_g6358763621_)
                (if (gx#stx-pair? _g6358763621_)
                    (let ((_e6359363624_ (gx#syntax-e _g6358763621_)))
                      (let ((_hd6359263628_
                             (let ()
                               (declare (not safe))
                               (##car _e6359363624_)))
                            (_tl6359163631_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6359363624_))))
                        (if (gx#stx-pair? _tl6359163631_)
                            (let ((_e6359663634_ (gx#syntax-e _tl6359163631_)))
                              (let ((_hd6359563638_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6359663634_)))
                                    (_tl6359463641_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6359663634_))))
                                (if (gx#stx-pair? _tl6359463641_)
                                    (let ((_e6359963644_
                                           (gx#syntax-e _tl6359463641_)))
                                      (let ((_hd6359863648_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6359963644_)))
                                            (_tl6359763651_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6359963644_))))
                                        (if (gx#stx-pair? _tl6359763651_)
                                            (let ((_e6360263654_
                                                   (gx#syntax-e
                                                    _tl6359763651_)))
                                              (let ((_hd6360163658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6360263654_)))
                                                    (_tl6360063661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6360263654_))))
                                                (if (gx#stx-pair/null?
                                                     _hd6360163658_)
                                                    (let ((_g66324_
                                                           (gx#syntax-split-splice
                                                            _hd6360163658_
                                                            '0)))
                                                      (begin
                                                        (let ((_g66325_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g66324_)
                             (##vector-length _g66324_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g66325_ 2)))
                      (error "Context expects 2 values" _g66325_)))
                (let ((_target6360363664_
                       (let () (declare (not safe)) (##vector-ref _g66324_ 0)))
                      (_tl6360563667_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g66324_ 1))))
                  (if (gx#stx-null? _tl6360563667_)
                      (letrec ((_loop6360663670_
                                (lambda (_hd6360463674_ _super6361063677_)
                                  (if (gx#stx-pair? _hd6360463674_)
                                      (let ((_e6360763680_
                                             (gx#syntax-e _hd6360463674_)))
                                        (let ((_lp-hd6360863684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6360763680_)))
                                              (_lp-tl6360963687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6360763680_))))
                                          (_loop6360663670_
                                           _lp-tl6360963687_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd6360863684_
                                                   _super6361063677_)))))
                                      (let ((_super6361163690_
                                             (reverse _super6361063677_)))
                                        (if (gx#stx-null? _tl6360063661_)
                                            ((lambda (_L63694_
                                                      _L63696_
                                                      _L63697_)
                                               (let ((__tmp66349
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp66326
                                                      (let ((__tmp66327
                                                             (let ((__tmp66328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp66348
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp66329
                                   (let ((__tmp66342
                                          (let ((__tmp66347
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp66343
                                                 (let ((__tmp66344
                                                        (let ((__tmp66345
                                                               (let ((__tmp66346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6372163724_ _g6372263727_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6372163724_ _g6372263727_)))))
                         (declare (not safe))
                         (foldr1 __tmp66346 '() _L63694_))))
                  (declare (not safe))
                  (cons __tmp66345 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63696_
                                                         __tmp66344))))
                                            (declare (not safe))
                                            (cons __tmp66347 __tmp66343)))
                                         (__tmp66330
                                          (let ((__tmp66331
                                                 (let ((__tmp66341
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__make-system-class))
                                                       (__tmp66332
                                                        (let ((__tmp66338
                                                               (let ((__tmp66340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp66339
                              (let ()
                                (declare (not safe))
                                (cons _L63696_ '()))))
                         (declare (not safe))
                         (cons __tmp66340 __tmp66339)))
                      (__tmp66333
                       (let ((__tmp66334
                              (let ((__tmp66337 (gx#datum->syntax '#f '@list))
                                    (__tmp66335
                                     (let ((__tmp66336
                                            (lambda (_g6371963730_
                                                     _g6372063733_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g6371963730_
                                                      _g6372063733_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp66336 '() _L63694_))))
                                (declare (not safe))
                                (cons __tmp66337 __tmp66335))))
                         (declare (not safe))
                         (cons __tmp66334 '()))))
                  (declare (not safe))
                  (cons __tmp66338 __tmp66333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp66341
                                                         __tmp66332))))
                                            (declare (not safe))
                                            (cons __tmp66331 '()))))
                                     (declare (not safe))
                                     (cons __tmp66342 __tmp66330))))
                              (declare (not safe))
                              (cons __tmp66348 __tmp66329))))
                       (declare (not safe))
                       (cons __tmp66328 '()))))
                (declare (not safe))
                (cons _L63697_ __tmp66327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp66349 __tmp66326)))
                                             _super6361163690_
                                             _hd6359863648_
                                             _hd6359563638_)
                                            (_g6358663617_ _g6358763621_)))))))
                        (_loop6360663670_ _target6360363664_ '()))
                      (_g6358663617_ _g6358763621_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6358663617_
                                                     _g6358763621_))))
                                            (_g6358663617_ _g6358763621_))))
                                    (_g6358663617_ _g6358763621_))))
                            (_g6358663617_ _g6358763621_))))
                    (_g6358663617_ _g6358763621_)))))
        (_g6358563736_ _$stx63582_))))
  (define |[:0:]#defshadow-class|
    (lambda (_$stx63741_)
      (let* ((_g6374563776_
              (lambda (_g6374663772_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6374663772_)))
             (_g6374463887_
              (lambda (_g6374663780_)
                (if (gx#stx-pair? _g6374663780_)
                    (let ((_e6375263783_ (gx#syntax-e _g6374663780_)))
                      (let ((_hd6375163787_
                             (let ()
                               (declare (not safe))
                               (##car _e6375263783_)))
                            (_tl6375063790_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6375263783_))))
                        (if (gx#stx-pair? _tl6375063790_)
                            (let ((_e6375563793_ (gx#syntax-e _tl6375063790_)))
                              (let ((_hd6375463797_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6375563793_)))
                                    (_tl6375363800_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6375563793_))))
                                (if (gx#stx-pair? _tl6375363800_)
                                    (let ((_e6375863803_
                                           (gx#syntax-e _tl6375363800_)))
                                      (let ((_hd6375763807_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6375863803_)))
                                            (_tl6375663810_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6375863803_))))
                                        (if (gx#stx-pair/null? _hd6375763807_)
                                            (let ((_g66350_
                                                   (gx#syntax-split-splice
                                                    _hd6375763807_
                                                    '0)))
                                              (begin
                                                (let ((_g66351_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g66350_)
                                                             (##vector-length
                                                              _g66350_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g66351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g66351_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target6375963813_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g66350_
                                                          0)))
                                                      (_tl6376163816_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g66350_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl6376163816_)
                                                      (letrec ((_loop6376263819_
                                                                (lambda (_hd6376063823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _super6376663826_)
                          (if (gx#stx-pair? _hd6376063823_)
                              (let ((_e6376363829_
                                     (gx#syntax-e _hd6376063823_)))
                                (let ((_lp-hd6376463833_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6376363829_)))
                                      (_lp-tl6376563836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6376363829_))))
                                  (_loop6376263819_
                                   _lp-tl6376563836_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd6376463833_
                                           _super6376663826_)))))
                              (let ((_super6376763839_
                                     (reverse _super6376663826_)))
                                (if (gx#stx-pair? _tl6375663810_)
                                    (let ((_e6377063843_
                                           (gx#syntax-e _tl6375663810_)))
                                      (let ((_hd6376963847_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6377063843_)))
                                            (_tl6376863850_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6377063843_))))
                                        (if (gx#stx-null? _tl6376863850_)
                                            ((lambda (_L63853_
                                                      _L63855_
                                                      _L63856_)
                                               (let ((__tmp66367
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp66352
                                                      (let ((__tmp66353
                                                             (let ((__tmp66354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp66366
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp66355
                                   (let ((__tmp66360
                                          (let ((__tmp66365
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp66361
                                                 (let ((__tmp66362
                                                        (let ((__tmp66363
                                                               (let ((__tmp66364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6387863881_ _g6387963884_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6387863881_ _g6387963884_)))))
                         (declare (not safe))
                         (foldr1 __tmp66364 '() _L63855_))))
                  (declare (not safe))
                  (cons __tmp66363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63856_
                                                         __tmp66362))))
                                            (declare (not safe))
                                            (cons __tmp66365 __tmp66361)))
                                         (__tmp66356
                                          (let ((__tmp66357
                                                 (let ((__tmp66359
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__shadow-class))
                                                       (__tmp66358
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63853_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp66359
                                                         __tmp66358))))
                                            (declare (not safe))
                                            (cons __tmp66357 '()))))
                                     (declare (not safe))
                                     (cons __tmp66360 __tmp66356))))
                              (declare (not safe))
                              (cons __tmp66366 __tmp66355))))
                       (declare (not safe))
                       (cons __tmp66354 '()))))
                (declare (not safe))
                (cons _L63856_ __tmp66353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp66367 __tmp66352)))
                                             _hd6376963847_
                                             _super6376763839_
                                             _hd6375463797_)
                                            (_g6374563776_ _g6374663780_))))
                                    (_g6374563776_ _g6374663780_)))))))
                (_loop6376263819_ _target6375963813_ '()))
              (_g6374563776_ _g6374663780_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g6374563776_ _g6374663780_))))
                                    (_g6374563776_ _g6374663780_))))
                            (_g6374563776_ _g6374663780_))))
                    (_g6374563776_ _g6374663780_)))))
        (_g6374463887_ _$stx63741_)))))
