(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134170_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134172_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134174_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134179_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134182_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134187_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134190_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134195_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134198_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134203_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134206_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134313_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134167
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134169 |gx[1]#_g134170_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           __tmp134169
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134171 |gx[1]#_g134172_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           __tmp134171
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134173 |gx[1]#_g134174_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           __tmp134173
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134175
               (let ((__tmp134180
                      (let ((__tmp134181 |gx[1]#_g134182_|))
                        (declare (not safe))
                        (cons 'e __tmp134181)))
                     (__tmp134176
                      (let ((__tmp134177
                             (let ((__tmp134178 |gx[1]#_g134179_|))
                               (declare (not safe))
                               (cons 'source __tmp134178))))
                        (declare (not safe))
                        (cons __tmp134177 '()))))
                 (declare (not safe))
                 (cons __tmp134180 __tmp134176))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           __tmp134175
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134183
               (let ((__tmp134188
                      (let ((__tmp134189 |gx[1]#_g134190_|))
                        (declare (not safe))
                        (cons 'e __tmp134189)))
                     (__tmp134184
                      (let ((__tmp134185
                             (let ((__tmp134186 |gx[1]#_g134187_|))
                               (declare (not safe))
                               (cons 'source __tmp134186))))
                        (declare (not safe))
                        (cons __tmp134185 '()))))
                 (declare (not safe))
                 (cons __tmp134188 __tmp134184))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           __tmp134183
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134191
               (let ((__tmp134196
                      (let ((__tmp134197 |gx[1]#_g134198_|))
                        (declare (not safe))
                        (cons 'e __tmp134197)))
                     (__tmp134192
                      (let ((__tmp134193
                             (let ((__tmp134194 |gx[1]#_g134195_|))
                               (declare (not safe))
                               (cons 'source __tmp134194))))
                        (declare (not safe))
                        (cons __tmp134193 '()))))
                 (declare (not safe))
                 (cons __tmp134196 __tmp134192))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           __tmp134191
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134199
               (let ((__tmp134204
                      (let ((__tmp134205 |gx[1]#_g134206_|))
                        (declare (not safe))
                        (cons 'e __tmp134205)))
                     (__tmp134200
                      (let ((__tmp134201
                             (let ((__tmp134202 |gx[1]#_g134203_|))
                               (declare (not safe))
                               (cons 'source __tmp134202))))
                        (declare (not safe))
                        (cons __tmp134201 '()))))
                 (declare (not safe))
                 (cons __tmp134204 __tmp134200))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134167
           __tmp134199
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134167))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128319_)
        (let* ((_g128323128337_
                (lambda (_g128324128333_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128324128333_)))
               (_g128322128379_
                (lambda (_g128324128341_)
                  (if (gx#stx-pair? _g128324128341_)
                      (let ((_e128328128344_ (gx#syntax-e _g128324128341_)))
                        (let ((_hd128327128348_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128328128344_)))
                              (_tl128326128351_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128328128344_))))
                          (if (gx#stx-pair? _tl128326128351_)
                              (let ((_e128331128354_
                                     (gx#syntax-e _tl128326128351_)))
                                (let ((_hd128330128358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128331128354_)))
                                      (_tl128329128361_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128331128354_))))
                                  (if (gx#stx-null? _tl128329128361_)
                                      ((lambda (_L128364_)
                                         (let ((__tmp134216
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134207
                                                (let ((__tmp134213
                                                       (let ((__tmp134215
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134214
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128364_ '()))))
                 (declare (not safe))
                 (cons __tmp134215 __tmp134214)))
              (__tmp134208
               (let ((__tmp134209
                      (let ((__tmp134212 (gx#datum->syntax '#f 'error))
                            (__tmp134210
                             (let ((__tmp134211
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128364_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134211))))
                        (declare (not safe))
                        (cons __tmp134212 __tmp134210))))
                 (declare (not safe))
                 (cons __tmp134209 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134213
                                                        __tmp134208))))
                                           (declare (not safe))
                                           (cons __tmp134216 __tmp134207)))
                                       _hd128330128358_)
                                      (_g128323128337_ _g128324128341_))))
                              (_g128323128337_ _g128324128341_))))
                      (_g128323128337_ _g128324128341_)))))
          (_g128322128379_ _$stx128319_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128383_)
        (letrec ((_generate128386_
                  (lambda (_tgt128535_ _kws128537_ _clauses128538_)
                    (letrec ((_generate-clause128540_
                              (lambda (_hd129450_ _E129452_)
                                (let* ((___stx134070134071_ _hd129450_)
                                       (_g129456129483_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134070134071_))))
                                  (let ((___kont134073134074_
                                         (lambda (_L129579_ _L129581_)
                                           (_generate1128542_
                                            _hd129450_
                                            _L129581_
                                            '#t
                                            _L129579_
                                            _E129452_)))
                                        (___kont134075134076_
                                         (lambda (_L129531_
                                                  _L129533_
                                                  _L129534_)
                                           (_generate1128542_
                                            _hd129450_
                                            _L129534_
                                            _L129533_
                                            _L129531_
                                            _E129452_)))
                                        (___kont134077134078_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128383_
                                            _hd129450_))))
                                    (if (gx#stx-pair? ___stx134070134071_)
                                        (let ((_e129462129559_
                                               (gx#syntax-e
                                                ___stx134070134071_)))
                                          (let ((_tl129460129566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129462129559_)))
                                                (_hd129461129563_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129462129559_))))
                                            (if (gx#stx-pair? _tl129460129566_)
                                                (let ((_e129465129569_
                                                       (gx#syntax-e
                                                        _tl129460129566_)))
                                                  (let ((_tl129463129576_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129465129569_)))
                                                        (_hd129464129573_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129465129569_))))
                                                    (if (gx#stx-null?
                                                         _tl129463129576_)
                                                        (___kont134073134074_
                                                         _hd129464129573_
                                                         _hd129461129563_)
                                                        (if (gx#stx-pair?
                                                             _tl129463129576_)
                                                            (let ((_e129477129521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129463129576_)))
                      (let ((_tl129475129528_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129477129521_)))
                            (_hd129476129525_
                             (let ()
                               (declare (not safe))
                               (##car _e129477129521_))))
                        (if (gx#stx-null? _tl129475129528_)
                            (___kont134075134076_
                             _hd129476129525_
                             _hd129464129573_
                             _hd129461129563_)
                            (___kont134077134078_))))
                    (___kont134077134078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134077134078_))))
                                        (___kont134077134078_))))))
                             (_generate1128542_
                              (lambda (_where128928_
                                       _hd128930_
                                       _fender128931_
                                       _body128932_
                                       _E128933_)
                                (letrec ((_recur128935_
                                          (lambda (_hd128938_
                                                   _tgt128940_
                                                   _K128941_)
                                            (let* ((___stx134116134117_
                                                    _hd128938_)
                                                   (_g128944128956_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134116134117_))))
                                              (let ((___kont134119134120_
                                                     (lambda (_L129240_
                                                              _L129242_)
                                                       (let* ((_g129253129261_
                                                               (lambda (_g129254129257_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129254129257_)))
                      (_g129252129442_
                       (lambda (_g129254129265_)
                         ((lambda (_L129268_)
                            (let ()
                              (let* ((_g129280129288_
                                      (lambda (_g129281129284_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129281129284_)))
                                     (_g129279129438_
                                      (lambda (_g129281129292_)
                                        ((lambda (_L129295_)
                                           (let ()
                                             (let* ((_g129308129316_
                                                     (lambda (_g129309129312_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129309129312_)))
                                                    (_g129307129434_
                                                     (lambda (_g129309129320_)
                                                       ((lambda (_L129323_)
                                                          (let ()
                                                            (let* ((_g129336129344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129337129340_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129337129340_)))
                           (_g129335129430_
                            (lambda (_g129337129348_)
                              ((lambda (_L129351_)
                                 (let ()
                                   (let* ((_g129364129372_
                                           (lambda (_g129365129368_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129365129368_)))
                                          (_g129363129426_
                                           (lambda (_g129365129376_)
                                             ((lambda (_L129379_)
                                                (let ()
                                                  (let* ((_g129392129400_
                                                          (lambda (_g129393129396_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129393129396_)))
                                                         (_g129391129422_
                                                          (lambda (_g129393129404_)
                                                            ((lambda (_L129407_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134249 (gx#datum->syntax '#f 'if))
                                 (__tmp134217
                                  (let ((__tmp134246
                                         (let ((__tmp134248
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134247
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129268_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134248 __tmp134247)))
                                        (__tmp134218
                                         (let ((__tmp134220
                                                (let ((__tmp134245
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134221
                                                       (let ((__tmp134239
                                                              (let ((__tmp134240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134241
                                    (let ((__tmp134242
                                           (let ((__tmp134244
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134243
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129268_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134244 __tmp134243))))
                                      (declare (not safe))
                                      (cons __tmp134242 '()))))
                               (declare (not safe))
                               (cons _L129295_ __tmp134241))))
                        (declare (not safe))
                        (cons __tmp134240 '())))
                     (__tmp134222
                      (let ((__tmp134223
                             (let ((__tmp134238 (gx#datum->syntax '#f 'let))
                                   (__tmp134224
                                    (let ((__tmp134226
                                           (let ((__tmp134233
                                                  (let ((__tmp134234
                                                         (let ((__tmp134235
                                                                (let ((__tmp134237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134236
                               (let ()
                                 (declare (not safe))
                                 (cons _L129295_ '()))))
                          (declare (not safe))
                          (cons __tmp134237 __tmp134236))))
                   (declare (not safe))
                   (cons __tmp134235 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129323_
                                                          __tmp134234)))
                                                 (__tmp134227
                                                  (let ((__tmp134228
                                                         (let ((__tmp134229
                                                                (let ((__tmp134230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134232
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134231
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129295_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134232 __tmp134231))))
                          (declare (not safe))
                          (cons __tmp134230 '()))))
                   (declare (not safe))
                   (cons _L129351_ __tmp134229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134228 '()))))
                                             (declare (not safe))
                                             (cons __tmp134233 __tmp134227)))
                                          (__tmp134225
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129379_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134226 __tmp134225))))
                               (declare (not safe))
                               (cons __tmp134238 __tmp134224))))
                        (declare (not safe))
                        (cons __tmp134223 '()))))
                 (declare (not safe))
                 (cons __tmp134239 __tmp134222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134245
                                                        __tmp134221)))
                                               (__tmp134219
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129407_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134220 __tmp134219))))
                                    (declare (not safe))
                                    (cons __tmp134246 __tmp134218))))
                             (declare (not safe))
                             (cons __tmp134249 __tmp134217)))))
                     _g129393129404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129391129422_
                                                     _E128933_))))
                                              _g129365129376_))))
                                     (_g129363129426_
                                      (_recur128935_
                                       _L129242_
                                       _L129323_
                                       (_recur128935_
                                        _L129240_
                                        _L129351_
                                        _K128941_))))))
                               _g129337129348_))))
                      (_g129335129430_ (gx#genident 'tl)))))
                _g129309129320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129307129434_
                                                (gx#genident 'hd)))))
                                         _g129281129292_))))
                                (_g129279129438_ (gx#genident 'e)))))
                          _g129254129265_))))
                 (_g129252129442_ _tgt128940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134121134122_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd128938_)
                                                           (if (gx#underscore?
                                                                _hd128938_)
                                                               _K128941_
                                                               (if (let ((__tmp134294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g128966128968_)
                                    (gx#bound-identifier=?
                                     _g128966128968_
                                     _hd128938_))))
                             (declare (not safe))
                             (find __tmp134294 _kws128537_))
                           (let* ((_g128972128987_
                                   (lambda (_g128973128983_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g128973128983_)))
                                  (_g128971129038_
                                   (lambda (_g128973128991_)
                                     (if (gx#stx-pair? _g128973128991_)
                                         (let ((_e128978128994_
                                                (gx#syntax-e _g128973128991_)))
                                           (let ((_hd128977128998_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128978128994_)))
                                                 (_tl128976129001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128978128994_))))
                                             (if (gx#stx-pair?
                                                  _tl128976129001_)
                                                 (let ((_e128981129004_
                                                        (gx#syntax-e
                                                         _tl128976129001_)))
                                                   (let ((_hd128980129008_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e128981129004_)))
                                                         (_tl128979129011_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e128981129004_))))
                                                     (if (gx#stx-null?
                                                          _tl128979129011_)
                                                         ((lambda (_L129014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129016_)
                    (let ()
                      (let ((__tmp134293 (gx#datum->syntax '#f 'if))
                            (__tmp134276
                             (let ((__tmp134279
                                    (let ((__tmp134292
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134280
                                           (let ((__tmp134289
                                                  (let ((__tmp134291
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134290
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L129016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134291
                                                          __tmp134290)))
                                                 (__tmp134281
                                                  (let ((__tmp134282
                                                         (let ((__tmp134288
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134283
                        (let ((__tmp134284
                               (let ((__tmp134285
                                      (let ((__tmp134287
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134286
                                             (let ()
                                               (declare (not safe))
                                               (cons _L129014_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134287 __tmp134286))))
                                 (declare (not safe))
                                 (cons __tmp134285 '()))))
                          (declare (not safe))
                          (cons _L129016_ __tmp134284))))
                   (declare (not safe))
                   (cons __tmp134288 __tmp134283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134282 '()))))
                                             (declare (not safe))
                                             (cons __tmp134289 __tmp134281))))
                                      (declare (not safe))
                                      (cons __tmp134292 __tmp134280)))
                                   (__tmp134277
                                    (let ((__tmp134278
                                           (let ()
                                             (declare (not safe))
                                             (cons _E128933_ '()))))
                                      (declare (not safe))
                                      (cons _K128941_ __tmp134278))))
                               (declare (not safe))
                               (cons __tmp134279 __tmp134277))))
                        (declare (not safe))
                        (cons __tmp134293 __tmp134276))))
                  _hd128980129008_
                  _hd128977128998_)
                 (_g128972128987_ _g128973128991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g128972128987_
                                                  _g128973128991_))))
                                         (_g128972128987_ _g128973128991_)))))
                             (_g128971129038_ (list _tgt128940_ _hd128938_)))
                           (let* ((_g129042129057_
                                   (lambda (_g129043129053_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129043129053_)))
                                  (_g129041129101_
                                   (lambda (_g129043129061_)
                                     (if (gx#stx-pair? _g129043129061_)
                                         (let ((_e129048129064_
                                                (gx#syntax-e _g129043129061_)))
                                           (let ((_hd129047129068_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129048129064_)))
                                                 (_tl129046129071_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129048129064_))))
                                             (if (gx#stx-pair?
                                                  _tl129046129071_)
                                                 (let ((_e129051129074_
                                                        (gx#syntax-e
                                                         _tl129046129071_)))
                                                   (let ((_hd129050129078_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129051129074_)))
                                                         (_tl129049129081_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129051129074_))))
                                                     (if (gx#stx-null?
                                                          _tl129049129081_)
                                                         ((lambda (_L129084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129086_)
                    (let ()
                      (let ((__tmp134275 (gx#datum->syntax '#f 'let))
                            (__tmp134270
                             (let ((__tmp134272
                                    (let ((__tmp134273
                                           (let ((__tmp134274
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129086_ '()))))
                                             (declare (not safe))
                                             (cons _L129084_ __tmp134274))))
                                      (declare (not safe))
                                      (cons __tmp134273 '())))
                                   (__tmp134271
                                    (let ()
                                      (declare (not safe))
                                      (cons _K128941_ '()))))
                               (declare (not safe))
                               (cons __tmp134272 __tmp134271))))
                        (declare (not safe))
                        (cons __tmp134275 __tmp134270))))
                  _hd129050129078_
                  _hd129047129068_)
                 (_g129042129057_ _g129043129061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129042129057_
                                                  _g129043129061_))))
                                         (_g129042129057_ _g129043129061_)))))
                             (_g129041129101_ (list _tgt128940_ _hd128938_)))))
                   (if (gx#stx-null? _hd128938_)
                       (let* ((_g129105129113_
                               (lambda (_g129106129109_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g129106129109_)))
                              (_g129104129131_
                               (lambda (_g129106129117_)
                                 ((lambda (_L129120_)
                                    (let ()
                                      (let ((__tmp134269
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134263
                                             (let ((__tmp134266
                                                    (let ((__tmp134268
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134267
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L129120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134268 __tmp134267)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134264
                                                    (let ((__tmp134265
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E128933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K128941_ __tmp134265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134266
                                                     __tmp134264))))
                                        (declare (not safe))
                                        (cons __tmp134269 __tmp134263))))
                                  _g129106129117_))))
                         (_g129104129131_ _tgt128940_))
                       (if (gx#stx-datum? _hd128938_)
                           (let* ((_g129135129154_
                                   (lambda (_g129136129150_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129136129150_)))
                                  (_g129134129212_
                                   (lambda (_g129136129158_)
                                     (if (gx#stx-pair? _g129136129158_)
                                         (let ((_e129142129161_
                                                (gx#syntax-e _g129136129158_)))
                                           (let ((_hd129141129165_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129142129161_)))
                                                 (_tl129140129168_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129142129161_))))
                                             (if (gx#stx-pair?
                                                  _tl129140129168_)
                                                 (let ((_e129145129171_
                                                        (gx#syntax-e
                                                         _tl129140129168_)))
                                                   (let ((_hd129144129175_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129145129171_)))
                                                         (_tl129143129178_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129145129171_))))
                                                     (if (gx#stx-pair?
                                                          _tl129143129178_)
                                                         (let ((_e129148129181_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129143129178_)))
                   (let ((_hd129147129185_
                          (let ()
                            (declare (not safe))
                            (##car _e129148129181_)))
                         (_tl129146129188_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129148129181_))))
                     (if (gx#stx-null? _tl129146129188_)
                         ((lambda (_L129191_ _L129193_ _L129194_)
                            (let ()
                              (let ((__tmp134262 (gx#datum->syntax '#f 'if))
                                    (__tmp134250
                                     (let ((__tmp134253
                                            (let ((__tmp134254
                                                   (let ((__tmp134259
                                                          (let ((__tmp134261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134260
                         (let () (declare (not safe)) (cons _L129194_ '()))))
                    (declare (not safe))
                    (cons __tmp134261 __tmp134260)))
                 (__tmp134255
                  (let ((__tmp134256
                         (let ((__tmp134258 (gx#datum->syntax '#f 'quote))
                               (__tmp134257
                                (let ()
                                  (declare (not safe))
                                  (cons _L129193_ '()))))
                           (declare (not safe))
                           (cons __tmp134258 __tmp134257))))
                    (declare (not safe))
                    (cons __tmp134256 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134259
                                                           __tmp134255))))
                                              (declare (not safe))
                                              (cons _L129191_ __tmp134254)))
                                           (__tmp134251
                                            (let ((__tmp134252
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E128933_ '()))))
                                              (declare (not safe))
                                              (cons _K128941_ __tmp134252))))
                                       (declare (not safe))
                                       (cons __tmp134253 __tmp134251))))
                                (declare (not safe))
                                (cons __tmp134262 __tmp134250))))
                          _hd129147129185_
                          _hd129144129175_
                          _hd129141129165_)
                         (_g129135129154_ _g129136129158_))))
                 (_g129135129154_ _g129136129158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129135129154_
                                                  _g129136129158_))))
                                         (_g129135129154_ _g129136129158_)))))
                             (_g129134129212_
                              (list _tgt128940_
                                    _hd128938_
                                    (let ((_e129216_ (gx#stx-e _hd128938_)))
                                      (if (or (keyword? _e129216_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129216_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129216_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128383_
                            _where128928_
                            _hd128938_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx134116134117_)
                                                    (let ((_e128950129230_
                                                           (gx#syntax-e
                                                            ___stx134116134117_)))
                                                      (let ((_tl128948129237_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128950129230_)))
                    (_hd128949129234_
                     (let () (declare (not safe)) (##car _e128950129230_))))
                (___kont134119134120_ _tl128948129237_ _hd128949129234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134121134122_)))))))
                                  (_recur128935_
                                   _hd128930_
                                   _tgt128535_
                                   (let ((__tmp134298
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134295
                                          (let ((__tmp134296
                                                 (let ((__tmp134297
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E128933_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body128932_
                                                         __tmp134297))))
                                            (declare (not safe))
                                            (cons _fender128931_
                                                  __tmp134296))))
                                     (declare (not safe))
                                     (cons __tmp134298 __tmp134295))))))
                             (_generate-clauses128543_
                              (lambda (_clauses128666_)
                                (let _lp128669_ ((_rest128672_ _clauses128666_)
                                                 (_E128674_ (gx#genident 'E))
                                                 (_r128675_ '()))
                                  (let* ((___stx134152134153_ _rest128672_)
                                         (_g128678128690_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134152134153_))))
                                    (let ((___kont134155134156_
                                           (lambda (_L128755_ _L128757_)
                                             (let* ((___stx134132134133_
                                                     _L128757_)
                                                    (_g128769128780_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134132134133_))))
                                               (let ((___kont134135134136_
                                                      (lambda (_L128909_)
                                                        (if (gx#stx-null?
                                                             _L128755_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L128909_)
                             (let ((__tmp134307 (gx#stx-null? _L128909_)))
                               (declare (not safe))
                               (not __tmp134307)))
                        (let ((__tmp134299
                               (let ((__tmp134300
                                      (let ((__tmp134301
                                             (gx#stx-wrap-source
                                              (let ((__tmp134306
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134302
                                                     (let ((__tmp134303
                                                            (let ((__tmp134304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134305 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134305 _L128909_))))
                      (declare (not safe))
                      (cons __tmp134304 '()))))
               (declare (not safe))
               (cons '() __tmp134303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134306 __tmp134302))
                                              (gx#stx-source _L128757_))))
                                        (declare (not safe))
                                        (cons __tmp134301 '()))))
                                 (declare (not safe))
                                 (cons _E128674_ __tmp134300))))
                          (declare (not safe))
                          (cons __tmp134299 _r128675_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128383_
                         _L128757_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128383_
                     _L128757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134137134138_
                                                      (lambda ()
                                                        (let* ((_g128791128799_
                                                                (lambda (_g128792128795_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g128792128795_)))
                       (_g128790128888_
                        (lambda (_g128792128803_)
                          ((lambda (_L128806_)
                             (let ()
                               (let* ((_g128822128830_
                                       (lambda (_g128823128826_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g128823128826_)))
                                      (_g128821128884_
                                       (lambda (_g128823128834_)
                                         ((lambda (_L128837_)
                                            (let ()
                                              (let* ((_g128850128858_
                                                      (lambda (_g128851128854_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g128851128854_)))
                                                     (_g128849128880_
                                                      (lambda (_g128851128862_)
                                                        ((lambda (_L128865_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128669_
                                                                _L128755_
                                                                _L128806_
                                                                (let ((__tmp134308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134309
                                      (let ()
                                        (declare (not safe))
                                        (cons _L128865_ '()))))
                                 (declare (not safe))
                                 (cons _E128674_ __tmp134309))))
                          (declare (not safe))
                          (cons __tmp134308 _r128675_))))))
                 _g128851128862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g128849128880_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134312
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134310
                                                         (let ((__tmp134311
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L128837_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134312
                                                          __tmp134310))
                                                  (gx#stx-source
                                                   _L128757_))))))
                                          _g128823128834_))))
                                 (_g128821128884_
                                  (_generate-clause128540_
                                   _L128757_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L128806_ '())))))))
                           _g128792128803_))))
                  (_g128790128888_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134132134133_)
                                                     (let ((_e128774128899_
                                                            (gx#syntax-e
                                                             ___stx134132134133_)))
                                                       (let ((_tl128772128906_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e128774128899_)))
                     (_hd128773128903_
                      (let () (declare (not safe)) (##car _e128774128899_))))
                 (if (gx#identifier? _hd128773128903_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134313_|
                          _hd128773128903_)
                         (___kont134135134136_ _tl128772128906_)
                         (___kont134137134138_))
                     (___kont134137134138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134137134138_))))))
                                          (___kont134157134158_
                                           (lambda ()
                                             (let* ((_g128701128709_
                                                     (lambda (_g128702128705_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128702128705_)))
                                                    (_g128700128734_
                                                     (lambda (_g128702128713_)
                                                       ((lambda (_L128716_)
                                                          (let ()
                                                            (let ((__tmp134314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134315
                                  (let ((__tmp134316
                                         (gx#stx-wrap-source
                                          (let ((__tmp134324
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134317
                                                 (let ((__tmp134318
                                                        (let ((__tmp134319
                                                               (let ((__tmp134323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134320
                              (let ((__tmp134321
                                     (let ((__tmp134322
                                            (let ()
                                              (declare (not safe))
                                              (cons _L128716_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134322))))
                                (declare (not safe))
                                (cons '#f __tmp134321))))
                         (declare (not safe))
                         (cons __tmp134323 __tmp134320))))
                  (declare (not safe))
                  (cons __tmp134319 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134318))))
                                            (declare (not safe))
                                            (cons __tmp134324 __tmp134317))
                                          (gx#stx-source _stx128383_))))
                                    (declare (not safe))
                                    (cons __tmp134316 '()))))
                             (declare (not safe))
                             (cons _E128674_ __tmp134315))))
                      (declare (not safe))
                      (cons __tmp134314 _r128675_))))
                _g128702128713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128700128734_
                                                _tgt128535_)))))
                                      (if (gx#stx-pair? ___stx134152134153_)
                                          (let ((_e128684128745_
                                                 (gx#syntax-e
                                                  ___stx134152134153_)))
                                            (let ((_tl128682128752_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128684128745_)))
                                                  (_hd128683128749_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128684128745_))))
                                              (___kont134155134156_
                                               _tl128682128752_
                                               _hd128683128749_)))
                                          (___kont134157134158_))))))))
                      (let* ((_bind128545_
                              (_generate-clauses128543_ _clauses128538_))
                             (_g128548128565_
                              (lambda (_g128549128561_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128549128561_)))
                             (_g128547128662_
                              (lambda (_g128549128569_)
                                (if (gx#stx-pair/null? _g128549128569_)
                                    (let ((_g134325_
                                           (gx#syntax-split-splice
                                            _g128549128569_
                                            '0)))
                                      (begin
                                        (let ((_g134326_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134325_)
                                                     (##vector-length
                                                      _g134325_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134326_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134326_)))
                                        (let ((_target128551128572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134325_ 0)))
                                              (_tl128553128575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134325_ 1))))
                                          (if (gx#stx-null? _tl128553128575_)
                                              (letrec ((_loop128554128578_
                                                        (lambda (_hd128552128582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128558128585_)
                  (if (gx#stx-pair? _hd128552128582_)
                      (let ((_e128555128588_ (gx#syntax-e _hd128552128582_)))
                        (let ((_lp-hd128556128592_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128555128588_)))
                              (_lp-tl128557128595_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128555128588_))))
                          (_loop128554128578_
                           _lp-tl128557128595_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128556128592_
                                   _bind-try128558128585_)))))
                      (let ((_bind-try128559128598_
                             (reverse _bind-try128558128585_)))
                        ((lambda (_L128602_)
                           (let ()
                             (let* ((_g128620128628_
                                     (lambda (_g128621128624_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128621128624_)))
                                    (_g128619128658_
                                     (lambda (_g128621128632_)
                                       ((lambda (_L128635_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134332
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134327
                                                     (let ((__tmp134330
                                                            (let ((__tmp134331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128649128652_ _g128650128655_)
                             (let ()
                               (declare (not safe))
                               (cons _g128649128652_ _g128650128655_)))))
                      (declare (not safe))
                      (foldr1 __tmp134331 '() _L128602_)))
                   (__tmp134328
                    (let ((__tmp134329
                           (let () (declare (not safe)) (cons _L128635_ '()))))
                      (declare (not safe))
                      (cons __tmp134329 '()))))
               (declare (not safe))
               (cons __tmp134330 __tmp134328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134332
                                                      __tmp134327)))))
                                        _g128621128632_))))
                               (_g128619128658_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128545_)))))))
                         _bind-try128559128598_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128554128578_
                                                 _target128551128572_
                                                 '()))
                                              (_g128548128565_
                                               _g128549128569_)))))
                                    (_g128548128565_ _g128549128569_)))))
                        (_g128547128662_ _bind128545_))))))
          (let* ((_g128389128408_
                  (lambda (_g128390128404_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128390128404_)))
                 (_g128388128531_
                  (lambda (_g128390128412_)
                    (if (gx#stx-pair? _g128390128412_)
                        (let ((_e128396128415_ (gx#syntax-e _g128390128412_)))
                          (let ((_hd128395128419_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128396128415_)))
                                (_tl128394128422_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128396128415_))))
                            (if (gx#stx-pair? _tl128394128422_)
                                (let ((_e128399128425_
                                       (gx#syntax-e _tl128394128422_)))
                                  (let ((_hd128398128429_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128399128425_)))
                                        (_tl128397128432_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128399128425_))))
                                    (if (gx#stx-pair? _tl128397128432_)
                                        (let ((_e128402128435_
                                               (gx#syntax-e _tl128397128432_)))
                                          (let ((_hd128401128439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128402128435_)))
                                                (_tl128400128442_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128402128435_))))
                                            ((lambda (_L128445_
                                                      _L128447_
                                                      _L128448_)
                                               (if (and (gx#identifier-list?
                                                         _L128447_)
                                                        (gx#stx-list?
                                                         _L128445_))
                                                   (let* ((_g128466128474_
                                                           (lambda (_g128467128470_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128467128470_)))
                                                          (_g128465128527_
                                                           (lambda (_g128467128478_)
                                                             ((lambda (_L128481_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128493128501_
                                  (lambda (_g128494128497_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128494128497_)))
                                 (_g128492128523_
                                  (lambda (_g128494128505_)
                                    ((lambda (_L128508_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134338
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134333
                                                  (let ((__tmp134335
                                                         (let ((__tmp134336
                                                                (let ((__tmp134337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128448_ '()))))
                          (declare (not safe))
                          (cons _L128481_ __tmp134337))))
                   (declare (not safe))
                   (cons __tmp134336 '())))
                (__tmp134334
                 (let () (declare (not safe)) (cons _L128508_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134335
                                                          __tmp134334))))
                                             (declare (not safe))
                                             (cons __tmp134338 __tmp134333)))))
                                     _g128494128505_))))
                            (_g128492128523_
                             (_generate128386_
                              _L128481_
                              (gx#syntax->list _L128447_)
                              _L128445_)))))
                      _g128467128478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128465128527_
                                                      (gx#genident 'e)))
                                                   (_g128389128408_
                                                    _g128390128412_)))
                                             _tl128400128442_
                                             _hd128401128439_
                                             _hd128398128429_)))
                                        (_g128389128408_ _g128390128412_))))
                                (_g128389128408_ _g128390128412_))))
                        (_g128389128408_ _g128390128412_)))))
            (_g128388128531_ _stx128383_)))))))
