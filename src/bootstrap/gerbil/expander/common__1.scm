(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g148085_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148087_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148089_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148094_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148097_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148102_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148105_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148110_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148113_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148118_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148121_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148228_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj148080
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
           __obj148080
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148084 |gx[1]#_g148085_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           __tmp148084
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148086 |gx[1]#_g148087_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           __tmp148086
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148088 |gx[1]#_g148089_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           __tmp148088
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148090
               (let ((__tmp148095
                      (let ((__tmp148096 |gx[1]#_g148097_|))
                        (declare (not safe))
                        (cons 'e __tmp148096)))
                     (__tmp148091
                      (let ((__tmp148092
                             (let ((__tmp148093 |gx[1]#_g148094_|))
                               (declare (not safe))
                               (cons 'source __tmp148093))))
                        (declare (not safe))
                        (cons __tmp148092 '()))))
                 (declare (not safe))
                 (cons __tmp148095 __tmp148091))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           __tmp148090
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148098
               (let ((__tmp148103
                      (let ((__tmp148104 |gx[1]#_g148105_|))
                        (declare (not safe))
                        (cons 'e __tmp148104)))
                     (__tmp148099
                      (let ((__tmp148100
                             (let ((__tmp148101 |gx[1]#_g148102_|))
                               (declare (not safe))
                               (cons 'source __tmp148101))))
                        (declare (not safe))
                        (cons __tmp148100 '()))))
                 (declare (not safe))
                 (cons __tmp148103 __tmp148099))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           __tmp148098
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148106
               (let ((__tmp148111
                      (let ((__tmp148112 |gx[1]#_g148113_|))
                        (declare (not safe))
                        (cons 'e __tmp148112)))
                     (__tmp148107
                      (let ((__tmp148108
                             (let ((__tmp148109 |gx[1]#_g148110_|))
                               (declare (not safe))
                               (cons 'source __tmp148109))))
                        (declare (not safe))
                        (cons __tmp148108 '()))))
                 (declare (not safe))
                 (cons __tmp148111 __tmp148107))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           __tmp148106
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148114
               (let ((__tmp148119
                      (let ((__tmp148120 |gx[1]#_g148121_|))
                        (declare (not safe))
                        (cons 'e __tmp148120)))
                     (__tmp148115
                      (let ((__tmp148116
                             (let ((__tmp148117 |gx[1]#_g148118_|))
                               (declare (not safe))
                               (cons 'source __tmp148117))))
                        (declare (not safe))
                        (cons __tmp148116 '()))))
                 (declare (not safe))
                 (cons __tmp148119 __tmp148115))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148080
           __tmp148114
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj148080))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx142714_)
        (let* ((_g142718142732_
                (lambda (_g142719142728_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g142719142728_)))
               (_g142717142774_
                (lambda (_g142719142736_)
                  (if (gx#stx-pair? _g142719142736_)
                      (let ((_e142723142739_ (gx#syntax-e _g142719142736_)))
                        (let ((_hd142722142743_
                               (let ()
                                 (declare (not safe))
                                 (##car _e142723142739_)))
                              (_tl142721142746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e142723142739_))))
                          (if (gx#stx-pair? _tl142721142746_)
                              (let ((_e142726142749_
                                     (gx#syntax-e _tl142721142746_)))
                                (let ((_hd142725142753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e142726142749_)))
                                      (_tl142724142756_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e142726142749_))))
                                  (if (gx#stx-null? _tl142724142756_)
                                      ((lambda (_L142759_)
                                         (let ((__tmp148131
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp148122
                                                (let ((__tmp148128
                                                       (let ((__tmp148130
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp148129
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L142759_ '()))))
                 (declare (not safe))
                 (cons __tmp148130 __tmp148129)))
              (__tmp148123
               (let ((__tmp148124
                      (let ((__tmp148127 (gx#datum->syntax '#f 'error))
                            (__tmp148125
                             (let ((__tmp148126
                                    (let ()
                                      (declare (not safe))
                                      (cons _L142759_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp148126))))
                        (declare (not safe))
                        (cons __tmp148127 __tmp148125))))
                 (declare (not safe))
                 (cons __tmp148124 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp148128
                                                        __tmp148123))))
                                           (declare (not safe))
                                           (cons __tmp148131 __tmp148122)))
                                       _hd142725142753_)
                                      (_g142718142732_ _g142719142736_))))
                              (_g142718142732_ _g142719142736_))))
                      (_g142718142732_ _g142719142736_)))))
          (_g142717142774_ _$stx142714_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx142778_)
        (letrec ((_generate142781_
                  (lambda (_tgt142930_ _kws142932_ _clauses142933_)
                    (letrec ((_generate-clause142935_
                              (lambda (_hd143845_ _E143847_)
                                (let* ((___stx147983147984_ _hd143845_)
                                       (_g143851143878_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx147983147984_))))
                                  (let ((___kont147986147987_
                                         (lambda (_L143974_ _L143976_)
                                           (_generate1142937_
                                            _hd143845_
                                            _L143976_
                                            '#t
                                            _L143974_
                                            _E143847_)))
                                        (___kont147988147989_
                                         (lambda (_L143926_
                                                  _L143928_
                                                  _L143929_)
                                           (_generate1142937_
                                            _hd143845_
                                            _L143929_
                                            _L143928_
                                            _L143926_
                                            _E143847_)))
                                        (___kont147990147991_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx142778_
                                            _hd143845_))))
                                    (if (gx#stx-pair? ___stx147983147984_)
                                        (let ((_e143857143954_
                                               (gx#syntax-e
                                                ___stx147983147984_)))
                                          (let ((_tl143855143961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e143857143954_)))
                                                (_hd143856143958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e143857143954_))))
                                            (if (gx#stx-pair? _tl143855143961_)
                                                (let ((_e143860143964_
                                                       (gx#syntax-e
                                                        _tl143855143961_)))
                                                  (let ((_tl143858143971_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e143860143964_)))
                                                        (_hd143859143968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e143860143964_))))
                                                    (if (gx#stx-null?
                                                         _tl143858143971_)
                                                        (___kont147986147987_
                                                         _hd143859143968_
                                                         _hd143856143958_)
                                                        (if (gx#stx-pair?
                                                             _tl143858143971_)
                                                            (let ((_e143872143916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl143858143971_)))
                      (let ((_tl143870143923_
                             (let ()
                               (declare (not safe))
                               (##cdr _e143872143916_)))
                            (_hd143871143920_
                             (let ()
                               (declare (not safe))
                               (##car _e143872143916_))))
                        (if (gx#stx-null? _tl143870143923_)
                            (___kont147988147989_
                             _hd143871143920_
                             _hd143859143968_
                             _hd143856143958_)
                            (___kont147990147991_))))
                    (___kont147990147991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont147990147991_))))
                                        (___kont147990147991_))))))
                             (_generate1142937_
                              (lambda (_where143323_
                                       _hd143325_
                                       _fender143326_
                                       _body143327_
                                       _E143328_)
                                (letrec ((_recur143330_
                                          (lambda (_hd143333_
                                                   _tgt143335_
                                                   _K143336_)
                                            (let* ((___stx148029148030_
                                                    _hd143333_)
                                                   (_g143339143351_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx148029148030_))))
                                              (let ((___kont148032148033_
                                                     (lambda (_L143635_
                                                              _L143637_)
                                                       (let* ((_g143648143656_
                                                               (lambda (_g143649143652_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g143649143652_)))
                      (_g143647143837_
                       (lambda (_g143649143660_)
                         ((lambda (_L143663_)
                            (let ()
                              (let* ((_g143675143683_
                                      (lambda (_g143676143679_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g143676143679_)))
                                     (_g143674143833_
                                      (lambda (_g143676143687_)
                                        ((lambda (_L143690_)
                                           (let ()
                                             (let* ((_g143703143711_
                                                     (lambda (_g143704143707_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g143704143707_)))
                                                    (_g143702143829_
                                                     (lambda (_g143704143715_)
                                                       ((lambda (_L143718_)
                                                          (let ()
                                                            (let* ((_g143731143739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g143732143735_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g143732143735_)))
                           (_g143730143825_
                            (lambda (_g143732143743_)
                              ((lambda (_L143746_)
                                 (let ()
                                   (let* ((_g143759143767_
                                           (lambda (_g143760143763_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g143760143763_)))
                                          (_g143758143821_
                                           (lambda (_g143760143771_)
                                             ((lambda (_L143774_)
                                                (let ()
                                                  (let* ((_g143787143795_
                                                          (lambda (_g143788143791_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g143788143791_)))
                                                         (_g143786143817_
                                                          (lambda (_g143788143799_)
                                                            ((lambda (_L143802_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp148164 (gx#datum->syntax '#f 'if))
                                 (__tmp148132
                                  (let ((__tmp148161
                                         (let ((__tmp148163
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp148162
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L143663_ '()))))
                                           (declare (not safe))
                                           (cons __tmp148163 __tmp148162)))
                                        (__tmp148133
                                         (let ((__tmp148135
                                                (let ((__tmp148160
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp148136
                                                       (let ((__tmp148154
                                                              (let ((__tmp148155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp148156
                                    (let ((__tmp148157
                                           (let ((__tmp148159
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp148158
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L143663_ '()))))
                                             (declare (not safe))
                                             (cons __tmp148159 __tmp148158))))
                                      (declare (not safe))
                                      (cons __tmp148157 '()))))
                               (declare (not safe))
                               (cons _L143690_ __tmp148156))))
                        (declare (not safe))
                        (cons __tmp148155 '())))
                     (__tmp148137
                      (let ((__tmp148138
                             (let ((__tmp148153 (gx#datum->syntax '#f 'let))
                                   (__tmp148139
                                    (let ((__tmp148141
                                           (let ((__tmp148148
                                                  (let ((__tmp148149
                                                         (let ((__tmp148150
                                                                (let ((__tmp148152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp148151
                               (let ()
                                 (declare (not safe))
                                 (cons _L143690_ '()))))
                          (declare (not safe))
                          (cons __tmp148152 __tmp148151))))
                   (declare (not safe))
                   (cons __tmp148150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L143718_
                                                          __tmp148149)))
                                                 (__tmp148142
                                                  (let ((__tmp148143
                                                         (let ((__tmp148144
                                                                (let ((__tmp148145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp148147
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp148146
                                      (let ()
                                        (declare (not safe))
                                        (cons _L143690_ '()))))
                                 (declare (not safe))
                                 (cons __tmp148147 __tmp148146))))
                          (declare (not safe))
                          (cons __tmp148145 '()))))
                   (declare (not safe))
                   (cons _L143746_ __tmp148144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148143 '()))))
                                             (declare (not safe))
                                             (cons __tmp148148 __tmp148142)))
                                          (__tmp148140
                                           (let ()
                                             (declare (not safe))
                                             (cons _L143774_ '()))))
                                      (declare (not safe))
                                      (cons __tmp148141 __tmp148140))))
                               (declare (not safe))
                               (cons __tmp148153 __tmp148139))))
                        (declare (not safe))
                        (cons __tmp148138 '()))))
                 (declare (not safe))
                 (cons __tmp148154 __tmp148137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp148160
                                                        __tmp148136)))
                                               (__tmp148134
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L143802_ '()))))
                                           (declare (not safe))
                                           (cons __tmp148135 __tmp148134))))
                                    (declare (not safe))
                                    (cons __tmp148161 __tmp148133))))
                             (declare (not safe))
                             (cons __tmp148164 __tmp148132)))))
                     _g143788143799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g143786143817_
                                                     _E143328_))))
                                              _g143760143771_))))
                                     (_g143758143821_
                                      (_recur143330_
                                       _L143637_
                                       _L143718_
                                       (_recur143330_
                                        _L143635_
                                        _L143746_
                                        _K143336_))))))
                               _g143732143743_))))
                      (_g143730143825_ (gx#genident 'tl)))))
                _g143704143715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g143702143829_
                                                (gx#genident 'hd)))))
                                         _g143676143687_))))
                                (_g143674143833_ (gx#genident 'e)))))
                          _g143649143660_))))
                 (_g143647143837_ _tgt143335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont148034148035_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd143333_)
                                                           (if (gx#underscore?
                                                                _hd143333_)
                                                               _K143336_
                                                               (if (let ((__tmp148209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g143361143363_)
                                    (gx#bound-identifier=?
                                     _g143361143363_
                                     _hd143333_))))
                             (declare (not safe))
                             (find __tmp148209 _kws142932_))
                           (let* ((_g143367143382_
                                   (lambda (_g143368143378_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143368143378_)))
                                  (_g143366143433_
                                   (lambda (_g143368143386_)
                                     (if (gx#stx-pair? _g143368143386_)
                                         (let ((_e143373143389_
                                                (gx#syntax-e _g143368143386_)))
                                           (let ((_hd143372143393_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143373143389_)))
                                                 (_tl143371143396_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143373143389_))))
                                             (if (gx#stx-pair?
                                                  _tl143371143396_)
                                                 (let ((_e143376143399_
                                                        (gx#syntax-e
                                                         _tl143371143396_)))
                                                   (let ((_hd143375143403_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143376143399_)))
                                                         (_tl143374143406_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143376143399_))))
                                                     (if (gx#stx-null?
                                                          _tl143374143406_)
                                                         ((lambda (_L143409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L143411_)
                    (let ()
                      (let ((__tmp148208 (gx#datum->syntax '#f 'if))
                            (__tmp148191
                             (let ((__tmp148194
                                    (let ((__tmp148207
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp148195
                                           (let ((__tmp148204
                                                  (let ((__tmp148206
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp148205
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L143411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148206
                                                          __tmp148205)))
                                                 (__tmp148196
                                                  (let ((__tmp148197
                                                         (let ((__tmp148203
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp148198
                        (let ((__tmp148199
                               (let ((__tmp148200
                                      (let ((__tmp148202
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp148201
                                             (let ()
                                               (declare (not safe))
                                               (cons _L143409_ '()))))
                                        (declare (not safe))
                                        (cons __tmp148202 __tmp148201))))
                                 (declare (not safe))
                                 (cons __tmp148200 '()))))
                          (declare (not safe))
                          (cons _L143411_ __tmp148199))))
                   (declare (not safe))
                   (cons __tmp148203 __tmp148198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148197 '()))))
                                             (declare (not safe))
                                             (cons __tmp148204 __tmp148196))))
                                      (declare (not safe))
                                      (cons __tmp148207 __tmp148195)))
                                   (__tmp148192
                                    (let ((__tmp148193
                                           (let ()
                                             (declare (not safe))
                                             (cons _E143328_ '()))))
                                      (declare (not safe))
                                      (cons _K143336_ __tmp148193))))
                               (declare (not safe))
                               (cons __tmp148194 __tmp148192))))
                        (declare (not safe))
                        (cons __tmp148208 __tmp148191))))
                  _hd143375143403_
                  _hd143372143393_)
                 (_g143367143382_ _g143368143386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143367143382_
                                                  _g143368143386_))))
                                         (_g143367143382_ _g143368143386_)))))
                             (_g143366143433_ (list _tgt143335_ _hd143333_)))
                           (let* ((_g143437143452_
                                   (lambda (_g143438143448_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143438143448_)))
                                  (_g143436143496_
                                   (lambda (_g143438143456_)
                                     (if (gx#stx-pair? _g143438143456_)
                                         (let ((_e143443143459_
                                                (gx#syntax-e _g143438143456_)))
                                           (let ((_hd143442143463_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143443143459_)))
                                                 (_tl143441143466_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143443143459_))))
                                             (if (gx#stx-pair?
                                                  _tl143441143466_)
                                                 (let ((_e143446143469_
                                                        (gx#syntax-e
                                                         _tl143441143466_)))
                                                   (let ((_hd143445143473_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143446143469_)))
                                                         (_tl143444143476_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143446143469_))))
                                                     (if (gx#stx-null?
                                                          _tl143444143476_)
                                                         ((lambda (_L143479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L143481_)
                    (let ()
                      (let ((__tmp148190 (gx#datum->syntax '#f 'let))
                            (__tmp148185
                             (let ((__tmp148187
                                    (let ((__tmp148188
                                           (let ((__tmp148189
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L143481_ '()))))
                                             (declare (not safe))
                                             (cons _L143479_ __tmp148189))))
                                      (declare (not safe))
                                      (cons __tmp148188 '())))
                                   (__tmp148186
                                    (let ()
                                      (declare (not safe))
                                      (cons _K143336_ '()))))
                               (declare (not safe))
                               (cons __tmp148187 __tmp148186))))
                        (declare (not safe))
                        (cons __tmp148190 __tmp148185))))
                  _hd143445143473_
                  _hd143442143463_)
                 (_g143437143452_ _g143438143456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143437143452_
                                                  _g143438143456_))))
                                         (_g143437143452_ _g143438143456_)))))
                             (_g143436143496_ (list _tgt143335_ _hd143333_)))))
                   (if (gx#stx-null? _hd143333_)
                       (let* ((_g143500143508_
                               (lambda (_g143501143504_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g143501143504_)))
                              (_g143499143526_
                               (lambda (_g143501143512_)
                                 ((lambda (_L143515_)
                                    (let ()
                                      (let ((__tmp148184
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp148178
                                             (let ((__tmp148181
                                                    (let ((__tmp148183
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp148182
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L143515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp148183 __tmp148182)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp148179
                                                    (let ((__tmp148180
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E143328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K143336_ __tmp148180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp148181
                                                     __tmp148179))))
                                        (declare (not safe))
                                        (cons __tmp148184 __tmp148178))))
                                  _g143501143512_))))
                         (_g143499143526_ _tgt143335_))
                       (if (gx#stx-datum? _hd143333_)
                           (let* ((_g143530143549_
                                   (lambda (_g143531143545_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143531143545_)))
                                  (_g143529143607_
                                   (lambda (_g143531143553_)
                                     (if (gx#stx-pair? _g143531143553_)
                                         (let ((_e143537143556_
                                                (gx#syntax-e _g143531143553_)))
                                           (let ((_hd143536143560_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143537143556_)))
                                                 (_tl143535143563_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143537143556_))))
                                             (if (gx#stx-pair?
                                                  _tl143535143563_)
                                                 (let ((_e143540143566_
                                                        (gx#syntax-e
                                                         _tl143535143563_)))
                                                   (let ((_hd143539143570_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143540143566_)))
                                                         (_tl143538143573_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143540143566_))))
                                                     (if (gx#stx-pair?
                                                          _tl143538143573_)
                                                         (let ((_e143543143576_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl143538143573_)))
                   (let ((_hd143542143580_
                          (let ()
                            (declare (not safe))
                            (##car _e143543143576_)))
                         (_tl143541143583_
                          (let ()
                            (declare (not safe))
                            (##cdr _e143543143576_))))
                     (if (gx#stx-null? _tl143541143583_)
                         ((lambda (_L143586_ _L143588_ _L143589_)
                            (let ()
                              (let ((__tmp148177 (gx#datum->syntax '#f 'if))
                                    (__tmp148165
                                     (let ((__tmp148168
                                            (let ((__tmp148169
                                                   (let ((__tmp148174
                                                          (let ((__tmp148176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp148175
                         (let () (declare (not safe)) (cons _L143589_ '()))))
                    (declare (not safe))
                    (cons __tmp148176 __tmp148175)))
                 (__tmp148170
                  (let ((__tmp148171
                         (let ((__tmp148173 (gx#datum->syntax '#f 'quote))
                               (__tmp148172
                                (let ()
                                  (declare (not safe))
                                  (cons _L143588_ '()))))
                           (declare (not safe))
                           (cons __tmp148173 __tmp148172))))
                    (declare (not safe))
                    (cons __tmp148171 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp148174
                                                           __tmp148170))))
                                              (declare (not safe))
                                              (cons _L143586_ __tmp148169)))
                                           (__tmp148166
                                            (let ((__tmp148167
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E143328_ '()))))
                                              (declare (not safe))
                                              (cons _K143336_ __tmp148167))))
                                       (declare (not safe))
                                       (cons __tmp148168 __tmp148166))))
                                (declare (not safe))
                                (cons __tmp148177 __tmp148165))))
                          _hd143542143580_
                          _hd143539143570_
                          _hd143536143560_)
                         (_g143530143549_ _g143531143553_))))
                 (_g143530143549_ _g143531143553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143530143549_
                                                  _g143531143553_))))
                                         (_g143530143549_ _g143531143553_)))))
                             (_g143529143607_
                              (list _tgt143335_
                                    _hd143333_
                                    (let ((_e143611_ (gx#stx-e _hd143333_)))
                                      (if (or (keyword? _e143611_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e143611_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e143611_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx142778_
                            _where143323_
                            _hd143333_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx148029148030_)
                                                    (let ((_e143345143625_
                                                           (gx#syntax-e
                                                            ___stx148029148030_)))
                                                      (let ((_tl143343143632_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e143345143625_)))
                    (_hd143344143629_
                     (let () (declare (not safe)) (##car _e143345143625_))))
                (___kont148032148033_ _tl143343143632_ _hd143344143629_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont148034148035_)))))))
                                  (_recur143330_
                                   _hd143325_
                                   _tgt142930_
                                   (let ((__tmp148213
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp148210
                                          (let ((__tmp148211
                                                 (let ((__tmp148212
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E143328_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body143327_
                                                         __tmp148212))))
                                            (declare (not safe))
                                            (cons _fender143326_
                                                  __tmp148211))))
                                     (declare (not safe))
                                     (cons __tmp148213 __tmp148210))))))
                             (_generate-clauses142938_
                              (lambda (_clauses143061_)
                                (let _lp143064_ ((_rest143067_ _clauses143061_)
                                                 (_E143069_ (gx#genident 'E))
                                                 (_r143070_ '()))
                                  (let* ((___stx148065148066_ _rest143067_)
                                         (_g143073143085_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx148065148066_))))
                                    (let ((___kont148068148069_
                                           (lambda (_L143150_ _L143152_)
                                             (let* ((___stx148045148046_
                                                     _L143152_)
                                                    (_g143164143175_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx148045148046_))))
                                               (let ((___kont148048148049_
                                                      (lambda (_L143304_)
                                                        (if (gx#stx-null?
                                                             _L143150_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L143304_)
                             (let ((__tmp148222 (gx#stx-null? _L143304_)))
                               (declare (not safe))
                               (not __tmp148222)))
                        (let ((__tmp148214
                               (let ((__tmp148215
                                      (let ((__tmp148216
                                             (gx#stx-wrap-source
                                              (let ((__tmp148221
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp148217
                                                     (let ((__tmp148218
                                                            (let ((__tmp148219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp148220 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp148220 _L143304_))))
                      (declare (not safe))
                      (cons __tmp148219 '()))))
               (declare (not safe))
               (cons '() __tmp148218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp148221 __tmp148217))
                                              (gx#stx-source _L143152_))))
                                        (declare (not safe))
                                        (cons __tmp148216 '()))))
                                 (declare (not safe))
                                 (cons _E143069_ __tmp148215))))
                          (declare (not safe))
                          (cons __tmp148214 _r143070_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx142778_
                         _L143152_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx142778_
                     _L143152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont148050148051_
                                                      (lambda ()
                                                        (let* ((_g143186143194_
                                                                (lambda (_g143187143190_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g143187143190_)))
                       (_g143185143283_
                        (lambda (_g143187143198_)
                          ((lambda (_L143201_)
                             (let ()
                               (let* ((_g143217143225_
                                       (lambda (_g143218143221_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g143218143221_)))
                                      (_g143216143279_
                                       (lambda (_g143218143229_)
                                         ((lambda (_L143232_)
                                            (let ()
                                              (let* ((_g143245143253_
                                                      (lambda (_g143246143249_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g143246143249_)))
                                                     (_g143244143275_
                                                      (lambda (_g143246143257_)
                                                        ((lambda (_L143260_)
                                                           (let ()
                                                             (let ()
                                                               (_lp143064_
                                                                _L143150_
                                                                _L143201_
                                                                (let ((__tmp148223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp148224
                                      (let ()
                                        (declare (not safe))
                                        (cons _L143260_ '()))))
                                 (declare (not safe))
                                 (cons _E143069_ __tmp148224))))
                          (declare (not safe))
                          (cons __tmp148223 _r143070_))))))
                 _g143246143257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g143244143275_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp148227
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp148225
                                                         (let ((__tmp148226
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L143232_ '()))))
                   (declare (not safe))
                   (cons '() __tmp148226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148227
                                                          __tmp148225))
                                                  (gx#stx-source
                                                   _L143152_))))))
                                          _g143218143229_))))
                                 (_g143216143279_
                                  (_generate-clause142935_
                                   _L143152_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L143201_ '())))))))
                           _g143187143198_))))
                  (_g143185143283_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx148045148046_)
                                                     (let ((_e143169143294_
                                                            (gx#syntax-e
                                                             ___stx148045148046_)))
                                                       (let ((_tl143167143301_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e143169143294_)))
                     (_hd143168143298_
                      (let () (declare (not safe)) (##car _e143169143294_))))
                 (if (gx#identifier? _hd143168143298_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g148228_|
                          _hd143168143298_)
                         (___kont148048148049_ _tl143167143301_)
                         (___kont148050148051_))
                     (___kont148050148051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont148050148051_))))))
                                          (___kont148070148071_
                                           (lambda ()
                                             (let* ((_g143096143104_
                                                     (lambda (_g143097143100_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g143097143100_)))
                                                    (_g143095143129_
                                                     (lambda (_g143097143108_)
                                                       ((lambda (_L143111_)
                                                          (let ()
                                                            (let ((__tmp148229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp148230
                                  (let ((__tmp148231
                                         (gx#stx-wrap-source
                                          (let ((__tmp148239
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp148232
                                                 (let ((__tmp148233
                                                        (let ((__tmp148234
                                                               (let ((__tmp148238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp148235
                              (let ((__tmp148236
                                     (let ((__tmp148237
                                            (let ()
                                              (declare (not safe))
                                              (cons _L143111_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp148237))))
                                (declare (not safe))
                                (cons '#f __tmp148236))))
                         (declare (not safe))
                         (cons __tmp148238 __tmp148235))))
                  (declare (not safe))
                  (cons __tmp148234 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp148233))))
                                            (declare (not safe))
                                            (cons __tmp148239 __tmp148232))
                                          (gx#stx-source _stx142778_))))
                                    (declare (not safe))
                                    (cons __tmp148231 '()))))
                             (declare (not safe))
                             (cons _E143069_ __tmp148230))))
                      (declare (not safe))
                      (cons __tmp148229 _r143070_))))
                _g143097143108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g143095143129_
                                                _tgt142930_)))))
                                      (if (gx#stx-pair? ___stx148065148066_)
                                          (let ((_e143079143140_
                                                 (gx#syntax-e
                                                  ___stx148065148066_)))
                                            (let ((_tl143077143147_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e143079143140_)))
                                                  (_hd143078143144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e143079143140_))))
                                              (___kont148068148069_
                                               _tl143077143147_
                                               _hd143078143144_)))
                                          (___kont148070148071_))))))))
                      (let* ((_bind142940_
                              (_generate-clauses142938_ _clauses142933_))
                             (_g142943142960_
                              (lambda (_g142944142956_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g142944142956_)))
                             (_g142942143057_
                              (lambda (_g142944142964_)
                                (if (gx#stx-pair/null? _g142944142964_)
                                    (let ((_g148240_
                                           (gx#syntax-split-splice
                                            _g142944142964_
                                            '0)))
                                      (begin
                                        (let ((_g148241_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g148240_)
                                                     (##vector-length
                                                      _g148240_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g148241_ 2)))
                                              (error "Context expects 2 values"
                                                     _g148241_)))
                                        (let ((_target142946142967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g148240_ 0)))
                                              (_tl142948142970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g148240_ 1))))
                                          (if (gx#stx-null? _tl142948142970_)
                                              (letrec ((_loop142949142973_
                                                        (lambda (_hd142947142977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try142953142980_)
                  (if (gx#stx-pair? _hd142947142977_)
                      (let ((_e142950142983_ (gx#syntax-e _hd142947142977_)))
                        (let ((_lp-hd142951142987_
                               (let ()
                                 (declare (not safe))
                                 (##car _e142950142983_)))
                              (_lp-tl142952142990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e142950142983_))))
                          (_loop142949142973_
                           _lp-tl142952142990_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd142951142987_
                                   _bind-try142953142980_)))))
                      (let ((_bind-try142954142993_
                             (reverse _bind-try142953142980_)))
                        ((lambda (_L142997_)
                           (let ()
                             (let* ((_g143015143023_
                                     (lambda (_g143016143019_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g143016143019_)))
                                    (_g143014143053_
                                     (lambda (_g143016143027_)
                                       ((lambda (_L143030_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp148247
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp148242
                                                     (let ((__tmp148245
                                                            (let ((__tmp148246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g143044143047_ _g143045143050_)
                             (let ()
                               (declare (not safe))
                               (cons _g143044143047_ _g143045143050_)))))
                      (declare (not safe))
                      (foldr1 __tmp148246 '() _L142997_)))
                   (__tmp148243
                    (let ((__tmp148244
                           (let () (declare (not safe)) (cons _L143030_ '()))))
                      (declare (not safe))
                      (cons __tmp148244 '()))))
               (declare (not safe))
               (cons __tmp148245 __tmp148243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp148247
                                                      __tmp148242)))))
                                        _g143016143027_))))
                               (_g143014143053_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind142940_)))))))
                         _bind-try142954142993_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop142949142973_
                                                 _target142946142967_
                                                 '()))
                                              (_g142943142960_
                                               _g142944142964_)))))
                                    (_g142943142960_ _g142944142964_)))))
                        (_g142942143057_ _bind142940_))))))
          (let* ((_g142784142803_
                  (lambda (_g142785142799_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g142785142799_)))
                 (_g142783142926_
                  (lambda (_g142785142807_)
                    (if (gx#stx-pair? _g142785142807_)
                        (let ((_e142791142810_ (gx#syntax-e _g142785142807_)))
                          (let ((_hd142790142814_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e142791142810_)))
                                (_tl142789142817_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e142791142810_))))
                            (if (gx#stx-pair? _tl142789142817_)
                                (let ((_e142794142820_
                                       (gx#syntax-e _tl142789142817_)))
                                  (let ((_hd142793142824_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e142794142820_)))
                                        (_tl142792142827_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e142794142820_))))
                                    (if (gx#stx-pair? _tl142792142827_)
                                        (let ((_e142797142830_
                                               (gx#syntax-e _tl142792142827_)))
                                          (let ((_hd142796142834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e142797142830_)))
                                                (_tl142795142837_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e142797142830_))))
                                            ((lambda (_L142840_
                                                      _L142842_
                                                      _L142843_)
                                               (if (and (gx#identifier-list?
                                                         _L142842_)
                                                        (gx#stx-list?
                                                         _L142840_))
                                                   (let* ((_g142861142869_
                                                           (lambda (_g142862142865_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g142862142865_)))
                                                          (_g142860142922_
                                                           (lambda (_g142862142873_)
                                                             ((lambda (_L142876_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g142888142896_
                                  (lambda (_g142889142892_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g142889142892_)))
                                 (_g142887142918_
                                  (lambda (_g142889142900_)
                                    ((lambda (_L142903_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp148253
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp148248
                                                  (let ((__tmp148250
                                                         (let ((__tmp148251
                                                                (let ((__tmp148252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L142843_ '()))))
                          (declare (not safe))
                          (cons _L142876_ __tmp148252))))
                   (declare (not safe))
                   (cons __tmp148251 '())))
                (__tmp148249
                 (let () (declare (not safe)) (cons _L142903_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148250
                                                          __tmp148249))))
                                             (declare (not safe))
                                             (cons __tmp148253 __tmp148248)))))
                                     _g142889142900_))))
                            (_g142887142918_
                             (_generate142781_
                              _L142876_
                              (gx#syntax->list _L142842_)
                              _L142840_)))))
                      _g142862142873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g142860142922_
                                                      (gx#genident 'e)))
                                                   (_g142784142803_
                                                    _g142785142807_)))
                                             _tl142795142837_
                                             _hd142796142834_
                                             _hd142793142824_)))
                                        (_g142784142803_ _g142785142807_))))
                                (_g142784142803_ _g142785142807_))))
                        (_g142784142803_ _g142785142807_)))))
            (_g142783142926_ _stx142778_)))))))
