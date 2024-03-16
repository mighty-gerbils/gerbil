(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx59631_)
      (let* ((___stx6268162682_ _$stx59631_)
             (_g5963659665_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6268162682_))))
        (let ((___kont6268462685_
               (lambda (_L59758_ _L59760_)
                 (let ((__tmp63038 (gx#datum->syntax '#f '##fx=))
                       (__tmp63032
                        (let ((__tmp63034
                               (let ((__tmp63037
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63035
                                      (let ((__tmp63036
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59758_ '()))))
                                        (declare (not safe))
                                        (cons _L59760_ __tmp63036))))
                                 (declare (not safe))
                                 (cons __tmp63037 __tmp63035)))
                              (__tmp63033
                               (let ()
                                 (declare (not safe))
                                 (cons _L59758_ '()))))
                          (declare (not safe))
                          (cons __tmp63034 __tmp63033))))
                   (declare (not safe))
                   (cons __tmp63038 __tmp63032))))
              (___kont6268662687_
               (lambda (_L59702_ _L59704_)
                 (let ((__tmp63051 (gx#datum->syntax '#f 'let))
                       (__tmp63039
                        (let ((__tmp63049
                               (let ((__tmp63050
                                      (let ()
                                        (declare (not safe))
                                        (cons _L59702_ '()))))
                                 (declare (not safe))
                                 (cons _L59702_ __tmp63050)))
                              (__tmp63040
                               (let ((__tmp63041
                                      (let ((__tmp63048
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63042
                                             (let ((__tmp63044
                                                    (let ((__tmp63047
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63045
                                                           (let ((__tmp63046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L59702_ '()))))
                     (declare (not safe))
                     (cons _L59704_ __tmp63046))))
              (declare (not safe))
              (cons __tmp63047 __tmp63045)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63043
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L59702_ '()))))
                                               (declare (not safe))
                                               (cons __tmp63044 __tmp63043))))
                                        (declare (not safe))
                                        (cons __tmp63048 __tmp63042))))
                                 (declare (not safe))
                                 (cons __tmp63041 '()))))
                          (declare (not safe))
                          (cons __tmp63049 __tmp63040))))
                   (declare (not safe))
                   (cons __tmp63051 __tmp63039)))))
          (let ((___match6270862709_
                 (lambda (_e5964059728_
                          _hd5964159732_
                          _tl5964259735_
                          _e5964359738_
                          _hd5964459742_
                          _tl5964559745_
                          _e5964659748_
                          _hd5964759752_
                          _tl5964859755_)
                   (let ((_L59758_ _hd5964759752_) (_L59760_ _hd5964459742_))
                     (if (or (gx#identifier? _L59758_)
                             (gx#stx-fixnum? _L59758_))
                         (___kont6268462685_ _L59758_ _L59760_)
                         (___kont6268662687_
                          _hd5964759752_
                          _hd5964459742_))))))
            (if (gx#stx-pair? ___stx6268162682_)
                (let ((_e5964059728_ (gx#syntax-e ___stx6268162682_)))
                  (let ((_tl5964259735_
                         (let () (declare (not safe)) (##cdr _e5964059728_)))
                        (_hd5964159732_
                         (let () (declare (not safe)) (##car _e5964059728_))))
                    (if (gx#stx-pair? _tl5964259735_)
                        (let ((_e5964359738_ (gx#syntax-e _tl5964259735_)))
                          (let ((_tl5964559745_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5964359738_)))
                                (_hd5964459742_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5964359738_))))
                            (if (gx#stx-pair? _tl5964559745_)
                                (let ((_e5964659748_
                                       (gx#syntax-e _tl5964559745_)))
                                  (let ((_tl5964859755_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5964659748_)))
                                        (_hd5964759752_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5964659748_))))
                                    (if (gx#stx-null? _tl5964859755_)
                                        (___match6270862709_
                                         _e5964059728_
                                         _hd5964159732_
                                         _tl5964259735_
                                         _e5964359738_
                                         _hd5964459742_
                                         _tl5964559745_
                                         _e5964659748_
                                         _hd5964759752_
                                         _tl5964859755_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5963659665_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5963659665_)))))
                        (let () (declare (not safe)) (_g5963659665_)))))
                (let () (declare (not safe)) (_g5963659665_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx59783_)
      (let* ((___stx6273162732_ _$stx59783_)
             (_g5978859817_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6273162732_))))
        (let ((___kont6273462735_
               (lambda (_L59909_ _L59911_)
                 (let ((__tmp63058 (gx#datum->syntax '#f '##fx=))
                       (__tmp63052
                        (let ((__tmp63054
                               (let ((__tmp63057
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63055
                                      (let ((__tmp63056
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59909_ '()))))
                                        (declare (not safe))
                                        (cons _L59911_ __tmp63056))))
                                 (declare (not safe))
                                 (cons __tmp63057 __tmp63055)))
                              (__tmp63053
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp63054 __tmp63053))))
                   (declare (not safe))
                   (cons __tmp63058 __tmp63052))))
              (___kont6273662737_
               (lambda (_L59854_ _L59856_)
                 (let ((__tmp63071 (gx#datum->syntax '#f 'let))
                       (__tmp63059
                        (let ((__tmp63069
                               (let ((__tmp63070
                                      (let ()
                                        (declare (not safe))
                                        (cons _L59854_ '()))))
                                 (declare (not safe))
                                 (cons _L59854_ __tmp63070)))
                              (__tmp63060
                               (let ((__tmp63061
                                      (let ((__tmp63068
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63062
                                             (let ((__tmp63064
                                                    (let ((__tmp63067
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63065
                                                           (let ((__tmp63066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L59854_ '()))))
                     (declare (not safe))
                     (cons _L59856_ __tmp63066))))
              (declare (not safe))
              (cons __tmp63067 __tmp63065)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63063
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp63064 __tmp63063))))
                                        (declare (not safe))
                                        (cons __tmp63068 __tmp63062))))
                                 (declare (not safe))
                                 (cons __tmp63061 '()))))
                          (declare (not safe))
                          (cons __tmp63069 __tmp63060))))
                   (declare (not safe))
                   (cons __tmp63071 __tmp63059)))))
          (let ((___match6275862759_
                 (lambda (_e5979259879_
                          _hd5979359883_
                          _tl5979459886_
                          _e5979559889_
                          _hd5979659893_
                          _tl5979759896_
                          _e5979859899_
                          _hd5979959903_
                          _tl5980059906_)
                   (let ((_L59909_ _hd5979959903_) (_L59911_ _hd5979659893_))
                     (if (or (gx#identifier? _L59909_)
                             (gx#stx-fixnum? _L59909_))
                         (___kont6273462735_ _L59909_ _L59911_)
                         (___kont6273662737_
                          _hd5979959903_
                          _hd5979659893_))))))
            (if (gx#stx-pair? ___stx6273162732_)
                (let ((_e5979259879_ (gx#syntax-e ___stx6273162732_)))
                  (let ((_tl5979459886_
                         (let () (declare (not safe)) (##cdr _e5979259879_)))
                        (_hd5979359883_
                         (let () (declare (not safe)) (##car _e5979259879_))))
                    (if (gx#stx-pair? _tl5979459886_)
                        (let ((_e5979559889_ (gx#syntax-e _tl5979459886_)))
                          (let ((_tl5979759896_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5979559889_)))
                                (_hd5979659893_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5979559889_))))
                            (if (gx#stx-pair? _tl5979759896_)
                                (let ((_e5979859899_
                                       (gx#syntax-e _tl5979759896_)))
                                  (let ((_tl5980059906_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5979859899_)))
                                        (_hd5979959903_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5979859899_))))
                                    (if (gx#stx-null? _tl5980059906_)
                                        (___match6275862759_
                                         _e5979259879_
                                         _hd5979359883_
                                         _tl5979459886_
                                         _e5979559889_
                                         _hd5979659893_
                                         _tl5979759896_
                                         _e5979859899_
                                         _hd5979959903_
                                         _tl5980059906_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5978859817_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5978859817_)))))
                        (let () (declare (not safe)) (_g5978859817_)))))
                (let () (declare (not safe)) (_g5978859817_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx59934_)
      (let* ((_g5993759958_
              (lambda (_g5993859954_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5993859954_)))
             (_g5993660186_
              (lambda (_g5993859962_)
                (if (gx#stx-pair? _g5993859962_)
                    (let ((_e5994159965_ (gx#syntax-e _g5993859962_)))
                      (let ((_hd5994259969_
                             (let ()
                               (declare (not safe))
                               (##car _e5994159965_)))
                            (_tl5994359972_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5994159965_))))
                        (if (gx#stx-pair? _tl5994359972_)
                            (let ((_e5994459975_ (gx#syntax-e _tl5994359972_)))
                              (let ((_hd5994559979_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5994459975_)))
                                    (_tl5994659982_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5994459975_))))
                                (if (gx#stx-pair? _hd5994559979_)
                                    (let ((_e5994759985_
                                           (gx#syntax-e _hd5994559979_)))
                                      (let ((_hd5994859989_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5994759985_)))
                                            (_tl5994959992_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5994759985_))))
                                        (if (gx#stx-pair? _tl5994959992_)
                                            (let ((_e5995059995_
                                                   (gx#syntax-e
                                                    _tl5994959992_)))
                                              (let ((_hd5995159999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5995059995_)))
                                                    (_tl5995260002_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5995059995_))))
                                                (if (gx#stx-null?
                                                     _tl5995260002_)
                                                    (if (gx#stx-null?
                                                         _tl5994659982_)
                                                        ((lambda (_L60005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L60007_)
                   (let* ((_g6002560033_
                           (lambda (_g6002660029_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6002660029_)))
                          (_g6002460182_
                           (lambda (_g6002660037_)
                             ((lambda (_L60040_)
                                (let ()
                                  (let* ((_g6005260060_
                                          (lambda (_g6005360056_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6005360056_)))
                                         (_g6005160178_
                                          (lambda (_g6005360064_)
                                            ((lambda (_L60067_)
                                               (let ()
                                                 (let* ((_g6008060088_
                                                         (lambda (_g6008160084_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6008160084_)))
                                                        (_g6007960174_
                                                         (lambda (_g6008160092_)
                                                           ((lambda (_L60095_)
                                                              (let ()
                                                                (let* ((_g6010860116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6010960112_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6010960112_)))
                               (_g6010760170_
                                (lambda (_g6010960120_)
                                  ((lambda (_L60123_)
                                     (let ()
                                       (let* ((_g6013660144_
                                               (lambda (_g6013760140_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6013760140_)))
                                              (_g6013560166_
                                               (lambda (_g6013760148_)
                                                 ((lambda (_L60151_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp63204
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp63072
                                                               (let ((__tmp63174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63203 (gx#datum->syntax '#f 'def))
                                    (__tmp63175
                                     (let ((__tmp63176
                                            (let ((__tmp63177
                                                   (let ((__tmp63202
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp63178
                                                          (let ((__tmp63197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63201
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp63198
                                (let ((__tmp63199
                                       (let ((__tmp63200
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L60007_ __tmp63200))))
                                  (declare (not safe))
                                  (cons _L60040_ __tmp63199))))
                           (declare (not safe))
                           (cons __tmp63201 __tmp63198)))
                        (__tmp63179
                         (let ((__tmp63180
                                (let ((__tmp63196
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp63181
                                       (let ((__tmp63194
                                              (let ((__tmp63195
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp63195 '())))
                                             (__tmp63182
                                              (let ((__tmp63183
                                                     (let ((__tmp63193
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp63184
                                                            (let ((__tmp63192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63185
                           (let ((__tmp63186
                                  (let ((__tmp63191
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp63187
                                         (let ((__tmp63188
                                                (let ((__tmp63190
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp63189
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L60007_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp63190
                                                        __tmp63189))))
                                           (declare (not safe))
                                           (cons __tmp63188 '()))))
                                    (declare (not safe))
                                    (cons __tmp63191 __tmp63187))))
                             (declare (not safe))
                             (cons _L60005_ __tmp63186))))
                      (declare (not safe))
                      (cons __tmp63192 __tmp63185))))
               (declare (not safe))
               (cons __tmp63193 __tmp63184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63183 '()))))
                                         (declare (not safe))
                                         (cons __tmp63194 __tmp63182))))
                                  (declare (not safe))
                                  (cons __tmp63196 __tmp63181))))
                           (declare (not safe))
                           (cons __tmp63180 '()))))
                    (declare (not safe))
                    (cons __tmp63197 __tmp63179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63202
                                                           __tmp63178))))
                                              (declare (not safe))
                                              (cons __tmp63177 '()))))
                                       (declare (not safe))
                                       (cons _L60067_ __tmp63176))))
                                (declare (not safe))
                                (cons __tmp63203 __tmp63175)))
                             (__tmp63073
                              (let ((__tmp63144
                                     (let ((__tmp63173
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp63145
                                            (let ((__tmp63146
                                                   (let ((__tmp63147
                                                          (let ((__tmp63172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp63148
                         (let ((__tmp63167
                                (let ((__tmp63171
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp63168
                                       (let ((__tmp63169
                                              (let ((__tmp63170
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L60007_ __tmp63170))))
                                         (declare (not safe))
                                         (cons _L60040_ __tmp63169))))
                                  (declare (not safe))
                                  (cons __tmp63171 __tmp63168)))
                               (__tmp63149
                                (let ((__tmp63150
                                       (let ((__tmp63166
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp63151
                                              (let ((__tmp63164
                                                     (let ((__tmp63165
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp63165 '())))
                                                    (__tmp63152
                                                     (let ((__tmp63153
                                                            (let ((__tmp63163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp63154
                           (let ((__tmp63162 (gx#datum->syntax '#f 'klass))
                                 (__tmp63155
                                  (let ((__tmp63156
                                         (let ((__tmp63161
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp63157
                                                (let ((__tmp63158
                                                       (let ((__tmp63160
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp63159
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L60007_ '()))))
                 (declare (not safe))
                 (cons __tmp63160 __tmp63159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63158 '()))))
                                           (declare (not safe))
                                           (cons __tmp63161 __tmp63157))))
                                    (declare (not safe))
                                    (cons _L60005_ __tmp63156))))
                             (declare (not safe))
                             (cons __tmp63162 __tmp63155))))
                      (declare (not safe))
                      (cons __tmp63163 __tmp63154))))
               (declare (not safe))
               (cons __tmp63153 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63164 __tmp63152))))
                                         (declare (not safe))
                                         (cons __tmp63166 __tmp63151))))
                                  (declare (not safe))
                                  (cons __tmp63150 '()))))
                           (declare (not safe))
                           (cons __tmp63167 __tmp63149))))
                    (declare (not safe))
                    (cons __tmp63172 __tmp63148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63147 '()))))
                                              (declare (not safe))
                                              (cons _L60095_ __tmp63146))))
                                       (declare (not safe))
                                       (cons __tmp63173 __tmp63145)))
                                    (__tmp63074
                                     (let ((__tmp63110
                                            (let ((__tmp63143
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp63111
                                                   (let ((__tmp63112
                                                          (let ((__tmp63113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63142
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp63114
                                (let ((__tmp63137
                                       (let ((__tmp63141
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp63138
                                              (let ((__tmp63139
                                                     (let ((__tmp63140
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L60007_
                                                             __tmp63140))))
                                                (declare (not safe))
                                                (cons _L60040_ __tmp63139))))
                                         (declare (not safe))
                                         (cons __tmp63141 __tmp63138)))
                                      (__tmp63115
                                       (let ((__tmp63116
                                              (let ((__tmp63136
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp63117
                                                     (let ((__tmp63132
                                                            (let ((__tmp63135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63133
                           (let ((__tmp63134 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp63134 '()))))
                      (declare (not safe))
                      (cons __tmp63135 __tmp63133)))
                   (__tmp63118
                    (let ((__tmp63119
                           (let ((__tmp63131
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp63120
                                  (let ((__tmp63130
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63121
                                         (let ((__tmp63129
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp63122
                                                (let ((__tmp63123
                                                       (let ((__tmp63128
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp63124
                                                              (let ((__tmp63125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp63127 (gx#datum->syntax '#f 'quote))
                                   (__tmp63126
                                    (let ()
                                      (declare (not safe))
                                      (cons _L60007_ '()))))
                               (declare (not safe))
                               (cons __tmp63127 __tmp63126))))
                        (declare (not safe))
                        (cons __tmp63125 '()))))
                 (declare (not safe))
                 (cons __tmp63128 __tmp63124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L60005_ __tmp63123))))
                                           (declare (not safe))
                                           (cons __tmp63129 __tmp63122))))
                                    (declare (not safe))
                                    (cons __tmp63130 __tmp63121))))
                             (declare (not safe))
                             (cons __tmp63131 __tmp63120))))
                      (declare (not safe))
                      (cons __tmp63119 '()))))
               (declare (not safe))
               (cons __tmp63132 __tmp63118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63136 __tmp63117))))
                                         (declare (not safe))
                                         (cons __tmp63116 '()))))
                                  (declare (not safe))
                                  (cons __tmp63137 __tmp63115))))
                           (declare (not safe))
                           (cons __tmp63142 __tmp63114))))
                    (declare (not safe))
                    (cons __tmp63113 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L60123_
                                                           __tmp63112))))
                                              (declare (not safe))
                                              (cons __tmp63143 __tmp63111)))
                                           (__tmp63075
                                            (let ((__tmp63076
                                                   (let ((__tmp63109
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp63077
                                                          (let ((__tmp63078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63079
                                (let ((__tmp63108
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp63080
                                       (let ((__tmp63103
                                              (let ((__tmp63107
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp63104
                                                     (let ((__tmp63105
                                                            (let ((__tmp63106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L60007_ __tmp63106))))
               (declare (not safe))
               (cons _L60040_ __tmp63105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63107 __tmp63104)))
                                             (__tmp63081
                                              (let ((__tmp63082
                                                     (let ((__tmp63102
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp63083
                                                            (let ((__tmp63098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63101 (gx#datum->syntax '#f 'klass))
                                 (__tmp63099
                                  (let ((__tmp63100
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp63100 '()))))
                             (declare (not safe))
                             (cons __tmp63101 __tmp63099)))
                          (__tmp63084
                           (let ((__tmp63085
                                  (let ((__tmp63097
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp63086
                                         (let ((__tmp63096
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp63087
                                                (let ((__tmp63095
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp63088
                                                       (let ((__tmp63089
                                                              (let ((__tmp63094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp63090
                             (let ((__tmp63091
                                    (let ((__tmp63093
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp63092
                                           (let ()
                                             (declare (not safe))
                                             (cons _L60007_ '()))))
                                      (declare (not safe))
                                      (cons __tmp63093 __tmp63092))))
                               (declare (not safe))
                               (cons __tmp63091 '()))))
                        (declare (not safe))
                        (cons __tmp63094 __tmp63090))))
                 (declare (not safe))
                 (cons _L60005_ __tmp63089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63095
                                                        __tmp63088))))
                                           (declare (not safe))
                                           (cons __tmp63096 __tmp63087))))
                                    (declare (not safe))
                                    (cons __tmp63097 __tmp63086))))
                             (declare (not safe))
                             (cons __tmp63085 '()))))
                      (declare (not safe))
                      (cons __tmp63098 __tmp63084))))
               (declare (not safe))
               (cons __tmp63102 __tmp63083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63082 '()))))
                                         (declare (not safe))
                                         (cons __tmp63103 __tmp63081))))
                                  (declare (not safe))
                                  (cons __tmp63108 __tmp63080))))
                           (declare (not safe))
                           (cons __tmp63079 '()))))
                    (declare (not safe))
                    (cons _L60151_ __tmp63078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63109
                                                           __tmp63077))))
                                              (declare (not safe))
                                              (cons __tmp63076 '()))))
                                       (declare (not safe))
                                       (cons __tmp63110 __tmp63075))))
                                (declare (not safe))
                                (cons __tmp63144 __tmp63074))))
                         (declare (not safe))
                         (cons __tmp63174 __tmp63073))))
                  (declare (not safe))
                  (cons __tmp63204 __tmp63072)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6013760148_))))
                                         (_g6013560166_
                                          (gx#stx-identifier
                                           _L60007_
                                           '"&"
                                           _L60123_)))))
                                   _g6010960120_))))
                          (_g6010760170_
                           (gx#stx-identifier _L60007_ _L60067_ '"-set!")))))
                    _g6008160092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6007960174_
                                                    (gx#stx-identifier
                                                     _L60007_
                                                     '"&"
                                                     _L60067_)))))
                                             _g6005360064_))))
                                    (_g6005160178_
                                     (gx#stx-identifier
                                      _L60007_
                                      '"class-type-"
                                      _L60007_)))))
                              _g6002660037_))))
                     (_g6002460182_ (gx#core-quote-syntax 'class::t))))
                 _hd5995159999_
                 _hd5994859989_)
                (_g5993759958_ _g5993859962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5993759958_
                                                     _g5993859962_))))
                                            (_g5993759958_ _g5993859962_))))
                                    (_g5993759958_ _g5993859962_))))
                            (_g5993759958_ _g5993859962_))))
                    (_g5993759958_ _g5993859962_)))))
        (_g5993660186_ _stx59934_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx60190_)
      (let* ((_g6019460223_
              (lambda (_g6019560219_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6019560219_)))
             (_g6019360323_
              (lambda (_g6019560227_)
                (if (gx#stx-pair? _g6019560227_)
                    (let ((_e6019860230_ (gx#syntax-e _g6019560227_)))
                      (let ((_hd6019960234_
                             (let ()
                               (declare (not safe))
                               (##car _e6019860230_)))
                            (_tl6020060237_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6019860230_))))
                        (if (gx#stx-pair/null? _tl6020060237_)
                            (let ((_g63205_
                                   (gx#syntax-split-splice _tl6020060237_ '0)))
                              (begin
                                (let ((_g63206_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g63205_)
                                             (##vector-length _g63205_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g63206_ 2)))
                                      (error "Context expects 2 values"
                                             _g63206_)))
                                (let ((_target6020160240_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63205_ 0)))
                                      (_tl6020360243_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63205_ 1))))
                                  (if (gx#stx-null? _tl6020360243_)
                                      (letrec ((_loop6020460246_
                                                (lambda (_hd6020260250_
                                                         _field6020860253_
                                                         _slot6020960255_)
                                                  (if (gx#stx-pair?
                                                       _hd6020260250_)
                                                      (let ((_e6020560258_
                                                             (gx#syntax-e
                                                              _hd6020260250_)))
                                                        (let ((_lp-hd6020660262_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6020560258_)))
                      (_lp-tl6020760265_
                       (let () (declare (not safe)) (##cdr _e6020560258_))))
                  (if (gx#stx-pair? _lp-hd6020660262_)
                      (let ((_e6021260268_ (gx#syntax-e _lp-hd6020660262_)))
                        (let ((_hd6021360272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6021260268_)))
                              (_tl6021460275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6021260268_))))
                          (if (gx#stx-pair? _tl6021460275_)
                              (let ((_e6021560278_
                                     (gx#syntax-e _tl6021460275_)))
                                (let ((_hd6021660282_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6021560278_)))
                                      (_tl6021760285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6021560278_))))
                                  (if (gx#stx-null? _tl6021760285_)
                                      (_loop6020460246_
                                       _lp-tl6020760265_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6021660282_
                                               _field6020860253_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6021360272_
                                               _slot6020960255_)))
                                      (_g6019460223_ _g6019560227_))))
                              (_g6019460223_ _g6019560227_))))
                      (_g6019460223_ _g6019560227_))))
              (let ((_field6021060288_ (reverse _field6020860253_))
                    (_slot6021160291_ (reverse _slot6020960255_)))
                ((lambda (_L60294_ _L60296_)
                   (let ((__tmp63214 (gx#datum->syntax '#f 'begin))
                         (__tmp63207
                          (begin
                            (gx#syntax-check-splice-targets _L60294_ _L60296_)
                            (let ((__tmp63208
                                   (lambda (_g6031160315_
                                            _g6031260318_
                                            _g6031360320_)
                                     (let ((__tmp63209
                                            (let ((__tmp63213
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp63210
                                                   (let ((__tmp63211
                                                          (let ((__tmp63212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6031160315_ '()))))
                    (declare (not safe))
                    (cons _g6031260318_ __tmp63212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63211 '()))))
                                              (declare (not safe))
                                              (cons __tmp63213 __tmp63210))))
                                       (declare (not safe))
                                       (cons __tmp63209 _g6031360320_)))))
                              (declare (not safe))
                              (foldr2 __tmp63208 '() _L60294_ _L60296_)))))
                     (declare (not safe))
                     (cons __tmp63214 __tmp63207)))
                 _field6021060288_
                 _slot6021160291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6020460246_
                                         _target6020160240_
                                         '()
                                         '()))
                                      (_g6019460223_ _g6019560227_)))))
                            (_g6019460223_ _g6019560227_))))
                    (_g6019460223_ _g6019560227_)))))
        (_g6019360323_ _$stx60190_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx60328_)
      (let* ((_g6033260358_
              (lambda (_g6033360354_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6033360354_)))
             (_g6033160441_
              (lambda (_g6033360362_)
                (if (gx#stx-pair? _g6033360362_)
                    (let ((_e6033860365_ (gx#syntax-e _g6033360362_)))
                      (let ((_hd6033960369_
                             (let ()
                               (declare (not safe))
                               (##car _e6033860365_)))
                            (_tl6034060372_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6033860365_))))
                        (if (gx#stx-pair? _tl6034060372_)
                            (let ((_e6034160375_ (gx#syntax-e _tl6034060372_)))
                              (let ((_hd6034260379_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6034160375_)))
                                    (_tl6034360382_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6034160375_))))
                                (if (gx#stx-pair? _tl6034360382_)
                                    (let ((_e6034460385_
                                           (gx#syntax-e _tl6034360382_)))
                                      (let ((_hd6034560389_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6034460385_)))
                                            (_tl6034660392_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6034460385_))))
                                        (if (gx#stx-pair? _tl6034660392_)
                                            (let ((_e6034760395_
                                                   (gx#syntax-e
                                                    _tl6034660392_)))
                                              (let ((_hd6034860399_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6034760395_)))
                                                    (_tl6034960402_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6034760395_))))
                                                (if (gx#stx-pair?
                                                     _tl6034960402_)
                                                    (let ((_e6035060405_
                                                           (gx#syntax-e
                                                            _tl6034960402_)))
                                                      (let ((_hd6035160409_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6035060405_)))
                    (_tl6035260412_
                     (let () (declare (not safe)) (##cdr _e6035060405_))))
                (if (gx#stx-null? _tl6035260412_)
                    ((lambda (_L60415_ _L60417_ _L60418_ _L60419_)
                       (let ((__tmp63261 (gx#datum->syntax '#f 'if))
                             (__tmp63215
                              (let ((__tmp63258
                                     (let ((__tmp63260
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp63259
                                            (let ()
                                              (declare (not safe))
                                              (cons _L60419_ '()))))
                                       (declare (not safe))
                                       (cons __tmp63260 __tmp63259)))
                                    (__tmp63216
                                     (let ((__tmp63221
                                            (let ((__tmp63257
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp63222
                                                   (let ((__tmp63251
                                                          (let ((__tmp63256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp63252
                         (let ((__tmp63253
                                (let ((__tmp63255
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp63254
                                       (let ()
                                         (declare (not safe))
                                         (cons _L60419_ '()))))
                                  (declare (not safe))
                                  (cons __tmp63255 __tmp63254))))
                           (declare (not safe))
                           (cons __tmp63253 '()))))
                    (declare (not safe))
                    (cons __tmp63256 __tmp63252)))
                 (__tmp63223
                  (let ((__tmp63224
                         (let ((__tmp63250 (gx#datum->syntax '#f 'cond))
                               (__tmp63225
                                (let ((__tmp63233
                                       (let ((__tmp63237
                                              (let ((__tmp63249
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp63238
                                                     (let ((__tmp63245
                                                            (let ((__tmp63248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp63246
                           (let ((__tmp63247 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp63247 '()))))
                      (declare (not safe))
                      (cons __tmp63248 __tmp63246)))
                   (__tmp63239
                    (let ((__tmp63240
                           (let ((__tmp63244
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp63241
                                  (let ((__tmp63243
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63242
                                         (let ()
                                           (declare (not safe))
                                           (cons _L60418_ '()))))
                                    (declare (not safe))
                                    (cons __tmp63243 __tmp63242))))
                             (declare (not safe))
                             (cons __tmp63244 __tmp63241))))
                      (declare (not safe))
                      (cons __tmp63240 '()))))
               (declare (not safe))
               (cons __tmp63245 __tmp63239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63249 __tmp63238)))
                                             (__tmp63234
                                              (let ((__tmp63236
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp63235
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L60417_ '()))))
                                                (declare (not safe))
                                                (cons __tmp63236 __tmp63235))))
                                         (declare (not safe))
                                         (cons __tmp63237 __tmp63234)))
                                      (__tmp63226
                                       (let ((__tmp63227
                                              (let ((__tmp63232
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63228
                                                     (let ((__tmp63229
                                                            (let ((__tmp63230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63231
                                  (let ()
                                    (declare (not safe))
                                    (cons _L60418_ '()))))
                             (declare (not safe))
                             (cons _L60419_ __tmp63231))))
                      (declare (not safe))
                      (cons _L60415_ __tmp63230))))
               (declare (not safe))
               (cons __tmp63229 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63232 __tmp63228))))
                                         (declare (not safe))
                                         (cons __tmp63227 '()))))
                                  (declare (not safe))
                                  (cons __tmp63233 __tmp63226))))
                           (declare (not safe))
                           (cons __tmp63250 __tmp63225))))
                    (declare (not safe))
                    (cons __tmp63224 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63251
                                                           __tmp63223))))
                                              (declare (not safe))
                                              (cons __tmp63257 __tmp63222)))
                                           (__tmp63217
                                            (let ((__tmp63218
                                                   (let ((__tmp63219
                                                          (let ((__tmp63220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L60418_ '()))))
                    (declare (not safe))
                    (cons _L60419_ __tmp63220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L60415_
                                                           __tmp63219))))
                                              (declare (not safe))
                                              (cons __tmp63218 '()))))
                                       (declare (not safe))
                                       (cons __tmp63221 __tmp63217))))
                                (declare (not safe))
                                (cons __tmp63258 __tmp63216))))
                         (declare (not safe))
                         (cons __tmp63261 __tmp63215)))
                     _hd6035160409_
                     _hd6034860399_
                     _hd6034560389_
                     _hd6034260379_)
                    (_g6033260358_ _g6033360362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6033260358_
                                                     _g6033360362_))))
                                            (_g6033260358_ _g6033360362_))))
                                    (_g6033260358_ _g6033360362_))))
                            (_g6033260358_ _g6033360362_))))
                    (_g6033260358_ _g6033360362_)))))
        (_g6033160441_ _$stx60328_))))
  (define |[:0:]#defsubtype|
    (lambda (_$stx60445_)
      (let* ((_g6044960478_
              (lambda (_g6045060474_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6045060474_)))
             (_g6044860578_
              (lambda (_g6045060482_)
                (if (gx#stx-pair? _g6045060482_)
                    (let ((_e6045360485_ (gx#syntax-e _g6045060482_)))
                      (let ((_hd6045460489_
                             (let ()
                               (declare (not safe))
                               (##car _e6045360485_)))
                            (_tl6045560492_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6045360485_))))
                        (if (gx#stx-pair/null? _tl6045560492_)
                            (let ((_g63262_
                                   (gx#syntax-split-splice _tl6045560492_ '0)))
                              (begin
                                (let ((_g63263_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g63262_)
                                             (##vector-length _g63262_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g63263_ 2)))
                                      (error "Context expects 2 values"
                                             _g63263_)))
                                (let ((_target6045660495_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63262_ 0)))
                                      (_tl6045860498_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63262_ 1))))
                                  (if (gx#stx-null? _tl6045860498_)
                                      (letrec ((_loop6045960501_
                                                (lambda (_hd6045760505_
                                                         _name6046360508_
                                                         _t6046460510_)
                                                  (if (gx#stx-pair?
                                                       _hd6045760505_)
                                                      (let ((_e6046060513_
                                                             (gx#syntax-e
                                                              _hd6045760505_)))
                                                        (let ((_lp-hd6046160517_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6046060513_)))
                      (_lp-tl6046260520_
                       (let () (declare (not safe)) (##cdr _e6046060513_))))
                  (if (gx#stx-pair? _lp-hd6046160517_)
                      (let ((_e6046760523_ (gx#syntax-e _lp-hd6046160517_)))
                        (let ((_hd6046860527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6046760523_)))
                              (_tl6046960530_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6046760523_))))
                          (if (gx#stx-pair? _tl6046960530_)
                              (let ((_e6047060533_
                                     (gx#syntax-e _tl6046960530_)))
                                (let ((_hd6047160537_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6047060533_)))
                                      (_tl6047260540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6047060533_))))
                                  (if (gx#stx-null? _tl6047260540_)
                                      (_loop6045960501_
                                       _lp-tl6046260520_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6047160537_
                                               _name6046360508_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6046860527_ _t6046460510_)))
                                      (_g6044960478_ _g6045060482_))))
                              (_g6044960478_ _g6045060482_))))
                      (_g6044960478_ _g6045060482_))))
              (let ((_name6046560543_ (reverse _name6046360508_))
                    (_t6046660546_ (reverse _t6046460510_)))
                ((lambda (_L60549_ _L60551_)
                   (let ((__tmp63275 (gx#datum->syntax '#f 'begin))
                         (__tmp63264
                          (begin
                            (gx#syntax-check-splice-targets _L60549_ _L60551_)
                            (let ((__tmp63265
                                   (lambda (_g6056660570_
                                            _g6056760573_
                                            _g6056860575_)
                                     (let ((__tmp63266
                                            (let ((__tmp63274
                                                   (gx#datum->syntax
                                                    '#f
                                                    'vector-set!))
                                                  (__tmp63267
                                                   (let ((__tmp63273
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__subtype-id))
                                                         (__tmp63268
                                                          (let ((__tmp63269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63270
                                (let ((__tmp63272
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp63271
                                       (let ()
                                         (declare (not safe))
                                         (cons _g6056660570_ '()))))
                                  (declare (not safe))
                                  (cons __tmp63272 __tmp63271))))
                           (declare (not safe))
                           (cons __tmp63270 '()))))
                    (declare (not safe))
                    (cons _g6056760573_ __tmp63269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63273
                                                           __tmp63268))))
                                              (declare (not safe))
                                              (cons __tmp63274 __tmp63267))))
                                       (declare (not safe))
                                       (cons __tmp63266 _g6056860575_)))))
                              (declare (not safe))
                              (foldr2 __tmp63265 '() _L60549_ _L60551_)))))
                     (declare (not safe))
                     (cons __tmp63275 __tmp63264)))
                 _name6046560543_
                 _t6046660546_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6045960501_
                                         _target6045660495_
                                         '()
                                         '()))
                                      (_g6044960478_ _g6045060482_)))))
                            (_g6044960478_ _g6045060482_))))
                    (_g6044960478_ _g6045060482_)))))
        (_g6044860578_ _$stx60445_))))
  (define |[:0:]#defsystem-class|
    (lambda (_$stx60583_)
      (let* ((_g6058760618_
              (lambda (_g6058860614_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6058860614_)))
             (_g6058660737_
              (lambda (_g6058860622_)
                (if (gx#stx-pair? _g6058860622_)
                    (let ((_e6059260625_ (gx#syntax-e _g6058860622_)))
                      (let ((_hd6059360629_
                             (let ()
                               (declare (not safe))
                               (##car _e6059260625_)))
                            (_tl6059460632_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6059260625_))))
                        (if (gx#stx-pair? _tl6059460632_)
                            (let ((_e6059560635_ (gx#syntax-e _tl6059460632_)))
                              (let ((_hd6059660639_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6059560635_)))
                                    (_tl6059760642_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6059560635_))))
                                (if (gx#stx-pair? _tl6059760642_)
                                    (let ((_e6059860645_
                                           (gx#syntax-e _tl6059760642_)))
                                      (let ((_hd6059960649_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6059860645_)))
                                            (_tl6060060652_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6059860645_))))
                                        (if (gx#stx-pair? _tl6060060652_)
                                            (let ((_e6060160655_
                                                   (gx#syntax-e
                                                    _tl6060060652_)))
                                              (let ((_hd6060260659_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6060160655_)))
                                                    (_tl6060360662_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6060160655_))))
                                                (if (gx#stx-pair/null?
                                                     _hd6060260659_)
                                                    (let ((_g63276_
                                                           (gx#syntax-split-splice
                                                            _hd6060260659_
                                                            '0)))
                                                      (begin
                                                        (let ((_g63277_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g63276_)
                             (##vector-length _g63276_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g63277_ 2)))
                      (error "Context expects 2 values" _g63277_)))
                (let ((_target6060460665_
                       (let () (declare (not safe)) (##vector-ref _g63276_ 0)))
                      (_tl6060660668_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g63276_ 1))))
                  (if (gx#stx-null? _tl6060660668_)
                      (letrec ((_loop6060760671_
                                (lambda (_hd6060560675_ _super6061160678_)
                                  (if (gx#stx-pair? _hd6060560675_)
                                      (let ((_e6060860681_
                                             (gx#syntax-e _hd6060560675_)))
                                        (let ((_lp-hd6060960685_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6060860681_)))
                                              (_lp-tl6061060688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6060860681_))))
                                          (_loop6060760671_
                                           _lp-tl6061060688_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd6060960685_
                                                   _super6061160678_)))))
                                      (let ((_super6061260691_
                                             (reverse _super6061160678_)))
                                        (if (gx#stx-null? _tl6060360662_)
                                            ((lambda (_L60695_
                                                      _L60697_
                                                      _L60698_)
                                               (let ((__tmp63301
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp63278
                                                      (let ((__tmp63279
                                                             (let ((__tmp63280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp63300
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp63281
                                   (let ((__tmp63294
                                          (let ((__tmp63299
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp63295
                                                 (let ((__tmp63296
                                                        (let ((__tmp63297
                                                               (let ((__tmp63298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6072060725_ _g6072160728_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6072060725_ _g6072160728_)))))
                         (declare (not safe))
                         (foldr1 __tmp63298 '() _L60695_))))
                  (declare (not safe))
                  (cons __tmp63297 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L60697_
                                                         __tmp63296))))
                                            (declare (not safe))
                                            (cons __tmp63299 __tmp63295)))
                                         (__tmp63282
                                          (let ((__tmp63283
                                                 (let ((__tmp63293
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__make-system-class))
                                                       (__tmp63284
                                                        (let ((__tmp63290
                                                               (let ((__tmp63292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp63291
                              (let ()
                                (declare (not safe))
                                (cons _L60697_ '()))))
                         (declare (not safe))
                         (cons __tmp63292 __tmp63291)))
                      (__tmp63285
                       (let ((__tmp63286
                              (let ((__tmp63289 (gx#datum->syntax '#f '@list))
                                    (__tmp63287
                                     (let ((__tmp63288
                                            (lambda (_g6072260731_
                                                     _g6072360734_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g6072260731_
                                                      _g6072360734_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp63288 '() _L60695_))))
                                (declare (not safe))
                                (cons __tmp63289 __tmp63287))))
                         (declare (not safe))
                         (cons __tmp63286 '()))))
                  (declare (not safe))
                  (cons __tmp63290 __tmp63285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63293
                                                         __tmp63284))))
                                            (declare (not safe))
                                            (cons __tmp63283 '()))))
                                     (declare (not safe))
                                     (cons __tmp63294 __tmp63282))))
                              (declare (not safe))
                              (cons __tmp63300 __tmp63281))))
                       (declare (not safe))
                       (cons __tmp63280 '()))))
                (declare (not safe))
                (cons _L60698_ __tmp63279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63301 __tmp63278)))
                                             _super6061260691_
                                             _hd6059960649_
                                             _hd6059660639_)
                                            (_g6058760618_ _g6058860622_)))))))
                        (_loop6060760671_ _target6060460665_ '()))
                      (_g6058760618_ _g6058860622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6058760618_
                                                     _g6058860622_))))
                                            (_g6058760618_ _g6058860622_))))
                                    (_g6058760618_ _g6058860622_))))
                            (_g6058760618_ _g6058860622_))))
                    (_g6058760618_ _g6058860622_)))))
        (_g6058660737_ _$stx60583_))))
  (define |[:0:]#defshadow-class|
    (lambda (_$stx60742_)
      (let* ((_g6074660777_
              (lambda (_g6074760773_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6074760773_)))
             (_g6074560888_
              (lambda (_g6074760781_)
                (if (gx#stx-pair? _g6074760781_)
                    (let ((_e6075160784_ (gx#syntax-e _g6074760781_)))
                      (let ((_hd6075260788_
                             (let ()
                               (declare (not safe))
                               (##car _e6075160784_)))
                            (_tl6075360791_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6075160784_))))
                        (if (gx#stx-pair? _tl6075360791_)
                            (let ((_e6075460794_ (gx#syntax-e _tl6075360791_)))
                              (let ((_hd6075560798_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6075460794_)))
                                    (_tl6075660801_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6075460794_))))
                                (if (gx#stx-pair? _tl6075660801_)
                                    (let ((_e6075760804_
                                           (gx#syntax-e _tl6075660801_)))
                                      (let ((_hd6075860808_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6075760804_)))
                                            (_tl6075960811_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6075760804_))))
                                        (if (gx#stx-pair/null? _hd6075860808_)
                                            (let ((_g63302_
                                                   (gx#syntax-split-splice
                                                    _hd6075860808_
                                                    '0)))
                                              (begin
                                                (let ((_g63303_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g63302_)
                                                             (##vector-length
                                                              _g63302_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g63303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g63303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target6076060814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g63302_
                                                          0)))
                                                      (_tl6076260817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g63302_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl6076260817_)
                                                      (letrec ((_loop6076360820_
                                                                (lambda (_hd6076160824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _super6076760827_)
                          (if (gx#stx-pair? _hd6076160824_)
                              (let ((_e6076460830_
                                     (gx#syntax-e _hd6076160824_)))
                                (let ((_lp-hd6076560834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6076460830_)))
                                      (_lp-tl6076660837_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6076460830_))))
                                  (_loop6076360820_
                                   _lp-tl6076660837_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd6076560834_
                                           _super6076760827_)))))
                              (let ((_super6076860840_
                                     (reverse _super6076760827_)))
                                (if (gx#stx-pair? _tl6075960811_)
                                    (let ((_e6076960844_
                                           (gx#syntax-e _tl6075960811_)))
                                      (let ((_hd6077060848_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6076960844_)))
                                            (_tl6077160851_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6076960844_))))
                                        (if (gx#stx-null? _tl6077160851_)
                                            ((lambda (_L60854_
                                                      _L60856_
                                                      _L60857_)
                                               (let ((__tmp63319
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp63304
                                                      (let ((__tmp63305
                                                             (let ((__tmp63306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp63318
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp63307
                                   (let ((__tmp63312
                                          (let ((__tmp63317
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp63313
                                                 (let ((__tmp63314
                                                        (let ((__tmp63315
                                                               (let ((__tmp63316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6087960882_ _g6088060885_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6087960882_ _g6088060885_)))))
                         (declare (not safe))
                         (foldr1 __tmp63316 '() _L60856_))))
                  (declare (not safe))
                  (cons __tmp63315 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L60857_
                                                         __tmp63314))))
                                            (declare (not safe))
                                            (cons __tmp63317 __tmp63313)))
                                         (__tmp63308
                                          (let ((__tmp63309
                                                 (let ((__tmp63311
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__shadow-class))
                                                       (__tmp63310
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L60854_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp63311
                                                         __tmp63310))))
                                            (declare (not safe))
                                            (cons __tmp63309 '()))))
                                     (declare (not safe))
                                     (cons __tmp63312 __tmp63308))))
                              (declare (not safe))
                              (cons __tmp63318 __tmp63307))))
                       (declare (not safe))
                       (cons __tmp63306 '()))))
                (declare (not safe))
                (cons _L60857_ __tmp63305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63319 __tmp63304)))
                                             _hd6077060848_
                                             _super6076860840_
                                             _hd6075560798_)
                                            (_g6074660777_ _g6074760781_))))
                                    (_g6074660777_ _g6074760781_)))))))
                (_loop6076360820_ _target6076060814_ '()))
              (_g6074660777_ _g6074760781_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g6074660777_ _g6074760781_))))
                                    (_g6074660777_ _g6074760781_))))
                            (_g6074660777_ _g6074760781_))))
                    (_g6074660777_ _g6074760781_)))))
        (_g6074560888_ _$stx60742_)))))
