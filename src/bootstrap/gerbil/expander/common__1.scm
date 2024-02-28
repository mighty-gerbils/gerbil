(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g80114_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80116_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80118_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80123_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80126_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80131_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80134_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80139_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80142_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80147_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80150_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80257_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj80109
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
           __obj80109
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80113 |gx[1]#_g80114_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           __tmp80113
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80115 |gx[1]#_g80116_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           __tmp80115
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80117 |gx[1]#_g80118_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           __tmp80117
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80119
               (let ((__tmp80124
                      (let ((__tmp80125 |gx[1]#_g80126_|))
                        (declare (not safe))
                        (cons 'e __tmp80125)))
                     (__tmp80120
                      (let ((__tmp80121
                             (let ((__tmp80122 |gx[1]#_g80123_|))
                               (declare (not safe))
                               (cons 'source __tmp80122))))
                        (declare (not safe))
                        (cons __tmp80121 '()))))
                 (declare (not safe))
                 (cons __tmp80124 __tmp80120))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           __tmp80119
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80127
               (let ((__tmp80132
                      (let ((__tmp80133 |gx[1]#_g80134_|))
                        (declare (not safe))
                        (cons 'e __tmp80133)))
                     (__tmp80128
                      (let ((__tmp80129
                             (let ((__tmp80130 |gx[1]#_g80131_|))
                               (declare (not safe))
                               (cons 'source __tmp80130))))
                        (declare (not safe))
                        (cons __tmp80129 '()))))
                 (declare (not safe))
                 (cons __tmp80132 __tmp80128))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           __tmp80127
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80135
               (let ((__tmp80140
                      (let ((__tmp80141 |gx[1]#_g80142_|))
                        (declare (not safe))
                        (cons 'e __tmp80141)))
                     (__tmp80136
                      (let ((__tmp80137
                             (let ((__tmp80138 |gx[1]#_g80139_|))
                               (declare (not safe))
                               (cons 'source __tmp80138))))
                        (declare (not safe))
                        (cons __tmp80137 '()))))
                 (declare (not safe))
                 (cons __tmp80140 __tmp80136))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           __tmp80135
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80143
               (let ((__tmp80148
                      (let ((__tmp80149 |gx[1]#_g80150_|))
                        (declare (not safe))
                        (cons 'e __tmp80149)))
                     (__tmp80144
                      (let ((__tmp80145
                             (let ((__tmp80146 |gx[1]#_g80147_|))
                               (declare (not safe))
                               (cons 'source __tmp80146))))
                        (declare (not safe))
                        (cons __tmp80145 '()))))
                 (declare (not safe))
                 (cons __tmp80148 __tmp80144))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80109
           __tmp80143
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj80109))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78729_)
        (let* ((_g7873378747_
                (lambda (_g7873478743_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7873478743_)))
               (_g7873278789_
                (lambda (_g7873478751_)
                  (if (gx#stx-pair? _g7873478751_)
                      (let ((_e7873878754_ (gx#syntax-e _g7873478751_)))
                        (let ((_hd7873778758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7873878754_)))
                              (_tl7873678761_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7873878754_))))
                          (if (gx#stx-pair? _tl7873678761_)
                              (let ((_e7874178764_
                                     (gx#syntax-e _tl7873678761_)))
                                (let ((_hd7874078768_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7874178764_)))
                                      (_tl7873978771_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7874178764_))))
                                  (if (gx#stx-null? _tl7873978771_)
                                      ((lambda (_L78774_)
                                         (let ((__tmp80160
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp80151
                                                (let ((__tmp80157
                                                       (let ((__tmp80159
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp80158
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78774_ '()))))
                 (declare (not safe))
                 (cons __tmp80159 __tmp80158)))
              (__tmp80152
               (let ((__tmp80153
                      (let ((__tmp80156 (gx#datum->syntax '#f 'error))
                            (__tmp80154
                             (let ((__tmp80155
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78774_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp80155))))
                        (declare (not safe))
                        (cons __tmp80156 __tmp80154))))
                 (declare (not safe))
                 (cons __tmp80153 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80157
                                                        __tmp80152))))
                                           (declare (not safe))
                                           (cons __tmp80160 __tmp80151)))
                                       _hd7874078768_)
                                      (_g7873378747_ _g7873478751_))))
                              (_g7873378747_ _g7873478751_))))
                      (_g7873378747_ _g7873478751_)))))
          (_g7873278789_ _$stx78729_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78793_)
        (letrec ((_generate78796_
                  (lambda (_tgt78945_ _kws78947_ _clauses78948_)
                    (letrec ((_generate-clause78950_
                              (lambda (_hd79860_ _E79862_)
                                (let* ((___stx8001280013_ _hd79860_)
                                       (_g7986679893_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8001280013_))))
                                  (let ((___kont8001580016_
                                         (lambda (_L79989_ _L79991_)
                                           (_generate178952_
                                            _hd79860_
                                            _L79991_
                                            '#t
                                            _L79989_
                                            _E79862_)))
                                        (___kont8001780018_
                                         (lambda (_L79941_ _L79943_ _L79944_)
                                           (_generate178952_
                                            _hd79860_
                                            _L79944_
                                            _L79943_
                                            _L79941_
                                            _E79862_)))
                                        (___kont8001980020_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78793_
                                            _hd79860_))))
                                    (if (gx#stx-pair? ___stx8001280013_)
                                        (let ((_e7987279969_
                                               (gx#syntax-e
                                                ___stx8001280013_)))
                                          (let ((_tl7987079976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7987279969_)))
                                                (_hd7987179973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7987279969_))))
                                            (if (gx#stx-pair? _tl7987079976_)
                                                (let ((_e7987579979_
                                                       (gx#syntax-e
                                                        _tl7987079976_)))
                                                  (let ((_tl7987379986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7987579979_)))
                                                        (_hd7987479983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7987579979_))))
                                                    (if (gx#stx-null?
                                                         _tl7987379986_)
                                                        (___kont8001580016_
                                                         _hd7987479983_
                                                         _hd7987179973_)
                                                        (if (gx#stx-pair?
                                                             _tl7987379986_)
                                                            (let ((_e7988779931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7987379986_)))
                      (let ((_tl7988579938_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7988779931_)))
                            (_hd7988679935_
                             (let ()
                               (declare (not safe))
                               (##car _e7988779931_))))
                        (if (gx#stx-null? _tl7988579938_)
                            (___kont8001780018_
                             _hd7988679935_
                             _hd7987479983_
                             _hd7987179973_)
                            (___kont8001980020_))))
                    (___kont8001980020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8001980020_))))
                                        (___kont8001980020_))))))
                             (_generate178952_
                              (lambda (_where79338_
                                       _hd79340_
                                       _fender79341_
                                       _body79342_
                                       _E79343_)
                                (letrec ((_recur79345_
                                          (lambda (_hd79348_
                                                   _tgt79350_
                                                   _K79351_)
                                            (let* ((___stx8005880059_
                                                    _hd79348_)
                                                   (_g7935479366_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8005880059_))))
                                              (let ((___kont8006180062_
                                                     (lambda (_L79650_
                                                              _L79652_)
                                                       (let* ((_g7966379671_
                                                               (lambda (_g7966479667_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7966479667_)))
                      (_g7966279852_
                       (lambda (_g7966479675_)
                         ((lambda (_L79678_)
                            (let ()
                              (let* ((_g7969079698_
                                      (lambda (_g7969179694_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7969179694_)))
                                     (_g7968979848_
                                      (lambda (_g7969179702_)
                                        ((lambda (_L79705_)
                                           (let ()
                                             (let* ((_g7971879726_
                                                     (lambda (_g7971979722_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7971979722_)))
                                                    (_g7971779844_
                                                     (lambda (_g7971979730_)
                                                       ((lambda (_L79733_)
                                                          (let ()
                                                            (let* ((_g7974679754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7974779750_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7974779750_)))
                           (_g7974579840_
                            (lambda (_g7974779758_)
                              ((lambda (_L79761_)
                                 (let ()
                                   (let* ((_g7977479782_
                                           (lambda (_g7977579778_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7977579778_)))
                                          (_g7977379836_
                                           (lambda (_g7977579786_)
                                             ((lambda (_L79789_)
                                                (let ()
                                                  (let* ((_g7980279810_
                                                          (lambda (_g7980379806_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7980379806_)))
                                                         (_g7980179832_
                                                          (lambda (_g7980379814_)
                                                            ((lambda (_L79817_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp80193 (gx#datum->syntax '#f 'if))
                                 (__tmp80161
                                  (let ((__tmp80190
                                         (let ((__tmp80192
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp80191
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79678_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80192 __tmp80191)))
                                        (__tmp80162
                                         (let ((__tmp80164
                                                (let ((__tmp80189
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp80165
                                                       (let ((__tmp80183
                                                              (let ((__tmp80184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp80185
                                    (let ((__tmp80186
                                           (let ((__tmp80188
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp80187
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79678_ '()))))
                                             (declare (not safe))
                                             (cons __tmp80188 __tmp80187))))
                                      (declare (not safe))
                                      (cons __tmp80186 '()))))
                               (declare (not safe))
                               (cons _L79705_ __tmp80185))))
                        (declare (not safe))
                        (cons __tmp80184 '())))
                     (__tmp80166
                      (let ((__tmp80167
                             (let ((__tmp80182 (gx#datum->syntax '#f 'let))
                                   (__tmp80168
                                    (let ((__tmp80170
                                           (let ((__tmp80177
                                                  (let ((__tmp80178
                                                         (let ((__tmp80179
                                                                (let ((__tmp80181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp80180
                               (let ()
                                 (declare (not safe))
                                 (cons _L79705_ '()))))
                          (declare (not safe))
                          (cons __tmp80181 __tmp80180))))
                   (declare (not safe))
                   (cons __tmp80179 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79733_
                                                          __tmp80178)))
                                                 (__tmp80171
                                                  (let ((__tmp80172
                                                         (let ((__tmp80173
                                                                (let ((__tmp80174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80176 (gx#datum->syntax '#f '##cdr))
                                     (__tmp80175
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79705_ '()))))
                                 (declare (not safe))
                                 (cons __tmp80176 __tmp80175))))
                          (declare (not safe))
                          (cons __tmp80174 '()))))
                   (declare (not safe))
                   (cons _L79761_ __tmp80173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80172 '()))))
                                             (declare (not safe))
                                             (cons __tmp80177 __tmp80171)))
                                          (__tmp80169
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79789_ '()))))
                                      (declare (not safe))
                                      (cons __tmp80170 __tmp80169))))
                               (declare (not safe))
                               (cons __tmp80182 __tmp80168))))
                        (declare (not safe))
                        (cons __tmp80167 '()))))
                 (declare (not safe))
                 (cons __tmp80183 __tmp80166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80189
                                                        __tmp80165)))
                                               (__tmp80163
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79817_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80164 __tmp80163))))
                                    (declare (not safe))
                                    (cons __tmp80190 __tmp80162))))
                             (declare (not safe))
                             (cons __tmp80193 __tmp80161)))))
                     _g7980379814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7980179832_ _E79343_))))
                                              _g7977579786_))))
                                     (_g7977379836_
                                      (_recur79345_
                                       _L79652_
                                       _L79733_
                                       (_recur79345_
                                        _L79650_
                                        _L79761_
                                        _K79351_))))))
                               _g7974779758_))))
                      (_g7974579840_ (gx#genident 'tl)))))
                _g7971979730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7971779844_
                                                (gx#genident 'hd)))))
                                         _g7969179702_))))
                                (_g7968979848_ (gx#genident 'e)))))
                          _g7966479675_))))
                 (_g7966279852_ _tgt79350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8006380064_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd79348_)
                                                           (if (gx#underscore?
                                                                _hd79348_)
                                                               _K79351_
                                                               (if (let ((__tmp80238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7937679378_)
                                    (gx#bound-identifier=?
                                     _g7937679378_
                                     _hd79348_))))
                             (declare (not safe))
                             (find __tmp80238 _kws78947_))
                           (let* ((_g7938279397_
                                   (lambda (_g7938379393_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7938379393_)))
                                  (_g7938179448_
                                   (lambda (_g7938379401_)
                                     (if (gx#stx-pair? _g7938379401_)
                                         (let ((_e7938879404_
                                                (gx#syntax-e _g7938379401_)))
                                           (let ((_hd7938779408_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7938879404_)))
                                                 (_tl7938679411_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7938879404_))))
                                             (if (gx#stx-pair? _tl7938679411_)
                                                 (let ((_e7939179414_
                                                        (gx#syntax-e
                                                         _tl7938679411_)))
                                                   (let ((_hd7939079418_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7939179414_)))
                                                         (_tl7938979421_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7939179414_))))
                                                     (if (gx#stx-null?
                                                          _tl7938979421_)
                                                         ((lambda (_L79424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79426_)
                    (let ()
                      (let ((__tmp80237 (gx#datum->syntax '#f 'if))
                            (__tmp80220
                             (let ((__tmp80223
                                    (let ((__tmp80236
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp80224
                                           (let ((__tmp80233
                                                  (let ((__tmp80235
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp80234
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80235
                                                          __tmp80234)))
                                                 (__tmp80225
                                                  (let ((__tmp80226
                                                         (let ((__tmp80232
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp80227
                        (let ((__tmp80228
                               (let ((__tmp80229
                                      (let ((__tmp80231
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp80230
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79424_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80231 __tmp80230))))
                                 (declare (not safe))
                                 (cons __tmp80229 '()))))
                          (declare (not safe))
                          (cons _L79426_ __tmp80228))))
                   (declare (not safe))
                   (cons __tmp80232 __tmp80227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80226 '()))))
                                             (declare (not safe))
                                             (cons __tmp80233 __tmp80225))))
                                      (declare (not safe))
                                      (cons __tmp80236 __tmp80224)))
                                   (__tmp80221
                                    (let ((__tmp80222
                                           (let ()
                                             (declare (not safe))
                                             (cons _E79343_ '()))))
                                      (declare (not safe))
                                      (cons _K79351_ __tmp80222))))
                               (declare (not safe))
                               (cons __tmp80223 __tmp80221))))
                        (declare (not safe))
                        (cons __tmp80237 __tmp80220))))
                  _hd7939079418_
                  _hd7938779408_)
                 (_g7938279397_ _g7938379401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7938279397_
                                                  _g7938379401_))))
                                         (_g7938279397_ _g7938379401_)))))
                             (_g7938179448_ (list _tgt79350_ _hd79348_)))
                           (let* ((_g7945279467_
                                   (lambda (_g7945379463_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7945379463_)))
                                  (_g7945179511_
                                   (lambda (_g7945379471_)
                                     (if (gx#stx-pair? _g7945379471_)
                                         (let ((_e7945879474_
                                                (gx#syntax-e _g7945379471_)))
                                           (let ((_hd7945779478_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7945879474_)))
                                                 (_tl7945679481_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7945879474_))))
                                             (if (gx#stx-pair? _tl7945679481_)
                                                 (let ((_e7946179484_
                                                        (gx#syntax-e
                                                         _tl7945679481_)))
                                                   (let ((_hd7946079488_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7946179484_)))
                                                         (_tl7945979491_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7946179484_))))
                                                     (if (gx#stx-null?
                                                          _tl7945979491_)
                                                         ((lambda (_L79494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79496_)
                    (let ()
                      (let ((__tmp80219 (gx#datum->syntax '#f 'let))
                            (__tmp80214
                             (let ((__tmp80216
                                    (let ((__tmp80217
                                           (let ((__tmp80218
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79496_ '()))))
                                             (declare (not safe))
                                             (cons _L79494_ __tmp80218))))
                                      (declare (not safe))
                                      (cons __tmp80217 '())))
                                   (__tmp80215
                                    (let ()
                                      (declare (not safe))
                                      (cons _K79351_ '()))))
                               (declare (not safe))
                               (cons __tmp80216 __tmp80215))))
                        (declare (not safe))
                        (cons __tmp80219 __tmp80214))))
                  _hd7946079488_
                  _hd7945779478_)
                 (_g7945279467_ _g7945379471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7945279467_
                                                  _g7945379471_))))
                                         (_g7945279467_ _g7945379471_)))))
                             (_g7945179511_ (list _tgt79350_ _hd79348_)))))
                   (if (gx#stx-null? _hd79348_)
                       (let* ((_g7951579523_
                               (lambda (_g7951679519_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7951679519_)))
                              (_g7951479541_
                               (lambda (_g7951679527_)
                                 ((lambda (_L79530_)
                                    (let ()
                                      (let ((__tmp80213
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp80207
                                             (let ((__tmp80210
                                                    (let ((__tmp80212
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp80211
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp80212 __tmp80211)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp80208
                                                    (let ((__tmp80209
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E79343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K79351_ __tmp80209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp80210 __tmp80208))))
                                        (declare (not safe))
                                        (cons __tmp80213 __tmp80207))))
                                  _g7951679527_))))
                         (_g7951479541_ _tgt79350_))
                       (if (gx#stx-datum? _hd79348_)
                           (let* ((_g7954579564_
                                   (lambda (_g7954679560_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7954679560_)))
                                  (_g7954479622_
                                   (lambda (_g7954679568_)
                                     (if (gx#stx-pair? _g7954679568_)
                                         (let ((_e7955279571_
                                                (gx#syntax-e _g7954679568_)))
                                           (let ((_hd7955179575_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7955279571_)))
                                                 (_tl7955079578_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7955279571_))))
                                             (if (gx#stx-pair? _tl7955079578_)
                                                 (let ((_e7955579581_
                                                        (gx#syntax-e
                                                         _tl7955079578_)))
                                                   (let ((_hd7955479585_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7955579581_)))
                                                         (_tl7955379588_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7955579581_))))
                                                     (if (gx#stx-pair?
                                                          _tl7955379588_)
                                                         (let ((_e7955879591_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7955379588_)))
                   (let ((_hd7955779595_
                          (let () (declare (not safe)) (##car _e7955879591_)))
                         (_tl7955679598_
                          (let () (declare (not safe)) (##cdr _e7955879591_))))
                     (if (gx#stx-null? _tl7955679598_)
                         ((lambda (_L79601_ _L79603_ _L79604_)
                            (let ()
                              (let ((__tmp80206 (gx#datum->syntax '#f 'if))
                                    (__tmp80194
                                     (let ((__tmp80197
                                            (let ((__tmp80198
                                                   (let ((__tmp80203
                                                          (let ((__tmp80205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp80204
                         (let () (declare (not safe)) (cons _L79604_ '()))))
                    (declare (not safe))
                    (cons __tmp80205 __tmp80204)))
                 (__tmp80199
                  (let ((__tmp80200
                         (let ((__tmp80202 (gx#datum->syntax '#f 'quote))
                               (__tmp80201
                                (let ()
                                  (declare (not safe))
                                  (cons _L79603_ '()))))
                           (declare (not safe))
                           (cons __tmp80202 __tmp80201))))
                    (declare (not safe))
                    (cons __tmp80200 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp80203
                                                           __tmp80199))))
                                              (declare (not safe))
                                              (cons _L79601_ __tmp80198)))
                                           (__tmp80195
                                            (let ((__tmp80196
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E79343_ '()))))
                                              (declare (not safe))
                                              (cons _K79351_ __tmp80196))))
                                       (declare (not safe))
                                       (cons __tmp80197 __tmp80195))))
                                (declare (not safe))
                                (cons __tmp80206 __tmp80194))))
                          _hd7955779595_
                          _hd7955479585_
                          _hd7955179575_)
                         (_g7954579564_ _g7954679568_))))
                 (_g7954579564_ _g7954679568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7954579564_
                                                  _g7954679568_))))
                                         (_g7954579564_ _g7954679568_)))))
                             (_g7954479622_
                              (list _tgt79350_
                                    _hd79348_
                                    (let ((_e79626_ (gx#stx-e _hd79348_)))
                                      (if (or (keyword? _e79626_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79626_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79626_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78793_
                            _where79338_
                            _hd79348_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8005880059_)
                                                    (let ((_e7936079640_
                                                           (gx#syntax-e
                                                            ___stx8005880059_)))
                                                      (let ((_tl7935879647_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7936079640_)))
                    (_hd7935979644_
                     (let () (declare (not safe)) (##car _e7936079640_))))
                (___kont8006180062_ _tl7935879647_ _hd7935979644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8006380064_)))))))
                                  (_recur79345_
                                   _hd79340_
                                   _tgt78945_
                                   (let ((__tmp80242
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp80239
                                          (let ((__tmp80240
                                                 (let ((__tmp80241
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E79343_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body79342_
                                                         __tmp80241))))
                                            (declare (not safe))
                                            (cons _fender79341_ __tmp80240))))
                                     (declare (not safe))
                                     (cons __tmp80242 __tmp80239))))))
                             (_generate-clauses78953_
                              (lambda (_clauses79076_)
                                (let _lp79079_ ((_rest79082_ _clauses79076_)
                                                (_E79084_ (gx#genident 'E))
                                                (_r79085_ '()))
                                  (let* ((___stx8009480095_ _rest79082_)
                                         (_g7908879100_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8009480095_))))
                                    (let ((___kont8009780098_
                                           (lambda (_L79165_ _L79167_)
                                             (let* ((___stx8007480075_
                                                     _L79167_)
                                                    (_g7917979190_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8007480075_))))
                                               (let ((___kont8007780078_
                                                      (lambda (_L79319_)
                                                        (if (gx#stx-null?
                                                             _L79165_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L79319_)
                             (let ((__tmp80251 (gx#stx-null? _L79319_)))
                               (declare (not safe))
                               (not __tmp80251)))
                        (let ((__tmp80243
                               (let ((__tmp80244
                                      (let ((__tmp80245
                                             (gx#stx-wrap-source
                                              (let ((__tmp80250
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp80246
                                                     (let ((__tmp80247
                                                            (let ((__tmp80248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80249 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp80249 _L79319_))))
                      (declare (not safe))
                      (cons __tmp80248 '()))))
               (declare (not safe))
               (cons '() __tmp80247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80250 __tmp80246))
                                              (gx#stx-source _L79167_))))
                                        (declare (not safe))
                                        (cons __tmp80245 '()))))
                                 (declare (not safe))
                                 (cons _E79084_ __tmp80244))))
                          (declare (not safe))
                          (cons __tmp80243 _r79085_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78793_
                         _L79167_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78793_
                     _L79167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8007980080_
                                                      (lambda ()
                                                        (let* ((_g7920179209_
                                                                (lambda (_g7920279205_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7920279205_)))
                       (_g7920079298_
                        (lambda (_g7920279213_)
                          ((lambda (_L79216_)
                             (let ()
                               (let* ((_g7923279240_
                                       (lambda (_g7923379236_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7923379236_)))
                                      (_g7923179294_
                                       (lambda (_g7923379244_)
                                         ((lambda (_L79247_)
                                            (let ()
                                              (let* ((_g7926079268_
                                                      (lambda (_g7926179264_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7926179264_)))
                                                     (_g7925979290_
                                                      (lambda (_g7926179272_)
                                                        ((lambda (_L79275_)
                                                           (let ()
                                                             (let ()
                                                               (_lp79079_
                                                                _L79165_
                                                                _L79216_
                                                                (let ((__tmp80252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80253
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79275_ '()))))
                                 (declare (not safe))
                                 (cons _E79084_ __tmp80253))))
                          (declare (not safe))
                          (cons __tmp80252 _r79085_))))))
                 _g7926179272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7925979290_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp80256
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp80254
                                                         (let ((__tmp80255
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L79247_ '()))))
                   (declare (not safe))
                   (cons '() __tmp80255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80256
                                                          __tmp80254))
                                                  (gx#stx-source _L79167_))))))
                                          _g7923379244_))))
                                 (_g7923179294_
                                  (_generate-clause78950_
                                   _L79167_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L79216_ '())))))))
                           _g7920279213_))))
                  (_g7920079298_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8007480075_)
                                                     (let ((_e7918479309_
                                                            (gx#syntax-e
                                                             ___stx8007480075_)))
                                                       (let ((_tl7918279316_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7918479309_)))
                     (_hd7918379313_
                      (let () (declare (not safe)) (##car _e7918479309_))))
                 (if (gx#identifier? _hd7918379313_)
                     (if (gx#free-identifier=? |gx[1]#_g80257_| _hd7918379313_)
                         (___kont8007780078_ _tl7918279316_)
                         (___kont8007980080_))
                     (___kont8007980080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8007980080_))))))
                                          (___kont8009980100_
                                           (lambda ()
                                             (let* ((_g7911179119_
                                                     (lambda (_g7911279115_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7911279115_)))
                                                    (_g7911079144_
                                                     (lambda (_g7911279123_)
                                                       ((lambda (_L79126_)
                                                          (let ()
                                                            (let ((__tmp80258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80259
                                  (let ((__tmp80260
                                         (gx#stx-wrap-source
                                          (let ((__tmp80268
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp80261
                                                 (let ((__tmp80262
                                                        (let ((__tmp80263
                                                               (let ((__tmp80267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp80264
                              (let ((__tmp80265
                                     (let ((__tmp80266
                                            (let ()
                                              (declare (not safe))
                                              (cons _L79126_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp80266))))
                                (declare (not safe))
                                (cons '#f __tmp80265))))
                         (declare (not safe))
                         (cons __tmp80267 __tmp80264))))
                  (declare (not safe))
                  (cons __tmp80263 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp80262))))
                                            (declare (not safe))
                                            (cons __tmp80268 __tmp80261))
                                          (gx#stx-source _stx78793_))))
                                    (declare (not safe))
                                    (cons __tmp80260 '()))))
                             (declare (not safe))
                             (cons _E79084_ __tmp80259))))
                      (declare (not safe))
                      (cons __tmp80258 _r79085_))))
                _g7911279123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7911079144_ _tgt78945_)))))
                                      (if (gx#stx-pair? ___stx8009480095_)
                                          (let ((_e7909479155_
                                                 (gx#syntax-e
                                                  ___stx8009480095_)))
                                            (let ((_tl7909279162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7909479155_)))
                                                  (_hd7909379159_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7909479155_))))
                                              (___kont8009780098_
                                               _tl7909279162_
                                               _hd7909379159_)))
                                          (___kont8009980100_))))))))
                      (let* ((_bind78955_
                              (_generate-clauses78953_ _clauses78948_))
                             (_g7895878975_
                              (lambda (_g7895978971_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7895978971_)))
                             (_g7895779072_
                              (lambda (_g7895978979_)
                                (if (gx#stx-pair/null? _g7895978979_)
                                    (let ((_g80269_
                                           (gx#syntax-split-splice
                                            _g7895978979_
                                            '0)))
                                      (begin
                                        (let ((_g80270_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g80269_)
                                                     (##vector-length _g80269_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g80270_ 2)))
                                              (error "Context expects 2 values"
                                                     _g80270_)))
                                        (let ((_target7896178982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80269_ 0)))
                                              (_tl7896378985_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80269_ 1))))
                                          (if (gx#stx-null? _tl7896378985_)
                                              (letrec ((_loop7896478988_
                                                        (lambda (_hd7896278992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7896878995_)
                  (if (gx#stx-pair? _hd7896278992_)
                      (let ((_e7896578998_ (gx#syntax-e _hd7896278992_)))
                        (let ((_lp-hd7896679002_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7896578998_)))
                              (_lp-tl7896779005_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7896578998_))))
                          (_loop7896478988_
                           _lp-tl7896779005_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7896679002_ _bind-try7896878995_)))))
                      (let ((_bind-try7896979008_
                             (reverse _bind-try7896878995_)))
                        ((lambda (_L79012_)
                           (let ()
                             (let* ((_g7903079038_
                                     (lambda (_g7903179034_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7903179034_)))
                                    (_g7902979068_
                                     (lambda (_g7903179042_)
                                       ((lambda (_L79045_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp80276
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp80271
                                                     (let ((__tmp80274
                                                            (let ((__tmp80275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7905979062_ _g7906079065_)
                             (let ()
                               (declare (not safe))
                               (cons _g7905979062_ _g7906079065_)))))
                      (declare (not safe))
                      (foldr1 __tmp80275 '() _L79012_)))
                   (__tmp80272
                    (let ((__tmp80273
                           (let () (declare (not safe)) (cons _L79045_ '()))))
                      (declare (not safe))
                      (cons __tmp80273 '()))))
               (declare (not safe))
               (cons __tmp80274 __tmp80272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80276
                                                      __tmp80271)))))
                                        _g7903179042_))))
                               (_g7902979068_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind78955_)))))))
                         _bind-try7896979008_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7896478988_
                                                 _target7896178982_
                                                 '()))
                                              (_g7895878975_ _g7895978979_)))))
                                    (_g7895878975_ _g7895978979_)))))
                        (_g7895779072_ _bind78955_))))))
          (let* ((_g7879978818_
                  (lambda (_g7880078814_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7880078814_)))
                 (_g7879878941_
                  (lambda (_g7880078822_)
                    (if (gx#stx-pair? _g7880078822_)
                        (let ((_e7880678825_ (gx#syntax-e _g7880078822_)))
                          (let ((_hd7880578829_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7880678825_)))
                                (_tl7880478832_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7880678825_))))
                            (if (gx#stx-pair? _tl7880478832_)
                                (let ((_e7880978835_
                                       (gx#syntax-e _tl7880478832_)))
                                  (let ((_hd7880878839_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7880978835_)))
                                        (_tl7880778842_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7880978835_))))
                                    (if (gx#stx-pair? _tl7880778842_)
                                        (let ((_e7881278845_
                                               (gx#syntax-e _tl7880778842_)))
                                          (let ((_hd7881178849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7881278845_)))
                                                (_tl7881078852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7881278845_))))
                                            ((lambda (_L78855_
                                                      _L78857_
                                                      _L78858_)
                                               (if (and (gx#identifier-list?
                                                         _L78857_)
                                                        (gx#stx-list?
                                                         _L78855_))
                                                   (let* ((_g7887678884_
                                                           (lambda (_g7887778880_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7887778880_)))
                                                          (_g7887578937_
                                                           (lambda (_g7887778888_)
                                                             ((lambda (_L78891_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7890378911_
                                  (lambda (_g7890478907_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7890478907_)))
                                 (_g7890278933_
                                  (lambda (_g7890478915_)
                                    ((lambda (_L78918_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp80282
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp80277
                                                  (let ((__tmp80279
                                                         (let ((__tmp80280
                                                                (let ((__tmp80281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78858_ '()))))
                          (declare (not safe))
                          (cons _L78891_ __tmp80281))))
                   (declare (not safe))
                   (cons __tmp80280 '())))
                (__tmp80278 (let () (declare (not safe)) (cons _L78918_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80279
                                                          __tmp80278))))
                                             (declare (not safe))
                                             (cons __tmp80282 __tmp80277)))))
                                     _g7890478915_))))
                            (_g7890278933_
                             (_generate78796_
                              _L78891_
                              (gx#syntax->list _L78857_)
                              _L78855_)))))
                      _g7887778888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7887578937_
                                                      (gx#genident 'e)))
                                                   (_g7879978818_
                                                    _g7880078822_)))
                                             _tl7881078852_
                                             _hd7881178849_
                                             _hd7880878839_)))
                                        (_g7879978818_ _g7880078822_))))
                                (_g7879978818_ _g7880078822_))))
                        (_g7879978818_ _g7880078822_)))))
            (_g7879878941_ _stx78793_)))))))
