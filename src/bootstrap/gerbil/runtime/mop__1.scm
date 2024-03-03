(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx62189_)
      (let* ((___stx6473064731_ _$stx62189_)
             (_g6219462223_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6473064731_))))
        (let ((___kont6473364734_
               (lambda (_L62316_ _L62318_)
                 (let ((__tmp65070 (gx#datum->syntax '#f '##fx=))
                       (__tmp65064
                        (let ((__tmp65066
                               (let ((__tmp65069
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp65067
                                      (let ((__tmp65068
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62316_ '()))))
                                        (declare (not safe))
                                        (cons _L62318_ __tmp65068))))
                                 (declare (not safe))
                                 (cons __tmp65069 __tmp65067)))
                              (__tmp65065
                               (let ()
                                 (declare (not safe))
                                 (cons _L62316_ '()))))
                          (declare (not safe))
                          (cons __tmp65066 __tmp65065))))
                   (declare (not safe))
                   (cons __tmp65070 __tmp65064))))
              (___kont6473564736_
               (lambda (_L62260_ _L62262_)
                 (let ((__tmp65083 (gx#datum->syntax '#f 'let))
                       (__tmp65071
                        (let ((__tmp65081
                               (let ((__tmp65082
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62260_ '()))))
                                 (declare (not safe))
                                 (cons _L62260_ __tmp65082)))
                              (__tmp65072
                               (let ((__tmp65073
                                      (let ((__tmp65080
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp65074
                                             (let ((__tmp65076
                                                    (let ((__tmp65079
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp65077
                                                           (let ((__tmp65078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62260_ '()))))
                     (declare (not safe))
                     (cons _L62262_ __tmp65078))))
              (declare (not safe))
              (cons __tmp65079 __tmp65077)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp65075
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L62260_ '()))))
                                               (declare (not safe))
                                               (cons __tmp65076 __tmp65075))))
                                        (declare (not safe))
                                        (cons __tmp65080 __tmp65074))))
                                 (declare (not safe))
                                 (cons __tmp65073 '()))))
                          (declare (not safe))
                          (cons __tmp65081 __tmp65072))))
                   (declare (not safe))
                   (cons __tmp65083 __tmp65071)))))
          (let ((___match6475764758_
                 (lambda (_e6220062286_
                          _hd6219962290_
                          _tl6219862293_
                          _e6220362296_
                          _hd6220262300_
                          _tl6220162303_
                          _e6220662306_
                          _hd6220562310_
                          _tl6220462313_)
                   (let ((_L62316_ _hd6220562310_) (_L62318_ _hd6220262300_))
                     (if (or (gx#identifier? _L62316_)
                             (gx#stx-fixnum? _L62316_))
                         (___kont6473364734_ _L62316_ _L62318_)
                         (___kont6473564736_
                          _hd6220562310_
                          _hd6220262300_))))))
            (if (gx#stx-pair? ___stx6473064731_)
                (let ((_e6220062286_ (gx#syntax-e ___stx6473064731_)))
                  (let ((_tl6219862293_
                         (let () (declare (not safe)) (##cdr _e6220062286_)))
                        (_hd6219962290_
                         (let () (declare (not safe)) (##car _e6220062286_))))
                    (if (gx#stx-pair? _tl6219862293_)
                        (let ((_e6220362296_ (gx#syntax-e _tl6219862293_)))
                          (let ((_tl6220162303_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6220362296_)))
                                (_hd6220262300_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6220362296_))))
                            (if (gx#stx-pair? _tl6220162303_)
                                (let ((_e6220662306_
                                       (gx#syntax-e _tl6220162303_)))
                                  (let ((_tl6220462313_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6220662306_)))
                                        (_hd6220562310_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6220662306_))))
                                    (if (gx#stx-null? _tl6220462313_)
                                        (___match6475764758_
                                         _e6220062286_
                                         _hd6219962290_
                                         _tl6219862293_
                                         _e6220362296_
                                         _hd6220262300_
                                         _tl6220162303_
                                         _e6220662306_
                                         _hd6220562310_
                                         _tl6220462313_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6219462223_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6219462223_)))))
                        (let () (declare (not safe)) (_g6219462223_)))))
                (let () (declare (not safe)) (_g6219462223_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62341_)
      (let* ((___stx6478064781_ _$stx62341_)
             (_g6234662375_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6478064781_))))
        (let ((___kont6478364784_
               (lambda (_L62467_ _L62469_)
                 (let ((__tmp65090 (gx#datum->syntax '#f '##fx=))
                       (__tmp65084
                        (let ((__tmp65086
                               (let ((__tmp65089
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp65087
                                      (let ((__tmp65088
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62467_ '()))))
                                        (declare (not safe))
                                        (cons _L62469_ __tmp65088))))
                                 (declare (not safe))
                                 (cons __tmp65089 __tmp65087)))
                              (__tmp65085
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp65086 __tmp65085))))
                   (declare (not safe))
                   (cons __tmp65090 __tmp65084))))
              (___kont6478564786_
               (lambda (_L62412_ _L62414_)
                 (let ((__tmp65103 (gx#datum->syntax '#f 'let))
                       (__tmp65091
                        (let ((__tmp65101
                               (let ((__tmp65102
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62412_ '()))))
                                 (declare (not safe))
                                 (cons _L62412_ __tmp65102)))
                              (__tmp65092
                               (let ((__tmp65093
                                      (let ((__tmp65100
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp65094
                                             (let ((__tmp65096
                                                    (let ((__tmp65099
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp65097
                                                           (let ((__tmp65098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62412_ '()))))
                     (declare (not safe))
                     (cons _L62414_ __tmp65098))))
              (declare (not safe))
              (cons __tmp65099 __tmp65097)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp65095
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp65096 __tmp65095))))
                                        (declare (not safe))
                                        (cons __tmp65100 __tmp65094))))
                                 (declare (not safe))
                                 (cons __tmp65093 '()))))
                          (declare (not safe))
                          (cons __tmp65101 __tmp65092))))
                   (declare (not safe))
                   (cons __tmp65103 __tmp65091)))))
          (let ((___match6480764808_
                 (lambda (_e6235262437_
                          _hd6235162441_
                          _tl6235062444_
                          _e6235562447_
                          _hd6235462451_
                          _tl6235362454_
                          _e6235862457_
                          _hd6235762461_
                          _tl6235662464_)
                   (let ((_L62467_ _hd6235762461_) (_L62469_ _hd6235462451_))
                     (if (or (gx#identifier? _L62467_)
                             (gx#stx-fixnum? _L62467_))
                         (___kont6478364784_ _L62467_ _L62469_)
                         (___kont6478564786_
                          _hd6235762461_
                          _hd6235462451_))))))
            (if (gx#stx-pair? ___stx6478064781_)
                (let ((_e6235262437_ (gx#syntax-e ___stx6478064781_)))
                  (let ((_tl6235062444_
                         (let () (declare (not safe)) (##cdr _e6235262437_)))
                        (_hd6235162441_
                         (let () (declare (not safe)) (##car _e6235262437_))))
                    (if (gx#stx-pair? _tl6235062444_)
                        (let ((_e6235562447_ (gx#syntax-e _tl6235062444_)))
                          (let ((_tl6235362454_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6235562447_)))
                                (_hd6235462451_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6235562447_))))
                            (if (gx#stx-pair? _tl6235362454_)
                                (let ((_e6235862457_
                                       (gx#syntax-e _tl6235362454_)))
                                  (let ((_tl6235662464_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6235862457_)))
                                        (_hd6235762461_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6235862457_))))
                                    (if (gx#stx-null? _tl6235662464_)
                                        (___match6480764808_
                                         _e6235262437_
                                         _hd6235162441_
                                         _tl6235062444_
                                         _e6235562447_
                                         _hd6235462451_
                                         _tl6235362454_
                                         _e6235862457_
                                         _hd6235762461_
                                         _tl6235662464_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6234662375_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6234662375_)))))
                        (let () (declare (not safe)) (_g6234662375_)))))
                (let () (declare (not safe)) (_g6234662375_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62492_)
      (let* ((_g6249562516_
              (lambda (_g6249662512_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6249662512_)))
             (_g6249462744_
              (lambda (_g6249662520_)
                (if (gx#stx-pair? _g6249662520_)
                    (let ((_e6250162523_ (gx#syntax-e _g6249662520_)))
                      (let ((_hd6250062527_
                             (let ()
                               (declare (not safe))
                               (##car _e6250162523_)))
                            (_tl6249962530_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6250162523_))))
                        (if (gx#stx-pair? _tl6249962530_)
                            (let ((_e6250462533_ (gx#syntax-e _tl6249962530_)))
                              (let ((_hd6250362537_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6250462533_)))
                                    (_tl6250262540_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6250462533_))))
                                (if (gx#stx-pair? _hd6250362537_)
                                    (let ((_e6250762543_
                                           (gx#syntax-e _hd6250362537_)))
                                      (let ((_hd6250662547_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6250762543_)))
                                            (_tl6250562550_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6250762543_))))
                                        (if (gx#stx-pair? _tl6250562550_)
                                            (let ((_e6251062553_
                                                   (gx#syntax-e
                                                    _tl6250562550_)))
                                              (let ((_hd6250962557_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6251062553_)))
                                                    (_tl6250862560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6251062553_))))
                                                (if (gx#stx-null?
                                                     _tl6250862560_)
                                                    (if (gx#stx-null?
                                                         _tl6250262540_)
                                                        ((lambda (_L62563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L62565_)
                   (let* ((_g6258362591_
                           (lambda (_g6258462587_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6258462587_)))
                          (_g6258262740_
                           (lambda (_g6258462595_)
                             ((lambda (_L62598_)
                                (let ()
                                  (let* ((_g6261062618_
                                          (lambda (_g6261162614_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6261162614_)))
                                         (_g6260962736_
                                          (lambda (_g6261162622_)
                                            ((lambda (_L62625_)
                                               (let ()
                                                 (let* ((_g6263862646_
                                                         (lambda (_g6263962642_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6263962642_)))
                                                        (_g6263762732_
                                                         (lambda (_g6263962650_)
                                                           ((lambda (_L62653_)
                                                              (let ()
                                                                (let* ((_g6266662674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6266762670_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6266762670_)))
                               (_g6266562728_
                                (lambda (_g6266762678_)
                                  ((lambda (_L62681_)
                                     (let ()
                                       (let* ((_g6269462702_
                                               (lambda (_g6269562698_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6269562698_)))
                                              (_g6269362724_
                                               (lambda (_g6269562706_)
                                                 ((lambda (_L62709_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp65236
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp65104
                                                               (let ((__tmp65206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp65235 (gx#datum->syntax '#f 'def))
                                    (__tmp65207
                                     (let ((__tmp65208
                                            (let ((__tmp65209
                                                   (let ((__tmp65234
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp65210
                                                          (let ((__tmp65229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65233
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp65230
                                (let ((__tmp65231
                                       (let ((__tmp65232
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L62565_ __tmp65232))))
                                  (declare (not safe))
                                  (cons _L62598_ __tmp65231))))
                           (declare (not safe))
                           (cons __tmp65233 __tmp65230)))
                        (__tmp65211
                         (let ((__tmp65212
                                (let ((__tmp65228
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp65213
                                       (let ((__tmp65226
                                              (let ((__tmp65227
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp65227 '())))
                                             (__tmp65214
                                              (let ((__tmp65215
                                                     (let ((__tmp65225
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp65216
                                                            (let ((__tmp65224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp65217
                           (let ((__tmp65218
                                  (let ((__tmp65223
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp65219
                                         (let ((__tmp65220
                                                (let ((__tmp65222
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp65221
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L62565_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp65222
                                                        __tmp65221))))
                                           (declare (not safe))
                                           (cons __tmp65220 '()))))
                                    (declare (not safe))
                                    (cons __tmp65223 __tmp65219))))
                             (declare (not safe))
                             (cons _L62563_ __tmp65218))))
                      (declare (not safe))
                      (cons __tmp65224 __tmp65217))))
               (declare (not safe))
               (cons __tmp65225 __tmp65216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65215 '()))))
                                         (declare (not safe))
                                         (cons __tmp65226 __tmp65214))))
                                  (declare (not safe))
                                  (cons __tmp65228 __tmp65213))))
                           (declare (not safe))
                           (cons __tmp65212 '()))))
                    (declare (not safe))
                    (cons __tmp65229 __tmp65211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65234
                                                           __tmp65210))))
                                              (declare (not safe))
                                              (cons __tmp65209 '()))))
                                       (declare (not safe))
                                       (cons _L62625_ __tmp65208))))
                                (declare (not safe))
                                (cons __tmp65235 __tmp65207)))
                             (__tmp65105
                              (let ((__tmp65176
                                     (let ((__tmp65205
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp65177
                                            (let ((__tmp65178
                                                   (let ((__tmp65179
                                                          (let ((__tmp65204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp65180
                         (let ((__tmp65199
                                (let ((__tmp65203
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp65200
                                       (let ((__tmp65201
                                              (let ((__tmp65202
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L62565_ __tmp65202))))
                                         (declare (not safe))
                                         (cons _L62598_ __tmp65201))))
                                  (declare (not safe))
                                  (cons __tmp65203 __tmp65200)))
                               (__tmp65181
                                (let ((__tmp65182
                                       (let ((__tmp65198
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp65183
                                              (let ((__tmp65196
                                                     (let ((__tmp65197
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp65197 '())))
                                                    (__tmp65184
                                                     (let ((__tmp65185
                                                            (let ((__tmp65195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp65186
                           (let ((__tmp65194 (gx#datum->syntax '#f 'klass))
                                 (__tmp65187
                                  (let ((__tmp65188
                                         (let ((__tmp65193
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp65189
                                                (let ((__tmp65190
                                                       (let ((__tmp65192
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp65191
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L62565_ '()))))
                 (declare (not safe))
                 (cons __tmp65192 __tmp65191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp65190 '()))))
                                           (declare (not safe))
                                           (cons __tmp65193 __tmp65189))))
                                    (declare (not safe))
                                    (cons _L62563_ __tmp65188))))
                             (declare (not safe))
                             (cons __tmp65194 __tmp65187))))
                      (declare (not safe))
                      (cons __tmp65195 __tmp65186))))
               (declare (not safe))
               (cons __tmp65185 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65196 __tmp65184))))
                                         (declare (not safe))
                                         (cons __tmp65198 __tmp65183))))
                                  (declare (not safe))
                                  (cons __tmp65182 '()))))
                           (declare (not safe))
                           (cons __tmp65199 __tmp65181))))
                    (declare (not safe))
                    (cons __tmp65204 __tmp65180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65179 '()))))
                                              (declare (not safe))
                                              (cons _L62653_ __tmp65178))))
                                       (declare (not safe))
                                       (cons __tmp65205 __tmp65177)))
                                    (__tmp65106
                                     (let ((__tmp65142
                                            (let ((__tmp65175
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp65143
                                                   (let ((__tmp65144
                                                          (let ((__tmp65145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65174
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp65146
                                (let ((__tmp65169
                                       (let ((__tmp65173
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp65170
                                              (let ((__tmp65171
                                                     (let ((__tmp65172
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L62565_
                                                             __tmp65172))))
                                                (declare (not safe))
                                                (cons _L62598_ __tmp65171))))
                                         (declare (not safe))
                                         (cons __tmp65173 __tmp65170)))
                                      (__tmp65147
                                       (let ((__tmp65148
                                              (let ((__tmp65168
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp65149
                                                     (let ((__tmp65164
                                                            (let ((__tmp65167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp65165
                           (let ((__tmp65166 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp65166 '()))))
                      (declare (not safe))
                      (cons __tmp65167 __tmp65165)))
                   (__tmp65150
                    (let ((__tmp65151
                           (let ((__tmp65163
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp65152
                                  (let ((__tmp65162
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65153
                                         (let ((__tmp65161
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp65154
                                                (let ((__tmp65155
                                                       (let ((__tmp65160
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp65156
                                                              (let ((__tmp65157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp65159 (gx#datum->syntax '#f 'quote))
                                   (__tmp65158
                                    (let ()
                                      (declare (not safe))
                                      (cons _L62565_ '()))))
                               (declare (not safe))
                               (cons __tmp65159 __tmp65158))))
                        (declare (not safe))
                        (cons __tmp65157 '()))))
                 (declare (not safe))
                 (cons __tmp65160 __tmp65156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62563_ __tmp65155))))
                                           (declare (not safe))
                                           (cons __tmp65161 __tmp65154))))
                                    (declare (not safe))
                                    (cons __tmp65162 __tmp65153))))
                             (declare (not safe))
                             (cons __tmp65163 __tmp65152))))
                      (declare (not safe))
                      (cons __tmp65151 '()))))
               (declare (not safe))
               (cons __tmp65164 __tmp65150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65168 __tmp65149))))
                                         (declare (not safe))
                                         (cons __tmp65148 '()))))
                                  (declare (not safe))
                                  (cons __tmp65169 __tmp65147))))
                           (declare (not safe))
                           (cons __tmp65174 __tmp65146))))
                    (declare (not safe))
                    (cons __tmp65145 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62681_
                                                           __tmp65144))))
                                              (declare (not safe))
                                              (cons __tmp65175 __tmp65143)))
                                           (__tmp65107
                                            (let ((__tmp65108
                                                   (let ((__tmp65141
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp65109
                                                          (let ((__tmp65110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65111
                                (let ((__tmp65140
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp65112
                                       (let ((__tmp65135
                                              (let ((__tmp65139
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp65136
                                                     (let ((__tmp65137
                                                            (let ((__tmp65138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L62565_ __tmp65138))))
               (declare (not safe))
               (cons _L62598_ __tmp65137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65139 __tmp65136)))
                                             (__tmp65113
                                              (let ((__tmp65114
                                                     (let ((__tmp65134
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp65115
                                                            (let ((__tmp65130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65133 (gx#datum->syntax '#f 'klass))
                                 (__tmp65131
                                  (let ((__tmp65132
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp65132 '()))))
                             (declare (not safe))
                             (cons __tmp65133 __tmp65131)))
                          (__tmp65116
                           (let ((__tmp65117
                                  (let ((__tmp65129
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp65118
                                         (let ((__tmp65128
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp65119
                                                (let ((__tmp65127
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp65120
                                                       (let ((__tmp65121
                                                              (let ((__tmp65126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp65122
                             (let ((__tmp65123
                                    (let ((__tmp65125
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp65124
                                           (let ()
                                             (declare (not safe))
                                             (cons _L62565_ '()))))
                                      (declare (not safe))
                                      (cons __tmp65125 __tmp65124))))
                               (declare (not safe))
                               (cons __tmp65123 '()))))
                        (declare (not safe))
                        (cons __tmp65126 __tmp65122))))
                 (declare (not safe))
                 (cons _L62563_ __tmp65121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp65127
                                                        __tmp65120))))
                                           (declare (not safe))
                                           (cons __tmp65128 __tmp65119))))
                                    (declare (not safe))
                                    (cons __tmp65129 __tmp65118))))
                             (declare (not safe))
                             (cons __tmp65117 '()))))
                      (declare (not safe))
                      (cons __tmp65130 __tmp65116))))
               (declare (not safe))
               (cons __tmp65134 __tmp65115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65114 '()))))
                                         (declare (not safe))
                                         (cons __tmp65135 __tmp65113))))
                                  (declare (not safe))
                                  (cons __tmp65140 __tmp65112))))
                           (declare (not safe))
                           (cons __tmp65111 '()))))
                    (declare (not safe))
                    (cons _L62709_ __tmp65110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65141
                                                           __tmp65109))))
                                              (declare (not safe))
                                              (cons __tmp65108 '()))))
                                       (declare (not safe))
                                       (cons __tmp65142 __tmp65107))))
                                (declare (not safe))
                                (cons __tmp65176 __tmp65106))))
                         (declare (not safe))
                         (cons __tmp65206 __tmp65105))))
                  (declare (not safe))
                  (cons __tmp65236 __tmp65104)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6269562706_))))
                                         (_g6269362724_
                                          (gx#stx-identifier
                                           _L62565_
                                           '"&"
                                           _L62681_)))))
                                   _g6266762678_))))
                          (_g6266562728_
                           (gx#stx-identifier _L62565_ _L62625_ '"-set!")))))
                    _g6263962650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6263762732_
                                                    (gx#stx-identifier
                                                     _L62565_
                                                     '"&"
                                                     _L62625_)))))
                                             _g6261162622_))))
                                    (_g6260962736_
                                     (gx#stx-identifier
                                      _L62565_
                                      '"class-type-"
                                      _L62565_)))))
                              _g6258462595_))))
                     (_g6258262740_ (gx#core-quote-syntax 'class::t))))
                 _hd6250962557_
                 _hd6250662547_)
                (_g6249562516_ _g6249662520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6249562516_
                                                     _g6249662520_))))
                                            (_g6249562516_ _g6249662520_))))
                                    (_g6249562516_ _g6249662520_))))
                            (_g6249562516_ _g6249662520_))))
                    (_g6249562516_ _g6249662520_)))))
        (_g6249462744_ _stx62492_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62748_)
      (let* ((_g6275262781_
              (lambda (_g6275362777_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6275362777_)))
             (_g6275162881_
              (lambda (_g6275362785_)
                (if (gx#stx-pair? _g6275362785_)
                    (let ((_e6275862788_ (gx#syntax-e _g6275362785_)))
                      (let ((_hd6275762792_
                             (let ()
                               (declare (not safe))
                               (##car _e6275862788_)))
                            (_tl6275662795_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6275862788_))))
                        (if (gx#stx-pair/null? _tl6275662795_)
                            (let ((_g65237_
                                   (gx#syntax-split-splice _tl6275662795_ '0)))
                              (begin
                                (let ((_g65238_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g65237_)
                                             (##vector-length _g65237_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g65238_ 2)))
                                      (error "Context expects 2 values"
                                             _g65238_)))
                                (let ((_target6275962798_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65237_ 0)))
                                      (_tl6276162801_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65237_ 1))))
                                  (if (gx#stx-null? _tl6276162801_)
                                      (letrec ((_loop6276262804_
                                                (lambda (_hd6276062808_
                                                         _field6276662811_
                                                         _slot6276762813_)
                                                  (if (gx#stx-pair?
                                                       _hd6276062808_)
                                                      (let ((_e6276362816_
                                                             (gx#syntax-e
                                                              _hd6276062808_)))
                                                        (let ((_lp-hd6276462820_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6276362816_)))
                      (_lp-tl6276562823_
                       (let () (declare (not safe)) (##cdr _e6276362816_))))
                  (if (gx#stx-pair? _lp-hd6276462820_)
                      (let ((_e6277262826_ (gx#syntax-e _lp-hd6276462820_)))
                        (let ((_hd6277162830_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6277262826_)))
                              (_tl6277062833_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6277262826_))))
                          (if (gx#stx-pair? _tl6277062833_)
                              (let ((_e6277562836_
                                     (gx#syntax-e _tl6277062833_)))
                                (let ((_hd6277462840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6277562836_)))
                                      (_tl6277362843_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6277562836_))))
                                  (if (gx#stx-null? _tl6277362843_)
                                      (_loop6276262804_
                                       _lp-tl6276562823_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6277462840_
                                               _field6276662811_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6277162830_
                                               _slot6276762813_)))
                                      (_g6275262781_ _g6275362785_))))
                              (_g6275262781_ _g6275362785_))))
                      (_g6275262781_ _g6275362785_))))
              (let ((_field6276862846_ (reverse _field6276662811_))
                    (_slot6276962849_ (reverse _slot6276762813_)))
                ((lambda (_L62852_ _L62854_)
                   (let ((__tmp65246 (gx#datum->syntax '#f 'begin))
                         (__tmp65239
                          (begin
                            (gx#syntax-check-splice-targets _L62852_ _L62854_)
                            (let ((__tmp65240
                                   (lambda (_g6286962873_
                                            _g6287062876_
                                            _g6287162878_)
                                     (let ((__tmp65241
                                            (let ((__tmp65245
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp65242
                                                   (let ((__tmp65243
                                                          (let ((__tmp65244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6286962873_ '()))))
                    (declare (not safe))
                    (cons _g6287062876_ __tmp65244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65243 '()))))
                                              (declare (not safe))
                                              (cons __tmp65245 __tmp65242))))
                                       (declare (not safe))
                                       (cons __tmp65241 _g6287162878_)))))
                              (declare (not safe))
                              (foldr2 __tmp65240 '() _L62852_ _L62854_)))))
                     (declare (not safe))
                     (cons __tmp65246 __tmp65239)))
                 _field6276862846_
                 _slot6276962849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6276262804_
                                         _target6275962798_
                                         '()
                                         '()))
                                      (_g6275262781_ _g6275362785_)))))
                            (_g6275262781_ _g6275362785_))))
                    (_g6275262781_ _g6275362785_)))))
        (_g6275162881_ _$stx62748_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62886_)
      (let* ((_g6289062916_
              (lambda (_g6289162912_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6289162912_)))
             (_g6288962999_
              (lambda (_g6289162920_)
                (if (gx#stx-pair? _g6289162920_)
                    (let ((_e6289862923_ (gx#syntax-e _g6289162920_)))
                      (let ((_hd6289762927_
                             (let ()
                               (declare (not safe))
                               (##car _e6289862923_)))
                            (_tl6289662930_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6289862923_))))
                        (if (gx#stx-pair? _tl6289662930_)
                            (let ((_e6290162933_ (gx#syntax-e _tl6289662930_)))
                              (let ((_hd6290062937_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6290162933_)))
                                    (_tl6289962940_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6290162933_))))
                                (if (gx#stx-pair? _tl6289962940_)
                                    (let ((_e6290462943_
                                           (gx#syntax-e _tl6289962940_)))
                                      (let ((_hd6290362947_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6290462943_)))
                                            (_tl6290262950_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6290462943_))))
                                        (if (gx#stx-pair? _tl6290262950_)
                                            (let ((_e6290762953_
                                                   (gx#syntax-e
                                                    _tl6290262950_)))
                                              (let ((_hd6290662957_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6290762953_)))
                                                    (_tl6290562960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6290762953_))))
                                                (if (gx#stx-pair?
                                                     _tl6290562960_)
                                                    (let ((_e6291062963_
                                                           (gx#syntax-e
                                                            _tl6290562960_)))
                                                      (let ((_hd6290962967_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6291062963_)))
                    (_tl6290862970_
                     (let () (declare (not safe)) (##cdr _e6291062963_))))
                (if (gx#stx-null? _tl6290862970_)
                    ((lambda (_L62973_ _L62975_ _L62976_ _L62977_)
                       (let ((__tmp65293 (gx#datum->syntax '#f 'if))
                             (__tmp65247
                              (let ((__tmp65290
                                     (let ((__tmp65292
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp65291
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62977_ '()))))
                                       (declare (not safe))
                                       (cons __tmp65292 __tmp65291)))
                                    (__tmp65248
                                     (let ((__tmp65253
                                            (let ((__tmp65289
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp65254
                                                   (let ((__tmp65283
                                                          (let ((__tmp65288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp65284
                         (let ((__tmp65285
                                (let ((__tmp65287
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp65286
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62977_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65287 __tmp65286))))
                           (declare (not safe))
                           (cons __tmp65285 '()))))
                    (declare (not safe))
                    (cons __tmp65288 __tmp65284)))
                 (__tmp65255
                  (let ((__tmp65256
                         (let ((__tmp65282 (gx#datum->syntax '#f 'cond))
                               (__tmp65257
                                (let ((__tmp65265
                                       (let ((__tmp65269
                                              (let ((__tmp65281
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp65270
                                                     (let ((__tmp65277
                                                            (let ((__tmp65280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp65278
                           (let ((__tmp65279 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp65279 '()))))
                      (declare (not safe))
                      (cons __tmp65280 __tmp65278)))
                   (__tmp65271
                    (let ((__tmp65272
                           (let ((__tmp65276
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp65273
                                  (let ((__tmp65275
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65274
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62976_ '()))))
                                    (declare (not safe))
                                    (cons __tmp65275 __tmp65274))))
                             (declare (not safe))
                             (cons __tmp65276 __tmp65273))))
                      (declare (not safe))
                      (cons __tmp65272 '()))))
               (declare (not safe))
               (cons __tmp65277 __tmp65271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65281 __tmp65270)))
                                             (__tmp65266
                                              (let ((__tmp65268
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp65267
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62975_ '()))))
                                                (declare (not safe))
                                                (cons __tmp65268 __tmp65267))))
                                         (declare (not safe))
                                         (cons __tmp65269 __tmp65266)))
                                      (__tmp65258
                                       (let ((__tmp65259
                                              (let ((__tmp65264
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp65260
                                                     (let ((__tmp65261
                                                            (let ((__tmp65262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65263
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62976_ '()))))
                             (declare (not safe))
                             (cons _L62977_ __tmp65263))))
                      (declare (not safe))
                      (cons _L62973_ __tmp65262))))
               (declare (not safe))
               (cons __tmp65261 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65264 __tmp65260))))
                                         (declare (not safe))
                                         (cons __tmp65259 '()))))
                                  (declare (not safe))
                                  (cons __tmp65265 __tmp65258))))
                           (declare (not safe))
                           (cons __tmp65282 __tmp65257))))
                    (declare (not safe))
                    (cons __tmp65256 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65283
                                                           __tmp65255))))
                                              (declare (not safe))
                                              (cons __tmp65289 __tmp65254)))
                                           (__tmp65249
                                            (let ((__tmp65250
                                                   (let ((__tmp65251
                                                          (let ((__tmp65252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62976_ '()))))
                    (declare (not safe))
                    (cons _L62977_ __tmp65252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62973_
                                                           __tmp65251))))
                                              (declare (not safe))
                                              (cons __tmp65250 '()))))
                                       (declare (not safe))
                                       (cons __tmp65253 __tmp65249))))
                                (declare (not safe))
                                (cons __tmp65290 __tmp65248))))
                         (declare (not safe))
                         (cons __tmp65293 __tmp65247)))
                     _hd6290962967_
                     _hd6290662957_
                     _hd6290362947_
                     _hd6290062937_)
                    (_g6289062916_ _g6289162920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6289062916_
                                                     _g6289162920_))))
                                            (_g6289062916_ _g6289162920_))))
                                    (_g6289062916_ _g6289162920_))))
                            (_g6289062916_ _g6289162920_))))
                    (_g6289062916_ _g6289162920_)))))
        (_g6288962999_ _$stx62886_)))))
