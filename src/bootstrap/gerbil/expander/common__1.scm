(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79126_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79128_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79130_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79135_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79138_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79143_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79146_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79151_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79154_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79159_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79162_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79269_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79121
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
           __obj79121
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79125 |gx[1]#_g79126_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           __tmp79125
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79127 |gx[1]#_g79128_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           __tmp79127
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79129 |gx[1]#_g79130_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           __tmp79129
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79131
               (let ((__tmp79136
                      (let ((__tmp79137 |gx[1]#_g79138_|))
                        (declare (not safe))
                        (cons 'e __tmp79137)))
                     (__tmp79132
                      (let ((__tmp79133
                             (let ((__tmp79134 |gx[1]#_g79135_|))
                               (declare (not safe))
                               (cons 'source __tmp79134))))
                        (declare (not safe))
                        (cons __tmp79133 '()))))
                 (declare (not safe))
                 (cons __tmp79136 __tmp79132))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           __tmp79131
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79139
               (let ((__tmp79144
                      (let ((__tmp79145 |gx[1]#_g79146_|))
                        (declare (not safe))
                        (cons 'e __tmp79145)))
                     (__tmp79140
                      (let ((__tmp79141
                             (let ((__tmp79142 |gx[1]#_g79143_|))
                               (declare (not safe))
                               (cons 'source __tmp79142))))
                        (declare (not safe))
                        (cons __tmp79141 '()))))
                 (declare (not safe))
                 (cons __tmp79144 __tmp79140))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           __tmp79139
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79147
               (let ((__tmp79152
                      (let ((__tmp79153 |gx[1]#_g79154_|))
                        (declare (not safe))
                        (cons 'e __tmp79153)))
                     (__tmp79148
                      (let ((__tmp79149
                             (let ((__tmp79150 |gx[1]#_g79151_|))
                               (declare (not safe))
                               (cons 'source __tmp79150))))
                        (declare (not safe))
                        (cons __tmp79149 '()))))
                 (declare (not safe))
                 (cons __tmp79152 __tmp79148))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           __tmp79147
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79155
               (let ((__tmp79160
                      (let ((__tmp79161 |gx[1]#_g79162_|))
                        (declare (not safe))
                        (cons 'e __tmp79161)))
                     (__tmp79156
                      (let ((__tmp79157
                             (let ((__tmp79158 |gx[1]#_g79159_|))
                               (declare (not safe))
                               (cons 'source __tmp79158))))
                        (declare (not safe))
                        (cons __tmp79157 '()))))
                 (declare (not safe))
                 (cons __tmp79160 __tmp79156))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79121
           __tmp79155
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj79121))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx77741_)
        (let* ((_g7774577759_
                (lambda (_g7774677755_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7774677755_)))
               (_g7774477801_
                (lambda (_g7774677763_)
                  (if (gx#stx-pair? _g7774677763_)
                      (let ((_e7775077766_ (gx#syntax-e _g7774677763_)))
                        (let ((_hd7774977770_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7775077766_)))
                              (_tl7774877773_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7775077766_))))
                          (if (gx#stx-pair? _tl7774877773_)
                              (let ((_e7775377776_
                                     (gx#syntax-e _tl7774877773_)))
                                (let ((_hd7775277780_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7775377776_)))
                                      (_tl7775177783_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7775377776_))))
                                  (if (gx#stx-null? _tl7775177783_)
                                      ((lambda (_L77786_)
                                         (let ((__tmp79172
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp79163
                                                (let ((__tmp79169
                                                       (let ((__tmp79171
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp79170
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L77786_ '()))))
                 (declare (not safe))
                 (cons __tmp79171 __tmp79170)))
              (__tmp79164
               (let ((__tmp79165
                      (let ((__tmp79168 (gx#datum->syntax '#f 'error))
                            (__tmp79166
                             (let ((__tmp79167
                                    (let ()
                                      (declare (not safe))
                                      (cons _L77786_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp79167))))
                        (declare (not safe))
                        (cons __tmp79168 __tmp79166))))
                 (declare (not safe))
                 (cons __tmp79165 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79169
                                                        __tmp79164))))
                                           (declare (not safe))
                                           (cons __tmp79172 __tmp79163)))
                                       _hd7775277780_)
                                      (_g7774577759_ _g7774677763_))))
                              (_g7774577759_ _g7774677763_))))
                      (_g7774577759_ _g7774677763_)))))
          (_g7774477801_ _$stx77741_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx77805_)
        (letrec ((_generate77808_
                  (lambda (_tgt77957_ _kws77959_ _clauses77960_)
                    (letrec ((_generate-clause77962_
                              (lambda (_hd78872_ _E78874_)
                                (let* ((___stx7902479025_ _hd78872_)
                                       (_g7887878905_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7902479025_))))
                                  (let ((___kont7902779028_
                                         (lambda (_L79001_ _L79003_)
                                           (_generate177964_
                                            _hd78872_
                                            _L79003_
                                            '#t
                                            _L79001_
                                            _E78874_)))
                                        (___kont7902979030_
                                         (lambda (_L78953_ _L78955_ _L78956_)
                                           (_generate177964_
                                            _hd78872_
                                            _L78956_
                                            _L78955_
                                            _L78953_
                                            _E78874_)))
                                        (___kont7903179032_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx77805_
                                            _hd78872_))))
                                    (if (gx#stx-pair? ___stx7902479025_)
                                        (let ((_e7888478981_
                                               (gx#syntax-e
                                                ___stx7902479025_)))
                                          (let ((_tl7888278988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7888478981_)))
                                                (_hd7888378985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7888478981_))))
                                            (if (gx#stx-pair? _tl7888278988_)
                                                (let ((_e7888778991_
                                                       (gx#syntax-e
                                                        _tl7888278988_)))
                                                  (let ((_tl7888578998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7888778991_)))
                                                        (_hd7888678995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7888778991_))))
                                                    (if (gx#stx-null?
                                                         _tl7888578998_)
                                                        (___kont7902779028_
                                                         _hd7888678995_
                                                         _hd7888378985_)
                                                        (if (gx#stx-pair?
                                                             _tl7888578998_)
                                                            (let ((_e7889978943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7888578998_)))
                      (let ((_tl7889778950_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7889978943_)))
                            (_hd7889878947_
                             (let ()
                               (declare (not safe))
                               (##car _e7889978943_))))
                        (if (gx#stx-null? _tl7889778950_)
                            (___kont7902979030_
                             _hd7889878947_
                             _hd7888678995_
                             _hd7888378985_)
                            (___kont7903179032_))))
                    (___kont7903179032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7903179032_))))
                                        (___kont7903179032_))))))
                             (_generate177964_
                              (lambda (_where78350_
                                       _hd78352_
                                       _fender78353_
                                       _body78354_
                                       _E78355_)
                                (letrec ((_recur78357_
                                          (lambda (_hd78360_
                                                   _tgt78362_
                                                   _K78363_)
                                            (let* ((___stx7907079071_
                                                    _hd78360_)
                                                   (_g7836678378_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7907079071_))))
                                              (let ((___kont7907379074_
                                                     (lambda (_L78662_
                                                              _L78664_)
                                                       (let* ((_g7867578683_
                                                               (lambda (_g7867678679_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7867678679_)))
                      (_g7867478864_
                       (lambda (_g7867678687_)
                         ((lambda (_L78690_)
                            (let ()
                              (let* ((_g7870278710_
                                      (lambda (_g7870378706_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7870378706_)))
                                     (_g7870178860_
                                      (lambda (_g7870378714_)
                                        ((lambda (_L78717_)
                                           (let ()
                                             (let* ((_g7873078738_
                                                     (lambda (_g7873178734_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7873178734_)))
                                                    (_g7872978856_
                                                     (lambda (_g7873178742_)
                                                       ((lambda (_L78745_)
                                                          (let ()
                                                            (let* ((_g7875878766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7875978762_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7875978762_)))
                           (_g7875778852_
                            (lambda (_g7875978770_)
                              ((lambda (_L78773_)
                                 (let ()
                                   (let* ((_g7878678794_
                                           (lambda (_g7878778790_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7878778790_)))
                                          (_g7878578848_
                                           (lambda (_g7878778798_)
                                             ((lambda (_L78801_)
                                                (let ()
                                                  (let* ((_g7881478822_
                                                          (lambda (_g7881578818_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7881578818_)))
                                                         (_g7881378844_
                                                          (lambda (_g7881578826_)
                                                            ((lambda (_L78829_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp79205 (gx#datum->syntax '#f 'if))
                                 (__tmp79173
                                  (let ((__tmp79202
                                         (let ((__tmp79204
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp79203
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78690_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79204 __tmp79203)))
                                        (__tmp79174
                                         (let ((__tmp79176
                                                (let ((__tmp79201
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp79177
                                                       (let ((__tmp79195
                                                              (let ((__tmp79196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79197
                                    (let ((__tmp79198
                                           (let ((__tmp79200
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp79199
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78690_ '()))))
                                             (declare (not safe))
                                             (cons __tmp79200 __tmp79199))))
                                      (declare (not safe))
                                      (cons __tmp79198 '()))))
                               (declare (not safe))
                               (cons _L78717_ __tmp79197))))
                        (declare (not safe))
                        (cons __tmp79196 '())))
                     (__tmp79178
                      (let ((__tmp79179
                             (let ((__tmp79194 (gx#datum->syntax '#f 'let))
                                   (__tmp79180
                                    (let ((__tmp79182
                                           (let ((__tmp79189
                                                  (let ((__tmp79190
                                                         (let ((__tmp79191
                                                                (let ((__tmp79193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp79192
                               (let ()
                                 (declare (not safe))
                                 (cons _L78717_ '()))))
                          (declare (not safe))
                          (cons __tmp79193 __tmp79192))))
                   (declare (not safe))
                   (cons __tmp79191 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L78745_
                                                          __tmp79190)))
                                                 (__tmp79183
                                                  (let ((__tmp79184
                                                         (let ((__tmp79185
                                                                (let ((__tmp79186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79188 (gx#datum->syntax '#f '##cdr))
                                     (__tmp79187
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78717_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79188 __tmp79187))))
                          (declare (not safe))
                          (cons __tmp79186 '()))))
                   (declare (not safe))
                   (cons _L78773_ __tmp79185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79184 '()))))
                                             (declare (not safe))
                                             (cons __tmp79189 __tmp79183)))
                                          (__tmp79181
                                           (let ()
                                             (declare (not safe))
                                             (cons _L78801_ '()))))
                                      (declare (not safe))
                                      (cons __tmp79182 __tmp79181))))
                               (declare (not safe))
                               (cons __tmp79194 __tmp79180))))
                        (declare (not safe))
                        (cons __tmp79179 '()))))
                 (declare (not safe))
                 (cons __tmp79195 __tmp79178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79201
                                                        __tmp79177)))
                                               (__tmp79175
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78829_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79176 __tmp79175))))
                                    (declare (not safe))
                                    (cons __tmp79202 __tmp79174))))
                             (declare (not safe))
                             (cons __tmp79205 __tmp79173)))))
                     _g7881578826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7881378844_ _E78355_))))
                                              _g7878778798_))))
                                     (_g7878578848_
                                      (_recur78357_
                                       _L78664_
                                       _L78745_
                                       (_recur78357_
                                        _L78662_
                                        _L78773_
                                        _K78363_))))))
                               _g7875978770_))))
                      (_g7875778852_ (gx#genident 'tl)))))
                _g7873178742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7872978856_
                                                (gx#genident 'hd)))))
                                         _g7870378714_))))
                                (_g7870178860_ (gx#genident 'e)))))
                          _g7867678687_))))
                 (_g7867478864_ _tgt78362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7907579076_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78360_)
                                                           (if (gx#underscore?
                                                                _hd78360_)
                                                               _K78363_
                                                               (if (let ((__tmp79250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7838878390_)
                                    (gx#bound-identifier=?
                                     _g7838878390_
                                     _hd78360_))))
                             (declare (not safe))
                             (find __tmp79250 _kws77959_))
                           (let* ((_g7839478409_
                                   (lambda (_g7839578405_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7839578405_)))
                                  (_g7839378460_
                                   (lambda (_g7839578413_)
                                     (if (gx#stx-pair? _g7839578413_)
                                         (let ((_e7840078416_
                                                (gx#syntax-e _g7839578413_)))
                                           (let ((_hd7839978420_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7840078416_)))
                                                 (_tl7839878423_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7840078416_))))
                                             (if (gx#stx-pair? _tl7839878423_)
                                                 (let ((_e7840378426_
                                                        (gx#syntax-e
                                                         _tl7839878423_)))
                                                   (let ((_hd7840278430_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7840378426_)))
                                                         (_tl7840178433_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7840378426_))))
                                                     (if (gx#stx-null?
                                                          _tl7840178433_)
                                                         ((lambda (_L78436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78438_)
                    (let ()
                      (let ((__tmp79249 (gx#datum->syntax '#f 'if))
                            (__tmp79232
                             (let ((__tmp79235
                                    (let ((__tmp79248
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp79236
                                           (let ((__tmp79245
                                                  (let ((__tmp79247
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp79246
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L78438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79247
                                                          __tmp79246)))
                                                 (__tmp79237
                                                  (let ((__tmp79238
                                                         (let ((__tmp79244
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp79239
                        (let ((__tmp79240
                               (let ((__tmp79241
                                      (let ((__tmp79243
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp79242
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78436_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79243 __tmp79242))))
                                 (declare (not safe))
                                 (cons __tmp79241 '()))))
                          (declare (not safe))
                          (cons _L78438_ __tmp79240))))
                   (declare (not safe))
                   (cons __tmp79244 __tmp79239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79238 '()))))
                                             (declare (not safe))
                                             (cons __tmp79245 __tmp79237))))
                                      (declare (not safe))
                                      (cons __tmp79248 __tmp79236)))
                                   (__tmp79233
                                    (let ((__tmp79234
                                           (let ()
                                             (declare (not safe))
                                             (cons _E78355_ '()))))
                                      (declare (not safe))
                                      (cons _K78363_ __tmp79234))))
                               (declare (not safe))
                               (cons __tmp79235 __tmp79233))))
                        (declare (not safe))
                        (cons __tmp79249 __tmp79232))))
                  _hd7840278430_
                  _hd7839978420_)
                 (_g7839478409_ _g7839578413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7839478409_
                                                  _g7839578413_))))
                                         (_g7839478409_ _g7839578413_)))))
                             (_g7839378460_ (list _tgt78362_ _hd78360_)))
                           (let* ((_g7846478479_
                                   (lambda (_g7846578475_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7846578475_)))
                                  (_g7846378523_
                                   (lambda (_g7846578483_)
                                     (if (gx#stx-pair? _g7846578483_)
                                         (let ((_e7847078486_
                                                (gx#syntax-e _g7846578483_)))
                                           (let ((_hd7846978490_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7847078486_)))
                                                 (_tl7846878493_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7847078486_))))
                                             (if (gx#stx-pair? _tl7846878493_)
                                                 (let ((_e7847378496_
                                                        (gx#syntax-e
                                                         _tl7846878493_)))
                                                   (let ((_hd7847278500_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7847378496_)))
                                                         (_tl7847178503_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7847378496_))))
                                                     (if (gx#stx-null?
                                                          _tl7847178503_)
                                                         ((lambda (_L78506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78508_)
                    (let ()
                      (let ((__tmp79231 (gx#datum->syntax '#f 'let))
                            (__tmp79226
                             (let ((__tmp79228
                                    (let ((__tmp79229
                                           (let ((__tmp79230
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78508_ '()))))
                                             (declare (not safe))
                                             (cons _L78506_ __tmp79230))))
                                      (declare (not safe))
                                      (cons __tmp79229 '())))
                                   (__tmp79227
                                    (let ()
                                      (declare (not safe))
                                      (cons _K78363_ '()))))
                               (declare (not safe))
                               (cons __tmp79228 __tmp79227))))
                        (declare (not safe))
                        (cons __tmp79231 __tmp79226))))
                  _hd7847278500_
                  _hd7846978490_)
                 (_g7846478479_ _g7846578483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7846478479_
                                                  _g7846578483_))))
                                         (_g7846478479_ _g7846578483_)))))
                             (_g7846378523_ (list _tgt78362_ _hd78360_)))))
                   (if (gx#stx-null? _hd78360_)
                       (let* ((_g7852778535_
                               (lambda (_g7852878531_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7852878531_)))
                              (_g7852678553_
                               (lambda (_g7852878539_)
                                 ((lambda (_L78542_)
                                    (let ()
                                      (let ((__tmp79225
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp79219
                                             (let ((__tmp79222
                                                    (let ((__tmp79224
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp79223
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L78542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79224 __tmp79223)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79220
                                                    (let ((__tmp79221
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E78355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K78363_ __tmp79221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79222 __tmp79220))))
                                        (declare (not safe))
                                        (cons __tmp79225 __tmp79219))))
                                  _g7852878539_))))
                         (_g7852678553_ _tgt78362_))
                       (if (gx#stx-datum? _hd78360_)
                           (let* ((_g7855778576_
                                   (lambda (_g7855878572_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7855878572_)))
                                  (_g7855678634_
                                   (lambda (_g7855878580_)
                                     (if (gx#stx-pair? _g7855878580_)
                                         (let ((_e7856478583_
                                                (gx#syntax-e _g7855878580_)))
                                           (let ((_hd7856378587_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7856478583_)))
                                                 (_tl7856278590_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7856478583_))))
                                             (if (gx#stx-pair? _tl7856278590_)
                                                 (let ((_e7856778593_
                                                        (gx#syntax-e
                                                         _tl7856278590_)))
                                                   (let ((_hd7856678597_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7856778593_)))
                                                         (_tl7856578600_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7856778593_))))
                                                     (if (gx#stx-pair?
                                                          _tl7856578600_)
                                                         (let ((_e7857078603_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7856578600_)))
                   (let ((_hd7856978607_
                          (let () (declare (not safe)) (##car _e7857078603_)))
                         (_tl7856878610_
                          (let () (declare (not safe)) (##cdr _e7857078603_))))
                     (if (gx#stx-null? _tl7856878610_)
                         ((lambda (_L78613_ _L78615_ _L78616_)
                            (let ()
                              (let ((__tmp79218 (gx#datum->syntax '#f 'if))
                                    (__tmp79206
                                     (let ((__tmp79209
                                            (let ((__tmp79210
                                                   (let ((__tmp79215
                                                          (let ((__tmp79217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp79216
                         (let () (declare (not safe)) (cons _L78616_ '()))))
                    (declare (not safe))
                    (cons __tmp79217 __tmp79216)))
                 (__tmp79211
                  (let ((__tmp79212
                         (let ((__tmp79214 (gx#datum->syntax '#f 'quote))
                               (__tmp79213
                                (let ()
                                  (declare (not safe))
                                  (cons _L78615_ '()))))
                           (declare (not safe))
                           (cons __tmp79214 __tmp79213))))
                    (declare (not safe))
                    (cons __tmp79212 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79215
                                                           __tmp79211))))
                                              (declare (not safe))
                                              (cons _L78613_ __tmp79210)))
                                           (__tmp79207
                                            (let ((__tmp79208
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E78355_ '()))))
                                              (declare (not safe))
                                              (cons _K78363_ __tmp79208))))
                                       (declare (not safe))
                                       (cons __tmp79209 __tmp79207))))
                                (declare (not safe))
                                (cons __tmp79218 __tmp79206))))
                          _hd7856978607_
                          _hd7856678597_
                          _hd7856378587_)
                         (_g7855778576_ _g7855878580_))))
                 (_g7855778576_ _g7855878580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7855778576_
                                                  _g7855878580_))))
                                         (_g7855778576_ _g7855878580_)))))
                             (_g7855678634_
                              (list _tgt78362_
                                    _hd78360_
                                    (let ((_e78638_ (gx#stx-e _hd78360_)))
                                      (if (or (keyword? _e78638_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e78638_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e78638_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx77805_
                            _where78350_
                            _hd78360_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7907079071_)
                                                    (let ((_e7837278652_
                                                           (gx#syntax-e
                                                            ___stx7907079071_)))
                                                      (let ((_tl7837078659_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7837278652_)))
                    (_hd7837178656_
                     (let () (declare (not safe)) (##car _e7837278652_))))
                (___kont7907379074_ _tl7837078659_ _hd7837178656_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7907579076_)))))))
                                  (_recur78357_
                                   _hd78352_
                                   _tgt77957_
                                   (let ((__tmp79254
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp79251
                                          (let ((__tmp79252
                                                 (let ((__tmp79253
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E78355_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body78354_
                                                         __tmp79253))))
                                            (declare (not safe))
                                            (cons _fender78353_ __tmp79252))))
                                     (declare (not safe))
                                     (cons __tmp79254 __tmp79251))))))
                             (_generate-clauses77965_
                              (lambda (_clauses78088_)
                                (let _lp78091_ ((_rest78094_ _clauses78088_)
                                                (_E78096_ (gx#genident 'E))
                                                (_r78097_ '()))
                                  (let* ((___stx7910679107_ _rest78094_)
                                         (_g7810078112_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7910679107_))))
                                    (let ((___kont7910979110_
                                           (lambda (_L78177_ _L78179_)
                                             (let* ((___stx7908679087_
                                                     _L78179_)
                                                    (_g7819178202_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7908679087_))))
                                               (let ((___kont7908979090_
                                                      (lambda (_L78331_)
                                                        (if (gx#stx-null?
                                                             _L78177_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78331_)
                             (let ((__tmp79263 (gx#stx-null? _L78331_)))
                               (declare (not safe))
                               (not __tmp79263)))
                        (let ((__tmp79255
                               (let ((__tmp79256
                                      (let ((__tmp79257
                                             (gx#stx-wrap-source
                                              (let ((__tmp79262
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp79258
                                                     (let ((__tmp79259
                                                            (let ((__tmp79260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79261 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp79261 _L78331_))))
                      (declare (not safe))
                      (cons __tmp79260 '()))))
               (declare (not safe))
               (cons '() __tmp79259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79262 __tmp79258))
                                              (gx#stx-source _L78179_))))
                                        (declare (not safe))
                                        (cons __tmp79257 '()))))
                                 (declare (not safe))
                                 (cons _E78096_ __tmp79256))))
                          (declare (not safe))
                          (cons __tmp79255 _r78097_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx77805_
                         _L78179_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx77805_
                     _L78179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7909179092_
                                                      (lambda ()
                                                        (let* ((_g7821378221_
                                                                (lambda (_g7821478217_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7821478217_)))
                       (_g7821278310_
                        (lambda (_g7821478225_)
                          ((lambda (_L78228_)
                             (let ()
                               (let* ((_g7824478252_
                                       (lambda (_g7824578248_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7824578248_)))
                                      (_g7824378306_
                                       (lambda (_g7824578256_)
                                         ((lambda (_L78259_)
                                            (let ()
                                              (let* ((_g7827278280_
                                                      (lambda (_g7827378276_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7827378276_)))
                                                     (_g7827178302_
                                                      (lambda (_g7827378284_)
                                                        ((lambda (_L78287_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78091_
                                                                _L78177_
                                                                _L78228_
                                                                (let ((__tmp79264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79265
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78287_ '()))))
                                 (declare (not safe))
                                 (cons _E78096_ __tmp79265))))
                          (declare (not safe))
                          (cons __tmp79264 _r78097_))))))
                 _g7827378284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7827178302_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp79268
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp79266
                                                         (let ((__tmp79267
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L78259_ '()))))
                   (declare (not safe))
                   (cons '() __tmp79267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79268
                                                          __tmp79266))
                                                  (gx#stx-source _L78179_))))))
                                          _g7824578256_))))
                                 (_g7824378306_
                                  (_generate-clause77962_
                                   _L78179_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L78228_ '())))))))
                           _g7821478225_))))
                  (_g7821278310_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7908679087_)
                                                     (let ((_e7819678321_
                                                            (gx#syntax-e
                                                             ___stx7908679087_)))
                                                       (let ((_tl7819478328_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7819678321_)))
                     (_hd7819578325_
                      (let () (declare (not safe)) (##car _e7819678321_))))
                 (if (gx#identifier? _hd7819578325_)
                     (if (gx#free-identifier=? |gx[1]#_g79269_| _hd7819578325_)
                         (___kont7908979090_ _tl7819478328_)
                         (___kont7909179092_))
                     (___kont7909179092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7909179092_))))))
                                          (___kont7911179112_
                                           (lambda ()
                                             (let* ((_g7812378131_
                                                     (lambda (_g7812478127_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7812478127_)))
                                                    (_g7812278156_
                                                     (lambda (_g7812478135_)
                                                       ((lambda (_L78138_)
                                                          (let ()
                                                            (let ((__tmp79270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79271
                                  (let ((__tmp79272
                                         (gx#stx-wrap-source
                                          (let ((__tmp79280
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp79273
                                                 (let ((__tmp79274
                                                        (let ((__tmp79275
                                                               (let ((__tmp79279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp79276
                              (let ((__tmp79277
                                     (let ((__tmp79278
                                            (let ()
                                              (declare (not safe))
                                              (cons _L78138_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp79278))))
                                (declare (not safe))
                                (cons '#f __tmp79277))))
                         (declare (not safe))
                         (cons __tmp79279 __tmp79276))))
                  (declare (not safe))
                  (cons __tmp79275 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp79274))))
                                            (declare (not safe))
                                            (cons __tmp79280 __tmp79273))
                                          (gx#stx-source _stx77805_))))
                                    (declare (not safe))
                                    (cons __tmp79272 '()))))
                             (declare (not safe))
                             (cons _E78096_ __tmp79271))))
                      (declare (not safe))
                      (cons __tmp79270 _r78097_))))
                _g7812478135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7812278156_ _tgt77957_)))))
                                      (if (gx#stx-pair? ___stx7910679107_)
                                          (let ((_e7810678167_
                                                 (gx#syntax-e
                                                  ___stx7910679107_)))
                                            (let ((_tl7810478174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7810678167_)))
                                                  (_hd7810578171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7810678167_))))
                                              (___kont7910979110_
                                               _tl7810478174_
                                               _hd7810578171_)))
                                          (___kont7911179112_))))))))
                      (let* ((_bind77967_
                              (_generate-clauses77965_ _clauses77960_))
                             (_g7797077987_
                              (lambda (_g7797177983_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7797177983_)))
                             (_g7796978084_
                              (lambda (_g7797177991_)
                                (if (gx#stx-pair/null? _g7797177991_)
                                    (let ((_g79281_
                                           (gx#syntax-split-splice
                                            _g7797177991_
                                            '0)))
                                      (begin
                                        (let ((_g79282_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79281_)
                                                     (##vector-length _g79281_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79282_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79282_)))
                                        (let ((_target7797377994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79281_ 0)))
                                              (_tl7797577997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79281_ 1))))
                                          (if (gx#stx-null? _tl7797577997_)
                                              (letrec ((_loop7797678000_
                                                        (lambda (_hd7797478004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7798078007_)
                  (if (gx#stx-pair? _hd7797478004_)
                      (let ((_e7797778010_ (gx#syntax-e _hd7797478004_)))
                        (let ((_lp-hd7797878014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7797778010_)))
                              (_lp-tl7797978017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7797778010_))))
                          (_loop7797678000_
                           _lp-tl7797978017_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7797878014_ _bind-try7798078007_)))))
                      (let ((_bind-try7798178020_
                             (reverse _bind-try7798078007_)))
                        ((lambda (_L78024_)
                           (let ()
                             (let* ((_g7804278050_
                                     (lambda (_g7804378046_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7804378046_)))
                                    (_g7804178080_
                                     (lambda (_g7804378054_)
                                       ((lambda (_L78057_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp79288
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp79283
                                                     (let ((__tmp79286
                                                            (let ((__tmp79287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7807178074_ _g7807278077_)
                             (let ()
                               (declare (not safe))
                               (cons _g7807178074_ _g7807278077_)))))
                      (declare (not safe))
                      (foldr1 __tmp79287 '() _L78024_)))
                   (__tmp79284
                    (let ((__tmp79285
                           (let () (declare (not safe)) (cons _L78057_ '()))))
                      (declare (not safe))
                      (cons __tmp79285 '()))))
               (declare (not safe))
               (cons __tmp79286 __tmp79284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79288
                                                      __tmp79283)))))
                                        _g7804378054_))))
                               (_g7804178080_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind77967_)))))))
                         _bind-try7798178020_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7797678000_
                                                 _target7797377994_
                                                 '()))
                                              (_g7797077987_ _g7797177991_)))))
                                    (_g7797077987_ _g7797177991_)))))
                        (_g7796978084_ _bind77967_))))))
          (let* ((_g7781177830_
                  (lambda (_g7781277826_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7781277826_)))
                 (_g7781077953_
                  (lambda (_g7781277834_)
                    (if (gx#stx-pair? _g7781277834_)
                        (let ((_e7781877837_ (gx#syntax-e _g7781277834_)))
                          (let ((_hd7781777841_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7781877837_)))
                                (_tl7781677844_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7781877837_))))
                            (if (gx#stx-pair? _tl7781677844_)
                                (let ((_e7782177847_
                                       (gx#syntax-e _tl7781677844_)))
                                  (let ((_hd7782077851_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7782177847_)))
                                        (_tl7781977854_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7782177847_))))
                                    (if (gx#stx-pair? _tl7781977854_)
                                        (let ((_e7782477857_
                                               (gx#syntax-e _tl7781977854_)))
                                          (let ((_hd7782377861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7782477857_)))
                                                (_tl7782277864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7782477857_))))
                                            ((lambda (_L77867_
                                                      _L77869_
                                                      _L77870_)
                                               (if (and (gx#identifier-list?
                                                         _L77869_)
                                                        (gx#stx-list?
                                                         _L77867_))
                                                   (let* ((_g7788877896_
                                                           (lambda (_g7788977892_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7788977892_)))
                                                          (_g7788777949_
                                                           (lambda (_g7788977900_)
                                                             ((lambda (_L77903_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7791577923_
                                  (lambda (_g7791677919_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7791677919_)))
                                 (_g7791477945_
                                  (lambda (_g7791677927_)
                                    ((lambda (_L77930_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp79294
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp79289
                                                  (let ((__tmp79291
                                                         (let ((__tmp79292
                                                                (let ((__tmp79293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L77870_ '()))))
                          (declare (not safe))
                          (cons _L77903_ __tmp79293))))
                   (declare (not safe))
                   (cons __tmp79292 '())))
                (__tmp79290 (let () (declare (not safe)) (cons _L77930_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79291
                                                          __tmp79290))))
                                             (declare (not safe))
                                             (cons __tmp79294 __tmp79289)))))
                                     _g7791677927_))))
                            (_g7791477945_
                             (_generate77808_
                              _L77903_
                              (gx#syntax->list _L77869_)
                              _L77867_)))))
                      _g7788977900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7788777949_
                                                      (gx#genident 'e)))
                                                   (_g7781177830_
                                                    _g7781277834_)))
                                             _tl7782277864_
                                             _hd7782377861_
                                             _hd7782077851_)))
                                        (_g7781177830_ _g7781277834_))))
                                (_g7781177830_ _g7781277834_))))
                        (_g7781177830_ _g7781277834_)))))
            (_g7781077953_ _stx77805_)))))))
