(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g80124_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80126_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80128_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80133_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80136_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80141_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80144_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80149_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80152_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80157_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80160_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80267_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj80119
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80123 |gx[1]#_g80124_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           __tmp80123
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80125 |gx[1]#_g80126_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           __tmp80125
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80127 |gx[1]#_g80128_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           __tmp80127
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80129
               (let ((__tmp80134
                      (let ((__tmp80135 |gx[1]#_g80136_|))
                        (declare (not safe))
                        (cons 'e __tmp80135)))
                     (__tmp80130
                      (let ((__tmp80131
                             (let ((__tmp80132 |gx[1]#_g80133_|))
                               (declare (not safe))
                               (cons 'source __tmp80132))))
                        (declare (not safe))
                        (cons __tmp80131 '()))))
                 (declare (not safe))
                 (cons __tmp80134 __tmp80130))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           __tmp80129
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80137
               (let ((__tmp80142
                      (let ((__tmp80143 |gx[1]#_g80144_|))
                        (declare (not safe))
                        (cons 'e __tmp80143)))
                     (__tmp80138
                      (let ((__tmp80139
                             (let ((__tmp80140 |gx[1]#_g80141_|))
                               (declare (not safe))
                               (cons 'source __tmp80140))))
                        (declare (not safe))
                        (cons __tmp80139 '()))))
                 (declare (not safe))
                 (cons __tmp80142 __tmp80138))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           __tmp80137
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80145
               (let ((__tmp80150
                      (let ((__tmp80151 |gx[1]#_g80152_|))
                        (declare (not safe))
                        (cons 'e __tmp80151)))
                     (__tmp80146
                      (let ((__tmp80147
                             (let ((__tmp80148 |gx[1]#_g80149_|))
                               (declare (not safe))
                               (cons 'source __tmp80148))))
                        (declare (not safe))
                        (cons __tmp80147 '()))))
                 (declare (not safe))
                 (cons __tmp80150 __tmp80146))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           __tmp80145
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80153
               (let ((__tmp80158
                      (let ((__tmp80159 |gx[1]#_g80160_|))
                        (declare (not safe))
                        (cons 'e __tmp80159)))
                     (__tmp80154
                      (let ((__tmp80155
                             (let ((__tmp80156 |gx[1]#_g80157_|))
                               (declare (not safe))
                               (cons 'source __tmp80156))))
                        (declare (not safe))
                        (cons __tmp80155 '()))))
                 (declare (not safe))
                 (cons __tmp80158 __tmp80154))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80119
           __tmp80153
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj80119))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78739_)
        (let* ((_g7874378757_
                (lambda (_g7874478753_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7874478753_)))
               (_g7874278799_
                (lambda (_g7874478761_)
                  (if (gx#stx-pair? _g7874478761_)
                      (let ((_e7874878764_ (gx#syntax-e _g7874478761_)))
                        (let ((_hd7874778768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7874878764_)))
                              (_tl7874678771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7874878764_))))
                          (if (gx#stx-pair? _tl7874678771_)
                              (let ((_e7875178774_
                                     (gx#syntax-e _tl7874678771_)))
                                (let ((_hd7875078778_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7875178774_)))
                                      (_tl7874978781_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7875178774_))))
                                  (if (gx#stx-null? _tl7874978781_)
                                      ((lambda (_L78784_)
                                         (let ((__tmp80170
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp80161
                                                (let ((__tmp80167
                                                       (let ((__tmp80169
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp80168
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78784_ '()))))
                 (declare (not safe))
                 (cons __tmp80169 __tmp80168)))
              (__tmp80162
               (let ((__tmp80163
                      (let ((__tmp80166 (gx#datum->syntax '#f 'error))
                            (__tmp80164
                             (let ((__tmp80165
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78784_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp80165))))
                        (declare (not safe))
                        (cons __tmp80166 __tmp80164))))
                 (declare (not safe))
                 (cons __tmp80163 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80167
                                                        __tmp80162))))
                                           (declare (not safe))
                                           (cons __tmp80170 __tmp80161)))
                                       _hd7875078778_)
                                      (_g7874378757_ _g7874478761_))))
                              (_g7874378757_ _g7874478761_))))
                      (_g7874378757_ _g7874478761_)))))
          (_g7874278799_ _$stx78739_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78803_)
        (letrec ((_generate78806_
                  (lambda (_tgt78955_ _kws78957_ _clauses78958_)
                    (letrec ((_generate-clause78960_
                              (lambda (_hd79870_ _E79872_)
                                (let* ((___stx8002280023_ _hd79870_)
                                       (_g7987679903_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8002280023_))))
                                  (let ((___kont8002580026_
                                         (lambda (_L79999_ _L80001_)
                                           (_generate178962_
                                            _hd79870_
                                            _L80001_
                                            '#t
                                            _L79999_
                                            _E79872_)))
                                        (___kont8002780028_
                                         (lambda (_L79951_ _L79953_ _L79954_)
                                           (_generate178962_
                                            _hd79870_
                                            _L79954_
                                            _L79953_
                                            _L79951_
                                            _E79872_)))
                                        (___kont8002980030_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78803_
                                            _hd79870_))))
                                    (if (gx#stx-pair? ___stx8002280023_)
                                        (let ((_e7988279979_
                                               (gx#syntax-e
                                                ___stx8002280023_)))
                                          (let ((_tl7988079986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7988279979_)))
                                                (_hd7988179983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7988279979_))))
                                            (if (gx#stx-pair? _tl7988079986_)
                                                (let ((_e7988579989_
                                                       (gx#syntax-e
                                                        _tl7988079986_)))
                                                  (let ((_tl7988379996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7988579989_)))
                                                        (_hd7988479993_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7988579989_))))
                                                    (if (gx#stx-null?
                                                         _tl7988379996_)
                                                        (___kont8002580026_
                                                         _hd7988479993_
                                                         _hd7988179983_)
                                                        (if (gx#stx-pair?
                                                             _tl7988379996_)
                                                            (let ((_e7989779941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7988379996_)))
                      (let ((_tl7989579948_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7989779941_)))
                            (_hd7989679945_
                             (let ()
                               (declare (not safe))
                               (##car _e7989779941_))))
                        (if (gx#stx-null? _tl7989579948_)
                            (___kont8002780028_
                             _hd7989679945_
                             _hd7988479993_
                             _hd7988179983_)
                            (___kont8002980030_))))
                    (___kont8002980030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8002980030_))))
                                        (___kont8002980030_))))))
                             (_generate178962_
                              (lambda (_where79348_
                                       _hd79350_
                                       _fender79351_
                                       _body79352_
                                       _E79353_)
                                (letrec ((_recur79355_
                                          (lambda (_hd79358_
                                                   _tgt79360_
                                                   _K79361_)
                                            (let* ((___stx8006880069_
                                                    _hd79358_)
                                                   (_g7936479376_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8006880069_))))
                                              (let ((___kont8007180072_
                                                     (lambda (_L79660_
                                                              _L79662_)
                                                       (let* ((_g7967379681_
                                                               (lambda (_g7967479677_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7967479677_)))
                      (_g7967279862_
                       (lambda (_g7967479685_)
                         ((lambda (_L79688_)
                            (let ()
                              (let* ((_g7970079708_
                                      (lambda (_g7970179704_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7970179704_)))
                                     (_g7969979858_
                                      (lambda (_g7970179712_)
                                        ((lambda (_L79715_)
                                           (let ()
                                             (let* ((_g7972879736_
                                                     (lambda (_g7972979732_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7972979732_)))
                                                    (_g7972779854_
                                                     (lambda (_g7972979740_)
                                                       ((lambda (_L79743_)
                                                          (let ()
                                                            (let* ((_g7975679764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7975779760_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7975779760_)))
                           (_g7975579850_
                            (lambda (_g7975779768_)
                              ((lambda (_L79771_)
                                 (let ()
                                   (let* ((_g7978479792_
                                           (lambda (_g7978579788_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7978579788_)))
                                          (_g7978379846_
                                           (lambda (_g7978579796_)
                                             ((lambda (_L79799_)
                                                (let ()
                                                  (let* ((_g7981279820_
                                                          (lambda (_g7981379816_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7981379816_)))
                                                         (_g7981179842_
                                                          (lambda (_g7981379824_)
                                                            ((lambda (_L79827_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp80203 (gx#datum->syntax '#f 'if))
                                 (__tmp80171
                                  (let ((__tmp80200
                                         (let ((__tmp80202
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp80201
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79688_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80202 __tmp80201)))
                                        (__tmp80172
                                         (let ((__tmp80174
                                                (let ((__tmp80199
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp80175
                                                       (let ((__tmp80193
                                                              (let ((__tmp80194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp80195
                                    (let ((__tmp80196
                                           (let ((__tmp80198
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp80197
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79688_ '()))))
                                             (declare (not safe))
                                             (cons __tmp80198 __tmp80197))))
                                      (declare (not safe))
                                      (cons __tmp80196 '()))))
                               (declare (not safe))
                               (cons _L79715_ __tmp80195))))
                        (declare (not safe))
                        (cons __tmp80194 '())))
                     (__tmp80176
                      (let ((__tmp80177
                             (let ((__tmp80192 (gx#datum->syntax '#f 'let))
                                   (__tmp80178
                                    (let ((__tmp80180
                                           (let ((__tmp80187
                                                  (let ((__tmp80188
                                                         (let ((__tmp80189
                                                                (let ((__tmp80191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp80190
                               (let ()
                                 (declare (not safe))
                                 (cons _L79715_ '()))))
                          (declare (not safe))
                          (cons __tmp80191 __tmp80190))))
                   (declare (not safe))
                   (cons __tmp80189 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79743_
                                                          __tmp80188)))
                                                 (__tmp80181
                                                  (let ((__tmp80182
                                                         (let ((__tmp80183
                                                                (let ((__tmp80184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80186 (gx#datum->syntax '#f '##cdr))
                                     (__tmp80185
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79715_ '()))))
                                 (declare (not safe))
                                 (cons __tmp80186 __tmp80185))))
                          (declare (not safe))
                          (cons __tmp80184 '()))))
                   (declare (not safe))
                   (cons _L79771_ __tmp80183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80182 '()))))
                                             (declare (not safe))
                                             (cons __tmp80187 __tmp80181)))
                                          (__tmp80179
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79799_ '()))))
                                      (declare (not safe))
                                      (cons __tmp80180 __tmp80179))))
                               (declare (not safe))
                               (cons __tmp80192 __tmp80178))))
                        (declare (not safe))
                        (cons __tmp80177 '()))))
                 (declare (not safe))
                 (cons __tmp80193 __tmp80176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80199
                                                        __tmp80175)))
                                               (__tmp80173
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79827_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80174 __tmp80173))))
                                    (declare (not safe))
                                    (cons __tmp80200 __tmp80172))))
                             (declare (not safe))
                             (cons __tmp80203 __tmp80171)))))
                     _g7981379824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7981179842_ _E79353_))))
                                              _g7978579796_))))
                                     (_g7978379846_
                                      (_recur79355_
                                       _L79662_
                                       _L79743_
                                       (_recur79355_
                                        _L79660_
                                        _L79771_
                                        _K79361_))))))
                               _g7975779768_))))
                      (_g7975579850_ (gx#genident 'tl)))))
                _g7972979740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7972779854_
                                                (gx#genident 'hd)))))
                                         _g7970179712_))))
                                (_g7969979858_ (gx#genident 'e)))))
                          _g7967479685_))))
                 (_g7967279862_ _tgt79360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8007380074_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd79358_)
                                                           (if (gx#underscore?
                                                                _hd79358_)
                                                               _K79361_
                                                               (if (let ((__tmp80248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7938679388_)
                                    (gx#bound-identifier=?
                                     _g7938679388_
                                     _hd79358_))))
                             (declare (not safe))
                             (find __tmp80248 _kws78957_))
                           (let* ((_g7939279407_
                                   (lambda (_g7939379403_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7939379403_)))
                                  (_g7939179458_
                                   (lambda (_g7939379411_)
                                     (if (gx#stx-pair? _g7939379411_)
                                         (let ((_e7939879414_
                                                (gx#syntax-e _g7939379411_)))
                                           (let ((_hd7939779418_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7939879414_)))
                                                 (_tl7939679421_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7939879414_))))
                                             (if (gx#stx-pair? _tl7939679421_)
                                                 (let ((_e7940179424_
                                                        (gx#syntax-e
                                                         _tl7939679421_)))
                                                   (let ((_hd7940079428_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7940179424_)))
                                                         (_tl7939979431_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7940179424_))))
                                                     (if (gx#stx-null?
                                                          _tl7939979431_)
                                                         ((lambda (_L79434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79436_)
                    (let ()
                      (let ((__tmp80247 (gx#datum->syntax '#f 'if))
                            (__tmp80230
                             (let ((__tmp80233
                                    (let ((__tmp80246
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp80234
                                           (let ((__tmp80243
                                                  (let ((__tmp80245
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp80244
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80245
                                                          __tmp80244)))
                                                 (__tmp80235
                                                  (let ((__tmp80236
                                                         (let ((__tmp80242
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp80237
                        (let ((__tmp80238
                               (let ((__tmp80239
                                      (let ((__tmp80241
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp80240
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79434_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80241 __tmp80240))))
                                 (declare (not safe))
                                 (cons __tmp80239 '()))))
                          (declare (not safe))
                          (cons _L79436_ __tmp80238))))
                   (declare (not safe))
                   (cons __tmp80242 __tmp80237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80236 '()))))
                                             (declare (not safe))
                                             (cons __tmp80243 __tmp80235))))
                                      (declare (not safe))
                                      (cons __tmp80246 __tmp80234)))
                                   (__tmp80231
                                    (let ((__tmp80232
                                           (let ()
                                             (declare (not safe))
                                             (cons _E79353_ '()))))
                                      (declare (not safe))
                                      (cons _K79361_ __tmp80232))))
                               (declare (not safe))
                               (cons __tmp80233 __tmp80231))))
                        (declare (not safe))
                        (cons __tmp80247 __tmp80230))))
                  _hd7940079428_
                  _hd7939779418_)
                 (_g7939279407_ _g7939379411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7939279407_
                                                  _g7939379411_))))
                                         (_g7939279407_ _g7939379411_)))))
                             (_g7939179458_ (list _tgt79360_ _hd79358_)))
                           (let* ((_g7946279477_
                                   (lambda (_g7946379473_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7946379473_)))
                                  (_g7946179521_
                                   (lambda (_g7946379481_)
                                     (if (gx#stx-pair? _g7946379481_)
                                         (let ((_e7946879484_
                                                (gx#syntax-e _g7946379481_)))
                                           (let ((_hd7946779488_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7946879484_)))
                                                 (_tl7946679491_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7946879484_))))
                                             (if (gx#stx-pair? _tl7946679491_)
                                                 (let ((_e7947179494_
                                                        (gx#syntax-e
                                                         _tl7946679491_)))
                                                   (let ((_hd7947079498_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7947179494_)))
                                                         (_tl7946979501_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7947179494_))))
                                                     (if (gx#stx-null?
                                                          _tl7946979501_)
                                                         ((lambda (_L79504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79506_)
                    (let ()
                      (let ((__tmp80229 (gx#datum->syntax '#f 'let))
                            (__tmp80224
                             (let ((__tmp80226
                                    (let ((__tmp80227
                                           (let ((__tmp80228
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79506_ '()))))
                                             (declare (not safe))
                                             (cons _L79504_ __tmp80228))))
                                      (declare (not safe))
                                      (cons __tmp80227 '())))
                                   (__tmp80225
                                    (let ()
                                      (declare (not safe))
                                      (cons _K79361_ '()))))
                               (declare (not safe))
                               (cons __tmp80226 __tmp80225))))
                        (declare (not safe))
                        (cons __tmp80229 __tmp80224))))
                  _hd7947079498_
                  _hd7946779488_)
                 (_g7946279477_ _g7946379481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7946279477_
                                                  _g7946379481_))))
                                         (_g7946279477_ _g7946379481_)))))
                             (_g7946179521_ (list _tgt79360_ _hd79358_)))))
                   (if (gx#stx-null? _hd79358_)
                       (let* ((_g7952579533_
                               (lambda (_g7952679529_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7952679529_)))
                              (_g7952479551_
                               (lambda (_g7952679537_)
                                 ((lambda (_L79540_)
                                    (let ()
                                      (let ((__tmp80223
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp80217
                                             (let ((__tmp80220
                                                    (let ((__tmp80222
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp80221
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp80222 __tmp80221)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp80218
                                                    (let ((__tmp80219
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E79353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K79361_ __tmp80219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp80220 __tmp80218))))
                                        (declare (not safe))
                                        (cons __tmp80223 __tmp80217))))
                                  _g7952679537_))))
                         (_g7952479551_ _tgt79360_))
                       (if (gx#stx-datum? _hd79358_)
                           (let* ((_g7955579574_
                                   (lambda (_g7955679570_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7955679570_)))
                                  (_g7955479632_
                                   (lambda (_g7955679578_)
                                     (if (gx#stx-pair? _g7955679578_)
                                         (let ((_e7956279581_
                                                (gx#syntax-e _g7955679578_)))
                                           (let ((_hd7956179585_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7956279581_)))
                                                 (_tl7956079588_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7956279581_))))
                                             (if (gx#stx-pair? _tl7956079588_)
                                                 (let ((_e7956579591_
                                                        (gx#syntax-e
                                                         _tl7956079588_)))
                                                   (let ((_hd7956479595_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7956579591_)))
                                                         (_tl7956379598_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7956579591_))))
                                                     (if (gx#stx-pair?
                                                          _tl7956379598_)
                                                         (let ((_e7956879601_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7956379598_)))
                   (let ((_hd7956779605_
                          (let () (declare (not safe)) (##car _e7956879601_)))
                         (_tl7956679608_
                          (let () (declare (not safe)) (##cdr _e7956879601_))))
                     (if (gx#stx-null? _tl7956679608_)
                         ((lambda (_L79611_ _L79613_ _L79614_)
                            (let ()
                              (let ((__tmp80216 (gx#datum->syntax '#f 'if))
                                    (__tmp80204
                                     (let ((__tmp80207
                                            (let ((__tmp80208
                                                   (let ((__tmp80213
                                                          (let ((__tmp80215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp80214
                         (let () (declare (not safe)) (cons _L79614_ '()))))
                    (declare (not safe))
                    (cons __tmp80215 __tmp80214)))
                 (__tmp80209
                  (let ((__tmp80210
                         (let ((__tmp80212 (gx#datum->syntax '#f 'quote))
                               (__tmp80211
                                (let ()
                                  (declare (not safe))
                                  (cons _L79613_ '()))))
                           (declare (not safe))
                           (cons __tmp80212 __tmp80211))))
                    (declare (not safe))
                    (cons __tmp80210 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp80213
                                                           __tmp80209))))
                                              (declare (not safe))
                                              (cons _L79611_ __tmp80208)))
                                           (__tmp80205
                                            (let ((__tmp80206
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E79353_ '()))))
                                              (declare (not safe))
                                              (cons _K79361_ __tmp80206))))
                                       (declare (not safe))
                                       (cons __tmp80207 __tmp80205))))
                                (declare (not safe))
                                (cons __tmp80216 __tmp80204))))
                          _hd7956779605_
                          _hd7956479595_
                          _hd7956179585_)
                         (_g7955579574_ _g7955679578_))))
                 (_g7955579574_ _g7955679578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7955579574_
                                                  _g7955679578_))))
                                         (_g7955579574_ _g7955679578_)))))
                             (_g7955479632_
                              (list _tgt79360_
                                    _hd79358_
                                    (let ((_e79636_ (gx#stx-e _hd79358_)))
                                      (if (or (keyword? _e79636_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79636_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79636_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78803_
                            _where79348_
                            _hd79358_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8006880069_)
                                                    (let ((_e7937079650_
                                                           (gx#syntax-e
                                                            ___stx8006880069_)))
                                                      (let ((_tl7936879657_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7937079650_)))
                    (_hd7936979654_
                     (let () (declare (not safe)) (##car _e7937079650_))))
                (___kont8007180072_ _tl7936879657_ _hd7936979654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8007380074_)))))))
                                  (_recur79355_
                                   _hd79350_
                                   _tgt78955_
                                   (let ((__tmp80252
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp80249
                                          (let ((__tmp80250
                                                 (let ((__tmp80251
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E79353_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body79352_
                                                         __tmp80251))))
                                            (declare (not safe))
                                            (cons _fender79351_ __tmp80250))))
                                     (declare (not safe))
                                     (cons __tmp80252 __tmp80249))))))
                             (_generate-clauses78963_
                              (lambda (_clauses79086_)
                                (let _lp79089_ ((_rest79092_ _clauses79086_)
                                                (_E79094_ (gx#genident 'E))
                                                (_r79095_ '()))
                                  (let* ((___stx8010480105_ _rest79092_)
                                         (_g7909879110_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8010480105_))))
                                    (let ((___kont8010780108_
                                           (lambda (_L79175_ _L79177_)
                                             (let* ((___stx8008480085_
                                                     _L79177_)
                                                    (_g7918979200_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8008480085_))))
                                               (let ((___kont8008780088_
                                                      (lambda (_L79329_)
                                                        (if (gx#stx-null?
                                                             _L79175_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L79329_)
                             (let ((__tmp80261 (gx#stx-null? _L79329_)))
                               (declare (not safe))
                               (not __tmp80261)))
                        (let ((__tmp80253
                               (let ((__tmp80254
                                      (let ((__tmp80255
                                             (gx#stx-wrap-source
                                              (let ((__tmp80260
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp80256
                                                     (let ((__tmp80257
                                                            (let ((__tmp80258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80259 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp80259 _L79329_))))
                      (declare (not safe))
                      (cons __tmp80258 '()))))
               (declare (not safe))
               (cons '() __tmp80257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80260 __tmp80256))
                                              (gx#stx-source _L79177_))))
                                        (declare (not safe))
                                        (cons __tmp80255 '()))))
                                 (declare (not safe))
                                 (cons _E79094_ __tmp80254))))
                          (declare (not safe))
                          (cons __tmp80253 _r79095_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78803_
                         _L79177_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78803_
                     _L79177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8008980090_
                                                      (lambda ()
                                                        (let* ((_g7921179219_
                                                                (lambda (_g7921279215_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7921279215_)))
                       (_g7921079308_
                        (lambda (_g7921279223_)
                          ((lambda (_L79226_)
                             (let ()
                               (let* ((_g7924279250_
                                       (lambda (_g7924379246_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7924379246_)))
                                      (_g7924179304_
                                       (lambda (_g7924379254_)
                                         ((lambda (_L79257_)
                                            (let ()
                                              (let* ((_g7927079278_
                                                      (lambda (_g7927179274_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7927179274_)))
                                                     (_g7926979300_
                                                      (lambda (_g7927179282_)
                                                        ((lambda (_L79285_)
                                                           (let ()
                                                             (let ()
                                                               (_lp79089_
                                                                _L79175_
                                                                _L79226_
                                                                (let ((__tmp80262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80263
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79285_ '()))))
                                 (declare (not safe))
                                 (cons _E79094_ __tmp80263))))
                          (declare (not safe))
                          (cons __tmp80262 _r79095_))))))
                 _g7927179282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7926979300_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp80266
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp80264
                                                         (let ((__tmp80265
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L79257_ '()))))
                   (declare (not safe))
                   (cons '() __tmp80265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80266
                                                          __tmp80264))
                                                  (gx#stx-source _L79177_))))))
                                          _g7924379254_))))
                                 (_g7924179304_
                                  (_generate-clause78960_
                                   _L79177_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L79226_ '())))))))
                           _g7921279223_))))
                  (_g7921079308_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8008480085_)
                                                     (let ((_e7919479319_
                                                            (gx#syntax-e
                                                             ___stx8008480085_)))
                                                       (let ((_tl7919279326_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7919479319_)))
                     (_hd7919379323_
                      (let () (declare (not safe)) (##car _e7919479319_))))
                 (if (gx#identifier? _hd7919379323_)
                     (if (gx#free-identifier=? |gx[1]#_g80267_| _hd7919379323_)
                         (___kont8008780088_ _tl7919279326_)
                         (___kont8008980090_))
                     (___kont8008980090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8008980090_))))))
                                          (___kont8010980110_
                                           (lambda ()
                                             (let* ((_g7912179129_
                                                     (lambda (_g7912279125_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7912279125_)))
                                                    (_g7912079154_
                                                     (lambda (_g7912279133_)
                                                       ((lambda (_L79136_)
                                                          (let ()
                                                            (let ((__tmp80268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80269
                                  (let ((__tmp80270
                                         (gx#stx-wrap-source
                                          (let ((__tmp80278
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp80271
                                                 (let ((__tmp80272
                                                        (let ((__tmp80273
                                                               (let ((__tmp80277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp80274
                              (let ((__tmp80275
                                     (let ((__tmp80276
                                            (let ()
                                              (declare (not safe))
                                              (cons _L79136_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp80276))))
                                (declare (not safe))
                                (cons '#f __tmp80275))))
                         (declare (not safe))
                         (cons __tmp80277 __tmp80274))))
                  (declare (not safe))
                  (cons __tmp80273 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp80272))))
                                            (declare (not safe))
                                            (cons __tmp80278 __tmp80271))
                                          (gx#stx-source _stx78803_))))
                                    (declare (not safe))
                                    (cons __tmp80270 '()))))
                             (declare (not safe))
                             (cons _E79094_ __tmp80269))))
                      (declare (not safe))
                      (cons __tmp80268 _r79095_))))
                _g7912279133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7912079154_ _tgt78955_)))))
                                      (if (gx#stx-pair? ___stx8010480105_)
                                          (let ((_e7910479165_
                                                 (gx#syntax-e
                                                  ___stx8010480105_)))
                                            (let ((_tl7910279172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7910479165_)))
                                                  (_hd7910379169_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7910479165_))))
                                              (___kont8010780108_
                                               _tl7910279172_
                                               _hd7910379169_)))
                                          (___kont8010980110_))))))))
                      (let* ((_bind78965_
                              (_generate-clauses78963_ _clauses78958_))
                             (_g7896878985_
                              (lambda (_g7896978981_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7896978981_)))
                             (_g7896779082_
                              (lambda (_g7896978989_)
                                (if (gx#stx-pair/null? _g7896978989_)
                                    (let ((_g80279_
                                           (gx#syntax-split-splice
                                            _g7896978989_
                                            '0)))
                                      (begin
                                        (let ((_g80280_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g80279_)
                                                     (##vector-length _g80279_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g80280_ 2)))
                                              (error "Context expects 2 values"
                                                     _g80280_)))
                                        (let ((_target7897178992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80279_ 0)))
                                              (_tl7897378995_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80279_ 1))))
                                          (if (gx#stx-null? _tl7897378995_)
                                              (letrec ((_loop7897478998_
                                                        (lambda (_hd7897279002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7897879005_)
                  (if (gx#stx-pair? _hd7897279002_)
                      (let ((_e7897579008_ (gx#syntax-e _hd7897279002_)))
                        (let ((_lp-hd7897679012_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7897579008_)))
                              (_lp-tl7897779015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7897579008_))))
                          (_loop7897478998_
                           _lp-tl7897779015_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7897679012_ _bind-try7897879005_)))))
                      (let ((_bind-try7897979018_
                             (reverse _bind-try7897879005_)))
                        ((lambda (_L79022_)
                           (let ()
                             (let* ((_g7904079048_
                                     (lambda (_g7904179044_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7904179044_)))
                                    (_g7903979078_
                                     (lambda (_g7904179052_)
                                       ((lambda (_L79055_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp80286
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp80281
                                                     (let ((__tmp80284
                                                            (let ((__tmp80285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7906979072_ _g7907079075_)
                             (let ()
                               (declare (not safe))
                               (cons _g7906979072_ _g7907079075_)))))
                      (declare (not safe))
                      (foldr1 __tmp80285 '() _L79022_)))
                   (__tmp80282
                    (let ((__tmp80283
                           (let () (declare (not safe)) (cons _L79055_ '()))))
                      (declare (not safe))
                      (cons __tmp80283 '()))))
               (declare (not safe))
               (cons __tmp80284 __tmp80282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80286
                                                      __tmp80281)))))
                                        _g7904179052_))))
                               (_g7903979078_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind78965_)))))))
                         _bind-try7897979018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7897478998_
                                                 _target7897178992_
                                                 '()))
                                              (_g7896878985_ _g7896978989_)))))
                                    (_g7896878985_ _g7896978989_)))))
                        (_g7896779082_ _bind78965_))))))
          (let* ((_g7880978828_
                  (lambda (_g7881078824_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7881078824_)))
                 (_g7880878951_
                  (lambda (_g7881078832_)
                    (if (gx#stx-pair? _g7881078832_)
                        (let ((_e7881678835_ (gx#syntax-e _g7881078832_)))
                          (let ((_hd7881578839_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7881678835_)))
                                (_tl7881478842_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7881678835_))))
                            (if (gx#stx-pair? _tl7881478842_)
                                (let ((_e7881978845_
                                       (gx#syntax-e _tl7881478842_)))
                                  (let ((_hd7881878849_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7881978845_)))
                                        (_tl7881778852_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7881978845_))))
                                    (if (gx#stx-pair? _tl7881778852_)
                                        (let ((_e7882278855_
                                               (gx#syntax-e _tl7881778852_)))
                                          (let ((_hd7882178859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7882278855_)))
                                                (_tl7882078862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7882278855_))))
                                            ((lambda (_L78865_
                                                      _L78867_
                                                      _L78868_)
                                               (if (and (gx#identifier-list?
                                                         _L78867_)
                                                        (gx#stx-list?
                                                         _L78865_))
                                                   (let* ((_g7888678894_
                                                           (lambda (_g7888778890_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7888778890_)))
                                                          (_g7888578947_
                                                           (lambda (_g7888778898_)
                                                             ((lambda (_L78901_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7891378921_
                                  (lambda (_g7891478917_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7891478917_)))
                                 (_g7891278943_
                                  (lambda (_g7891478925_)
                                    ((lambda (_L78928_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp80292
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp80287
                                                  (let ((__tmp80289
                                                         (let ((__tmp80290
                                                                (let ((__tmp80291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78868_ '()))))
                          (declare (not safe))
                          (cons _L78901_ __tmp80291))))
                   (declare (not safe))
                   (cons __tmp80290 '())))
                (__tmp80288 (let () (declare (not safe)) (cons _L78928_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80289
                                                          __tmp80288))))
                                             (declare (not safe))
                                             (cons __tmp80292 __tmp80287)))))
                                     _g7891478925_))))
                            (_g7891278943_
                             (_generate78806_
                              _L78901_
                              (gx#syntax->list _L78867_)
                              _L78865_)))))
                      _g7888778898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7888578947_
                                                      (gx#genident 'e)))
                                                   (_g7880978828_
                                                    _g7881078832_)))
                                             _tl7882078862_
                                             _hd7882178859_
                                             _hd7881878849_)))
                                        (_g7880978828_ _g7881078832_))))
                                (_g7880978828_ _g7881078832_))))
                        (_g7880978828_ _g7881078832_)))))
            (_g7880878951_ _stx78803_)))))))
