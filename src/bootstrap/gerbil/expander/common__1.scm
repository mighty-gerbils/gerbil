(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g80116_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80118_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80120_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80125_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80128_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80133_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80136_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80141_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80144_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80149_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80152_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80259_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj80111
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
           __obj80111
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80115 |gx[1]#_g80116_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           __tmp80115
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80117 |gx[1]#_g80118_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           __tmp80117
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80119 |gx[1]#_g80120_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           __tmp80119
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80121
               (let ((__tmp80126
                      (let ((__tmp80127 |gx[1]#_g80128_|))
                        (declare (not safe))
                        (cons 'e __tmp80127)))
                     (__tmp80122
                      (let ((__tmp80123
                             (let ((__tmp80124 |gx[1]#_g80125_|))
                               (declare (not safe))
                               (cons 'source __tmp80124))))
                        (declare (not safe))
                        (cons __tmp80123 '()))))
                 (declare (not safe))
                 (cons __tmp80126 __tmp80122))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80111
           __tmp80121
           '12
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
           __obj80111
           __tmp80129
           '13
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
           __obj80111
           __tmp80137
           '14
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
           __obj80111
           __tmp80145
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj80111))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78731_)
        (let* ((_g7873578749_
                (lambda (_g7873678745_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7873678745_)))
               (_g7873478791_
                (lambda (_g7873678753_)
                  (if (gx#stx-pair? _g7873678753_)
                      (let ((_e7874078756_ (gx#syntax-e _g7873678753_)))
                        (let ((_hd7873978760_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7874078756_)))
                              (_tl7873878763_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7874078756_))))
                          (if (gx#stx-pair? _tl7873878763_)
                              (let ((_e7874378766_
                                     (gx#syntax-e _tl7873878763_)))
                                (let ((_hd7874278770_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7874378766_)))
                                      (_tl7874178773_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7874378766_))))
                                  (if (gx#stx-null? _tl7874178773_)
                                      ((lambda (_L78776_)
                                         (let ((__tmp80162
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp80153
                                                (let ((__tmp80159
                                                       (let ((__tmp80161
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp80160
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78776_ '()))))
                 (declare (not safe))
                 (cons __tmp80161 __tmp80160)))
              (__tmp80154
               (let ((__tmp80155
                      (let ((__tmp80158 (gx#datum->syntax '#f 'error))
                            (__tmp80156
                             (let ((__tmp80157
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78776_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp80157))))
                        (declare (not safe))
                        (cons __tmp80158 __tmp80156))))
                 (declare (not safe))
                 (cons __tmp80155 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80159
                                                        __tmp80154))))
                                           (declare (not safe))
                                           (cons __tmp80162 __tmp80153)))
                                       _hd7874278770_)
                                      (_g7873578749_ _g7873678753_))))
                              (_g7873578749_ _g7873678753_))))
                      (_g7873578749_ _g7873678753_)))))
          (_g7873478791_ _$stx78731_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78795_)
        (letrec ((_generate78798_
                  (lambda (_tgt78947_ _kws78949_ _clauses78950_)
                    (letrec ((_generate-clause78952_
                              (lambda (_hd79862_ _E79864_)
                                (let* ((___stx8001480015_ _hd79862_)
                                       (_g7986879895_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8001480015_))))
                                  (let ((___kont8001780018_
                                         (lambda (_L79991_ _L79993_)
                                           (_generate178954_
                                            _hd79862_
                                            _L79993_
                                            '#t
                                            _L79991_
                                            _E79864_)))
                                        (___kont8001980020_
                                         (lambda (_L79943_ _L79945_ _L79946_)
                                           (_generate178954_
                                            _hd79862_
                                            _L79946_
                                            _L79945_
                                            _L79943_
                                            _E79864_)))
                                        (___kont8002180022_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78795_
                                            _hd79862_))))
                                    (if (gx#stx-pair? ___stx8001480015_)
                                        (let ((_e7987479971_
                                               (gx#syntax-e
                                                ___stx8001480015_)))
                                          (let ((_tl7987279978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7987479971_)))
                                                (_hd7987379975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7987479971_))))
                                            (if (gx#stx-pair? _tl7987279978_)
                                                (let ((_e7987779981_
                                                       (gx#syntax-e
                                                        _tl7987279978_)))
                                                  (let ((_tl7987579988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7987779981_)))
                                                        (_hd7987679985_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7987779981_))))
                                                    (if (gx#stx-null?
                                                         _tl7987579988_)
                                                        (___kont8001780018_
                                                         _hd7987679985_
                                                         _hd7987379975_)
                                                        (if (gx#stx-pair?
                                                             _tl7987579988_)
                                                            (let ((_e7988979933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7987579988_)))
                      (let ((_tl7988779940_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7988979933_)))
                            (_hd7988879937_
                             (let ()
                               (declare (not safe))
                               (##car _e7988979933_))))
                        (if (gx#stx-null? _tl7988779940_)
                            (___kont8001980020_
                             _hd7988879937_
                             _hd7987679985_
                             _hd7987379975_)
                            (___kont8002180022_))))
                    (___kont8002180022_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8002180022_))))
                                        (___kont8002180022_))))))
                             (_generate178954_
                              (lambda (_where79340_
                                       _hd79342_
                                       _fender79343_
                                       _body79344_
                                       _E79345_)
                                (letrec ((_recur79347_
                                          (lambda (_hd79350_
                                                   _tgt79352_
                                                   _K79353_)
                                            (let* ((___stx8006080061_
                                                    _hd79350_)
                                                   (_g7935679368_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8006080061_))))
                                              (let ((___kont8006380064_
                                                     (lambda (_L79652_
                                                              _L79654_)
                                                       (let* ((_g7966579673_
                                                               (lambda (_g7966679669_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7966679669_)))
                      (_g7966479854_
                       (lambda (_g7966679677_)
                         ((lambda (_L79680_)
                            (let ()
                              (let* ((_g7969279700_
                                      (lambda (_g7969379696_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7969379696_)))
                                     (_g7969179850_
                                      (lambda (_g7969379704_)
                                        ((lambda (_L79707_)
                                           (let ()
                                             (let* ((_g7972079728_
                                                     (lambda (_g7972179724_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7972179724_)))
                                                    (_g7971979846_
                                                     (lambda (_g7972179732_)
                                                       ((lambda (_L79735_)
                                                          (let ()
                                                            (let* ((_g7974879756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7974979752_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7974979752_)))
                           (_g7974779842_
                            (lambda (_g7974979760_)
                              ((lambda (_L79763_)
                                 (let ()
                                   (let* ((_g7977679784_
                                           (lambda (_g7977779780_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7977779780_)))
                                          (_g7977579838_
                                           (lambda (_g7977779788_)
                                             ((lambda (_L79791_)
                                                (let ()
                                                  (let* ((_g7980479812_
                                                          (lambda (_g7980579808_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7980579808_)))
                                                         (_g7980379834_
                                                          (lambda (_g7980579816_)
                                                            ((lambda (_L79819_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp80195 (gx#datum->syntax '#f 'if))
                                 (__tmp80163
                                  (let ((__tmp80192
                                         (let ((__tmp80194
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp80193
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79680_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80194 __tmp80193)))
                                        (__tmp80164
                                         (let ((__tmp80166
                                                (let ((__tmp80191
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp80167
                                                       (let ((__tmp80185
                                                              (let ((__tmp80186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp80187
                                    (let ((__tmp80188
                                           (let ((__tmp80190
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp80189
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79680_ '()))))
                                             (declare (not safe))
                                             (cons __tmp80190 __tmp80189))))
                                      (declare (not safe))
                                      (cons __tmp80188 '()))))
                               (declare (not safe))
                               (cons _L79707_ __tmp80187))))
                        (declare (not safe))
                        (cons __tmp80186 '())))
                     (__tmp80168
                      (let ((__tmp80169
                             (let ((__tmp80184 (gx#datum->syntax '#f 'let))
                                   (__tmp80170
                                    (let ((__tmp80172
                                           (let ((__tmp80179
                                                  (let ((__tmp80180
                                                         (let ((__tmp80181
                                                                (let ((__tmp80183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp80182
                               (let ()
                                 (declare (not safe))
                                 (cons _L79707_ '()))))
                          (declare (not safe))
                          (cons __tmp80183 __tmp80182))))
                   (declare (not safe))
                   (cons __tmp80181 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79735_
                                                          __tmp80180)))
                                                 (__tmp80173
                                                  (let ((__tmp80174
                                                         (let ((__tmp80175
                                                                (let ((__tmp80176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80178 (gx#datum->syntax '#f '##cdr))
                                     (__tmp80177
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79707_ '()))))
                                 (declare (not safe))
                                 (cons __tmp80178 __tmp80177))))
                          (declare (not safe))
                          (cons __tmp80176 '()))))
                   (declare (not safe))
                   (cons _L79763_ __tmp80175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80174 '()))))
                                             (declare (not safe))
                                             (cons __tmp80179 __tmp80173)))
                                          (__tmp80171
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79791_ '()))))
                                      (declare (not safe))
                                      (cons __tmp80172 __tmp80171))))
                               (declare (not safe))
                               (cons __tmp80184 __tmp80170))))
                        (declare (not safe))
                        (cons __tmp80169 '()))))
                 (declare (not safe))
                 (cons __tmp80185 __tmp80168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80191
                                                        __tmp80167)))
                                               (__tmp80165
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79819_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80166 __tmp80165))))
                                    (declare (not safe))
                                    (cons __tmp80192 __tmp80164))))
                             (declare (not safe))
                             (cons __tmp80195 __tmp80163)))))
                     _g7980579816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7980379834_ _E79345_))))
                                              _g7977779788_))))
                                     (_g7977579838_
                                      (_recur79347_
                                       _L79654_
                                       _L79735_
                                       (_recur79347_
                                        _L79652_
                                        _L79763_
                                        _K79353_))))))
                               _g7974979760_))))
                      (_g7974779842_ (gx#genident 'tl)))))
                _g7972179732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7971979846_
                                                (gx#genident 'hd)))))
                                         _g7969379704_))))
                                (_g7969179850_ (gx#genident 'e)))))
                          _g7966679677_))))
                 (_g7966479854_ _tgt79352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8006580066_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd79350_)
                                                           (if (gx#underscore?
                                                                _hd79350_)
                                                               _K79353_
                                                               (if (let ((__tmp80240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7937879380_)
                                    (gx#bound-identifier=?
                                     _g7937879380_
                                     _hd79350_))))
                             (declare (not safe))
                             (find __tmp80240 _kws78949_))
                           (let* ((_g7938479399_
                                   (lambda (_g7938579395_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7938579395_)))
                                  (_g7938379450_
                                   (lambda (_g7938579403_)
                                     (if (gx#stx-pair? _g7938579403_)
                                         (let ((_e7939079406_
                                                (gx#syntax-e _g7938579403_)))
                                           (let ((_hd7938979410_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7939079406_)))
                                                 (_tl7938879413_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7939079406_))))
                                             (if (gx#stx-pair? _tl7938879413_)
                                                 (let ((_e7939379416_
                                                        (gx#syntax-e
                                                         _tl7938879413_)))
                                                   (let ((_hd7939279420_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7939379416_)))
                                                         (_tl7939179423_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7939379416_))))
                                                     (if (gx#stx-null?
                                                          _tl7939179423_)
                                                         ((lambda (_L79426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79428_)
                    (let ()
                      (let ((__tmp80239 (gx#datum->syntax '#f 'if))
                            (__tmp80222
                             (let ((__tmp80225
                                    (let ((__tmp80238
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp80226
                                           (let ((__tmp80235
                                                  (let ((__tmp80237
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp80236
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80237
                                                          __tmp80236)))
                                                 (__tmp80227
                                                  (let ((__tmp80228
                                                         (let ((__tmp80234
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp80229
                        (let ((__tmp80230
                               (let ((__tmp80231
                                      (let ((__tmp80233
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp80232
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79426_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80233 __tmp80232))))
                                 (declare (not safe))
                                 (cons __tmp80231 '()))))
                          (declare (not safe))
                          (cons _L79428_ __tmp80230))))
                   (declare (not safe))
                   (cons __tmp80234 __tmp80229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80228 '()))))
                                             (declare (not safe))
                                             (cons __tmp80235 __tmp80227))))
                                      (declare (not safe))
                                      (cons __tmp80238 __tmp80226)))
                                   (__tmp80223
                                    (let ((__tmp80224
                                           (let ()
                                             (declare (not safe))
                                             (cons _E79345_ '()))))
                                      (declare (not safe))
                                      (cons _K79353_ __tmp80224))))
                               (declare (not safe))
                               (cons __tmp80225 __tmp80223))))
                        (declare (not safe))
                        (cons __tmp80239 __tmp80222))))
                  _hd7939279420_
                  _hd7938979410_)
                 (_g7938479399_ _g7938579403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7938479399_
                                                  _g7938579403_))))
                                         (_g7938479399_ _g7938579403_)))))
                             (_g7938379450_ (list _tgt79352_ _hd79350_)))
                           (let* ((_g7945479469_
                                   (lambda (_g7945579465_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7945579465_)))
                                  (_g7945379513_
                                   (lambda (_g7945579473_)
                                     (if (gx#stx-pair? _g7945579473_)
                                         (let ((_e7946079476_
                                                (gx#syntax-e _g7945579473_)))
                                           (let ((_hd7945979480_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7946079476_)))
                                                 (_tl7945879483_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7946079476_))))
                                             (if (gx#stx-pair? _tl7945879483_)
                                                 (let ((_e7946379486_
                                                        (gx#syntax-e
                                                         _tl7945879483_)))
                                                   (let ((_hd7946279490_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7946379486_)))
                                                         (_tl7946179493_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7946379486_))))
                                                     (if (gx#stx-null?
                                                          _tl7946179493_)
                                                         ((lambda (_L79496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79498_)
                    (let ()
                      (let ((__tmp80221 (gx#datum->syntax '#f 'let))
                            (__tmp80216
                             (let ((__tmp80218
                                    (let ((__tmp80219
                                           (let ((__tmp80220
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79498_ '()))))
                                             (declare (not safe))
                                             (cons _L79496_ __tmp80220))))
                                      (declare (not safe))
                                      (cons __tmp80219 '())))
                                   (__tmp80217
                                    (let ()
                                      (declare (not safe))
                                      (cons _K79353_ '()))))
                               (declare (not safe))
                               (cons __tmp80218 __tmp80217))))
                        (declare (not safe))
                        (cons __tmp80221 __tmp80216))))
                  _hd7946279490_
                  _hd7945979480_)
                 (_g7945479469_ _g7945579473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7945479469_
                                                  _g7945579473_))))
                                         (_g7945479469_ _g7945579473_)))))
                             (_g7945379513_ (list _tgt79352_ _hd79350_)))))
                   (if (gx#stx-null? _hd79350_)
                       (let* ((_g7951779525_
                               (lambda (_g7951879521_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7951879521_)))
                              (_g7951679543_
                               (lambda (_g7951879529_)
                                 ((lambda (_L79532_)
                                    (let ()
                                      (let ((__tmp80215
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp80209
                                             (let ((__tmp80212
                                                    (let ((__tmp80214
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp80213
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp80214 __tmp80213)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp80210
                                                    (let ((__tmp80211
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E79345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K79353_ __tmp80211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp80212 __tmp80210))))
                                        (declare (not safe))
                                        (cons __tmp80215 __tmp80209))))
                                  _g7951879529_))))
                         (_g7951679543_ _tgt79352_))
                       (if (gx#stx-datum? _hd79350_)
                           (let* ((_g7954779566_
                                   (lambda (_g7954879562_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7954879562_)))
                                  (_g7954679624_
                                   (lambda (_g7954879570_)
                                     (if (gx#stx-pair? _g7954879570_)
                                         (let ((_e7955479573_
                                                (gx#syntax-e _g7954879570_)))
                                           (let ((_hd7955379577_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7955479573_)))
                                                 (_tl7955279580_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7955479573_))))
                                             (if (gx#stx-pair? _tl7955279580_)
                                                 (let ((_e7955779583_
                                                        (gx#syntax-e
                                                         _tl7955279580_)))
                                                   (let ((_hd7955679587_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7955779583_)))
                                                         (_tl7955579590_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7955779583_))))
                                                     (if (gx#stx-pair?
                                                          _tl7955579590_)
                                                         (let ((_e7956079593_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7955579590_)))
                   (let ((_hd7955979597_
                          (let () (declare (not safe)) (##car _e7956079593_)))
                         (_tl7955879600_
                          (let () (declare (not safe)) (##cdr _e7956079593_))))
                     (if (gx#stx-null? _tl7955879600_)
                         ((lambda (_L79603_ _L79605_ _L79606_)
                            (let ()
                              (let ((__tmp80208 (gx#datum->syntax '#f 'if))
                                    (__tmp80196
                                     (let ((__tmp80199
                                            (let ((__tmp80200
                                                   (let ((__tmp80205
                                                          (let ((__tmp80207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp80206
                         (let () (declare (not safe)) (cons _L79606_ '()))))
                    (declare (not safe))
                    (cons __tmp80207 __tmp80206)))
                 (__tmp80201
                  (let ((__tmp80202
                         (let ((__tmp80204 (gx#datum->syntax '#f 'quote))
                               (__tmp80203
                                (let ()
                                  (declare (not safe))
                                  (cons _L79605_ '()))))
                           (declare (not safe))
                           (cons __tmp80204 __tmp80203))))
                    (declare (not safe))
                    (cons __tmp80202 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp80205
                                                           __tmp80201))))
                                              (declare (not safe))
                                              (cons _L79603_ __tmp80200)))
                                           (__tmp80197
                                            (let ((__tmp80198
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E79345_ '()))))
                                              (declare (not safe))
                                              (cons _K79353_ __tmp80198))))
                                       (declare (not safe))
                                       (cons __tmp80199 __tmp80197))))
                                (declare (not safe))
                                (cons __tmp80208 __tmp80196))))
                          _hd7955979597_
                          _hd7955679587_
                          _hd7955379577_)
                         (_g7954779566_ _g7954879570_))))
                 (_g7954779566_ _g7954879570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7954779566_
                                                  _g7954879570_))))
                                         (_g7954779566_ _g7954879570_)))))
                             (_g7954679624_
                              (list _tgt79352_
                                    _hd79350_
                                    (let ((_e79628_ (gx#stx-e _hd79350_)))
                                      (if (or (keyword? _e79628_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79628_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79628_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78795_
                            _where79340_
                            _hd79350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8006080061_)
                                                    (let ((_e7936279642_
                                                           (gx#syntax-e
                                                            ___stx8006080061_)))
                                                      (let ((_tl7936079649_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7936279642_)))
                    (_hd7936179646_
                     (let () (declare (not safe)) (##car _e7936279642_))))
                (___kont8006380064_ _tl7936079649_ _hd7936179646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8006580066_)))))))
                                  (_recur79347_
                                   _hd79342_
                                   _tgt78947_
                                   (let ((__tmp80244
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp80241
                                          (let ((__tmp80242
                                                 (let ((__tmp80243
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E79345_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body79344_
                                                         __tmp80243))))
                                            (declare (not safe))
                                            (cons _fender79343_ __tmp80242))))
                                     (declare (not safe))
                                     (cons __tmp80244 __tmp80241))))))
                             (_generate-clauses78955_
                              (lambda (_clauses79078_)
                                (let _lp79081_ ((_rest79084_ _clauses79078_)
                                                (_E79086_ (gx#genident 'E))
                                                (_r79087_ '()))
                                  (let* ((___stx8009680097_ _rest79084_)
                                         (_g7909079102_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8009680097_))))
                                    (let ((___kont8009980100_
                                           (lambda (_L79167_ _L79169_)
                                             (let* ((___stx8007680077_
                                                     _L79169_)
                                                    (_g7918179192_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8007680077_))))
                                               (let ((___kont8007980080_
                                                      (lambda (_L79321_)
                                                        (if (gx#stx-null?
                                                             _L79167_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L79321_)
                             (let ((__tmp80253 (gx#stx-null? _L79321_)))
                               (declare (not safe))
                               (not __tmp80253)))
                        (let ((__tmp80245
                               (let ((__tmp80246
                                      (let ((__tmp80247
                                             (gx#stx-wrap-source
                                              (let ((__tmp80252
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp80248
                                                     (let ((__tmp80249
                                                            (let ((__tmp80250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80251 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp80251 _L79321_))))
                      (declare (not safe))
                      (cons __tmp80250 '()))))
               (declare (not safe))
               (cons '() __tmp80249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80252 __tmp80248))
                                              (gx#stx-source _L79169_))))
                                        (declare (not safe))
                                        (cons __tmp80247 '()))))
                                 (declare (not safe))
                                 (cons _E79086_ __tmp80246))))
                          (declare (not safe))
                          (cons __tmp80245 _r79087_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78795_
                         _L79169_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78795_
                     _L79169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8008180082_
                                                      (lambda ()
                                                        (let* ((_g7920379211_
                                                                (lambda (_g7920479207_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7920479207_)))
                       (_g7920279300_
                        (lambda (_g7920479215_)
                          ((lambda (_L79218_)
                             (let ()
                               (let* ((_g7923479242_
                                       (lambda (_g7923579238_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7923579238_)))
                                      (_g7923379296_
                                       (lambda (_g7923579246_)
                                         ((lambda (_L79249_)
                                            (let ()
                                              (let* ((_g7926279270_
                                                      (lambda (_g7926379266_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7926379266_)))
                                                     (_g7926179292_
                                                      (lambda (_g7926379274_)
                                                        ((lambda (_L79277_)
                                                           (let ()
                                                             (let ()
                                                               (_lp79081_
                                                                _L79167_
                                                                _L79218_
                                                                (let ((__tmp80254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80255
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79277_ '()))))
                                 (declare (not safe))
                                 (cons _E79086_ __tmp80255))))
                          (declare (not safe))
                          (cons __tmp80254 _r79087_))))))
                 _g7926379274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7926179292_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp80258
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp80256
                                                         (let ((__tmp80257
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L79249_ '()))))
                   (declare (not safe))
                   (cons '() __tmp80257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80258
                                                          __tmp80256))
                                                  (gx#stx-source _L79169_))))))
                                          _g7923579246_))))
                                 (_g7923379296_
                                  (_generate-clause78952_
                                   _L79169_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L79218_ '())))))))
                           _g7920479215_))))
                  (_g7920279300_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8007680077_)
                                                     (let ((_e7918679311_
                                                            (gx#syntax-e
                                                             ___stx8007680077_)))
                                                       (let ((_tl7918479318_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7918679311_)))
                     (_hd7918579315_
                      (let () (declare (not safe)) (##car _e7918679311_))))
                 (if (gx#identifier? _hd7918579315_)
                     (if (gx#free-identifier=? |gx[1]#_g80259_| _hd7918579315_)
                         (___kont8007980080_ _tl7918479318_)
                         (___kont8008180082_))
                     (___kont8008180082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8008180082_))))))
                                          (___kont8010180102_
                                           (lambda ()
                                             (let* ((_g7911379121_
                                                     (lambda (_g7911479117_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7911479117_)))
                                                    (_g7911279146_
                                                     (lambda (_g7911479125_)
                                                       ((lambda (_L79128_)
                                                          (let ()
                                                            (let ((__tmp80260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80261
                                  (let ((__tmp80262
                                         (gx#stx-wrap-source
                                          (let ((__tmp80270
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp80263
                                                 (let ((__tmp80264
                                                        (let ((__tmp80265
                                                               (let ((__tmp80269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp80266
                              (let ((__tmp80267
                                     (let ((__tmp80268
                                            (let ()
                                              (declare (not safe))
                                              (cons _L79128_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp80268))))
                                (declare (not safe))
                                (cons '#f __tmp80267))))
                         (declare (not safe))
                         (cons __tmp80269 __tmp80266))))
                  (declare (not safe))
                  (cons __tmp80265 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp80264))))
                                            (declare (not safe))
                                            (cons __tmp80270 __tmp80263))
                                          (gx#stx-source _stx78795_))))
                                    (declare (not safe))
                                    (cons __tmp80262 '()))))
                             (declare (not safe))
                             (cons _E79086_ __tmp80261))))
                      (declare (not safe))
                      (cons __tmp80260 _r79087_))))
                _g7911479125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7911279146_ _tgt78947_)))))
                                      (if (gx#stx-pair? ___stx8009680097_)
                                          (let ((_e7909679157_
                                                 (gx#syntax-e
                                                  ___stx8009680097_)))
                                            (let ((_tl7909479164_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7909679157_)))
                                                  (_hd7909579161_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7909679157_))))
                                              (___kont8009980100_
                                               _tl7909479164_
                                               _hd7909579161_)))
                                          (___kont8010180102_))))))))
                      (let* ((_bind78957_
                              (_generate-clauses78955_ _clauses78950_))
                             (_g7896078977_
                              (lambda (_g7896178973_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7896178973_)))
                             (_g7895979074_
                              (lambda (_g7896178981_)
                                (if (gx#stx-pair/null? _g7896178981_)
                                    (let ((_g80271_
                                           (gx#syntax-split-splice
                                            _g7896178981_
                                            '0)))
                                      (begin
                                        (let ((_g80272_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g80271_)
                                                     (##vector-length _g80271_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g80272_ 2)))
                                              (error "Context expects 2 values"
                                                     _g80272_)))
                                        (let ((_target7896378984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80271_ 0)))
                                              (_tl7896578987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80271_ 1))))
                                          (if (gx#stx-null? _tl7896578987_)
                                              (letrec ((_loop7896678990_
                                                        (lambda (_hd7896478994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7897078997_)
                  (if (gx#stx-pair? _hd7896478994_)
                      (let ((_e7896779000_ (gx#syntax-e _hd7896478994_)))
                        (let ((_lp-hd7896879004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7896779000_)))
                              (_lp-tl7896979007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7896779000_))))
                          (_loop7896678990_
                           _lp-tl7896979007_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7896879004_ _bind-try7897078997_)))))
                      (let ((_bind-try7897179010_
                             (reverse _bind-try7897078997_)))
                        ((lambda (_L79014_)
                           (let ()
                             (let* ((_g7903279040_
                                     (lambda (_g7903379036_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7903379036_)))
                                    (_g7903179070_
                                     (lambda (_g7903379044_)
                                       ((lambda (_L79047_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp80278
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp80273
                                                     (let ((__tmp80276
                                                            (let ((__tmp80277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7906179064_ _g7906279067_)
                             (let ()
                               (declare (not safe))
                               (cons _g7906179064_ _g7906279067_)))))
                      (declare (not safe))
                      (foldr1 __tmp80277 '() _L79014_)))
                   (__tmp80274
                    (let ((__tmp80275
                           (let () (declare (not safe)) (cons _L79047_ '()))))
                      (declare (not safe))
                      (cons __tmp80275 '()))))
               (declare (not safe))
               (cons __tmp80276 __tmp80274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80278
                                                      __tmp80273)))))
                                        _g7903379044_))))
                               (_g7903179070_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind78957_)))))))
                         _bind-try7897179010_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7896678990_
                                                 _target7896378984_
                                                 '()))
                                              (_g7896078977_ _g7896178981_)))))
                                    (_g7896078977_ _g7896178981_)))))
                        (_g7895979074_ _bind78957_))))))
          (let* ((_g7880178820_
                  (lambda (_g7880278816_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7880278816_)))
                 (_g7880078943_
                  (lambda (_g7880278824_)
                    (if (gx#stx-pair? _g7880278824_)
                        (let ((_e7880878827_ (gx#syntax-e _g7880278824_)))
                          (let ((_hd7880778831_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7880878827_)))
                                (_tl7880678834_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7880878827_))))
                            (if (gx#stx-pair? _tl7880678834_)
                                (let ((_e7881178837_
                                       (gx#syntax-e _tl7880678834_)))
                                  (let ((_hd7881078841_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7881178837_)))
                                        (_tl7880978844_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7881178837_))))
                                    (if (gx#stx-pair? _tl7880978844_)
                                        (let ((_e7881478847_
                                               (gx#syntax-e _tl7880978844_)))
                                          (let ((_hd7881378851_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7881478847_)))
                                                (_tl7881278854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7881478847_))))
                                            ((lambda (_L78857_
                                                      _L78859_
                                                      _L78860_)
                                               (if (and (gx#identifier-list?
                                                         _L78859_)
                                                        (gx#stx-list?
                                                         _L78857_))
                                                   (let* ((_g7887878886_
                                                           (lambda (_g7887978882_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7887978882_)))
                                                          (_g7887778939_
                                                           (lambda (_g7887978890_)
                                                             ((lambda (_L78893_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7890578913_
                                  (lambda (_g7890678909_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7890678909_)))
                                 (_g7890478935_
                                  (lambda (_g7890678917_)
                                    ((lambda (_L78920_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp80284
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp80279
                                                  (let ((__tmp80281
                                                         (let ((__tmp80282
                                                                (let ((__tmp80283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78860_ '()))))
                          (declare (not safe))
                          (cons _L78893_ __tmp80283))))
                   (declare (not safe))
                   (cons __tmp80282 '())))
                (__tmp80280 (let () (declare (not safe)) (cons _L78920_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80281
                                                          __tmp80280))))
                                             (declare (not safe))
                                             (cons __tmp80284 __tmp80279)))))
                                     _g7890678917_))))
                            (_g7890478935_
                             (_generate78798_
                              _L78893_
                              (gx#syntax->list _L78859_)
                              _L78857_)))))
                      _g7887978890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7887778939_
                                                      (gx#genident 'e)))
                                                   (_g7880178820_
                                                    _g7880278824_)))
                                             _tl7881278854_
                                             _hd7881378851_
                                             _hd7881078841_)))
                                        (_g7880178820_ _g7880278824_))))
                                (_g7880178820_ _g7880278824_))))
                        (_g7880178820_ _g7880278824_)))))
            (_g7880078943_ _stx78795_)))))))
