(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81109_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81111_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81113_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81118_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81121_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81126_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81129_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81134_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81137_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81142_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81145_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81252_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81104
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
           __obj81104
           'gerbil#AST::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           'syntax
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           '(e source)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81108 |gx[1]#_g81109_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           __tmp81108
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81110 |gx[1]#_g81111_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           __tmp81110
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81112 |gx[1]#_g81113_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           __tmp81112
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81114
               (let ((__tmp81119
                      (let ((__tmp81120 |gx[1]#_g81121_|))
                        (declare (not safe))
                        (cons 'e __tmp81120)))
                     (__tmp81115
                      (let ((__tmp81116
                             (let ((__tmp81117 |gx[1]#_g81118_|))
                               (declare (not safe))
                               (cons 'source __tmp81117))))
                        (declare (not safe))
                        (cons __tmp81116 '()))))
                 (declare (not safe))
                 (cons __tmp81119 __tmp81115))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           __tmp81114
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81122
               (let ((__tmp81127
                      (let ((__tmp81128 |gx[1]#_g81129_|))
                        (declare (not safe))
                        (cons 'e __tmp81128)))
                     (__tmp81123
                      (let ((__tmp81124
                             (let ((__tmp81125 |gx[1]#_g81126_|))
                               (declare (not safe))
                               (cons 'source __tmp81125))))
                        (declare (not safe))
                        (cons __tmp81124 '()))))
                 (declare (not safe))
                 (cons __tmp81127 __tmp81123))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           __tmp81122
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81130
               (let ((__tmp81135
                      (let ((__tmp81136 |gx[1]#_g81137_|))
                        (declare (not safe))
                        (cons 'e __tmp81136)))
                     (__tmp81131
                      (let ((__tmp81132
                             (let ((__tmp81133 |gx[1]#_g81134_|))
                               (declare (not safe))
                               (cons 'source __tmp81133))))
                        (declare (not safe))
                        (cons __tmp81132 '()))))
                 (declare (not safe))
                 (cons __tmp81135 __tmp81131))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           __tmp81130
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81138
               (let ((__tmp81143
                      (let ((__tmp81144 |gx[1]#_g81145_|))
                        (declare (not safe))
                        (cons 'e __tmp81144)))
                     (__tmp81139
                      (let ((__tmp81140
                             (let ((__tmp81141 |gx[1]#_g81142_|))
                               (declare (not safe))
                               (cons 'source __tmp81141))))
                        (declare (not safe))
                        (cons __tmp81140 '()))))
                 (declare (not safe))
                 (cons __tmp81143 __tmp81139))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81104
           __tmp81138
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj81104))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx79724_)
        (let* ((_g7972879742_
                (lambda (_g7972979738_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7972979738_)))
               (_g7972779784_
                (lambda (_g7972979746_)
                  (if (gx#stx-pair? _g7972979746_)
                      (let ((_e7973379749_ (gx#syntax-e _g7972979746_)))
                        (let ((_hd7973279753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7973379749_)))
                              (_tl7973179756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7973379749_))))
                          (if (gx#stx-pair? _tl7973179756_)
                              (let ((_e7973679759_
                                     (gx#syntax-e _tl7973179756_)))
                                (let ((_hd7973579763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7973679759_)))
                                      (_tl7973479766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7973679759_))))
                                  (if (gx#stx-null? _tl7973479766_)
                                      ((lambda (_L79769_)
                                         (let ((__tmp81155
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81146
                                                (let ((__tmp81152
                                                       (let ((__tmp81154
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81153
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L79769_ '()))))
                 (declare (not safe))
                 (cons __tmp81154 __tmp81153)))
              (__tmp81147
               (let ((__tmp81148
                      (let ((__tmp81151 (gx#datum->syntax '#f 'error))
                            (__tmp81149
                             (let ((__tmp81150
                                    (let ()
                                      (declare (not safe))
                                      (cons _L79769_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81150))))
                        (declare (not safe))
                        (cons __tmp81151 __tmp81149))))
                 (declare (not safe))
                 (cons __tmp81148 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81152
                                                        __tmp81147))))
                                           (declare (not safe))
                                           (cons __tmp81155 __tmp81146)))
                                       _hd7973579763_)
                                      (_g7972879742_ _g7972979746_))))
                              (_g7972879742_ _g7972979746_))))
                      (_g7972879742_ _g7972979746_)))))
          (_g7972779784_ _$stx79724_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx79788_)
        (letrec ((_generate79791_
                  (lambda (_tgt79940_ _kws79942_ _clauses79943_)
                    (letrec ((_generate-clause79945_
                              (lambda (_hd80855_ _E80857_)
                                (let* ((___stx8100781008_ _hd80855_)
                                       (_g8086180888_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8100781008_))))
                                  (let ((___kont8101081011_
                                         (lambda (_L80984_ _L80986_)
                                           (_generate179947_
                                            _hd80855_
                                            _L80986_
                                            '#t
                                            _L80984_
                                            _E80857_)))
                                        (___kont8101281013_
                                         (lambda (_L80936_ _L80938_ _L80939_)
                                           (_generate179947_
                                            _hd80855_
                                            _L80939_
                                            _L80938_
                                            _L80936_
                                            _E80857_)))
                                        (___kont8101481015_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx79788_
                                            _hd80855_))))
                                    (if (gx#stx-pair? ___stx8100781008_)
                                        (let ((_e8086780964_
                                               (gx#syntax-e
                                                ___stx8100781008_)))
                                          (let ((_tl8086580971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8086780964_)))
                                                (_hd8086680968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8086780964_))))
                                            (if (gx#stx-pair? _tl8086580971_)
                                                (let ((_e8087080974_
                                                       (gx#syntax-e
                                                        _tl8086580971_)))
                                                  (let ((_tl8086880981_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8087080974_)))
                                                        (_hd8086980978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8087080974_))))
                                                    (if (gx#stx-null?
                                                         _tl8086880981_)
                                                        (___kont8101081011_
                                                         _hd8086980978_
                                                         _hd8086680968_)
                                                        (if (gx#stx-pair?
                                                             _tl8086880981_)
                                                            (let ((_e8088280926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8086880981_)))
                      (let ((_tl8088080933_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8088280926_)))
                            (_hd8088180930_
                             (let ()
                               (declare (not safe))
                               (##car _e8088280926_))))
                        (if (gx#stx-null? _tl8088080933_)
                            (___kont8101281013_
                             _hd8088180930_
                             _hd8086980978_
                             _hd8086680968_)
                            (___kont8101481015_))))
                    (___kont8101481015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8101481015_))))
                                        (___kont8101481015_))))))
                             (_generate179947_
                              (lambda (_where80333_
                                       _hd80335_
                                       _fender80336_
                                       _body80337_
                                       _E80338_)
                                (letrec ((_recur80340_
                                          (lambda (_hd80343_
                                                   _tgt80345_
                                                   _K80346_)
                                            (let* ((___stx8105381054_
                                                    _hd80343_)
                                                   (_g8034980361_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8105381054_))))
                                              (let ((___kont8105681057_
                                                     (lambda (_L80645_
                                                              _L80647_)
                                                       (let* ((_g8065880666_
                                                               (lambda (_g8065980662_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8065980662_)))
                      (_g8065780847_
                       (lambda (_g8065980670_)
                         ((lambda (_L80673_)
                            (let ()
                              (let* ((_g8068580693_
                                      (lambda (_g8068680689_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8068680689_)))
                                     (_g8068480843_
                                      (lambda (_g8068680697_)
                                        ((lambda (_L80700_)
                                           (let ()
                                             (let* ((_g8071380721_
                                                     (lambda (_g8071480717_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8071480717_)))
                                                    (_g8071280839_
                                                     (lambda (_g8071480725_)
                                                       ((lambda (_L80728_)
                                                          (let ()
                                                            (let* ((_g8074180749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8074280745_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8074280745_)))
                           (_g8074080835_
                            (lambda (_g8074280753_)
                              ((lambda (_L80756_)
                                 (let ()
                                   (let* ((_g8076980777_
                                           (lambda (_g8077080773_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8077080773_)))
                                          (_g8076880831_
                                           (lambda (_g8077080781_)
                                             ((lambda (_L80784_)
                                                (let ()
                                                  (let* ((_g8079780805_
                                                          (lambda (_g8079880801_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8079880801_)))
                                                         (_g8079680827_
                                                          (lambda (_g8079880809_)
                                                            ((lambda (_L80812_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81188 (gx#datum->syntax '#f 'if))
                                 (__tmp81156
                                  (let ((__tmp81185
                                         (let ((__tmp81187
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81186
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L80673_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81187 __tmp81186)))
                                        (__tmp81157
                                         (let ((__tmp81159
                                                (let ((__tmp81184
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81160
                                                       (let ((__tmp81178
                                                              (let ((__tmp81179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81180
                                    (let ((__tmp81181
                                           (let ((__tmp81183
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81182
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80673_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81183 __tmp81182))))
                                      (declare (not safe))
                                      (cons __tmp81181 '()))))
                               (declare (not safe))
                               (cons _L80700_ __tmp81180))))
                        (declare (not safe))
                        (cons __tmp81179 '())))
                     (__tmp81161
                      (let ((__tmp81162
                             (let ((__tmp81177 (gx#datum->syntax '#f 'let))
                                   (__tmp81163
                                    (let ((__tmp81165
                                           (let ((__tmp81172
                                                  (let ((__tmp81173
                                                         (let ((__tmp81174
                                                                (let ((__tmp81176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81175
                               (let ()
                                 (declare (not safe))
                                 (cons _L80700_ '()))))
                          (declare (not safe))
                          (cons __tmp81176 __tmp81175))))
                   (declare (not safe))
                   (cons __tmp81174 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L80728_
                                                          __tmp81173)))
                                                 (__tmp81166
                                                  (let ((__tmp81167
                                                         (let ((__tmp81168
                                                                (let ((__tmp81169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81171 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81170
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80700_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81171 __tmp81170))))
                          (declare (not safe))
                          (cons __tmp81169 '()))))
                   (declare (not safe))
                   (cons _L80756_ __tmp81168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81167 '()))))
                                             (declare (not safe))
                                             (cons __tmp81172 __tmp81166)))
                                          (__tmp81164
                                           (let ()
                                             (declare (not safe))
                                             (cons _L80784_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81165 __tmp81164))))
                               (declare (not safe))
                               (cons __tmp81177 __tmp81163))))
                        (declare (not safe))
                        (cons __tmp81162 '()))))
                 (declare (not safe))
                 (cons __tmp81178 __tmp81161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81184
                                                        __tmp81160)))
                                               (__tmp81158
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L80812_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81159 __tmp81158))))
                                    (declare (not safe))
                                    (cons __tmp81185 __tmp81157))))
                             (declare (not safe))
                             (cons __tmp81188 __tmp81156)))))
                     _g8079880809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8079680827_ _E80338_))))
                                              _g8077080781_))))
                                     (_g8076880831_
                                      (_recur80340_
                                       _L80647_
                                       _L80728_
                                       (_recur80340_
                                        _L80645_
                                        _L80756_
                                        _K80346_))))))
                               _g8074280753_))))
                      (_g8074080835_ (gx#genident 'tl)))))
                _g8071480725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8071280839_
                                                (gx#genident 'hd)))))
                                         _g8068680697_))))
                                (_g8068480843_ (gx#genident 'e)))))
                          _g8065980670_))))
                 (_g8065780847_ _tgt80345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8105881059_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80343_)
                                                           (if (gx#underscore?
                                                                _hd80343_)
                                                               _K80346_
                                                               (if (let ((__tmp81233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8037180373_)
                                    (gx#bound-identifier=?
                                     _g8037180373_
                                     _hd80343_))))
                             (declare (not safe))
                             (find __tmp81233 _kws79942_))
                           (let* ((_g8037780392_
                                   (lambda (_g8037880388_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8037880388_)))
                                  (_g8037680443_
                                   (lambda (_g8037880396_)
                                     (if (gx#stx-pair? _g8037880396_)
                                         (let ((_e8038380399_
                                                (gx#syntax-e _g8037880396_)))
                                           (let ((_hd8038280403_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8038380399_)))
                                                 (_tl8038180406_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8038380399_))))
                                             (if (gx#stx-pair? _tl8038180406_)
                                                 (let ((_e8038680409_
                                                        (gx#syntax-e
                                                         _tl8038180406_)))
                                                   (let ((_hd8038580413_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8038680409_)))
                                                         (_tl8038480416_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8038680409_))))
                                                     (if (gx#stx-null?
                                                          _tl8038480416_)
                                                         ((lambda (_L80419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80421_)
                    (let ()
                      (let ((__tmp81232 (gx#datum->syntax '#f 'if))
                            (__tmp81215
                             (let ((__tmp81218
                                    (let ((__tmp81231
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81219
                                           (let ((__tmp81228
                                                  (let ((__tmp81230
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81229
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81230
                                                          __tmp81229)))
                                                 (__tmp81220
                                                  (let ((__tmp81221
                                                         (let ((__tmp81227
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81222
                        (let ((__tmp81223
                               (let ((__tmp81224
                                      (let ((__tmp81226
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81225
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80419_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81226 __tmp81225))))
                                 (declare (not safe))
                                 (cons __tmp81224 '()))))
                          (declare (not safe))
                          (cons _L80421_ __tmp81223))))
                   (declare (not safe))
                   (cons __tmp81227 __tmp81222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81221 '()))))
                                             (declare (not safe))
                                             (cons __tmp81228 __tmp81220))))
                                      (declare (not safe))
                                      (cons __tmp81231 __tmp81219)))
                                   (__tmp81216
                                    (let ((__tmp81217
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80338_ '()))))
                                      (declare (not safe))
                                      (cons _K80346_ __tmp81217))))
                               (declare (not safe))
                               (cons __tmp81218 __tmp81216))))
                        (declare (not safe))
                        (cons __tmp81232 __tmp81215))))
                  _hd8038580413_
                  _hd8038280403_)
                 (_g8037780392_ _g8037880396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8037780392_
                                                  _g8037880396_))))
                                         (_g8037780392_ _g8037880396_)))))
                             (_g8037680443_ (list _tgt80345_ _hd80343_)))
                           (let* ((_g8044780462_
                                   (lambda (_g8044880458_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8044880458_)))
                                  (_g8044680506_
                                   (lambda (_g8044880466_)
                                     (if (gx#stx-pair? _g8044880466_)
                                         (let ((_e8045380469_
                                                (gx#syntax-e _g8044880466_)))
                                           (let ((_hd8045280473_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8045380469_)))
                                                 (_tl8045180476_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8045380469_))))
                                             (if (gx#stx-pair? _tl8045180476_)
                                                 (let ((_e8045680479_
                                                        (gx#syntax-e
                                                         _tl8045180476_)))
                                                   (let ((_hd8045580483_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8045680479_)))
                                                         (_tl8045480486_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8045680479_))))
                                                     (if (gx#stx-null?
                                                          _tl8045480486_)
                                                         ((lambda (_L80489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80491_)
                    (let ()
                      (let ((__tmp81214 (gx#datum->syntax '#f 'let))
                            (__tmp81209
                             (let ((__tmp81211
                                    (let ((__tmp81212
                                           (let ((__tmp81213
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80491_ '()))))
                                             (declare (not safe))
                                             (cons _L80489_ __tmp81213))))
                                      (declare (not safe))
                                      (cons __tmp81212 '())))
                                   (__tmp81210
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80346_ '()))))
                               (declare (not safe))
                               (cons __tmp81211 __tmp81210))))
                        (declare (not safe))
                        (cons __tmp81214 __tmp81209))))
                  _hd8045580483_
                  _hd8045280473_)
                 (_g8044780462_ _g8044880466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8044780462_
                                                  _g8044880466_))))
                                         (_g8044780462_ _g8044880466_)))))
                             (_g8044680506_ (list _tgt80345_ _hd80343_)))))
                   (if (gx#stx-null? _hd80343_)
                       (let* ((_g8051080518_
                               (lambda (_g8051180514_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8051180514_)))
                              (_g8050980536_
                               (lambda (_g8051180522_)
                                 ((lambda (_L80525_)
                                    (let ()
                                      (let ((__tmp81208
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81202
                                             (let ((__tmp81205
                                                    (let ((__tmp81207
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81206
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81207 __tmp81206)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81203
                                                    (let ((__tmp81204
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80346_ __tmp81204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81205 __tmp81203))))
                                        (declare (not safe))
                                        (cons __tmp81208 __tmp81202))))
                                  _g8051180522_))))
                         (_g8050980536_ _tgt80345_))
                       (if (gx#stx-datum? _hd80343_)
                           (let* ((_g8054080559_
                                   (lambda (_g8054180555_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8054180555_)))
                                  (_g8053980617_
                                   (lambda (_g8054180563_)
                                     (if (gx#stx-pair? _g8054180563_)
                                         (let ((_e8054780566_
                                                (gx#syntax-e _g8054180563_)))
                                           (let ((_hd8054680570_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8054780566_)))
                                                 (_tl8054580573_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8054780566_))))
                                             (if (gx#stx-pair? _tl8054580573_)
                                                 (let ((_e8055080576_
                                                        (gx#syntax-e
                                                         _tl8054580573_)))
                                                   (let ((_hd8054980580_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8055080576_)))
                                                         (_tl8054880583_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8055080576_))))
                                                     (if (gx#stx-pair?
                                                          _tl8054880583_)
                                                         (let ((_e8055380586_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8054880583_)))
                   (let ((_hd8055280590_
                          (let () (declare (not safe)) (##car _e8055380586_)))
                         (_tl8055180593_
                          (let () (declare (not safe)) (##cdr _e8055380586_))))
                     (if (gx#stx-null? _tl8055180593_)
                         ((lambda (_L80596_ _L80598_ _L80599_)
                            (let ()
                              (let ((__tmp81201 (gx#datum->syntax '#f 'if))
                                    (__tmp81189
                                     (let ((__tmp81192
                                            (let ((__tmp81193
                                                   (let ((__tmp81198
                                                          (let ((__tmp81200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81199
                         (let () (declare (not safe)) (cons _L80599_ '()))))
                    (declare (not safe))
                    (cons __tmp81200 __tmp81199)))
                 (__tmp81194
                  (let ((__tmp81195
                         (let ((__tmp81197 (gx#datum->syntax '#f 'quote))
                               (__tmp81196
                                (let ()
                                  (declare (not safe))
                                  (cons _L80598_ '()))))
                           (declare (not safe))
                           (cons __tmp81197 __tmp81196))))
                    (declare (not safe))
                    (cons __tmp81195 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81198
                                                           __tmp81194))))
                                              (declare (not safe))
                                              (cons _L80596_ __tmp81193)))
                                           (__tmp81190
                                            (let ((__tmp81191
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80338_ '()))))
                                              (declare (not safe))
                                              (cons _K80346_ __tmp81191))))
                                       (declare (not safe))
                                       (cons __tmp81192 __tmp81190))))
                                (declare (not safe))
                                (cons __tmp81201 __tmp81189))))
                          _hd8055280590_
                          _hd8054980580_
                          _hd8054680570_)
                         (_g8054080559_ _g8054180563_))))
                 (_g8054080559_ _g8054180563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8054080559_
                                                  _g8054180563_))))
                                         (_g8054080559_ _g8054180563_)))))
                             (_g8053980617_
                              (list _tgt80345_
                                    _hd80343_
                                    (let ((_e80621_ (gx#stx-e _hd80343_)))
                                      (if (or (keyword? _e80621_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e80621_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e80621_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx79788_
                            _where80333_
                            _hd80343_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8105381054_)
                                                    (let ((_e8035580635_
                                                           (gx#syntax-e
                                                            ___stx8105381054_)))
                                                      (let ((_tl8035380642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8035580635_)))
                    (_hd8035480639_
                     (let () (declare (not safe)) (##car _e8035580635_))))
                (___kont8105681057_ _tl8035380642_ _hd8035480639_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8105881059_)))))))
                                  (_recur80340_
                                   _hd80335_
                                   _tgt79940_
                                   (let ((__tmp81237
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81234
                                          (let ((__tmp81235
                                                 (let ((__tmp81236
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80338_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80337_
                                                         __tmp81236))))
                                            (declare (not safe))
                                            (cons _fender80336_ __tmp81235))))
                                     (declare (not safe))
                                     (cons __tmp81237 __tmp81234))))))
                             (_generate-clauses79948_
                              (lambda (_clauses80071_)
                                (let _lp80074_ ((_rest80077_ _clauses80071_)
                                                (_E80079_ (gx#genident 'E))
                                                (_r80080_ '()))
                                  (let* ((___stx8108981090_ _rest80077_)
                                         (_g8008380095_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8108981090_))))
                                    (let ((___kont8109281093_
                                           (lambda (_L80160_ _L80162_)
                                             (let* ((___stx8106981070_
                                                     _L80162_)
                                                    (_g8017480185_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8106981070_))))
                                               (let ((___kont8107281073_
                                                      (lambda (_L80314_)
                                                        (if (gx#stx-null?
                                                             _L80160_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80314_)
                             (let ((__tmp81246 (gx#stx-null? _L80314_)))
                               (declare (not safe))
                               (not __tmp81246)))
                        (let ((__tmp81238
                               (let ((__tmp81239
                                      (let ((__tmp81240
                                             (gx#stx-wrap-source
                                              (let ((__tmp81245
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81241
                                                     (let ((__tmp81242
                                                            (let ((__tmp81243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81244 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81244 _L80314_))))
                      (declare (not safe))
                      (cons __tmp81243 '()))))
               (declare (not safe))
               (cons '() __tmp81242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81245 __tmp81241))
                                              (gx#stx-source _L80162_))))
                                        (declare (not safe))
                                        (cons __tmp81240 '()))))
                                 (declare (not safe))
                                 (cons _E80079_ __tmp81239))))
                          (declare (not safe))
                          (cons __tmp81238 _r80080_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx79788_
                         _L80162_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx79788_
                     _L80162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8107481075_
                                                      (lambda ()
                                                        (let* ((_g8019680204_
                                                                (lambda (_g8019780200_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8019780200_)))
                       (_g8019580293_
                        (lambda (_g8019780208_)
                          ((lambda (_L80211_)
                             (let ()
                               (let* ((_g8022780235_
                                       (lambda (_g8022880231_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8022880231_)))
                                      (_g8022680289_
                                       (lambda (_g8022880239_)
                                         ((lambda (_L80242_)
                                            (let ()
                                              (let* ((_g8025580263_
                                                      (lambda (_g8025680259_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8025680259_)))
                                                     (_g8025480285_
                                                      (lambda (_g8025680267_)
                                                        ((lambda (_L80270_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80074_
                                                                _L80160_
                                                                _L80211_
                                                                (let ((__tmp81247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81248
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80270_ '()))))
                                 (declare (not safe))
                                 (cons _E80079_ __tmp81248))))
                          (declare (not safe))
                          (cons __tmp81247 _r80080_))))))
                 _g8025680267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8025480285_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81251
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81249
                                                         (let ((__tmp81250
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80242_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81251
                                                          __tmp81249))
                                                  (gx#stx-source _L80162_))))))
                                          _g8022880239_))))
                                 (_g8022680289_
                                  (_generate-clause79945_
                                   _L80162_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80211_ '())))))))
                           _g8019780208_))))
                  (_g8019580293_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8106981070_)
                                                     (let ((_e8017980304_
                                                            (gx#syntax-e
                                                             ___stx8106981070_)))
                                                       (let ((_tl8017780311_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8017980304_)))
                     (_hd8017880308_
                      (let () (declare (not safe)) (##car _e8017980304_))))
                 (if (gx#identifier? _hd8017880308_)
                     (if (gx#free-identifier=? |gx[1]#_g81252_| _hd8017880308_)
                         (___kont8107281073_ _tl8017780311_)
                         (___kont8107481075_))
                     (___kont8107481075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8107481075_))))))
                                          (___kont8109481095_
                                           (lambda ()
                                             (let* ((_g8010680114_
                                                     (lambda (_g8010780110_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8010780110_)))
                                                    (_g8010580139_
                                                     (lambda (_g8010780118_)
                                                       ((lambda (_L80121_)
                                                          (let ()
                                                            (let ((__tmp81253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81254
                                  (let ((__tmp81255
                                         (gx#stx-wrap-source
                                          (let ((__tmp81263
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81256
                                                 (let ((__tmp81257
                                                        (let ((__tmp81258
                                                               (let ((__tmp81262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81259
                              (let ((__tmp81260
                                     (let ((__tmp81261
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80121_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81261))))
                                (declare (not safe))
                                (cons '#f __tmp81260))))
                         (declare (not safe))
                         (cons __tmp81262 __tmp81259))))
                  (declare (not safe))
                  (cons __tmp81258 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81257))))
                                            (declare (not safe))
                                            (cons __tmp81263 __tmp81256))
                                          (gx#stx-source _stx79788_))))
                                    (declare (not safe))
                                    (cons __tmp81255 '()))))
                             (declare (not safe))
                             (cons _E80079_ __tmp81254))))
                      (declare (not safe))
                      (cons __tmp81253 _r80080_))))
                _g8010780118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8010580139_ _tgt79940_)))))
                                      (if (gx#stx-pair? ___stx8108981090_)
                                          (let ((_e8008980150_
                                                 (gx#syntax-e
                                                  ___stx8108981090_)))
                                            (let ((_tl8008780157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8008980150_)))
                                                  (_hd8008880154_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8008980150_))))
                                              (___kont8109281093_
                                               _tl8008780157_
                                               _hd8008880154_)))
                                          (___kont8109481095_))))))))
                      (let* ((_bind79950_
                              (_generate-clauses79948_ _clauses79943_))
                             (_g7995379970_
                              (lambda (_g7995479966_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7995479966_)))
                             (_g7995280067_
                              (lambda (_g7995479974_)
                                (if (gx#stx-pair/null? _g7995479974_)
                                    (let ((_g81264_
                                           (gx#syntax-split-splice
                                            _g7995479974_
                                            '0)))
                                      (begin
                                        (let ((_g81265_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81264_)
                                                     (##vector-length _g81264_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81265_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81265_)))
                                        (let ((_target7995679977_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81264_ 0)))
                                              (_tl7995879980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81264_ 1))))
                                          (if (gx#stx-null? _tl7995879980_)
                                              (letrec ((_loop7995979983_
                                                        (lambda (_hd7995779987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7996379990_)
                  (if (gx#stx-pair? _hd7995779987_)
                      (let ((_e7996079993_ (gx#syntax-e _hd7995779987_)))
                        (let ((_lp-hd7996179997_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7996079993_)))
                              (_lp-tl7996280000_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7996079993_))))
                          (_loop7995979983_
                           _lp-tl7996280000_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7996179997_ _bind-try7996379990_)))))
                      (let ((_bind-try7996480003_
                             (reverse _bind-try7996379990_)))
                        ((lambda (_L80007_)
                           (let ()
                             (let* ((_g8002580033_
                                     (lambda (_g8002680029_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8002680029_)))
                                    (_g8002480063_
                                     (lambda (_g8002680037_)
                                       ((lambda (_L80040_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81271
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81266
                                                     (let ((__tmp81269
                                                            (let ((__tmp81270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8005480057_ _g8005580060_)
                             (let ()
                               (declare (not safe))
                               (cons _g8005480057_ _g8005580060_)))))
                      (declare (not safe))
                      (foldr1 __tmp81270 '() _L80007_)))
                   (__tmp81267
                    (let ((__tmp81268
                           (let () (declare (not safe)) (cons _L80040_ '()))))
                      (declare (not safe))
                      (cons __tmp81268 '()))))
               (declare (not safe))
               (cons __tmp81269 __tmp81267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81271
                                                      __tmp81266)))))
                                        _g8002680037_))))
                               (_g8002480063_ (car (last _bind79950_))))))
                         _bind-try7996480003_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7995979983_
                                                 _target7995679977_
                                                 '()))
                                              (_g7995379970_ _g7995479974_)))))
                                    (_g7995379970_ _g7995479974_)))))
                        (_g7995280067_ _bind79950_))))))
          (let* ((_g7979479813_
                  (lambda (_g7979579809_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7979579809_)))
                 (_g7979379936_
                  (lambda (_g7979579817_)
                    (if (gx#stx-pair? _g7979579817_)
                        (let ((_e7980179820_ (gx#syntax-e _g7979579817_)))
                          (let ((_hd7980079824_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7980179820_)))
                                (_tl7979979827_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7980179820_))))
                            (if (gx#stx-pair? _tl7979979827_)
                                (let ((_e7980479830_
                                       (gx#syntax-e _tl7979979827_)))
                                  (let ((_hd7980379834_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7980479830_)))
                                        (_tl7980279837_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7980479830_))))
                                    (if (gx#stx-pair? _tl7980279837_)
                                        (let ((_e7980779840_
                                               (gx#syntax-e _tl7980279837_)))
                                          (let ((_hd7980679844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7980779840_)))
                                                (_tl7980579847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7980779840_))))
                                            ((lambda (_L79850_
                                                      _L79852_
                                                      _L79853_)
                                               (if (and (gx#identifier-list?
                                                         _L79852_)
                                                        (gx#stx-list?
                                                         _L79850_))
                                                   (let* ((_g7987179879_
                                                           (lambda (_g7987279875_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7987279875_)))
                                                          (_g7987079932_
                                                           (lambda (_g7987279883_)
                                                             ((lambda (_L79886_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7989879906_
                                  (lambda (_g7989979902_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7989979902_)))
                                 (_g7989779928_
                                  (lambda (_g7989979910_)
                                    ((lambda (_L79913_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81277
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81272
                                                  (let ((__tmp81274
                                                         (let ((__tmp81275
                                                                (let ((__tmp81276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L79853_ '()))))
                          (declare (not safe))
                          (cons _L79886_ __tmp81276))))
                   (declare (not safe))
                   (cons __tmp81275 '())))
                (__tmp81273 (let () (declare (not safe)) (cons _L79913_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81274
                                                          __tmp81273))))
                                             (declare (not safe))
                                             (cons __tmp81277 __tmp81272)))))
                                     _g7989979910_))))
                            (_g7989779928_
                             (_generate79791_
                              _L79886_
                              (gx#syntax->list _L79852_)
                              _L79850_)))))
                      _g7987279883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7987079932_
                                                      (gx#genident 'e)))
                                                   (_g7979479813_
                                                    _g7979579817_)))
                                             _tl7980579847_
                                             _hd7980679844_
                                             _hd7980379834_)))
                                        (_g7979479813_ _g7979579817_))))
                                (_g7979479813_ _g7979579817_))))
                        (_g7979479813_ _g7979579817_)))))
            (_g7979379936_ _stx79788_)))))))
