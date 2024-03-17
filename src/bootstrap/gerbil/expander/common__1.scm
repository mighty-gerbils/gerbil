(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81119_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81121_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81123_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81128_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81131_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81136_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81139_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81144_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81147_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81152_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81155_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81262_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81114
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           'gerbil#AST::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           'syntax
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           '(e source)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81118 |gx[1]#_g81119_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           __tmp81118
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81120 |gx[1]#_g81121_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           __tmp81120
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81122 |gx[1]#_g81123_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           __tmp81122
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81124
               (let ((__tmp81129
                      (let ((__tmp81130 |gx[1]#_g81131_|))
                        (declare (not safe))
                        (cons 'e __tmp81130)))
                     (__tmp81125
                      (let ((__tmp81126
                             (let ((__tmp81127 |gx[1]#_g81128_|))
                               (declare (not safe))
                               (cons 'source __tmp81127))))
                        (declare (not safe))
                        (cons __tmp81126 '()))))
                 (declare (not safe))
                 (cons __tmp81129 __tmp81125))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           __tmp81124
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81132
               (let ((__tmp81137
                      (let ((__tmp81138 |gx[1]#_g81139_|))
                        (declare (not safe))
                        (cons 'e __tmp81138)))
                     (__tmp81133
                      (let ((__tmp81134
                             (let ((__tmp81135 |gx[1]#_g81136_|))
                               (declare (not safe))
                               (cons 'source __tmp81135))))
                        (declare (not safe))
                        (cons __tmp81134 '()))))
                 (declare (not safe))
                 (cons __tmp81137 __tmp81133))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           __tmp81132
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81140
               (let ((__tmp81145
                      (let ((__tmp81146 |gx[1]#_g81147_|))
                        (declare (not safe))
                        (cons 'e __tmp81146)))
                     (__tmp81141
                      (let ((__tmp81142
                             (let ((__tmp81143 |gx[1]#_g81144_|))
                               (declare (not safe))
                               (cons 'source __tmp81143))))
                        (declare (not safe))
                        (cons __tmp81142 '()))))
                 (declare (not safe))
                 (cons __tmp81145 __tmp81141))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           __tmp81140
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81148
               (let ((__tmp81153
                      (let ((__tmp81154 |gx[1]#_g81155_|))
                        (declare (not safe))
                        (cons 'e __tmp81154)))
                     (__tmp81149
                      (let ((__tmp81150
                             (let ((__tmp81151 |gx[1]#_g81152_|))
                               (declare (not safe))
                               (cons 'source __tmp81151))))
                        (declare (not safe))
                        (cons __tmp81150 '()))))
                 (declare (not safe))
                 (cons __tmp81153 __tmp81149))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81114
           __tmp81148
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj81114))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx79734_)
        (let* ((_g7973879752_
                (lambda (_g7973979748_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7973979748_)))
               (_g7973779794_
                (lambda (_g7973979756_)
                  (if (gx#stx-pair? _g7973979756_)
                      (let ((_e7974379759_ (gx#syntax-e _g7973979756_)))
                        (let ((_hd7974279763_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7974379759_)))
                              (_tl7974179766_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7974379759_))))
                          (if (gx#stx-pair? _tl7974179766_)
                              (let ((_e7974679769_
                                     (gx#syntax-e _tl7974179766_)))
                                (let ((_hd7974579773_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7974679769_)))
                                      (_tl7974479776_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7974679769_))))
                                  (if (gx#stx-null? _tl7974479776_)
                                      ((lambda (_L79779_)
                                         (let ((__tmp81165
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81156
                                                (let ((__tmp81162
                                                       (let ((__tmp81164
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81163
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L79779_ '()))))
                 (declare (not safe))
                 (cons __tmp81164 __tmp81163)))
              (__tmp81157
               (let ((__tmp81158
                      (let ((__tmp81161 (gx#datum->syntax '#f 'error))
                            (__tmp81159
                             (let ((__tmp81160
                                    (let ()
                                      (declare (not safe))
                                      (cons _L79779_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81160))))
                        (declare (not safe))
                        (cons __tmp81161 __tmp81159))))
                 (declare (not safe))
                 (cons __tmp81158 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81162
                                                        __tmp81157))))
                                           (declare (not safe))
                                           (cons __tmp81165 __tmp81156)))
                                       _hd7974579773_)
                                      (_g7973879752_ _g7973979756_))))
                              (_g7973879752_ _g7973979756_))))
                      (_g7973879752_ _g7973979756_)))))
          (_g7973779794_ _$stx79734_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx79798_)
        (letrec ((_generate79801_
                  (lambda (_tgt79950_ _kws79952_ _clauses79953_)
                    (letrec ((_generate-clause79955_
                              (lambda (_hd80865_ _E80867_)
                                (let* ((___stx8101781018_ _hd80865_)
                                       (_g8087180898_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8101781018_))))
                                  (let ((___kont8102081021_
                                         (lambda (_L80994_ _L80996_)
                                           (_generate179957_
                                            _hd80865_
                                            _L80996_
                                            '#t
                                            _L80994_
                                            _E80867_)))
                                        (___kont8102281023_
                                         (lambda (_L80946_ _L80948_ _L80949_)
                                           (_generate179957_
                                            _hd80865_
                                            _L80949_
                                            _L80948_
                                            _L80946_
                                            _E80867_)))
                                        (___kont8102481025_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx79798_
                                            _hd80865_))))
                                    (if (gx#stx-pair? ___stx8101781018_)
                                        (let ((_e8087780974_
                                               (gx#syntax-e
                                                ___stx8101781018_)))
                                          (let ((_tl8087580981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8087780974_)))
                                                (_hd8087680978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8087780974_))))
                                            (if (gx#stx-pair? _tl8087580981_)
                                                (let ((_e8088080984_
                                                       (gx#syntax-e
                                                        _tl8087580981_)))
                                                  (let ((_tl8087880991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8088080984_)))
                                                        (_hd8087980988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8088080984_))))
                                                    (if (gx#stx-null?
                                                         _tl8087880991_)
                                                        (___kont8102081021_
                                                         _hd8087980988_
                                                         _hd8087680978_)
                                                        (if (gx#stx-pair?
                                                             _tl8087880991_)
                                                            (let ((_e8089280936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8087880991_)))
                      (let ((_tl8089080943_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8089280936_)))
                            (_hd8089180940_
                             (let ()
                               (declare (not safe))
                               (##car _e8089280936_))))
                        (if (gx#stx-null? _tl8089080943_)
                            (___kont8102281023_
                             _hd8089180940_
                             _hd8087980988_
                             _hd8087680978_)
                            (___kont8102481025_))))
                    (___kont8102481025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8102481025_))))
                                        (___kont8102481025_))))))
                             (_generate179957_
                              (lambda (_where80343_
                                       _hd80345_
                                       _fender80346_
                                       _body80347_
                                       _E80348_)
                                (letrec ((_recur80350_
                                          (lambda (_hd80353_
                                                   _tgt80355_
                                                   _K80356_)
                                            (let* ((___stx8106381064_
                                                    _hd80353_)
                                                   (_g8035980371_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8106381064_))))
                                              (let ((___kont8106681067_
                                                     (lambda (_L80655_
                                                              _L80657_)
                                                       (let* ((_g8066880676_
                                                               (lambda (_g8066980672_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8066980672_)))
                      (_g8066780857_
                       (lambda (_g8066980680_)
                         ((lambda (_L80683_)
                            (let ()
                              (let* ((_g8069580703_
                                      (lambda (_g8069680699_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8069680699_)))
                                     (_g8069480853_
                                      (lambda (_g8069680707_)
                                        ((lambda (_L80710_)
                                           (let ()
                                             (let* ((_g8072380731_
                                                     (lambda (_g8072480727_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8072480727_)))
                                                    (_g8072280849_
                                                     (lambda (_g8072480735_)
                                                       ((lambda (_L80738_)
                                                          (let ()
                                                            (let* ((_g8075180759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8075280755_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8075280755_)))
                           (_g8075080845_
                            (lambda (_g8075280763_)
                              ((lambda (_L80766_)
                                 (let ()
                                   (let* ((_g8077980787_
                                           (lambda (_g8078080783_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8078080783_)))
                                          (_g8077880841_
                                           (lambda (_g8078080791_)
                                             ((lambda (_L80794_)
                                                (let ()
                                                  (let* ((_g8080780815_
                                                          (lambda (_g8080880811_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8080880811_)))
                                                         (_g8080680837_
                                                          (lambda (_g8080880819_)
                                                            ((lambda (_L80822_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81198 (gx#datum->syntax '#f 'if))
                                 (__tmp81166
                                  (let ((__tmp81195
                                         (let ((__tmp81197
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81196
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L80683_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81197 __tmp81196)))
                                        (__tmp81167
                                         (let ((__tmp81169
                                                (let ((__tmp81194
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81170
                                                       (let ((__tmp81188
                                                              (let ((__tmp81189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81190
                                    (let ((__tmp81191
                                           (let ((__tmp81193
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81192
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80683_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81193 __tmp81192))))
                                      (declare (not safe))
                                      (cons __tmp81191 '()))))
                               (declare (not safe))
                               (cons _L80710_ __tmp81190))))
                        (declare (not safe))
                        (cons __tmp81189 '())))
                     (__tmp81171
                      (let ((__tmp81172
                             (let ((__tmp81187 (gx#datum->syntax '#f 'let))
                                   (__tmp81173
                                    (let ((__tmp81175
                                           (let ((__tmp81182
                                                  (let ((__tmp81183
                                                         (let ((__tmp81184
                                                                (let ((__tmp81186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81185
                               (let ()
                                 (declare (not safe))
                                 (cons _L80710_ '()))))
                          (declare (not safe))
                          (cons __tmp81186 __tmp81185))))
                   (declare (not safe))
                   (cons __tmp81184 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L80738_
                                                          __tmp81183)))
                                                 (__tmp81176
                                                  (let ((__tmp81177
                                                         (let ((__tmp81178
                                                                (let ((__tmp81179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81181 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81180
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80710_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81181 __tmp81180))))
                          (declare (not safe))
                          (cons __tmp81179 '()))))
                   (declare (not safe))
                   (cons _L80766_ __tmp81178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81177 '()))))
                                             (declare (not safe))
                                             (cons __tmp81182 __tmp81176)))
                                          (__tmp81174
                                           (let ()
                                             (declare (not safe))
                                             (cons _L80794_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81175 __tmp81174))))
                               (declare (not safe))
                               (cons __tmp81187 __tmp81173))))
                        (declare (not safe))
                        (cons __tmp81172 '()))))
                 (declare (not safe))
                 (cons __tmp81188 __tmp81171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81194
                                                        __tmp81170)))
                                               (__tmp81168
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L80822_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81169 __tmp81168))))
                                    (declare (not safe))
                                    (cons __tmp81195 __tmp81167))))
                             (declare (not safe))
                             (cons __tmp81198 __tmp81166)))))
                     _g8080880819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8080680837_ _E80348_))))
                                              _g8078080791_))))
                                     (_g8077880841_
                                      (_recur80350_
                                       _L80657_
                                       _L80738_
                                       (_recur80350_
                                        _L80655_
                                        _L80766_
                                        _K80356_))))))
                               _g8075280763_))))
                      (_g8075080845_ (gx#genident 'tl)))))
                _g8072480735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8072280849_
                                                (gx#genident 'hd)))))
                                         _g8069680707_))))
                                (_g8069480853_ (gx#genident 'e)))))
                          _g8066980680_))))
                 (_g8066780857_ _tgt80355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8106881069_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80353_)
                                                           (if (gx#underscore?
                                                                _hd80353_)
                                                               _K80356_
                                                               (if (let ((__tmp81243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8038180383_)
                                    (gx#bound-identifier=?
                                     _g8038180383_
                                     _hd80353_))))
                             (declare (not safe))
                             (find __tmp81243 _kws79952_))
                           (let* ((_g8038780402_
                                   (lambda (_g8038880398_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8038880398_)))
                                  (_g8038680453_
                                   (lambda (_g8038880406_)
                                     (if (gx#stx-pair? _g8038880406_)
                                         (let ((_e8039380409_
                                                (gx#syntax-e _g8038880406_)))
                                           (let ((_hd8039280413_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8039380409_)))
                                                 (_tl8039180416_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8039380409_))))
                                             (if (gx#stx-pair? _tl8039180416_)
                                                 (let ((_e8039680419_
                                                        (gx#syntax-e
                                                         _tl8039180416_)))
                                                   (let ((_hd8039580423_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8039680419_)))
                                                         (_tl8039480426_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8039680419_))))
                                                     (if (gx#stx-null?
                                                          _tl8039480426_)
                                                         ((lambda (_L80429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80431_)
                    (let ()
                      (let ((__tmp81242 (gx#datum->syntax '#f 'if))
                            (__tmp81225
                             (let ((__tmp81228
                                    (let ((__tmp81241
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81229
                                           (let ((__tmp81238
                                                  (let ((__tmp81240
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81239
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81240
                                                          __tmp81239)))
                                                 (__tmp81230
                                                  (let ((__tmp81231
                                                         (let ((__tmp81237
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81232
                        (let ((__tmp81233
                               (let ((__tmp81234
                                      (let ((__tmp81236
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81235
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80429_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81236 __tmp81235))))
                                 (declare (not safe))
                                 (cons __tmp81234 '()))))
                          (declare (not safe))
                          (cons _L80431_ __tmp81233))))
                   (declare (not safe))
                   (cons __tmp81237 __tmp81232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81231 '()))))
                                             (declare (not safe))
                                             (cons __tmp81238 __tmp81230))))
                                      (declare (not safe))
                                      (cons __tmp81241 __tmp81229)))
                                   (__tmp81226
                                    (let ((__tmp81227
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80348_ '()))))
                                      (declare (not safe))
                                      (cons _K80356_ __tmp81227))))
                               (declare (not safe))
                               (cons __tmp81228 __tmp81226))))
                        (declare (not safe))
                        (cons __tmp81242 __tmp81225))))
                  _hd8039580423_
                  _hd8039280413_)
                 (_g8038780402_ _g8038880406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8038780402_
                                                  _g8038880406_))))
                                         (_g8038780402_ _g8038880406_)))))
                             (_g8038680453_ (list _tgt80355_ _hd80353_)))
                           (let* ((_g8045780472_
                                   (lambda (_g8045880468_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8045880468_)))
                                  (_g8045680516_
                                   (lambda (_g8045880476_)
                                     (if (gx#stx-pair? _g8045880476_)
                                         (let ((_e8046380479_
                                                (gx#syntax-e _g8045880476_)))
                                           (let ((_hd8046280483_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8046380479_)))
                                                 (_tl8046180486_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8046380479_))))
                                             (if (gx#stx-pair? _tl8046180486_)
                                                 (let ((_e8046680489_
                                                        (gx#syntax-e
                                                         _tl8046180486_)))
                                                   (let ((_hd8046580493_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8046680489_)))
                                                         (_tl8046480496_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8046680489_))))
                                                     (if (gx#stx-null?
                                                          _tl8046480496_)
                                                         ((lambda (_L80499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80501_)
                    (let ()
                      (let ((__tmp81224 (gx#datum->syntax '#f 'let))
                            (__tmp81219
                             (let ((__tmp81221
                                    (let ((__tmp81222
                                           (let ((__tmp81223
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80501_ '()))))
                                             (declare (not safe))
                                             (cons _L80499_ __tmp81223))))
                                      (declare (not safe))
                                      (cons __tmp81222 '())))
                                   (__tmp81220
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80356_ '()))))
                               (declare (not safe))
                               (cons __tmp81221 __tmp81220))))
                        (declare (not safe))
                        (cons __tmp81224 __tmp81219))))
                  _hd8046580493_
                  _hd8046280483_)
                 (_g8045780472_ _g8045880476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8045780472_
                                                  _g8045880476_))))
                                         (_g8045780472_ _g8045880476_)))))
                             (_g8045680516_ (list _tgt80355_ _hd80353_)))))
                   (if (gx#stx-null? _hd80353_)
                       (let* ((_g8052080528_
                               (lambda (_g8052180524_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8052180524_)))
                              (_g8051980546_
                               (lambda (_g8052180532_)
                                 ((lambda (_L80535_)
                                    (let ()
                                      (let ((__tmp81218
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81212
                                             (let ((__tmp81215
                                                    (let ((__tmp81217
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81216
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81217 __tmp81216)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81213
                                                    (let ((__tmp81214
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80356_ __tmp81214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81215 __tmp81213))))
                                        (declare (not safe))
                                        (cons __tmp81218 __tmp81212))))
                                  _g8052180532_))))
                         (_g8051980546_ _tgt80355_))
                       (if (gx#stx-datum? _hd80353_)
                           (let* ((_g8055080569_
                                   (lambda (_g8055180565_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8055180565_)))
                                  (_g8054980627_
                                   (lambda (_g8055180573_)
                                     (if (gx#stx-pair? _g8055180573_)
                                         (let ((_e8055780576_
                                                (gx#syntax-e _g8055180573_)))
                                           (let ((_hd8055680580_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8055780576_)))
                                                 (_tl8055580583_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8055780576_))))
                                             (if (gx#stx-pair? _tl8055580583_)
                                                 (let ((_e8056080586_
                                                        (gx#syntax-e
                                                         _tl8055580583_)))
                                                   (let ((_hd8055980590_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8056080586_)))
                                                         (_tl8055880593_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8056080586_))))
                                                     (if (gx#stx-pair?
                                                          _tl8055880593_)
                                                         (let ((_e8056380596_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8055880593_)))
                   (let ((_hd8056280600_
                          (let () (declare (not safe)) (##car _e8056380596_)))
                         (_tl8056180603_
                          (let () (declare (not safe)) (##cdr _e8056380596_))))
                     (if (gx#stx-null? _tl8056180603_)
                         ((lambda (_L80606_ _L80608_ _L80609_)
                            (let ()
                              (let ((__tmp81211 (gx#datum->syntax '#f 'if))
                                    (__tmp81199
                                     (let ((__tmp81202
                                            (let ((__tmp81203
                                                   (let ((__tmp81208
                                                          (let ((__tmp81210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81209
                         (let () (declare (not safe)) (cons _L80609_ '()))))
                    (declare (not safe))
                    (cons __tmp81210 __tmp81209)))
                 (__tmp81204
                  (let ((__tmp81205
                         (let ((__tmp81207 (gx#datum->syntax '#f 'quote))
                               (__tmp81206
                                (let ()
                                  (declare (not safe))
                                  (cons _L80608_ '()))))
                           (declare (not safe))
                           (cons __tmp81207 __tmp81206))))
                    (declare (not safe))
                    (cons __tmp81205 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81208
                                                           __tmp81204))))
                                              (declare (not safe))
                                              (cons _L80606_ __tmp81203)))
                                           (__tmp81200
                                            (let ((__tmp81201
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80348_ '()))))
                                              (declare (not safe))
                                              (cons _K80356_ __tmp81201))))
                                       (declare (not safe))
                                       (cons __tmp81202 __tmp81200))))
                                (declare (not safe))
                                (cons __tmp81211 __tmp81199))))
                          _hd8056280600_
                          _hd8055980590_
                          _hd8055680580_)
                         (_g8055080569_ _g8055180573_))))
                 (_g8055080569_ _g8055180573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8055080569_
                                                  _g8055180573_))))
                                         (_g8055080569_ _g8055180573_)))))
                             (_g8054980627_
                              (list _tgt80355_
                                    _hd80353_
                                    (let ((_e80631_ (gx#stx-e _hd80353_)))
                                      (if (or (keyword? _e80631_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e80631_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e80631_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx79798_
                            _where80343_
                            _hd80353_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8106381064_)
                                                    (let ((_e8036580645_
                                                           (gx#syntax-e
                                                            ___stx8106381064_)))
                                                      (let ((_tl8036380652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8036580645_)))
                    (_hd8036480649_
                     (let () (declare (not safe)) (##car _e8036580645_))))
                (___kont8106681067_ _tl8036380652_ _hd8036480649_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8106881069_)))))))
                                  (_recur80350_
                                   _hd80345_
                                   _tgt79950_
                                   (let ((__tmp81247
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81244
                                          (let ((__tmp81245
                                                 (let ((__tmp81246
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80348_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80347_
                                                         __tmp81246))))
                                            (declare (not safe))
                                            (cons _fender80346_ __tmp81245))))
                                     (declare (not safe))
                                     (cons __tmp81247 __tmp81244))))))
                             (_generate-clauses79958_
                              (lambda (_clauses80081_)
                                (let _lp80084_ ((_rest80087_ _clauses80081_)
                                                (_E80089_ (gx#genident 'E))
                                                (_r80090_ '()))
                                  (let* ((___stx8109981100_ _rest80087_)
                                         (_g8009380105_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8109981100_))))
                                    (let ((___kont8110281103_
                                           (lambda (_L80170_ _L80172_)
                                             (let* ((___stx8107981080_
                                                     _L80172_)
                                                    (_g8018480195_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8107981080_))))
                                               (let ((___kont8108281083_
                                                      (lambda (_L80324_)
                                                        (if (gx#stx-null?
                                                             _L80170_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80324_)
                             (let ((__tmp81256 (gx#stx-null? _L80324_)))
                               (declare (not safe))
                               (not __tmp81256)))
                        (let ((__tmp81248
                               (let ((__tmp81249
                                      (let ((__tmp81250
                                             (gx#stx-wrap-source
                                              (let ((__tmp81255
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81251
                                                     (let ((__tmp81252
                                                            (let ((__tmp81253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81254 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81254 _L80324_))))
                      (declare (not safe))
                      (cons __tmp81253 '()))))
               (declare (not safe))
               (cons '() __tmp81252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81255 __tmp81251))
                                              (gx#stx-source _L80172_))))
                                        (declare (not safe))
                                        (cons __tmp81250 '()))))
                                 (declare (not safe))
                                 (cons _E80089_ __tmp81249))))
                          (declare (not safe))
                          (cons __tmp81248 _r80090_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx79798_
                         _L80172_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx79798_
                     _L80172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8108481085_
                                                      (lambda ()
                                                        (let* ((_g8020680214_
                                                                (lambda (_g8020780210_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8020780210_)))
                       (_g8020580303_
                        (lambda (_g8020780218_)
                          ((lambda (_L80221_)
                             (let ()
                               (let* ((_g8023780245_
                                       (lambda (_g8023880241_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8023880241_)))
                                      (_g8023680299_
                                       (lambda (_g8023880249_)
                                         ((lambda (_L80252_)
                                            (let ()
                                              (let* ((_g8026580273_
                                                      (lambda (_g8026680269_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8026680269_)))
                                                     (_g8026480295_
                                                      (lambda (_g8026680277_)
                                                        ((lambda (_L80280_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80084_
                                                                _L80170_
                                                                _L80221_
                                                                (let ((__tmp81257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81258
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80280_ '()))))
                                 (declare (not safe))
                                 (cons _E80089_ __tmp81258))))
                          (declare (not safe))
                          (cons __tmp81257 _r80090_))))))
                 _g8026680277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8026480295_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81261
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81259
                                                         (let ((__tmp81260
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80252_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81261
                                                          __tmp81259))
                                                  (gx#stx-source _L80172_))))))
                                          _g8023880249_))))
                                 (_g8023680299_
                                  (_generate-clause79955_
                                   _L80172_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80221_ '())))))))
                           _g8020780218_))))
                  (_g8020580303_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8107981080_)
                                                     (let ((_e8018980314_
                                                            (gx#syntax-e
                                                             ___stx8107981080_)))
                                                       (let ((_tl8018780321_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8018980314_)))
                     (_hd8018880318_
                      (let () (declare (not safe)) (##car _e8018980314_))))
                 (if (gx#identifier? _hd8018880318_)
                     (if (gx#free-identifier=? |gx[1]#_g81262_| _hd8018880318_)
                         (___kont8108281083_ _tl8018780321_)
                         (___kont8108481085_))
                     (___kont8108481085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8108481085_))))))
                                          (___kont8110481105_
                                           (lambda ()
                                             (let* ((_g8011680124_
                                                     (lambda (_g8011780120_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8011780120_)))
                                                    (_g8011580149_
                                                     (lambda (_g8011780128_)
                                                       ((lambda (_L80131_)
                                                          (let ()
                                                            (let ((__tmp81263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81264
                                  (let ((__tmp81265
                                         (gx#stx-wrap-source
                                          (let ((__tmp81273
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81266
                                                 (let ((__tmp81267
                                                        (let ((__tmp81268
                                                               (let ((__tmp81272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81269
                              (let ((__tmp81270
                                     (let ((__tmp81271
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80131_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81271))))
                                (declare (not safe))
                                (cons '#f __tmp81270))))
                         (declare (not safe))
                         (cons __tmp81272 __tmp81269))))
                  (declare (not safe))
                  (cons __tmp81268 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81267))))
                                            (declare (not safe))
                                            (cons __tmp81273 __tmp81266))
                                          (gx#stx-source _stx79798_))))
                                    (declare (not safe))
                                    (cons __tmp81265 '()))))
                             (declare (not safe))
                             (cons _E80089_ __tmp81264))))
                      (declare (not safe))
                      (cons __tmp81263 _r80090_))))
                _g8011780128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8011580149_ _tgt79950_)))))
                                      (if (gx#stx-pair? ___stx8109981100_)
                                          (let ((_e8009980160_
                                                 (gx#syntax-e
                                                  ___stx8109981100_)))
                                            (let ((_tl8009780167_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8009980160_)))
                                                  (_hd8009880164_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8009980160_))))
                                              (___kont8110281103_
                                               _tl8009780167_
                                               _hd8009880164_)))
                                          (___kont8110481105_))))))))
                      (let* ((_bind79960_
                              (_generate-clauses79958_ _clauses79953_))
                             (_g7996379980_
                              (lambda (_g7996479976_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7996479976_)))
                             (_g7996280077_
                              (lambda (_g7996479984_)
                                (if (gx#stx-pair/null? _g7996479984_)
                                    (let ((_g81274_
                                           (gx#syntax-split-splice
                                            _g7996479984_
                                            '0)))
                                      (begin
                                        (let ((_g81275_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81274_)
                                                     (##vector-length _g81274_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81275_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81275_)))
                                        (let ((_target7996679987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81274_ 0)))
                                              (_tl7996879990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81274_ 1))))
                                          (if (gx#stx-null? _tl7996879990_)
                                              (letrec ((_loop7996979993_
                                                        (lambda (_hd7996779997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7997380000_)
                  (if (gx#stx-pair? _hd7996779997_)
                      (let ((_e7997080003_ (gx#syntax-e _hd7996779997_)))
                        (let ((_lp-hd7997180007_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7997080003_)))
                              (_lp-tl7997280010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7997080003_))))
                          (_loop7996979993_
                           _lp-tl7997280010_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7997180007_ _bind-try7997380000_)))))
                      (let ((_bind-try7997480013_
                             (reverse _bind-try7997380000_)))
                        ((lambda (_L80017_)
                           (let ()
                             (let* ((_g8003580043_
                                     (lambda (_g8003680039_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8003680039_)))
                                    (_g8003480073_
                                     (lambda (_g8003680047_)
                                       ((lambda (_L80050_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81281
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81276
                                                     (let ((__tmp81279
                                                            (let ((__tmp81280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8006480067_ _g8006580070_)
                             (let ()
                               (declare (not safe))
                               (cons _g8006480067_ _g8006580070_)))))
                      (declare (not safe))
                      (foldr1 __tmp81280 '() _L80017_)))
                   (__tmp81277
                    (let ((__tmp81278
                           (let () (declare (not safe)) (cons _L80050_ '()))))
                      (declare (not safe))
                      (cons __tmp81278 '()))))
               (declare (not safe))
               (cons __tmp81279 __tmp81277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81281
                                                      __tmp81276)))))
                                        _g8003680047_))))
                               (_g8003480073_ (car (last _bind79960_))))))
                         _bind-try7997480013_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7996979993_
                                                 _target7996679987_
                                                 '()))
                                              (_g7996379980_ _g7996479984_)))))
                                    (_g7996379980_ _g7996479984_)))))
                        (_g7996280077_ _bind79960_))))))
          (let* ((_g7980479823_
                  (lambda (_g7980579819_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7980579819_)))
                 (_g7980379946_
                  (lambda (_g7980579827_)
                    (if (gx#stx-pair? _g7980579827_)
                        (let ((_e7981179830_ (gx#syntax-e _g7980579827_)))
                          (let ((_hd7981079834_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7981179830_)))
                                (_tl7980979837_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7981179830_))))
                            (if (gx#stx-pair? _tl7980979837_)
                                (let ((_e7981479840_
                                       (gx#syntax-e _tl7980979837_)))
                                  (let ((_hd7981379844_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7981479840_)))
                                        (_tl7981279847_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7981479840_))))
                                    (if (gx#stx-pair? _tl7981279847_)
                                        (let ((_e7981779850_
                                               (gx#syntax-e _tl7981279847_)))
                                          (let ((_hd7981679854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7981779850_)))
                                                (_tl7981579857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7981779850_))))
                                            ((lambda (_L79860_
                                                      _L79862_
                                                      _L79863_)
                                               (if (and (gx#identifier-list?
                                                         _L79862_)
                                                        (gx#stx-list?
                                                         _L79860_))
                                                   (let* ((_g7988179889_
                                                           (lambda (_g7988279885_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7988279885_)))
                                                          (_g7988079942_
                                                           (lambda (_g7988279893_)
                                                             ((lambda (_L79896_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7990879916_
                                  (lambda (_g7990979912_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7990979912_)))
                                 (_g7990779938_
                                  (lambda (_g7990979920_)
                                    ((lambda (_L79923_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81287
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81282
                                                  (let ((__tmp81284
                                                         (let ((__tmp81285
                                                                (let ((__tmp81286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L79863_ '()))))
                          (declare (not safe))
                          (cons _L79896_ __tmp81286))))
                   (declare (not safe))
                   (cons __tmp81285 '())))
                (__tmp81283 (let () (declare (not safe)) (cons _L79923_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81284
                                                          __tmp81283))))
                                             (declare (not safe))
                                             (cons __tmp81287 __tmp81282)))))
                                     _g7990979920_))))
                            (_g7990779938_
                             (_generate79801_
                              _L79896_
                              (gx#syntax->list _L79862_)
                              _L79860_)))))
                      _g7988279893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7988079942_
                                                      (gx#genident 'e)))
                                                   (_g7980479823_
                                                    _g7980579827_)))
                                             _tl7981579857_
                                             _hd7981679854_
                                             _hd7981379844_)))
                                        (_g7980479823_ _g7980579827_))))
                                (_g7980479823_ _g7980579827_))))
                        (_g7980479823_ _g7980579827_)))))
            (_g7980379946_ _stx79798_)))))))
