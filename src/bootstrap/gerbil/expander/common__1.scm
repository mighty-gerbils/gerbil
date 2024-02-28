(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g80104_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80106_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80108_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80113_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80116_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80121_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80124_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80129_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80132_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80137_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80140_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80247_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj80099
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
           __obj80099
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80103 |gx[1]#_g80104_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           __tmp80103
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80105 |gx[1]#_g80106_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           __tmp80105
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80107 |gx[1]#_g80108_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           __tmp80107
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80109
               (let ((__tmp80114
                      (let ((__tmp80115 |gx[1]#_g80116_|))
                        (declare (not safe))
                        (cons 'e __tmp80115)))
                     (__tmp80110
                      (let ((__tmp80111
                             (let ((__tmp80112 |gx[1]#_g80113_|))
                               (declare (not safe))
                               (cons 'source __tmp80112))))
                        (declare (not safe))
                        (cons __tmp80111 '()))))
                 (declare (not safe))
                 (cons __tmp80114 __tmp80110))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           __tmp80109
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80117
               (let ((__tmp80122
                      (let ((__tmp80123 |gx[1]#_g80124_|))
                        (declare (not safe))
                        (cons 'e __tmp80123)))
                     (__tmp80118
                      (let ((__tmp80119
                             (let ((__tmp80120 |gx[1]#_g80121_|))
                               (declare (not safe))
                               (cons 'source __tmp80120))))
                        (declare (not safe))
                        (cons __tmp80119 '()))))
                 (declare (not safe))
                 (cons __tmp80122 __tmp80118))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           __tmp80117
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80125
               (let ((__tmp80130
                      (let ((__tmp80131 |gx[1]#_g80132_|))
                        (declare (not safe))
                        (cons 'e __tmp80131)))
                     (__tmp80126
                      (let ((__tmp80127
                             (let ((__tmp80128 |gx[1]#_g80129_|))
                               (declare (not safe))
                               (cons 'source __tmp80128))))
                        (declare (not safe))
                        (cons __tmp80127 '()))))
                 (declare (not safe))
                 (cons __tmp80130 __tmp80126))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           __tmp80125
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80133
               (let ((__tmp80138
                      (let ((__tmp80139 |gx[1]#_g80140_|))
                        (declare (not safe))
                        (cons 'e __tmp80139)))
                     (__tmp80134
                      (let ((__tmp80135
                             (let ((__tmp80136 |gx[1]#_g80137_|))
                               (declare (not safe))
                               (cons 'source __tmp80136))))
                        (declare (not safe))
                        (cons __tmp80135 '()))))
                 (declare (not safe))
                 (cons __tmp80138 __tmp80134))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80099
           __tmp80133
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj80099))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78719_)
        (let* ((_g7872378737_
                (lambda (_g7872478733_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7872478733_)))
               (_g7872278779_
                (lambda (_g7872478741_)
                  (if (gx#stx-pair? _g7872478741_)
                      (let ((_e7872878744_ (gx#syntax-e _g7872478741_)))
                        (let ((_hd7872778748_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7872878744_)))
                              (_tl7872678751_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7872878744_))))
                          (if (gx#stx-pair? _tl7872678751_)
                              (let ((_e7873178754_
                                     (gx#syntax-e _tl7872678751_)))
                                (let ((_hd7873078758_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7873178754_)))
                                      (_tl7872978761_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7873178754_))))
                                  (if (gx#stx-null? _tl7872978761_)
                                      ((lambda (_L78764_)
                                         (let ((__tmp80150
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp80141
                                                (let ((__tmp80147
                                                       (let ((__tmp80149
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp80148
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78764_ '()))))
                 (declare (not safe))
                 (cons __tmp80149 __tmp80148)))
              (__tmp80142
               (let ((__tmp80143
                      (let ((__tmp80146 (gx#datum->syntax '#f 'error))
                            (__tmp80144
                             (let ((__tmp80145
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78764_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp80145))))
                        (declare (not safe))
                        (cons __tmp80146 __tmp80144))))
                 (declare (not safe))
                 (cons __tmp80143 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80147
                                                        __tmp80142))))
                                           (declare (not safe))
                                           (cons __tmp80150 __tmp80141)))
                                       _hd7873078758_)
                                      (_g7872378737_ _g7872478741_))))
                              (_g7872378737_ _g7872478741_))))
                      (_g7872378737_ _g7872478741_)))))
          (_g7872278779_ _$stx78719_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78783_)
        (letrec ((_generate78786_
                  (lambda (_tgt78935_ _kws78937_ _clauses78938_)
                    (letrec ((_generate-clause78940_
                              (lambda (_hd79850_ _E79852_)
                                (let* ((___stx8000280003_ _hd79850_)
                                       (_g7985679883_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8000280003_))))
                                  (let ((___kont8000580006_
                                         (lambda (_L79979_ _L79981_)
                                           (_generate178942_
                                            _hd79850_
                                            _L79981_
                                            '#t
                                            _L79979_
                                            _E79852_)))
                                        (___kont8000780008_
                                         (lambda (_L79931_ _L79933_ _L79934_)
                                           (_generate178942_
                                            _hd79850_
                                            _L79934_
                                            _L79933_
                                            _L79931_
                                            _E79852_)))
                                        (___kont8000980010_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78783_
                                            _hd79850_))))
                                    (if (gx#stx-pair? ___stx8000280003_)
                                        (let ((_e7986279959_
                                               (gx#syntax-e
                                                ___stx8000280003_)))
                                          (let ((_tl7986079966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7986279959_)))
                                                (_hd7986179963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7986279959_))))
                                            (if (gx#stx-pair? _tl7986079966_)
                                                (let ((_e7986579969_
                                                       (gx#syntax-e
                                                        _tl7986079966_)))
                                                  (let ((_tl7986379976_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7986579969_)))
                                                        (_hd7986479973_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7986579969_))))
                                                    (if (gx#stx-null?
                                                         _tl7986379976_)
                                                        (___kont8000580006_
                                                         _hd7986479973_
                                                         _hd7986179963_)
                                                        (if (gx#stx-pair?
                                                             _tl7986379976_)
                                                            (let ((_e7987779921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7986379976_)))
                      (let ((_tl7987579928_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7987779921_)))
                            (_hd7987679925_
                             (let ()
                               (declare (not safe))
                               (##car _e7987779921_))))
                        (if (gx#stx-null? _tl7987579928_)
                            (___kont8000780008_
                             _hd7987679925_
                             _hd7986479973_
                             _hd7986179963_)
                            (___kont8000980010_))))
                    (___kont8000980010_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8000980010_))))
                                        (___kont8000980010_))))))
                             (_generate178942_
                              (lambda (_where79328_
                                       _hd79330_
                                       _fender79331_
                                       _body79332_
                                       _E79333_)
                                (letrec ((_recur79335_
                                          (lambda (_hd79338_
                                                   _tgt79340_
                                                   _K79341_)
                                            (let* ((___stx8004880049_
                                                    _hd79338_)
                                                   (_g7934479356_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8004880049_))))
                                              (let ((___kont8005180052_
                                                     (lambda (_L79640_
                                                              _L79642_)
                                                       (let* ((_g7965379661_
                                                               (lambda (_g7965479657_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7965479657_)))
                      (_g7965279842_
                       (lambda (_g7965479665_)
                         ((lambda (_L79668_)
                            (let ()
                              (let* ((_g7968079688_
                                      (lambda (_g7968179684_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7968179684_)))
                                     (_g7967979838_
                                      (lambda (_g7968179692_)
                                        ((lambda (_L79695_)
                                           (let ()
                                             (let* ((_g7970879716_
                                                     (lambda (_g7970979712_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7970979712_)))
                                                    (_g7970779834_
                                                     (lambda (_g7970979720_)
                                                       ((lambda (_L79723_)
                                                          (let ()
                                                            (let* ((_g7973679744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7973779740_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7973779740_)))
                           (_g7973579830_
                            (lambda (_g7973779748_)
                              ((lambda (_L79751_)
                                 (let ()
                                   (let* ((_g7976479772_
                                           (lambda (_g7976579768_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7976579768_)))
                                          (_g7976379826_
                                           (lambda (_g7976579776_)
                                             ((lambda (_L79779_)
                                                (let ()
                                                  (let* ((_g7979279800_
                                                          (lambda (_g7979379796_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7979379796_)))
                                                         (_g7979179822_
                                                          (lambda (_g7979379804_)
                                                            ((lambda (_L79807_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp80183 (gx#datum->syntax '#f 'if))
                                 (__tmp80151
                                  (let ((__tmp80180
                                         (let ((__tmp80182
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp80181
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79668_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80182 __tmp80181)))
                                        (__tmp80152
                                         (let ((__tmp80154
                                                (let ((__tmp80179
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp80155
                                                       (let ((__tmp80173
                                                              (let ((__tmp80174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp80175
                                    (let ((__tmp80176
                                           (let ((__tmp80178
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp80177
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79668_ '()))))
                                             (declare (not safe))
                                             (cons __tmp80178 __tmp80177))))
                                      (declare (not safe))
                                      (cons __tmp80176 '()))))
                               (declare (not safe))
                               (cons _L79695_ __tmp80175))))
                        (declare (not safe))
                        (cons __tmp80174 '())))
                     (__tmp80156
                      (let ((__tmp80157
                             (let ((__tmp80172 (gx#datum->syntax '#f 'let))
                                   (__tmp80158
                                    (let ((__tmp80160
                                           (let ((__tmp80167
                                                  (let ((__tmp80168
                                                         (let ((__tmp80169
                                                                (let ((__tmp80171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp80170
                               (let ()
                                 (declare (not safe))
                                 (cons _L79695_ '()))))
                          (declare (not safe))
                          (cons __tmp80171 __tmp80170))))
                   (declare (not safe))
                   (cons __tmp80169 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79723_
                                                          __tmp80168)))
                                                 (__tmp80161
                                                  (let ((__tmp80162
                                                         (let ((__tmp80163
                                                                (let ((__tmp80164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80166 (gx#datum->syntax '#f '##cdr))
                                     (__tmp80165
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79695_ '()))))
                                 (declare (not safe))
                                 (cons __tmp80166 __tmp80165))))
                          (declare (not safe))
                          (cons __tmp80164 '()))))
                   (declare (not safe))
                   (cons _L79751_ __tmp80163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80162 '()))))
                                             (declare (not safe))
                                             (cons __tmp80167 __tmp80161)))
                                          (__tmp80159
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79779_ '()))))
                                      (declare (not safe))
                                      (cons __tmp80160 __tmp80159))))
                               (declare (not safe))
                               (cons __tmp80172 __tmp80158))))
                        (declare (not safe))
                        (cons __tmp80157 '()))))
                 (declare (not safe))
                 (cons __tmp80173 __tmp80156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80179
                                                        __tmp80155)))
                                               (__tmp80153
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79807_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80154 __tmp80153))))
                                    (declare (not safe))
                                    (cons __tmp80180 __tmp80152))))
                             (declare (not safe))
                             (cons __tmp80183 __tmp80151)))))
                     _g7979379804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7979179822_ _E79333_))))
                                              _g7976579776_))))
                                     (_g7976379826_
                                      (_recur79335_
                                       _L79642_
                                       _L79723_
                                       (_recur79335_
                                        _L79640_
                                        _L79751_
                                        _K79341_))))))
                               _g7973779748_))))
                      (_g7973579830_ (gx#genident 'tl)))))
                _g7970979720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7970779834_
                                                (gx#genident 'hd)))))
                                         _g7968179692_))))
                                (_g7967979838_ (gx#genident 'e)))))
                          _g7965479665_))))
                 (_g7965279842_ _tgt79340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8005380054_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd79338_)
                                                           (if (gx#underscore?
                                                                _hd79338_)
                                                               _K79341_
                                                               (if (let ((__tmp80228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7936679368_)
                                    (gx#bound-identifier=?
                                     _g7936679368_
                                     _hd79338_))))
                             (declare (not safe))
                             (find __tmp80228 _kws78937_))
                           (let* ((_g7937279387_
                                   (lambda (_g7937379383_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7937379383_)))
                                  (_g7937179438_
                                   (lambda (_g7937379391_)
                                     (if (gx#stx-pair? _g7937379391_)
                                         (let ((_e7937879394_
                                                (gx#syntax-e _g7937379391_)))
                                           (let ((_hd7937779398_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7937879394_)))
                                                 (_tl7937679401_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7937879394_))))
                                             (if (gx#stx-pair? _tl7937679401_)
                                                 (let ((_e7938179404_
                                                        (gx#syntax-e
                                                         _tl7937679401_)))
                                                   (let ((_hd7938079408_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7938179404_)))
                                                         (_tl7937979411_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7938179404_))))
                                                     (if (gx#stx-null?
                                                          _tl7937979411_)
                                                         ((lambda (_L79414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79416_)
                    (let ()
                      (let ((__tmp80227 (gx#datum->syntax '#f 'if))
                            (__tmp80210
                             (let ((__tmp80213
                                    (let ((__tmp80226
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp80214
                                           (let ((__tmp80223
                                                  (let ((__tmp80225
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp80224
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80225
                                                          __tmp80224)))
                                                 (__tmp80215
                                                  (let ((__tmp80216
                                                         (let ((__tmp80222
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp80217
                        (let ((__tmp80218
                               (let ((__tmp80219
                                      (let ((__tmp80221
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp80220
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79414_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80221 __tmp80220))))
                                 (declare (not safe))
                                 (cons __tmp80219 '()))))
                          (declare (not safe))
                          (cons _L79416_ __tmp80218))))
                   (declare (not safe))
                   (cons __tmp80222 __tmp80217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80216 '()))))
                                             (declare (not safe))
                                             (cons __tmp80223 __tmp80215))))
                                      (declare (not safe))
                                      (cons __tmp80226 __tmp80214)))
                                   (__tmp80211
                                    (let ((__tmp80212
                                           (let ()
                                             (declare (not safe))
                                             (cons _E79333_ '()))))
                                      (declare (not safe))
                                      (cons _K79341_ __tmp80212))))
                               (declare (not safe))
                               (cons __tmp80213 __tmp80211))))
                        (declare (not safe))
                        (cons __tmp80227 __tmp80210))))
                  _hd7938079408_
                  _hd7937779398_)
                 (_g7937279387_ _g7937379391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7937279387_
                                                  _g7937379391_))))
                                         (_g7937279387_ _g7937379391_)))))
                             (_g7937179438_ (list _tgt79340_ _hd79338_)))
                           (let* ((_g7944279457_
                                   (lambda (_g7944379453_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7944379453_)))
                                  (_g7944179501_
                                   (lambda (_g7944379461_)
                                     (if (gx#stx-pair? _g7944379461_)
                                         (let ((_e7944879464_
                                                (gx#syntax-e _g7944379461_)))
                                           (let ((_hd7944779468_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7944879464_)))
                                                 (_tl7944679471_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7944879464_))))
                                             (if (gx#stx-pair? _tl7944679471_)
                                                 (let ((_e7945179474_
                                                        (gx#syntax-e
                                                         _tl7944679471_)))
                                                   (let ((_hd7945079478_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7945179474_)))
                                                         (_tl7944979481_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7945179474_))))
                                                     (if (gx#stx-null?
                                                          _tl7944979481_)
                                                         ((lambda (_L79484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79486_)
                    (let ()
                      (let ((__tmp80209 (gx#datum->syntax '#f 'let))
                            (__tmp80204
                             (let ((__tmp80206
                                    (let ((__tmp80207
                                           (let ((__tmp80208
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79486_ '()))))
                                             (declare (not safe))
                                             (cons _L79484_ __tmp80208))))
                                      (declare (not safe))
                                      (cons __tmp80207 '())))
                                   (__tmp80205
                                    (let ()
                                      (declare (not safe))
                                      (cons _K79341_ '()))))
                               (declare (not safe))
                               (cons __tmp80206 __tmp80205))))
                        (declare (not safe))
                        (cons __tmp80209 __tmp80204))))
                  _hd7945079478_
                  _hd7944779468_)
                 (_g7944279457_ _g7944379461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7944279457_
                                                  _g7944379461_))))
                                         (_g7944279457_ _g7944379461_)))))
                             (_g7944179501_ (list _tgt79340_ _hd79338_)))))
                   (if (gx#stx-null? _hd79338_)
                       (let* ((_g7950579513_
                               (lambda (_g7950679509_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7950679509_)))
                              (_g7950479531_
                               (lambda (_g7950679517_)
                                 ((lambda (_L79520_)
                                    (let ()
                                      (let ((__tmp80203
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp80197
                                             (let ((__tmp80200
                                                    (let ((__tmp80202
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp80201
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp80202 __tmp80201)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp80198
                                                    (let ((__tmp80199
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E79333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K79341_ __tmp80199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp80200 __tmp80198))))
                                        (declare (not safe))
                                        (cons __tmp80203 __tmp80197))))
                                  _g7950679517_))))
                         (_g7950479531_ _tgt79340_))
                       (if (gx#stx-datum? _hd79338_)
                           (let* ((_g7953579554_
                                   (lambda (_g7953679550_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7953679550_)))
                                  (_g7953479612_
                                   (lambda (_g7953679558_)
                                     (if (gx#stx-pair? _g7953679558_)
                                         (let ((_e7954279561_
                                                (gx#syntax-e _g7953679558_)))
                                           (let ((_hd7954179565_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7954279561_)))
                                                 (_tl7954079568_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7954279561_))))
                                             (if (gx#stx-pair? _tl7954079568_)
                                                 (let ((_e7954579571_
                                                        (gx#syntax-e
                                                         _tl7954079568_)))
                                                   (let ((_hd7954479575_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7954579571_)))
                                                         (_tl7954379578_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7954579571_))))
                                                     (if (gx#stx-pair?
                                                          _tl7954379578_)
                                                         (let ((_e7954879581_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7954379578_)))
                   (let ((_hd7954779585_
                          (let () (declare (not safe)) (##car _e7954879581_)))
                         (_tl7954679588_
                          (let () (declare (not safe)) (##cdr _e7954879581_))))
                     (if (gx#stx-null? _tl7954679588_)
                         ((lambda (_L79591_ _L79593_ _L79594_)
                            (let ()
                              (let ((__tmp80196 (gx#datum->syntax '#f 'if))
                                    (__tmp80184
                                     (let ((__tmp80187
                                            (let ((__tmp80188
                                                   (let ((__tmp80193
                                                          (let ((__tmp80195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp80194
                         (let () (declare (not safe)) (cons _L79594_ '()))))
                    (declare (not safe))
                    (cons __tmp80195 __tmp80194)))
                 (__tmp80189
                  (let ((__tmp80190
                         (let ((__tmp80192 (gx#datum->syntax '#f 'quote))
                               (__tmp80191
                                (let ()
                                  (declare (not safe))
                                  (cons _L79593_ '()))))
                           (declare (not safe))
                           (cons __tmp80192 __tmp80191))))
                    (declare (not safe))
                    (cons __tmp80190 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp80193
                                                           __tmp80189))))
                                              (declare (not safe))
                                              (cons _L79591_ __tmp80188)))
                                           (__tmp80185
                                            (let ((__tmp80186
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E79333_ '()))))
                                              (declare (not safe))
                                              (cons _K79341_ __tmp80186))))
                                       (declare (not safe))
                                       (cons __tmp80187 __tmp80185))))
                                (declare (not safe))
                                (cons __tmp80196 __tmp80184))))
                          _hd7954779585_
                          _hd7954479575_
                          _hd7954179565_)
                         (_g7953579554_ _g7953679558_))))
                 (_g7953579554_ _g7953679558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7953579554_
                                                  _g7953679558_))))
                                         (_g7953579554_ _g7953679558_)))))
                             (_g7953479612_
                              (list _tgt79340_
                                    _hd79338_
                                    (let ((_e79616_ (gx#stx-e _hd79338_)))
                                      (if (or (keyword? _e79616_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79616_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79616_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78783_
                            _where79328_
                            _hd79338_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8004880049_)
                                                    (let ((_e7935079630_
                                                           (gx#syntax-e
                                                            ___stx8004880049_)))
                                                      (let ((_tl7934879637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7935079630_)))
                    (_hd7934979634_
                     (let () (declare (not safe)) (##car _e7935079630_))))
                (___kont8005180052_ _tl7934879637_ _hd7934979634_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8005380054_)))))))
                                  (_recur79335_
                                   _hd79330_
                                   _tgt78935_
                                   (let ((__tmp80232
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp80229
                                          (let ((__tmp80230
                                                 (let ((__tmp80231
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E79333_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body79332_
                                                         __tmp80231))))
                                            (declare (not safe))
                                            (cons _fender79331_ __tmp80230))))
                                     (declare (not safe))
                                     (cons __tmp80232 __tmp80229))))))
                             (_generate-clauses78943_
                              (lambda (_clauses79066_)
                                (let _lp79069_ ((_rest79072_ _clauses79066_)
                                                (_E79074_ (gx#genident 'E))
                                                (_r79075_ '()))
                                  (let* ((___stx8008480085_ _rest79072_)
                                         (_g7907879090_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8008480085_))))
                                    (let ((___kont8008780088_
                                           (lambda (_L79155_ _L79157_)
                                             (let* ((___stx8006480065_
                                                     _L79157_)
                                                    (_g7916979180_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8006480065_))))
                                               (let ((___kont8006780068_
                                                      (lambda (_L79309_)
                                                        (if (gx#stx-null?
                                                             _L79155_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L79309_)
                             (let ((__tmp80241 (gx#stx-null? _L79309_)))
                               (declare (not safe))
                               (not __tmp80241)))
                        (let ((__tmp80233
                               (let ((__tmp80234
                                      (let ((__tmp80235
                                             (gx#stx-wrap-source
                                              (let ((__tmp80240
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp80236
                                                     (let ((__tmp80237
                                                            (let ((__tmp80238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80239 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp80239 _L79309_))))
                      (declare (not safe))
                      (cons __tmp80238 '()))))
               (declare (not safe))
               (cons '() __tmp80237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80240 __tmp80236))
                                              (gx#stx-source _L79157_))))
                                        (declare (not safe))
                                        (cons __tmp80235 '()))))
                                 (declare (not safe))
                                 (cons _E79074_ __tmp80234))))
                          (declare (not safe))
                          (cons __tmp80233 _r79075_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78783_
                         _L79157_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78783_
                     _L79157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8006980070_
                                                      (lambda ()
                                                        (let* ((_g7919179199_
                                                                (lambda (_g7919279195_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7919279195_)))
                       (_g7919079288_
                        (lambda (_g7919279203_)
                          ((lambda (_L79206_)
                             (let ()
                               (let* ((_g7922279230_
                                       (lambda (_g7922379226_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7922379226_)))
                                      (_g7922179284_
                                       (lambda (_g7922379234_)
                                         ((lambda (_L79237_)
                                            (let ()
                                              (let* ((_g7925079258_
                                                      (lambda (_g7925179254_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7925179254_)))
                                                     (_g7924979280_
                                                      (lambda (_g7925179262_)
                                                        ((lambda (_L79265_)
                                                           (let ()
                                                             (let ()
                                                               (_lp79069_
                                                                _L79155_
                                                                _L79206_
                                                                (let ((__tmp80242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80243
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79265_ '()))))
                                 (declare (not safe))
                                 (cons _E79074_ __tmp80243))))
                          (declare (not safe))
                          (cons __tmp80242 _r79075_))))))
                 _g7925179262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7924979280_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp80246
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp80244
                                                         (let ((__tmp80245
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L79237_ '()))))
                   (declare (not safe))
                   (cons '() __tmp80245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80246
                                                          __tmp80244))
                                                  (gx#stx-source _L79157_))))))
                                          _g7922379234_))))
                                 (_g7922179284_
                                  (_generate-clause78940_
                                   _L79157_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L79206_ '())))))))
                           _g7919279203_))))
                  (_g7919079288_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8006480065_)
                                                     (let ((_e7917479299_
                                                            (gx#syntax-e
                                                             ___stx8006480065_)))
                                                       (let ((_tl7917279306_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7917479299_)))
                     (_hd7917379303_
                      (let () (declare (not safe)) (##car _e7917479299_))))
                 (if (gx#identifier? _hd7917379303_)
                     (if (gx#free-identifier=? |gx[1]#_g80247_| _hd7917379303_)
                         (___kont8006780068_ _tl7917279306_)
                         (___kont8006980070_))
                     (___kont8006980070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8006980070_))))))
                                          (___kont8008980090_
                                           (lambda ()
                                             (let* ((_g7910179109_
                                                     (lambda (_g7910279105_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7910279105_)))
                                                    (_g7910079134_
                                                     (lambda (_g7910279113_)
                                                       ((lambda (_L79116_)
                                                          (let ()
                                                            (let ((__tmp80248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80249
                                  (let ((__tmp80250
                                         (gx#stx-wrap-source
                                          (let ((__tmp80258
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp80251
                                                 (let ((__tmp80252
                                                        (let ((__tmp80253
                                                               (let ((__tmp80257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp80254
                              (let ((__tmp80255
                                     (let ((__tmp80256
                                            (let ()
                                              (declare (not safe))
                                              (cons _L79116_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp80256))))
                                (declare (not safe))
                                (cons '#f __tmp80255))))
                         (declare (not safe))
                         (cons __tmp80257 __tmp80254))))
                  (declare (not safe))
                  (cons __tmp80253 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp80252))))
                                            (declare (not safe))
                                            (cons __tmp80258 __tmp80251))
                                          (gx#stx-source _stx78783_))))
                                    (declare (not safe))
                                    (cons __tmp80250 '()))))
                             (declare (not safe))
                             (cons _E79074_ __tmp80249))))
                      (declare (not safe))
                      (cons __tmp80248 _r79075_))))
                _g7910279113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7910079134_ _tgt78935_)))))
                                      (if (gx#stx-pair? ___stx8008480085_)
                                          (let ((_e7908479145_
                                                 (gx#syntax-e
                                                  ___stx8008480085_)))
                                            (let ((_tl7908279152_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7908479145_)))
                                                  (_hd7908379149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7908479145_))))
                                              (___kont8008780088_
                                               _tl7908279152_
                                               _hd7908379149_)))
                                          (___kont8008980090_))))))))
                      (let* ((_bind78945_
                              (_generate-clauses78943_ _clauses78938_))
                             (_g7894878965_
                              (lambda (_g7894978961_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7894978961_)))
                             (_g7894779062_
                              (lambda (_g7894978969_)
                                (if (gx#stx-pair/null? _g7894978969_)
                                    (let ((_g80259_
                                           (gx#syntax-split-splice
                                            _g7894978969_
                                            '0)))
                                      (begin
                                        (let ((_g80260_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g80259_)
                                                     (##vector-length _g80259_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g80260_ 2)))
                                              (error "Context expects 2 values"
                                                     _g80260_)))
                                        (let ((_target7895178972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80259_ 0)))
                                              (_tl7895378975_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80259_ 1))))
                                          (if (gx#stx-null? _tl7895378975_)
                                              (letrec ((_loop7895478978_
                                                        (lambda (_hd7895278982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7895878985_)
                  (if (gx#stx-pair? _hd7895278982_)
                      (let ((_e7895578988_ (gx#syntax-e _hd7895278982_)))
                        (let ((_lp-hd7895678992_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7895578988_)))
                              (_lp-tl7895778995_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7895578988_))))
                          (_loop7895478978_
                           _lp-tl7895778995_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7895678992_ _bind-try7895878985_)))))
                      (let ((_bind-try7895978998_
                             (reverse _bind-try7895878985_)))
                        ((lambda (_L79002_)
                           (let ()
                             (let* ((_g7902079028_
                                     (lambda (_g7902179024_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7902179024_)))
                                    (_g7901979058_
                                     (lambda (_g7902179032_)
                                       ((lambda (_L79035_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp80266
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp80261
                                                     (let ((__tmp80264
                                                            (let ((__tmp80265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7904979052_ _g7905079055_)
                             (let ()
                               (declare (not safe))
                               (cons _g7904979052_ _g7905079055_)))))
                      (declare (not safe))
                      (foldr1 __tmp80265 '() _L79002_)))
                   (__tmp80262
                    (let ((__tmp80263
                           (let () (declare (not safe)) (cons _L79035_ '()))))
                      (declare (not safe))
                      (cons __tmp80263 '()))))
               (declare (not safe))
               (cons __tmp80264 __tmp80262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80266
                                                      __tmp80261)))))
                                        _g7902179032_))))
                               (_g7901979058_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind78945_)))))))
                         _bind-try7895978998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7895478978_
                                                 _target7895178972_
                                                 '()))
                                              (_g7894878965_ _g7894978969_)))))
                                    (_g7894878965_ _g7894978969_)))))
                        (_g7894779062_ _bind78945_))))))
          (let* ((_g7878978808_
                  (lambda (_g7879078804_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7879078804_)))
                 (_g7878878931_
                  (lambda (_g7879078812_)
                    (if (gx#stx-pair? _g7879078812_)
                        (let ((_e7879678815_ (gx#syntax-e _g7879078812_)))
                          (let ((_hd7879578819_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7879678815_)))
                                (_tl7879478822_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7879678815_))))
                            (if (gx#stx-pair? _tl7879478822_)
                                (let ((_e7879978825_
                                       (gx#syntax-e _tl7879478822_)))
                                  (let ((_hd7879878829_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7879978825_)))
                                        (_tl7879778832_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7879978825_))))
                                    (if (gx#stx-pair? _tl7879778832_)
                                        (let ((_e7880278835_
                                               (gx#syntax-e _tl7879778832_)))
                                          (let ((_hd7880178839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7880278835_)))
                                                (_tl7880078842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7880278835_))))
                                            ((lambda (_L78845_
                                                      _L78847_
                                                      _L78848_)
                                               (if (and (gx#identifier-list?
                                                         _L78847_)
                                                        (gx#stx-list?
                                                         _L78845_))
                                                   (let* ((_g7886678874_
                                                           (lambda (_g7886778870_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7886778870_)))
                                                          (_g7886578927_
                                                           (lambda (_g7886778878_)
                                                             ((lambda (_L78881_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7889378901_
                                  (lambda (_g7889478897_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7889478897_)))
                                 (_g7889278923_
                                  (lambda (_g7889478905_)
                                    ((lambda (_L78908_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp80272
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp80267
                                                  (let ((__tmp80269
                                                         (let ((__tmp80270
                                                                (let ((__tmp80271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78848_ '()))))
                          (declare (not safe))
                          (cons _L78881_ __tmp80271))))
                   (declare (not safe))
                   (cons __tmp80270 '())))
                (__tmp80268 (let () (declare (not safe)) (cons _L78908_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80269
                                                          __tmp80268))))
                                             (declare (not safe))
                                             (cons __tmp80272 __tmp80267)))))
                                     _g7889478905_))))
                            (_g7889278923_
                             (_generate78786_
                              _L78881_
                              (gx#syntax->list _L78847_)
                              _L78845_)))))
                      _g7886778878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7886578927_
                                                      (gx#genident 'e)))
                                                   (_g7878978808_
                                                    _g7879078812_)))
                                             _tl7880078842_
                                             _hd7880178839_
                                             _hd7879878829_)))
                                        (_g7878978808_ _g7879078812_))))
                                (_g7878978808_ _g7879078812_))))
                        (_g7878978808_ _g7879078812_)))))
            (_g7878878931_ _stx78783_)))))))
