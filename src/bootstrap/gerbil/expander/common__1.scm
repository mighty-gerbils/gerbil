(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g80111_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80113_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80115_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80120_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80123_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80128_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80131_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80136_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80139_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80144_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80147_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80254_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj80106
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
           __obj80106
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80110 |gx[1]#_g80111_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           __tmp80110
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80112 |gx[1]#_g80113_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           __tmp80112
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80114 |gx[1]#_g80115_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           __tmp80114
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80116
               (let ((__tmp80121
                      (let ((__tmp80122 |gx[1]#_g80123_|))
                        (declare (not safe))
                        (cons 'e __tmp80122)))
                     (__tmp80117
                      (let ((__tmp80118
                             (let ((__tmp80119 |gx[1]#_g80120_|))
                               (declare (not safe))
                               (cons 'source __tmp80119))))
                        (declare (not safe))
                        (cons __tmp80118 '()))))
                 (declare (not safe))
                 (cons __tmp80121 __tmp80117))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           __tmp80116
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80124
               (let ((__tmp80129
                      (let ((__tmp80130 |gx[1]#_g80131_|))
                        (declare (not safe))
                        (cons 'e __tmp80130)))
                     (__tmp80125
                      (let ((__tmp80126
                             (let ((__tmp80127 |gx[1]#_g80128_|))
                               (declare (not safe))
                               (cons 'source __tmp80127))))
                        (declare (not safe))
                        (cons __tmp80126 '()))))
                 (declare (not safe))
                 (cons __tmp80129 __tmp80125))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           __tmp80124
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80132
               (let ((__tmp80137
                      (let ((__tmp80138 |gx[1]#_g80139_|))
                        (declare (not safe))
                        (cons 'e __tmp80138)))
                     (__tmp80133
                      (let ((__tmp80134
                             (let ((__tmp80135 |gx[1]#_g80136_|))
                               (declare (not safe))
                               (cons 'source __tmp80135))))
                        (declare (not safe))
                        (cons __tmp80134 '()))))
                 (declare (not safe))
                 (cons __tmp80137 __tmp80133))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           __tmp80132
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80140
               (let ((__tmp80145
                      (let ((__tmp80146 |gx[1]#_g80147_|))
                        (declare (not safe))
                        (cons 'e __tmp80146)))
                     (__tmp80141
                      (let ((__tmp80142
                             (let ((__tmp80143 |gx[1]#_g80144_|))
                               (declare (not safe))
                               (cons 'source __tmp80143))))
                        (declare (not safe))
                        (cons __tmp80142 '()))))
                 (declare (not safe))
                 (cons __tmp80145 __tmp80141))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80106
           __tmp80140
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj80106))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78726_)
        (let* ((_g7873078744_
                (lambda (_g7873178740_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7873178740_)))
               (_g7872978786_
                (lambda (_g7873178748_)
                  (if (gx#stx-pair? _g7873178748_)
                      (let ((_e7873578751_ (gx#syntax-e _g7873178748_)))
                        (let ((_hd7873478755_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7873578751_)))
                              (_tl7873378758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7873578751_))))
                          (if (gx#stx-pair? _tl7873378758_)
                              (let ((_e7873878761_
                                     (gx#syntax-e _tl7873378758_)))
                                (let ((_hd7873778765_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7873878761_)))
                                      (_tl7873678768_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7873878761_))))
                                  (if (gx#stx-null? _tl7873678768_)
                                      ((lambda (_L78771_)
                                         (let ((__tmp80157
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp80148
                                                (let ((__tmp80154
                                                       (let ((__tmp80156
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp80155
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78771_ '()))))
                 (declare (not safe))
                 (cons __tmp80156 __tmp80155)))
              (__tmp80149
               (let ((__tmp80150
                      (let ((__tmp80153 (gx#datum->syntax '#f 'error))
                            (__tmp80151
                             (let ((__tmp80152
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78771_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp80152))))
                        (declare (not safe))
                        (cons __tmp80153 __tmp80151))))
                 (declare (not safe))
                 (cons __tmp80150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80154
                                                        __tmp80149))))
                                           (declare (not safe))
                                           (cons __tmp80157 __tmp80148)))
                                       _hd7873778765_)
                                      (_g7873078744_ _g7873178748_))))
                              (_g7873078744_ _g7873178748_))))
                      (_g7873078744_ _g7873178748_)))))
          (_g7872978786_ _$stx78726_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78790_)
        (letrec ((_generate78793_
                  (lambda (_tgt78942_ _kws78944_ _clauses78945_)
                    (letrec ((_generate-clause78947_
                              (lambda (_hd79857_ _E79859_)
                                (let* ((___stx8000980010_ _hd79857_)
                                       (_g7986379890_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8000980010_))))
                                  (let ((___kont8001280013_
                                         (lambda (_L79986_ _L79988_)
                                           (_generate178949_
                                            _hd79857_
                                            _L79988_
                                            '#t
                                            _L79986_
                                            _E79859_)))
                                        (___kont8001480015_
                                         (lambda (_L79938_ _L79940_ _L79941_)
                                           (_generate178949_
                                            _hd79857_
                                            _L79941_
                                            _L79940_
                                            _L79938_
                                            _E79859_)))
                                        (___kont8001680017_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78790_
                                            _hd79857_))))
                                    (if (gx#stx-pair? ___stx8000980010_)
                                        (let ((_e7986979966_
                                               (gx#syntax-e
                                                ___stx8000980010_)))
                                          (let ((_tl7986779973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7986979966_)))
                                                (_hd7986879970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7986979966_))))
                                            (if (gx#stx-pair? _tl7986779973_)
                                                (let ((_e7987279976_
                                                       (gx#syntax-e
                                                        _tl7986779973_)))
                                                  (let ((_tl7987079983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7987279976_)))
                                                        (_hd7987179980_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7987279976_))))
                                                    (if (gx#stx-null?
                                                         _tl7987079983_)
                                                        (___kont8001280013_
                                                         _hd7987179980_
                                                         _hd7986879970_)
                                                        (if (gx#stx-pair?
                                                             _tl7987079983_)
                                                            (let ((_e7988479928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7987079983_)))
                      (let ((_tl7988279935_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7988479928_)))
                            (_hd7988379932_
                             (let ()
                               (declare (not safe))
                               (##car _e7988479928_))))
                        (if (gx#stx-null? _tl7988279935_)
                            (___kont8001480015_
                             _hd7988379932_
                             _hd7987179980_
                             _hd7986879970_)
                            (___kont8001680017_))))
                    (___kont8001680017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8001680017_))))
                                        (___kont8001680017_))))))
                             (_generate178949_
                              (lambda (_where79335_
                                       _hd79337_
                                       _fender79338_
                                       _body79339_
                                       _E79340_)
                                (letrec ((_recur79342_
                                          (lambda (_hd79345_
                                                   _tgt79347_
                                                   _K79348_)
                                            (let* ((___stx8005580056_
                                                    _hd79345_)
                                                   (_g7935179363_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8005580056_))))
                                              (let ((___kont8005880059_
                                                     (lambda (_L79647_
                                                              _L79649_)
                                                       (let* ((_g7966079668_
                                                               (lambda (_g7966179664_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7966179664_)))
                      (_g7965979849_
                       (lambda (_g7966179672_)
                         ((lambda (_L79675_)
                            (let ()
                              (let* ((_g7968779695_
                                      (lambda (_g7968879691_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7968879691_)))
                                     (_g7968679845_
                                      (lambda (_g7968879699_)
                                        ((lambda (_L79702_)
                                           (let ()
                                             (let* ((_g7971579723_
                                                     (lambda (_g7971679719_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7971679719_)))
                                                    (_g7971479841_
                                                     (lambda (_g7971679727_)
                                                       ((lambda (_L79730_)
                                                          (let ()
                                                            (let* ((_g7974379751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7974479747_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7974479747_)))
                           (_g7974279837_
                            (lambda (_g7974479755_)
                              ((lambda (_L79758_)
                                 (let ()
                                   (let* ((_g7977179779_
                                           (lambda (_g7977279775_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7977279775_)))
                                          (_g7977079833_
                                           (lambda (_g7977279783_)
                                             ((lambda (_L79786_)
                                                (let ()
                                                  (let* ((_g7979979807_
                                                          (lambda (_g7980079803_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7980079803_)))
                                                         (_g7979879829_
                                                          (lambda (_g7980079811_)
                                                            ((lambda (_L79814_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp80190 (gx#datum->syntax '#f 'if))
                                 (__tmp80158
                                  (let ((__tmp80187
                                         (let ((__tmp80189
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp80188
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79675_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80189 __tmp80188)))
                                        (__tmp80159
                                         (let ((__tmp80161
                                                (let ((__tmp80186
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp80162
                                                       (let ((__tmp80180
                                                              (let ((__tmp80181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp80182
                                    (let ((__tmp80183
                                           (let ((__tmp80185
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp80184
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79675_ '()))))
                                             (declare (not safe))
                                             (cons __tmp80185 __tmp80184))))
                                      (declare (not safe))
                                      (cons __tmp80183 '()))))
                               (declare (not safe))
                               (cons _L79702_ __tmp80182))))
                        (declare (not safe))
                        (cons __tmp80181 '())))
                     (__tmp80163
                      (let ((__tmp80164
                             (let ((__tmp80179 (gx#datum->syntax '#f 'let))
                                   (__tmp80165
                                    (let ((__tmp80167
                                           (let ((__tmp80174
                                                  (let ((__tmp80175
                                                         (let ((__tmp80176
                                                                (let ((__tmp80178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp80177
                               (let ()
                                 (declare (not safe))
                                 (cons _L79702_ '()))))
                          (declare (not safe))
                          (cons __tmp80178 __tmp80177))))
                   (declare (not safe))
                   (cons __tmp80176 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79730_
                                                          __tmp80175)))
                                                 (__tmp80168
                                                  (let ((__tmp80169
                                                         (let ((__tmp80170
                                                                (let ((__tmp80171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80173 (gx#datum->syntax '#f '##cdr))
                                     (__tmp80172
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79702_ '()))))
                                 (declare (not safe))
                                 (cons __tmp80173 __tmp80172))))
                          (declare (not safe))
                          (cons __tmp80171 '()))))
                   (declare (not safe))
                   (cons _L79758_ __tmp80170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80169 '()))))
                                             (declare (not safe))
                                             (cons __tmp80174 __tmp80168)))
                                          (__tmp80166
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79786_ '()))))
                                      (declare (not safe))
                                      (cons __tmp80167 __tmp80166))))
                               (declare (not safe))
                               (cons __tmp80179 __tmp80165))))
                        (declare (not safe))
                        (cons __tmp80164 '()))))
                 (declare (not safe))
                 (cons __tmp80180 __tmp80163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80186
                                                        __tmp80162)))
                                               (__tmp80160
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79814_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80161 __tmp80160))))
                                    (declare (not safe))
                                    (cons __tmp80187 __tmp80159))))
                             (declare (not safe))
                             (cons __tmp80190 __tmp80158)))))
                     _g7980079811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7979879829_ _E79340_))))
                                              _g7977279783_))))
                                     (_g7977079833_
                                      (_recur79342_
                                       _L79649_
                                       _L79730_
                                       (_recur79342_
                                        _L79647_
                                        _L79758_
                                        _K79348_))))))
                               _g7974479755_))))
                      (_g7974279837_ (gx#genident 'tl)))))
                _g7971679727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7971479841_
                                                (gx#genident 'hd)))))
                                         _g7968879699_))))
                                (_g7968679845_ (gx#genident 'e)))))
                          _g7966179672_))))
                 (_g7965979849_ _tgt79347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8006080061_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd79345_)
                                                           (if (gx#underscore?
                                                                _hd79345_)
                                                               _K79348_
                                                               (if (let ((__tmp80235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7937379375_)
                                    (gx#bound-identifier=?
                                     _g7937379375_
                                     _hd79345_))))
                             (declare (not safe))
                             (find __tmp80235 _kws78944_))
                           (let* ((_g7937979394_
                                   (lambda (_g7938079390_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7938079390_)))
                                  (_g7937879445_
                                   (lambda (_g7938079398_)
                                     (if (gx#stx-pair? _g7938079398_)
                                         (let ((_e7938579401_
                                                (gx#syntax-e _g7938079398_)))
                                           (let ((_hd7938479405_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7938579401_)))
                                                 (_tl7938379408_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7938579401_))))
                                             (if (gx#stx-pair? _tl7938379408_)
                                                 (let ((_e7938879411_
                                                        (gx#syntax-e
                                                         _tl7938379408_)))
                                                   (let ((_hd7938779415_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7938879411_)))
                                                         (_tl7938679418_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7938879411_))))
                                                     (if (gx#stx-null?
                                                          _tl7938679418_)
                                                         ((lambda (_L79421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79423_)
                    (let ()
                      (let ((__tmp80234 (gx#datum->syntax '#f 'if))
                            (__tmp80217
                             (let ((__tmp80220
                                    (let ((__tmp80233
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp80221
                                           (let ((__tmp80230
                                                  (let ((__tmp80232
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp80231
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80232
                                                          __tmp80231)))
                                                 (__tmp80222
                                                  (let ((__tmp80223
                                                         (let ((__tmp80229
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp80224
                        (let ((__tmp80225
                               (let ((__tmp80226
                                      (let ((__tmp80228
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp80227
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79421_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80228 __tmp80227))))
                                 (declare (not safe))
                                 (cons __tmp80226 '()))))
                          (declare (not safe))
                          (cons _L79423_ __tmp80225))))
                   (declare (not safe))
                   (cons __tmp80229 __tmp80224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80223 '()))))
                                             (declare (not safe))
                                             (cons __tmp80230 __tmp80222))))
                                      (declare (not safe))
                                      (cons __tmp80233 __tmp80221)))
                                   (__tmp80218
                                    (let ((__tmp80219
                                           (let ()
                                             (declare (not safe))
                                             (cons _E79340_ '()))))
                                      (declare (not safe))
                                      (cons _K79348_ __tmp80219))))
                               (declare (not safe))
                               (cons __tmp80220 __tmp80218))))
                        (declare (not safe))
                        (cons __tmp80234 __tmp80217))))
                  _hd7938779415_
                  _hd7938479405_)
                 (_g7937979394_ _g7938079398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7937979394_
                                                  _g7938079398_))))
                                         (_g7937979394_ _g7938079398_)))))
                             (_g7937879445_ (list _tgt79347_ _hd79345_)))
                           (let* ((_g7944979464_
                                   (lambda (_g7945079460_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7945079460_)))
                                  (_g7944879508_
                                   (lambda (_g7945079468_)
                                     (if (gx#stx-pair? _g7945079468_)
                                         (let ((_e7945579471_
                                                (gx#syntax-e _g7945079468_)))
                                           (let ((_hd7945479475_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7945579471_)))
                                                 (_tl7945379478_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7945579471_))))
                                             (if (gx#stx-pair? _tl7945379478_)
                                                 (let ((_e7945879481_
                                                        (gx#syntax-e
                                                         _tl7945379478_)))
                                                   (let ((_hd7945779485_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7945879481_)))
                                                         (_tl7945679488_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7945879481_))))
                                                     (if (gx#stx-null?
                                                          _tl7945679488_)
                                                         ((lambda (_L79491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79493_)
                    (let ()
                      (let ((__tmp80216 (gx#datum->syntax '#f 'let))
                            (__tmp80211
                             (let ((__tmp80213
                                    (let ((__tmp80214
                                           (let ((__tmp80215
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79493_ '()))))
                                             (declare (not safe))
                                             (cons _L79491_ __tmp80215))))
                                      (declare (not safe))
                                      (cons __tmp80214 '())))
                                   (__tmp80212
                                    (let ()
                                      (declare (not safe))
                                      (cons _K79348_ '()))))
                               (declare (not safe))
                               (cons __tmp80213 __tmp80212))))
                        (declare (not safe))
                        (cons __tmp80216 __tmp80211))))
                  _hd7945779485_
                  _hd7945479475_)
                 (_g7944979464_ _g7945079468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7944979464_
                                                  _g7945079468_))))
                                         (_g7944979464_ _g7945079468_)))))
                             (_g7944879508_ (list _tgt79347_ _hd79345_)))))
                   (if (gx#stx-null? _hd79345_)
                       (let* ((_g7951279520_
                               (lambda (_g7951379516_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7951379516_)))
                              (_g7951179538_
                               (lambda (_g7951379524_)
                                 ((lambda (_L79527_)
                                    (let ()
                                      (let ((__tmp80210
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp80204
                                             (let ((__tmp80207
                                                    (let ((__tmp80209
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp80208
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp80209 __tmp80208)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp80205
                                                    (let ((__tmp80206
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E79340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K79348_ __tmp80206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp80207 __tmp80205))))
                                        (declare (not safe))
                                        (cons __tmp80210 __tmp80204))))
                                  _g7951379524_))))
                         (_g7951179538_ _tgt79347_))
                       (if (gx#stx-datum? _hd79345_)
                           (let* ((_g7954279561_
                                   (lambda (_g7954379557_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7954379557_)))
                                  (_g7954179619_
                                   (lambda (_g7954379565_)
                                     (if (gx#stx-pair? _g7954379565_)
                                         (let ((_e7954979568_
                                                (gx#syntax-e _g7954379565_)))
                                           (let ((_hd7954879572_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7954979568_)))
                                                 (_tl7954779575_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7954979568_))))
                                             (if (gx#stx-pair? _tl7954779575_)
                                                 (let ((_e7955279578_
                                                        (gx#syntax-e
                                                         _tl7954779575_)))
                                                   (let ((_hd7955179582_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7955279578_)))
                                                         (_tl7955079585_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7955279578_))))
                                                     (if (gx#stx-pair?
                                                          _tl7955079585_)
                                                         (let ((_e7955579588_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7955079585_)))
                   (let ((_hd7955479592_
                          (let () (declare (not safe)) (##car _e7955579588_)))
                         (_tl7955379595_
                          (let () (declare (not safe)) (##cdr _e7955579588_))))
                     (if (gx#stx-null? _tl7955379595_)
                         ((lambda (_L79598_ _L79600_ _L79601_)
                            (let ()
                              (let ((__tmp80203 (gx#datum->syntax '#f 'if))
                                    (__tmp80191
                                     (let ((__tmp80194
                                            (let ((__tmp80195
                                                   (let ((__tmp80200
                                                          (let ((__tmp80202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp80201
                         (let () (declare (not safe)) (cons _L79601_ '()))))
                    (declare (not safe))
                    (cons __tmp80202 __tmp80201)))
                 (__tmp80196
                  (let ((__tmp80197
                         (let ((__tmp80199 (gx#datum->syntax '#f 'quote))
                               (__tmp80198
                                (let ()
                                  (declare (not safe))
                                  (cons _L79600_ '()))))
                           (declare (not safe))
                           (cons __tmp80199 __tmp80198))))
                    (declare (not safe))
                    (cons __tmp80197 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp80200
                                                           __tmp80196))))
                                              (declare (not safe))
                                              (cons _L79598_ __tmp80195)))
                                           (__tmp80192
                                            (let ((__tmp80193
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E79340_ '()))))
                                              (declare (not safe))
                                              (cons _K79348_ __tmp80193))))
                                       (declare (not safe))
                                       (cons __tmp80194 __tmp80192))))
                                (declare (not safe))
                                (cons __tmp80203 __tmp80191))))
                          _hd7955479592_
                          _hd7955179582_
                          _hd7954879572_)
                         (_g7954279561_ _g7954379565_))))
                 (_g7954279561_ _g7954379565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7954279561_
                                                  _g7954379565_))))
                                         (_g7954279561_ _g7954379565_)))))
                             (_g7954179619_
                              (list _tgt79347_
                                    _hd79345_
                                    (let ((_e79623_ (gx#stx-e _hd79345_)))
                                      (if (or (keyword? _e79623_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79623_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79623_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78790_
                            _where79335_
                            _hd79345_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8005580056_)
                                                    (let ((_e7935779637_
                                                           (gx#syntax-e
                                                            ___stx8005580056_)))
                                                      (let ((_tl7935579644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7935779637_)))
                    (_hd7935679641_
                     (let () (declare (not safe)) (##car _e7935779637_))))
                (___kont8005880059_ _tl7935579644_ _hd7935679641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8006080061_)))))))
                                  (_recur79342_
                                   _hd79337_
                                   _tgt78942_
                                   (let ((__tmp80239
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp80236
                                          (let ((__tmp80237
                                                 (let ((__tmp80238
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E79340_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body79339_
                                                         __tmp80238))))
                                            (declare (not safe))
                                            (cons _fender79338_ __tmp80237))))
                                     (declare (not safe))
                                     (cons __tmp80239 __tmp80236))))))
                             (_generate-clauses78950_
                              (lambda (_clauses79073_)
                                (let _lp79076_ ((_rest79079_ _clauses79073_)
                                                (_E79081_ (gx#genident 'E))
                                                (_r79082_ '()))
                                  (let* ((___stx8009180092_ _rest79079_)
                                         (_g7908579097_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8009180092_))))
                                    (let ((___kont8009480095_
                                           (lambda (_L79162_ _L79164_)
                                             (let* ((___stx8007180072_
                                                     _L79164_)
                                                    (_g7917679187_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8007180072_))))
                                               (let ((___kont8007480075_
                                                      (lambda (_L79316_)
                                                        (if (gx#stx-null?
                                                             _L79162_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L79316_)
                             (let ((__tmp80248 (gx#stx-null? _L79316_)))
                               (declare (not safe))
                               (not __tmp80248)))
                        (let ((__tmp80240
                               (let ((__tmp80241
                                      (let ((__tmp80242
                                             (gx#stx-wrap-source
                                              (let ((__tmp80247
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp80243
                                                     (let ((__tmp80244
                                                            (let ((__tmp80245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80246 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp80246 _L79316_))))
                      (declare (not safe))
                      (cons __tmp80245 '()))))
               (declare (not safe))
               (cons '() __tmp80244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80247 __tmp80243))
                                              (gx#stx-source _L79164_))))
                                        (declare (not safe))
                                        (cons __tmp80242 '()))))
                                 (declare (not safe))
                                 (cons _E79081_ __tmp80241))))
                          (declare (not safe))
                          (cons __tmp80240 _r79082_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78790_
                         _L79164_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78790_
                     _L79164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8007680077_
                                                      (lambda ()
                                                        (let* ((_g7919879206_
                                                                (lambda (_g7919979202_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7919979202_)))
                       (_g7919779295_
                        (lambda (_g7919979210_)
                          ((lambda (_L79213_)
                             (let ()
                               (let* ((_g7922979237_
                                       (lambda (_g7923079233_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7923079233_)))
                                      (_g7922879291_
                                       (lambda (_g7923079241_)
                                         ((lambda (_L79244_)
                                            (let ()
                                              (let* ((_g7925779265_
                                                      (lambda (_g7925879261_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7925879261_)))
                                                     (_g7925679287_
                                                      (lambda (_g7925879269_)
                                                        ((lambda (_L79272_)
                                                           (let ()
                                                             (let ()
                                                               (_lp79076_
                                                                _L79162_
                                                                _L79213_
                                                                (let ((__tmp80249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80250
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79272_ '()))))
                                 (declare (not safe))
                                 (cons _E79081_ __tmp80250))))
                          (declare (not safe))
                          (cons __tmp80249 _r79082_))))))
                 _g7925879269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7925679287_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp80253
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp80251
                                                         (let ((__tmp80252
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L79244_ '()))))
                   (declare (not safe))
                   (cons '() __tmp80252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80253
                                                          __tmp80251))
                                                  (gx#stx-source _L79164_))))))
                                          _g7923079241_))))
                                 (_g7922879291_
                                  (_generate-clause78947_
                                   _L79164_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L79213_ '())))))))
                           _g7919979210_))))
                  (_g7919779295_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8007180072_)
                                                     (let ((_e7918179306_
                                                            (gx#syntax-e
                                                             ___stx8007180072_)))
                                                       (let ((_tl7917979313_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7918179306_)))
                     (_hd7918079310_
                      (let () (declare (not safe)) (##car _e7918179306_))))
                 (if (gx#identifier? _hd7918079310_)
                     (if (gx#free-identifier=? |gx[1]#_g80254_| _hd7918079310_)
                         (___kont8007480075_ _tl7917979313_)
                         (___kont8007680077_))
                     (___kont8007680077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8007680077_))))))
                                          (___kont8009680097_
                                           (lambda ()
                                             (let* ((_g7910879116_
                                                     (lambda (_g7910979112_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7910979112_)))
                                                    (_g7910779141_
                                                     (lambda (_g7910979120_)
                                                       ((lambda (_L79123_)
                                                          (let ()
                                                            (let ((__tmp80255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80256
                                  (let ((__tmp80257
                                         (gx#stx-wrap-source
                                          (let ((__tmp80265
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp80258
                                                 (let ((__tmp80259
                                                        (let ((__tmp80260
                                                               (let ((__tmp80264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp80261
                              (let ((__tmp80262
                                     (let ((__tmp80263
                                            (let ()
                                              (declare (not safe))
                                              (cons _L79123_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp80263))))
                                (declare (not safe))
                                (cons '#f __tmp80262))))
                         (declare (not safe))
                         (cons __tmp80264 __tmp80261))))
                  (declare (not safe))
                  (cons __tmp80260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp80259))))
                                            (declare (not safe))
                                            (cons __tmp80265 __tmp80258))
                                          (gx#stx-source _stx78790_))))
                                    (declare (not safe))
                                    (cons __tmp80257 '()))))
                             (declare (not safe))
                             (cons _E79081_ __tmp80256))))
                      (declare (not safe))
                      (cons __tmp80255 _r79082_))))
                _g7910979120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7910779141_ _tgt78942_)))))
                                      (if (gx#stx-pair? ___stx8009180092_)
                                          (let ((_e7909179152_
                                                 (gx#syntax-e
                                                  ___stx8009180092_)))
                                            (let ((_tl7908979159_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7909179152_)))
                                                  (_hd7909079156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7909179152_))))
                                              (___kont8009480095_
                                               _tl7908979159_
                                               _hd7909079156_)))
                                          (___kont8009680097_))))))))
                      (let* ((_bind78952_
                              (_generate-clauses78950_ _clauses78945_))
                             (_g7895578972_
                              (lambda (_g7895678968_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7895678968_)))
                             (_g7895479069_
                              (lambda (_g7895678976_)
                                (if (gx#stx-pair/null? _g7895678976_)
                                    (let ((_g80266_
                                           (gx#syntax-split-splice
                                            _g7895678976_
                                            '0)))
                                      (begin
                                        (let ((_g80267_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g80266_)
                                                     (##vector-length _g80266_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g80267_ 2)))
                                              (error "Context expects 2 values"
                                                     _g80267_)))
                                        (let ((_target7895878979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80266_ 0)))
                                              (_tl7896078982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80266_ 1))))
                                          (if (gx#stx-null? _tl7896078982_)
                                              (letrec ((_loop7896178985_
                                                        (lambda (_hd7895978989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7896578992_)
                  (if (gx#stx-pair? _hd7895978989_)
                      (let ((_e7896278995_ (gx#syntax-e _hd7895978989_)))
                        (let ((_lp-hd7896378999_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7896278995_)))
                              (_lp-tl7896479002_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7896278995_))))
                          (_loop7896178985_
                           _lp-tl7896479002_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7896378999_ _bind-try7896578992_)))))
                      (let ((_bind-try7896679005_
                             (reverse _bind-try7896578992_)))
                        ((lambda (_L79009_)
                           (let ()
                             (let* ((_g7902779035_
                                     (lambda (_g7902879031_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7902879031_)))
                                    (_g7902679065_
                                     (lambda (_g7902879039_)
                                       ((lambda (_L79042_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp80273
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp80268
                                                     (let ((__tmp80271
                                                            (let ((__tmp80272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7905679059_ _g7905779062_)
                             (let ()
                               (declare (not safe))
                               (cons _g7905679059_ _g7905779062_)))))
                      (declare (not safe))
                      (foldr1 __tmp80272 '() _L79009_)))
                   (__tmp80269
                    (let ((__tmp80270
                           (let () (declare (not safe)) (cons _L79042_ '()))))
                      (declare (not safe))
                      (cons __tmp80270 '()))))
               (declare (not safe))
               (cons __tmp80271 __tmp80269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80273
                                                      __tmp80268)))))
                                        _g7902879039_))))
                               (_g7902679065_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind78952_)))))))
                         _bind-try7896679005_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7896178985_
                                                 _target7895878979_
                                                 '()))
                                              (_g7895578972_ _g7895678976_)))))
                                    (_g7895578972_ _g7895678976_)))))
                        (_g7895479069_ _bind78952_))))))
          (let* ((_g7879678815_
                  (lambda (_g7879778811_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7879778811_)))
                 (_g7879578938_
                  (lambda (_g7879778819_)
                    (if (gx#stx-pair? _g7879778819_)
                        (let ((_e7880378822_ (gx#syntax-e _g7879778819_)))
                          (let ((_hd7880278826_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7880378822_)))
                                (_tl7880178829_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7880378822_))))
                            (if (gx#stx-pair? _tl7880178829_)
                                (let ((_e7880678832_
                                       (gx#syntax-e _tl7880178829_)))
                                  (let ((_hd7880578836_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7880678832_)))
                                        (_tl7880478839_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7880678832_))))
                                    (if (gx#stx-pair? _tl7880478839_)
                                        (let ((_e7880978842_
                                               (gx#syntax-e _tl7880478839_)))
                                          (let ((_hd7880878846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7880978842_)))
                                                (_tl7880778849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7880978842_))))
                                            ((lambda (_L78852_
                                                      _L78854_
                                                      _L78855_)
                                               (if (and (gx#identifier-list?
                                                         _L78854_)
                                                        (gx#stx-list?
                                                         _L78852_))
                                                   (let* ((_g7887378881_
                                                           (lambda (_g7887478877_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7887478877_)))
                                                          (_g7887278934_
                                                           (lambda (_g7887478885_)
                                                             ((lambda (_L78888_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7890078908_
                                  (lambda (_g7890178904_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7890178904_)))
                                 (_g7889978930_
                                  (lambda (_g7890178912_)
                                    ((lambda (_L78915_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp80279
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp80274
                                                  (let ((__tmp80276
                                                         (let ((__tmp80277
                                                                (let ((__tmp80278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78855_ '()))))
                          (declare (not safe))
                          (cons _L78888_ __tmp80278))))
                   (declare (not safe))
                   (cons __tmp80277 '())))
                (__tmp80275 (let () (declare (not safe)) (cons _L78915_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80276
                                                          __tmp80275))))
                                             (declare (not safe))
                                             (cons __tmp80279 __tmp80274)))))
                                     _g7890178912_))))
                            (_g7889978930_
                             (_generate78793_
                              _L78888_
                              (gx#syntax->list _L78854_)
                              _L78852_)))))
                      _g7887478885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7887278934_
                                                      (gx#genident 'e)))
                                                   (_g7879678815_
                                                    _g7879778819_)))
                                             _tl7880778849_
                                             _hd7880878846_
                                             _hd7880578836_)))
                                        (_g7879678815_ _g7879778819_))))
                                (_g7879678815_ _g7879778819_))))
                        (_g7879678815_ _g7879778819_)))))
            (_g7879578938_ _stx78790_)))))))
