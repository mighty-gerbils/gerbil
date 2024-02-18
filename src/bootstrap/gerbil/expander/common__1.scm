(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g148021_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148023_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148025_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148030_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148033_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148038_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148041_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148046_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148049_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148054_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148057_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148164_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj148016
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
           __obj148016
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148020 |gx[1]#_g148021_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           __tmp148020
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148022 |gx[1]#_g148023_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           __tmp148022
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148024 |gx[1]#_g148025_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           __tmp148024
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148026
               (let ((__tmp148031
                      (let ((__tmp148032 |gx[1]#_g148033_|))
                        (declare (not safe))
                        (cons 'e __tmp148032)))
                     (__tmp148027
                      (let ((__tmp148028
                             (let ((__tmp148029 |gx[1]#_g148030_|))
                               (declare (not safe))
                               (cons 'source __tmp148029))))
                        (declare (not safe))
                        (cons __tmp148028 '()))))
                 (declare (not safe))
                 (cons __tmp148031 __tmp148027))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           __tmp148026
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148034
               (let ((__tmp148039
                      (let ((__tmp148040 |gx[1]#_g148041_|))
                        (declare (not safe))
                        (cons 'e __tmp148040)))
                     (__tmp148035
                      (let ((__tmp148036
                             (let ((__tmp148037 |gx[1]#_g148038_|))
                               (declare (not safe))
                               (cons 'source __tmp148037))))
                        (declare (not safe))
                        (cons __tmp148036 '()))))
                 (declare (not safe))
                 (cons __tmp148039 __tmp148035))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           __tmp148034
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148042
               (let ((__tmp148047
                      (let ((__tmp148048 |gx[1]#_g148049_|))
                        (declare (not safe))
                        (cons 'e __tmp148048)))
                     (__tmp148043
                      (let ((__tmp148044
                             (let ((__tmp148045 |gx[1]#_g148046_|))
                               (declare (not safe))
                               (cons 'source __tmp148045))))
                        (declare (not safe))
                        (cons __tmp148044 '()))))
                 (declare (not safe))
                 (cons __tmp148047 __tmp148043))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           __tmp148042
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148050
               (let ((__tmp148055
                      (let ((__tmp148056 |gx[1]#_g148057_|))
                        (declare (not safe))
                        (cons 'e __tmp148056)))
                     (__tmp148051
                      (let ((__tmp148052
                             (let ((__tmp148053 |gx[1]#_g148054_|))
                               (declare (not safe))
                               (cons 'source __tmp148053))))
                        (declare (not safe))
                        (cons __tmp148052 '()))))
                 (declare (not safe))
                 (cons __tmp148055 __tmp148051))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148016
           __tmp148050
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj148016))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx142569_)
        (let* ((_g142573142587_
                (lambda (_g142574142583_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g142574142583_)))
               (_g142572142629_
                (lambda (_g142574142591_)
                  (if (gx#stx-pair? _g142574142591_)
                      (let ((_e142578142594_ (gx#syntax-e _g142574142591_)))
                        (let ((_hd142577142598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e142578142594_)))
                              (_tl142576142601_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e142578142594_))))
                          (if (gx#stx-pair? _tl142576142601_)
                              (let ((_e142581142604_
                                     (gx#syntax-e _tl142576142601_)))
                                (let ((_hd142580142608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e142581142604_)))
                                      (_tl142579142611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e142581142604_))))
                                  (if (gx#stx-null? _tl142579142611_)
                                      ((lambda (_L142614_)
                                         (let ((__tmp148067
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp148058
                                                (let ((__tmp148064
                                                       (let ((__tmp148066
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp148065
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L142614_ '()))))
                 (declare (not safe))
                 (cons __tmp148066 __tmp148065)))
              (__tmp148059
               (let ((__tmp148060
                      (let ((__tmp148063 (gx#datum->syntax '#f 'error))
                            (__tmp148061
                             (let ((__tmp148062
                                    (let ()
                                      (declare (not safe))
                                      (cons _L142614_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp148062))))
                        (declare (not safe))
                        (cons __tmp148063 __tmp148061))))
                 (declare (not safe))
                 (cons __tmp148060 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp148064
                                                        __tmp148059))))
                                           (declare (not safe))
                                           (cons __tmp148067 __tmp148058)))
                                       _hd142580142608_)
                                      (_g142573142587_ _g142574142591_))))
                              (_g142573142587_ _g142574142591_))))
                      (_g142573142587_ _g142574142591_)))))
          (_g142572142629_ _$stx142569_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx142633_)
        (letrec ((_generate142636_
                  (lambda (_tgt142785_ _kws142787_ _clauses142788_)
                    (letrec ((_generate-clause142790_
                              (lambda (_hd143700_ _E143702_)
                                (let* ((___stx147919147920_ _hd143700_)
                                       (_g143706143733_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx147919147920_))))
                                  (let ((___kont147922147923_
                                         (lambda (_L143829_ _L143831_)
                                           (_generate1142792_
                                            _hd143700_
                                            _L143831_
                                            '#t
                                            _L143829_
                                            _E143702_)))
                                        (___kont147924147925_
                                         (lambda (_L143781_
                                                  _L143783_
                                                  _L143784_)
                                           (_generate1142792_
                                            _hd143700_
                                            _L143784_
                                            _L143783_
                                            _L143781_
                                            _E143702_)))
                                        (___kont147926147927_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx142633_
                                            _hd143700_))))
                                    (if (gx#stx-pair? ___stx147919147920_)
                                        (let ((_e143712143809_
                                               (gx#syntax-e
                                                ___stx147919147920_)))
                                          (let ((_tl143710143816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e143712143809_)))
                                                (_hd143711143813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e143712143809_))))
                                            (if (gx#stx-pair? _tl143710143816_)
                                                (let ((_e143715143819_
                                                       (gx#syntax-e
                                                        _tl143710143816_)))
                                                  (let ((_tl143713143826_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e143715143819_)))
                                                        (_hd143714143823_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e143715143819_))))
                                                    (if (gx#stx-null?
                                                         _tl143713143826_)
                                                        (___kont147922147923_
                                                         _hd143714143823_
                                                         _hd143711143813_)
                                                        (if (gx#stx-pair?
                                                             _tl143713143826_)
                                                            (let ((_e143727143771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl143713143826_)))
                      (let ((_tl143725143778_
                             (let ()
                               (declare (not safe))
                               (##cdr _e143727143771_)))
                            (_hd143726143775_
                             (let ()
                               (declare (not safe))
                               (##car _e143727143771_))))
                        (if (gx#stx-null? _tl143725143778_)
                            (___kont147924147925_
                             _hd143726143775_
                             _hd143714143823_
                             _hd143711143813_)
                            (___kont147926147927_))))
                    (___kont147926147927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont147926147927_))))
                                        (___kont147926147927_))))))
                             (_generate1142792_
                              (lambda (_where143178_
                                       _hd143180_
                                       _fender143181_
                                       _body143182_
                                       _E143183_)
                                (letrec ((_recur143185_
                                          (lambda (_hd143188_
                                                   _tgt143190_
                                                   _K143191_)
                                            (let* ((___stx147965147966_
                                                    _hd143188_)
                                                   (_g143194143206_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx147965147966_))))
                                              (let ((___kont147968147969_
                                                     (lambda (_L143490_
                                                              _L143492_)
                                                       (let* ((_g143503143511_
                                                               (lambda (_g143504143507_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g143504143507_)))
                      (_g143502143692_
                       (lambda (_g143504143515_)
                         ((lambda (_L143518_)
                            (let ()
                              (let* ((_g143530143538_
                                      (lambda (_g143531143534_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g143531143534_)))
                                     (_g143529143688_
                                      (lambda (_g143531143542_)
                                        ((lambda (_L143545_)
                                           (let ()
                                             (let* ((_g143558143566_
                                                     (lambda (_g143559143562_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g143559143562_)))
                                                    (_g143557143684_
                                                     (lambda (_g143559143570_)
                                                       ((lambda (_L143573_)
                                                          (let ()
                                                            (let* ((_g143586143594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g143587143590_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g143587143590_)))
                           (_g143585143680_
                            (lambda (_g143587143598_)
                              ((lambda (_L143601_)
                                 (let ()
                                   (let* ((_g143614143622_
                                           (lambda (_g143615143618_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g143615143618_)))
                                          (_g143613143676_
                                           (lambda (_g143615143626_)
                                             ((lambda (_L143629_)
                                                (let ()
                                                  (let* ((_g143642143650_
                                                          (lambda (_g143643143646_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g143643143646_)))
                                                         (_g143641143672_
                                                          (lambda (_g143643143654_)
                                                            ((lambda (_L143657_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp148100 (gx#datum->syntax '#f 'if))
                                 (__tmp148068
                                  (let ((__tmp148097
                                         (let ((__tmp148099
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp148098
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L143518_ '()))))
                                           (declare (not safe))
                                           (cons __tmp148099 __tmp148098)))
                                        (__tmp148069
                                         (let ((__tmp148071
                                                (let ((__tmp148096
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp148072
                                                       (let ((__tmp148090
                                                              (let ((__tmp148091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp148092
                                    (let ((__tmp148093
                                           (let ((__tmp148095
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp148094
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L143518_ '()))))
                                             (declare (not safe))
                                             (cons __tmp148095 __tmp148094))))
                                      (declare (not safe))
                                      (cons __tmp148093 '()))))
                               (declare (not safe))
                               (cons _L143545_ __tmp148092))))
                        (declare (not safe))
                        (cons __tmp148091 '())))
                     (__tmp148073
                      (let ((__tmp148074
                             (let ((__tmp148089 (gx#datum->syntax '#f 'let))
                                   (__tmp148075
                                    (let ((__tmp148077
                                           (let ((__tmp148084
                                                  (let ((__tmp148085
                                                         (let ((__tmp148086
                                                                (let ((__tmp148088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp148087
                               (let ()
                                 (declare (not safe))
                                 (cons _L143545_ '()))))
                          (declare (not safe))
                          (cons __tmp148088 __tmp148087))))
                   (declare (not safe))
                   (cons __tmp148086 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L143573_
                                                          __tmp148085)))
                                                 (__tmp148078
                                                  (let ((__tmp148079
                                                         (let ((__tmp148080
                                                                (let ((__tmp148081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp148083
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp148082
                                      (let ()
                                        (declare (not safe))
                                        (cons _L143545_ '()))))
                                 (declare (not safe))
                                 (cons __tmp148083 __tmp148082))))
                          (declare (not safe))
                          (cons __tmp148081 '()))))
                   (declare (not safe))
                   (cons _L143601_ __tmp148080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148079 '()))))
                                             (declare (not safe))
                                             (cons __tmp148084 __tmp148078)))
                                          (__tmp148076
                                           (let ()
                                             (declare (not safe))
                                             (cons _L143629_ '()))))
                                      (declare (not safe))
                                      (cons __tmp148077 __tmp148076))))
                               (declare (not safe))
                               (cons __tmp148089 __tmp148075))))
                        (declare (not safe))
                        (cons __tmp148074 '()))))
                 (declare (not safe))
                 (cons __tmp148090 __tmp148073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp148096
                                                        __tmp148072)))
                                               (__tmp148070
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L143657_ '()))))
                                           (declare (not safe))
                                           (cons __tmp148071 __tmp148070))))
                                    (declare (not safe))
                                    (cons __tmp148097 __tmp148069))))
                             (declare (not safe))
                             (cons __tmp148100 __tmp148068)))))
                     _g143643143654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g143641143672_
                                                     _E143183_))))
                                              _g143615143626_))))
                                     (_g143613143676_
                                      (_recur143185_
                                       _L143492_
                                       _L143573_
                                       (_recur143185_
                                        _L143490_
                                        _L143601_
                                        _K143191_))))))
                               _g143587143598_))))
                      (_g143585143680_ (gx#genident 'tl)))))
                _g143559143570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g143557143684_
                                                (gx#genident 'hd)))))
                                         _g143531143542_))))
                                (_g143529143688_ (gx#genident 'e)))))
                          _g143504143515_))))
                 (_g143502143692_ _tgt143190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont147970147971_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd143188_)
                                                           (if (gx#underscore?
                                                                _hd143188_)
                                                               _K143191_
                                                               (if (let ((__tmp148145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g143216143218_)
                                    (gx#bound-identifier=?
                                     _g143216143218_
                                     _hd143188_))))
                             (declare (not safe))
                             (find __tmp148145 _kws142787_))
                           (let* ((_g143222143237_
                                   (lambda (_g143223143233_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143223143233_)))
                                  (_g143221143288_
                                   (lambda (_g143223143241_)
                                     (if (gx#stx-pair? _g143223143241_)
                                         (let ((_e143228143244_
                                                (gx#syntax-e _g143223143241_)))
                                           (let ((_hd143227143248_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143228143244_)))
                                                 (_tl143226143251_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143228143244_))))
                                             (if (gx#stx-pair?
                                                  _tl143226143251_)
                                                 (let ((_e143231143254_
                                                        (gx#syntax-e
                                                         _tl143226143251_)))
                                                   (let ((_hd143230143258_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143231143254_)))
                                                         (_tl143229143261_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143231143254_))))
                                                     (if (gx#stx-null?
                                                          _tl143229143261_)
                                                         ((lambda (_L143264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L143266_)
                    (let ()
                      (let ((__tmp148144 (gx#datum->syntax '#f 'if))
                            (__tmp148127
                             (let ((__tmp148130
                                    (let ((__tmp148143
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp148131
                                           (let ((__tmp148140
                                                  (let ((__tmp148142
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp148141
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L143266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148142
                                                          __tmp148141)))
                                                 (__tmp148132
                                                  (let ((__tmp148133
                                                         (let ((__tmp148139
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp148134
                        (let ((__tmp148135
                               (let ((__tmp148136
                                      (let ((__tmp148138
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp148137
                                             (let ()
                                               (declare (not safe))
                                               (cons _L143264_ '()))))
                                        (declare (not safe))
                                        (cons __tmp148138 __tmp148137))))
                                 (declare (not safe))
                                 (cons __tmp148136 '()))))
                          (declare (not safe))
                          (cons _L143266_ __tmp148135))))
                   (declare (not safe))
                   (cons __tmp148139 __tmp148134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148133 '()))))
                                             (declare (not safe))
                                             (cons __tmp148140 __tmp148132))))
                                      (declare (not safe))
                                      (cons __tmp148143 __tmp148131)))
                                   (__tmp148128
                                    (let ((__tmp148129
                                           (let ()
                                             (declare (not safe))
                                             (cons _E143183_ '()))))
                                      (declare (not safe))
                                      (cons _K143191_ __tmp148129))))
                               (declare (not safe))
                               (cons __tmp148130 __tmp148128))))
                        (declare (not safe))
                        (cons __tmp148144 __tmp148127))))
                  _hd143230143258_
                  _hd143227143248_)
                 (_g143222143237_ _g143223143241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143222143237_
                                                  _g143223143241_))))
                                         (_g143222143237_ _g143223143241_)))))
                             (_g143221143288_ (list _tgt143190_ _hd143188_)))
                           (let* ((_g143292143307_
                                   (lambda (_g143293143303_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143293143303_)))
                                  (_g143291143351_
                                   (lambda (_g143293143311_)
                                     (if (gx#stx-pair? _g143293143311_)
                                         (let ((_e143298143314_
                                                (gx#syntax-e _g143293143311_)))
                                           (let ((_hd143297143318_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143298143314_)))
                                                 (_tl143296143321_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143298143314_))))
                                             (if (gx#stx-pair?
                                                  _tl143296143321_)
                                                 (let ((_e143301143324_
                                                        (gx#syntax-e
                                                         _tl143296143321_)))
                                                   (let ((_hd143300143328_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143301143324_)))
                                                         (_tl143299143331_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143301143324_))))
                                                     (if (gx#stx-null?
                                                          _tl143299143331_)
                                                         ((lambda (_L143334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L143336_)
                    (let ()
                      (let ((__tmp148126 (gx#datum->syntax '#f 'let))
                            (__tmp148121
                             (let ((__tmp148123
                                    (let ((__tmp148124
                                           (let ((__tmp148125
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L143336_ '()))))
                                             (declare (not safe))
                                             (cons _L143334_ __tmp148125))))
                                      (declare (not safe))
                                      (cons __tmp148124 '())))
                                   (__tmp148122
                                    (let ()
                                      (declare (not safe))
                                      (cons _K143191_ '()))))
                               (declare (not safe))
                               (cons __tmp148123 __tmp148122))))
                        (declare (not safe))
                        (cons __tmp148126 __tmp148121))))
                  _hd143300143328_
                  _hd143297143318_)
                 (_g143292143307_ _g143293143311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143292143307_
                                                  _g143293143311_))))
                                         (_g143292143307_ _g143293143311_)))))
                             (_g143291143351_ (list _tgt143190_ _hd143188_)))))
                   (if (gx#stx-null? _hd143188_)
                       (let* ((_g143355143363_
                               (lambda (_g143356143359_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g143356143359_)))
                              (_g143354143381_
                               (lambda (_g143356143367_)
                                 ((lambda (_L143370_)
                                    (let ()
                                      (let ((__tmp148120
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp148114
                                             (let ((__tmp148117
                                                    (let ((__tmp148119
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp148118
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L143370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp148119 __tmp148118)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp148115
                                                    (let ((__tmp148116
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E143183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K143191_ __tmp148116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp148117
                                                     __tmp148115))))
                                        (declare (not safe))
                                        (cons __tmp148120 __tmp148114))))
                                  _g143356143367_))))
                         (_g143354143381_ _tgt143190_))
                       (if (gx#stx-datum? _hd143188_)
                           (let* ((_g143385143404_
                                   (lambda (_g143386143400_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143386143400_)))
                                  (_g143384143462_
                                   (lambda (_g143386143408_)
                                     (if (gx#stx-pair? _g143386143408_)
                                         (let ((_e143392143411_
                                                (gx#syntax-e _g143386143408_)))
                                           (let ((_hd143391143415_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143392143411_)))
                                                 (_tl143390143418_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143392143411_))))
                                             (if (gx#stx-pair?
                                                  _tl143390143418_)
                                                 (let ((_e143395143421_
                                                        (gx#syntax-e
                                                         _tl143390143418_)))
                                                   (let ((_hd143394143425_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143395143421_)))
                                                         (_tl143393143428_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143395143421_))))
                                                     (if (gx#stx-pair?
                                                          _tl143393143428_)
                                                         (let ((_e143398143431_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl143393143428_)))
                   (let ((_hd143397143435_
                          (let ()
                            (declare (not safe))
                            (##car _e143398143431_)))
                         (_tl143396143438_
                          (let ()
                            (declare (not safe))
                            (##cdr _e143398143431_))))
                     (if (gx#stx-null? _tl143396143438_)
                         ((lambda (_L143441_ _L143443_ _L143444_)
                            (let ()
                              (let ((__tmp148113 (gx#datum->syntax '#f 'if))
                                    (__tmp148101
                                     (let ((__tmp148104
                                            (let ((__tmp148105
                                                   (let ((__tmp148110
                                                          (let ((__tmp148112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp148111
                         (let () (declare (not safe)) (cons _L143444_ '()))))
                    (declare (not safe))
                    (cons __tmp148112 __tmp148111)))
                 (__tmp148106
                  (let ((__tmp148107
                         (let ((__tmp148109 (gx#datum->syntax '#f 'quote))
                               (__tmp148108
                                (let ()
                                  (declare (not safe))
                                  (cons _L143443_ '()))))
                           (declare (not safe))
                           (cons __tmp148109 __tmp148108))))
                    (declare (not safe))
                    (cons __tmp148107 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp148110
                                                           __tmp148106))))
                                              (declare (not safe))
                                              (cons _L143441_ __tmp148105)))
                                           (__tmp148102
                                            (let ((__tmp148103
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E143183_ '()))))
                                              (declare (not safe))
                                              (cons _K143191_ __tmp148103))))
                                       (declare (not safe))
                                       (cons __tmp148104 __tmp148102))))
                                (declare (not safe))
                                (cons __tmp148113 __tmp148101))))
                          _hd143397143435_
                          _hd143394143425_
                          _hd143391143415_)
                         (_g143385143404_ _g143386143408_))))
                 (_g143385143404_ _g143386143408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143385143404_
                                                  _g143386143408_))))
                                         (_g143385143404_ _g143386143408_)))))
                             (_g143384143462_
                              (list _tgt143190_
                                    _hd143188_
                                    (let ((_e143466_ (gx#stx-e _hd143188_)))
                                      (if (or (keyword? _e143466_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e143466_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e143466_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx142633_
                            _where143178_
                            _hd143188_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx147965147966_)
                                                    (let ((_e143200143480_
                                                           (gx#syntax-e
                                                            ___stx147965147966_)))
                                                      (let ((_tl143198143487_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e143200143480_)))
                    (_hd143199143484_
                     (let () (declare (not safe)) (##car _e143200143480_))))
                (___kont147968147969_ _tl143198143487_ _hd143199143484_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont147970147971_)))))))
                                  (_recur143185_
                                   _hd143180_
                                   _tgt142785_
                                   (let ((__tmp148149
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp148146
                                          (let ((__tmp148147
                                                 (let ((__tmp148148
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E143183_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body143182_
                                                         __tmp148148))))
                                            (declare (not safe))
                                            (cons _fender143181_
                                                  __tmp148147))))
                                     (declare (not safe))
                                     (cons __tmp148149 __tmp148146))))))
                             (_generate-clauses142793_
                              (lambda (_clauses142916_)
                                (let _lp142919_ ((_rest142922_ _clauses142916_)
                                                 (_E142924_ (gx#genident 'E))
                                                 (_r142925_ '()))
                                  (let* ((___stx148001148002_ _rest142922_)
                                         (_g142928142940_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx148001148002_))))
                                    (let ((___kont148004148005_
                                           (lambda (_L143005_ _L143007_)
                                             (let* ((___stx147981147982_
                                                     _L143007_)
                                                    (_g143019143030_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx147981147982_))))
                                               (let ((___kont147984147985_
                                                      (lambda (_L143159_)
                                                        (if (gx#stx-null?
                                                             _L143005_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L143159_)
                             (let ((__tmp148158 (gx#stx-null? _L143159_)))
                               (declare (not safe))
                               (not __tmp148158)))
                        (let ((__tmp148150
                               (let ((__tmp148151
                                      (let ((__tmp148152
                                             (gx#stx-wrap-source
                                              (let ((__tmp148157
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp148153
                                                     (let ((__tmp148154
                                                            (let ((__tmp148155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp148156 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp148156 _L143159_))))
                      (declare (not safe))
                      (cons __tmp148155 '()))))
               (declare (not safe))
               (cons '() __tmp148154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp148157 __tmp148153))
                                              (gx#stx-source _L143007_))))
                                        (declare (not safe))
                                        (cons __tmp148152 '()))))
                                 (declare (not safe))
                                 (cons _E142924_ __tmp148151))))
                          (declare (not safe))
                          (cons __tmp148150 _r142925_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx142633_
                         _L143007_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx142633_
                     _L143007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont147986147987_
                                                      (lambda ()
                                                        (let* ((_g143041143049_
                                                                (lambda (_g143042143045_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g143042143045_)))
                       (_g143040143138_
                        (lambda (_g143042143053_)
                          ((lambda (_L143056_)
                             (let ()
                               (let* ((_g143072143080_
                                       (lambda (_g143073143076_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g143073143076_)))
                                      (_g143071143134_
                                       (lambda (_g143073143084_)
                                         ((lambda (_L143087_)
                                            (let ()
                                              (let* ((_g143100143108_
                                                      (lambda (_g143101143104_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g143101143104_)))
                                                     (_g143099143130_
                                                      (lambda (_g143101143112_)
                                                        ((lambda (_L143115_)
                                                           (let ()
                                                             (let ()
                                                               (_lp142919_
                                                                _L143005_
                                                                _L143056_
                                                                (let ((__tmp148159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp148160
                                      (let ()
                                        (declare (not safe))
                                        (cons _L143115_ '()))))
                                 (declare (not safe))
                                 (cons _E142924_ __tmp148160))))
                          (declare (not safe))
                          (cons __tmp148159 _r142925_))))))
                 _g143101143112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g143099143130_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp148163
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp148161
                                                         (let ((__tmp148162
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L143087_ '()))))
                   (declare (not safe))
                   (cons '() __tmp148162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148163
                                                          __tmp148161))
                                                  (gx#stx-source
                                                   _L143007_))))))
                                          _g143073143084_))))
                                 (_g143071143134_
                                  (_generate-clause142790_
                                   _L143007_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L143056_ '())))))))
                           _g143042143053_))))
                  (_g143040143138_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx147981147982_)
                                                     (let ((_e143024143149_
                                                            (gx#syntax-e
                                                             ___stx147981147982_)))
                                                       (let ((_tl143022143156_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e143024143149_)))
                     (_hd143023143153_
                      (let () (declare (not safe)) (##car _e143024143149_))))
                 (if (gx#identifier? _hd143023143153_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g148164_|
                          _hd143023143153_)
                         (___kont147984147985_ _tl143022143156_)
                         (___kont147986147987_))
                     (___kont147986147987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont147986147987_))))))
                                          (___kont148006148007_
                                           (lambda ()
                                             (let* ((_g142951142959_
                                                     (lambda (_g142952142955_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g142952142955_)))
                                                    (_g142950142984_
                                                     (lambda (_g142952142963_)
                                                       ((lambda (_L142966_)
                                                          (let ()
                                                            (let ((__tmp148165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp148166
                                  (let ((__tmp148167
                                         (gx#stx-wrap-source
                                          (let ((__tmp148175
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp148168
                                                 (let ((__tmp148169
                                                        (let ((__tmp148170
                                                               (let ((__tmp148174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp148171
                              (let ((__tmp148172
                                     (let ((__tmp148173
                                            (let ()
                                              (declare (not safe))
                                              (cons _L142966_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp148173))))
                                (declare (not safe))
                                (cons '#f __tmp148172))))
                         (declare (not safe))
                         (cons __tmp148174 __tmp148171))))
                  (declare (not safe))
                  (cons __tmp148170 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp148169))))
                                            (declare (not safe))
                                            (cons __tmp148175 __tmp148168))
                                          (gx#stx-source _stx142633_))))
                                    (declare (not safe))
                                    (cons __tmp148167 '()))))
                             (declare (not safe))
                             (cons _E142924_ __tmp148166))))
                      (declare (not safe))
                      (cons __tmp148165 _r142925_))))
                _g142952142963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g142950142984_
                                                _tgt142785_)))))
                                      (if (gx#stx-pair? ___stx148001148002_)
                                          (let ((_e142934142995_
                                                 (gx#syntax-e
                                                  ___stx148001148002_)))
                                            (let ((_tl142932143002_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e142934142995_)))
                                                  (_hd142933142999_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e142934142995_))))
                                              (___kont148004148005_
                                               _tl142932143002_
                                               _hd142933142999_)))
                                          (___kont148006148007_))))))))
                      (let* ((_bind142795_
                              (_generate-clauses142793_ _clauses142788_))
                             (_g142798142815_
                              (lambda (_g142799142811_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g142799142811_)))
                             (_g142797142912_
                              (lambda (_g142799142819_)
                                (if (gx#stx-pair/null? _g142799142819_)
                                    (let ((_g148176_
                                           (gx#syntax-split-splice
                                            _g142799142819_
                                            '0)))
                                      (begin
                                        (let ((_g148177_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g148176_)
                                                     (##vector-length
                                                      _g148176_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g148177_ 2)))
                                              (error "Context expects 2 values"
                                                     _g148177_)))
                                        (let ((_target142801142822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g148176_ 0)))
                                              (_tl142803142825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g148176_ 1))))
                                          (if (gx#stx-null? _tl142803142825_)
                                              (letrec ((_loop142804142828_
                                                        (lambda (_hd142802142832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try142808142835_)
                  (if (gx#stx-pair? _hd142802142832_)
                      (let ((_e142805142838_ (gx#syntax-e _hd142802142832_)))
                        (let ((_lp-hd142806142842_
                               (let ()
                                 (declare (not safe))
                                 (##car _e142805142838_)))
                              (_lp-tl142807142845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e142805142838_))))
                          (_loop142804142828_
                           _lp-tl142807142845_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd142806142842_
                                   _bind-try142808142835_)))))
                      (let ((_bind-try142809142848_
                             (reverse _bind-try142808142835_)))
                        ((lambda (_L142852_)
                           (let ()
                             (let* ((_g142870142878_
                                     (lambda (_g142871142874_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g142871142874_)))
                                    (_g142869142908_
                                     (lambda (_g142871142882_)
                                       ((lambda (_L142885_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp148183
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp148178
                                                     (let ((__tmp148181
                                                            (let ((__tmp148182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g142899142902_ _g142900142905_)
                             (let ()
                               (declare (not safe))
                               (cons _g142899142902_ _g142900142905_)))))
                      (declare (not safe))
                      (foldr1 __tmp148182 '() _L142852_)))
                   (__tmp148179
                    (let ((__tmp148180
                           (let () (declare (not safe)) (cons _L142885_ '()))))
                      (declare (not safe))
                      (cons __tmp148180 '()))))
               (declare (not safe))
               (cons __tmp148181 __tmp148179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp148183
                                                      __tmp148178)))))
                                        _g142871142882_))))
                               (_g142869142908_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind142795_)))))))
                         _bind-try142809142848_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop142804142828_
                                                 _target142801142822_
                                                 '()))
                                              (_g142798142815_
                                               _g142799142819_)))))
                                    (_g142798142815_ _g142799142819_)))))
                        (_g142797142912_ _bind142795_))))))
          (let* ((_g142639142658_
                  (lambda (_g142640142654_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g142640142654_)))
                 (_g142638142781_
                  (lambda (_g142640142662_)
                    (if (gx#stx-pair? _g142640142662_)
                        (let ((_e142646142665_ (gx#syntax-e _g142640142662_)))
                          (let ((_hd142645142669_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e142646142665_)))
                                (_tl142644142672_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e142646142665_))))
                            (if (gx#stx-pair? _tl142644142672_)
                                (let ((_e142649142675_
                                       (gx#syntax-e _tl142644142672_)))
                                  (let ((_hd142648142679_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e142649142675_)))
                                        (_tl142647142682_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e142649142675_))))
                                    (if (gx#stx-pair? _tl142647142682_)
                                        (let ((_e142652142685_
                                               (gx#syntax-e _tl142647142682_)))
                                          (let ((_hd142651142689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e142652142685_)))
                                                (_tl142650142692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e142652142685_))))
                                            ((lambda (_L142695_
                                                      _L142697_
                                                      _L142698_)
                                               (if (and (gx#identifier-list?
                                                         _L142697_)
                                                        (gx#stx-list?
                                                         _L142695_))
                                                   (let* ((_g142716142724_
                                                           (lambda (_g142717142720_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g142717142720_)))
                                                          (_g142715142777_
                                                           (lambda (_g142717142728_)
                                                             ((lambda (_L142731_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g142743142751_
                                  (lambda (_g142744142747_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g142744142747_)))
                                 (_g142742142773_
                                  (lambda (_g142744142755_)
                                    ((lambda (_L142758_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp148189
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp148184
                                                  (let ((__tmp148186
                                                         (let ((__tmp148187
                                                                (let ((__tmp148188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L142698_ '()))))
                          (declare (not safe))
                          (cons _L142731_ __tmp148188))))
                   (declare (not safe))
                   (cons __tmp148187 '())))
                (__tmp148185
                 (let () (declare (not safe)) (cons _L142758_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148186
                                                          __tmp148185))))
                                             (declare (not safe))
                                             (cons __tmp148189 __tmp148184)))))
                                     _g142744142755_))))
                            (_g142742142773_
                             (_generate142636_
                              _L142731_
                              (gx#syntax->list _L142697_)
                              _L142695_)))))
                      _g142717142728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g142715142777_
                                                      (gx#genident 'e)))
                                                   (_g142639142658_
                                                    _g142640142662_)))
                                             _tl142650142692_
                                             _hd142651142689_
                                             _hd142648142679_)))
                                        (_g142639142658_ _g142640142662_))))
                                (_g142639142658_ _g142640142662_))))
                        (_g142639142658_ _g142640142662_)))))
            (_g142638142781_ _stx142633_)))))))
