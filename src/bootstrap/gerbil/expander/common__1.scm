(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79045_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79047_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79049_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79054_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79057_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79062_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79065_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79070_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79073_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79078_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79081_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79188_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79040
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
           __obj79040
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79044 |gx[1]#_g79045_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           __tmp79044
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79046 |gx[1]#_g79047_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           __tmp79046
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79048 |gx[1]#_g79049_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           __tmp79048
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79050
               (let ((__tmp79055
                      (let ((__tmp79056 |gx[1]#_g79057_|))
                        (declare (not safe))
                        (cons 'e __tmp79056)))
                     (__tmp79051
                      (let ((__tmp79052
                             (let ((__tmp79053 |gx[1]#_g79054_|))
                               (declare (not safe))
                               (cons 'source __tmp79053))))
                        (declare (not safe))
                        (cons __tmp79052 '()))))
                 (declare (not safe))
                 (cons __tmp79055 __tmp79051))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           __tmp79050
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79058
               (let ((__tmp79063
                      (let ((__tmp79064 |gx[1]#_g79065_|))
                        (declare (not safe))
                        (cons 'e __tmp79064)))
                     (__tmp79059
                      (let ((__tmp79060
                             (let ((__tmp79061 |gx[1]#_g79062_|))
                               (declare (not safe))
                               (cons 'source __tmp79061))))
                        (declare (not safe))
                        (cons __tmp79060 '()))))
                 (declare (not safe))
                 (cons __tmp79063 __tmp79059))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           __tmp79058
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79066
               (let ((__tmp79071
                      (let ((__tmp79072 |gx[1]#_g79073_|))
                        (declare (not safe))
                        (cons 'e __tmp79072)))
                     (__tmp79067
                      (let ((__tmp79068
                             (let ((__tmp79069 |gx[1]#_g79070_|))
                               (declare (not safe))
                               (cons 'source __tmp79069))))
                        (declare (not safe))
                        (cons __tmp79068 '()))))
                 (declare (not safe))
                 (cons __tmp79071 __tmp79067))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           __tmp79066
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79074
               (let ((__tmp79079
                      (let ((__tmp79080 |gx[1]#_g79081_|))
                        (declare (not safe))
                        (cons 'e __tmp79080)))
                     (__tmp79075
                      (let ((__tmp79076
                             (let ((__tmp79077 |gx[1]#_g79078_|))
                               (declare (not safe))
                               (cons 'source __tmp79077))))
                        (declare (not safe))
                        (cons __tmp79076 '()))))
                 (declare (not safe))
                 (cons __tmp79079 __tmp79075))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79040
           __tmp79074
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj79040))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx77660_)
        (let* ((_g7766477678_
                (lambda (_g7766577674_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7766577674_)))
               (_g7766377720_
                (lambda (_g7766577682_)
                  (if (gx#stx-pair? _g7766577682_)
                      (let ((_e7766977685_ (gx#syntax-e _g7766577682_)))
                        (let ((_hd7766877689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7766977685_)))
                              (_tl7766777692_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7766977685_))))
                          (if (gx#stx-pair? _tl7766777692_)
                              (let ((_e7767277695_
                                     (gx#syntax-e _tl7766777692_)))
                                (let ((_hd7767177699_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7767277695_)))
                                      (_tl7767077702_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7767277695_))))
                                  (if (gx#stx-null? _tl7767077702_)
                                      ((lambda (_L77705_)
                                         (let ((__tmp79091
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp79082
                                                (let ((__tmp79088
                                                       (let ((__tmp79090
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp79089
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L77705_ '()))))
                 (declare (not safe))
                 (cons __tmp79090 __tmp79089)))
              (__tmp79083
               (let ((__tmp79084
                      (let ((__tmp79087 (gx#datum->syntax '#f 'error))
                            (__tmp79085
                             (let ((__tmp79086
                                    (let ()
                                      (declare (not safe))
                                      (cons _L77705_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp79086))))
                        (declare (not safe))
                        (cons __tmp79087 __tmp79085))))
                 (declare (not safe))
                 (cons __tmp79084 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79088
                                                        __tmp79083))))
                                           (declare (not safe))
                                           (cons __tmp79091 __tmp79082)))
                                       _hd7767177699_)
                                      (_g7766477678_ _g7766577682_))))
                              (_g7766477678_ _g7766577682_))))
                      (_g7766477678_ _g7766577682_)))))
          (_g7766377720_ _$stx77660_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx77724_)
        (letrec ((_generate77727_
                  (lambda (_tgt77876_ _kws77878_ _clauses77879_)
                    (letrec ((_generate-clause77881_
                              (lambda (_hd78791_ _E78793_)
                                (let* ((___stx7894378944_ _hd78791_)
                                       (_g7879778824_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7894378944_))))
                                  (let ((___kont7894678947_
                                         (lambda (_L78920_ _L78922_)
                                           (_generate177883_
                                            _hd78791_
                                            _L78922_
                                            '#t
                                            _L78920_
                                            _E78793_)))
                                        (___kont7894878949_
                                         (lambda (_L78872_ _L78874_ _L78875_)
                                           (_generate177883_
                                            _hd78791_
                                            _L78875_
                                            _L78874_
                                            _L78872_
                                            _E78793_)))
                                        (___kont7895078951_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx77724_
                                            _hd78791_))))
                                    (if (gx#stx-pair? ___stx7894378944_)
                                        (let ((_e7880378900_
                                               (gx#syntax-e
                                                ___stx7894378944_)))
                                          (let ((_tl7880178907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7880378900_)))
                                                (_hd7880278904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7880378900_))))
                                            (if (gx#stx-pair? _tl7880178907_)
                                                (let ((_e7880678910_
                                                       (gx#syntax-e
                                                        _tl7880178907_)))
                                                  (let ((_tl7880478917_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7880678910_)))
                                                        (_hd7880578914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7880678910_))))
                                                    (if (gx#stx-null?
                                                         _tl7880478917_)
                                                        (___kont7894678947_
                                                         _hd7880578914_
                                                         _hd7880278904_)
                                                        (if (gx#stx-pair?
                                                             _tl7880478917_)
                                                            (let ((_e7881878862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7880478917_)))
                      (let ((_tl7881678869_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7881878862_)))
                            (_hd7881778866_
                             (let ()
                               (declare (not safe))
                               (##car _e7881878862_))))
                        (if (gx#stx-null? _tl7881678869_)
                            (___kont7894878949_
                             _hd7881778866_
                             _hd7880578914_
                             _hd7880278904_)
                            (___kont7895078951_))))
                    (___kont7895078951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7895078951_))))
                                        (___kont7895078951_))))))
                             (_generate177883_
                              (lambda (_where78269_
                                       _hd78271_
                                       _fender78272_
                                       _body78273_
                                       _E78274_)
                                (letrec ((_recur78276_
                                          (lambda (_hd78279_
                                                   _tgt78281_
                                                   _K78282_)
                                            (let* ((___stx7898978990_
                                                    _hd78279_)
                                                   (_g7828578297_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7898978990_))))
                                              (let ((___kont7899278993_
                                                     (lambda (_L78581_
                                                              _L78583_)
                                                       (let* ((_g7859478602_
                                                               (lambda (_g7859578598_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7859578598_)))
                      (_g7859378783_
                       (lambda (_g7859578606_)
                         ((lambda (_L78609_)
                            (let ()
                              (let* ((_g7862178629_
                                      (lambda (_g7862278625_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7862278625_)))
                                     (_g7862078779_
                                      (lambda (_g7862278633_)
                                        ((lambda (_L78636_)
                                           (let ()
                                             (let* ((_g7864978657_
                                                     (lambda (_g7865078653_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7865078653_)))
                                                    (_g7864878775_
                                                     (lambda (_g7865078661_)
                                                       ((lambda (_L78664_)
                                                          (let ()
                                                            (let* ((_g7867778685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7867878681_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7867878681_)))
                           (_g7867678771_
                            (lambda (_g7867878689_)
                              ((lambda (_L78692_)
                                 (let ()
                                   (let* ((_g7870578713_
                                           (lambda (_g7870678709_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7870678709_)))
                                          (_g7870478767_
                                           (lambda (_g7870678717_)
                                             ((lambda (_L78720_)
                                                (let ()
                                                  (let* ((_g7873378741_
                                                          (lambda (_g7873478737_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7873478737_)))
                                                         (_g7873278763_
                                                          (lambda (_g7873478745_)
                                                            ((lambda (_L78748_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp79124 (gx#datum->syntax '#f 'if))
                                 (__tmp79092
                                  (let ((__tmp79121
                                         (let ((__tmp79123
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp79122
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78609_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79123 __tmp79122)))
                                        (__tmp79093
                                         (let ((__tmp79095
                                                (let ((__tmp79120
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp79096
                                                       (let ((__tmp79114
                                                              (let ((__tmp79115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79116
                                    (let ((__tmp79117
                                           (let ((__tmp79119
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp79118
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78609_ '()))))
                                             (declare (not safe))
                                             (cons __tmp79119 __tmp79118))))
                                      (declare (not safe))
                                      (cons __tmp79117 '()))))
                               (declare (not safe))
                               (cons _L78636_ __tmp79116))))
                        (declare (not safe))
                        (cons __tmp79115 '())))
                     (__tmp79097
                      (let ((__tmp79098
                             (let ((__tmp79113 (gx#datum->syntax '#f 'let))
                                   (__tmp79099
                                    (let ((__tmp79101
                                           (let ((__tmp79108
                                                  (let ((__tmp79109
                                                         (let ((__tmp79110
                                                                (let ((__tmp79112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp79111
                               (let ()
                                 (declare (not safe))
                                 (cons _L78636_ '()))))
                          (declare (not safe))
                          (cons __tmp79112 __tmp79111))))
                   (declare (not safe))
                   (cons __tmp79110 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L78664_
                                                          __tmp79109)))
                                                 (__tmp79102
                                                  (let ((__tmp79103
                                                         (let ((__tmp79104
                                                                (let ((__tmp79105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79107 (gx#datum->syntax '#f '##cdr))
                                     (__tmp79106
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78636_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79107 __tmp79106))))
                          (declare (not safe))
                          (cons __tmp79105 '()))))
                   (declare (not safe))
                   (cons _L78692_ __tmp79104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79103 '()))))
                                             (declare (not safe))
                                             (cons __tmp79108 __tmp79102)))
                                          (__tmp79100
                                           (let ()
                                             (declare (not safe))
                                             (cons _L78720_ '()))))
                                      (declare (not safe))
                                      (cons __tmp79101 __tmp79100))))
                               (declare (not safe))
                               (cons __tmp79113 __tmp79099))))
                        (declare (not safe))
                        (cons __tmp79098 '()))))
                 (declare (not safe))
                 (cons __tmp79114 __tmp79097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79120
                                                        __tmp79096)))
                                               (__tmp79094
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78748_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79095 __tmp79094))))
                                    (declare (not safe))
                                    (cons __tmp79121 __tmp79093))))
                             (declare (not safe))
                             (cons __tmp79124 __tmp79092)))))
                     _g7873478745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7873278763_ _E78274_))))
                                              _g7870678717_))))
                                     (_g7870478767_
                                      (_recur78276_
                                       _L78583_
                                       _L78664_
                                       (_recur78276_
                                        _L78581_
                                        _L78692_
                                        _K78282_))))))
                               _g7867878689_))))
                      (_g7867678771_ (gx#genident 'tl)))))
                _g7865078661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7864878775_
                                                (gx#genident 'hd)))))
                                         _g7862278633_))))
                                (_g7862078779_ (gx#genident 'e)))))
                          _g7859578606_))))
                 (_g7859378783_ _tgt78281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7899478995_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78279_)
                                                           (if (gx#underscore?
                                                                _hd78279_)
                                                               _K78282_
                                                               (if (let ((__tmp79169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7830778309_)
                                    (gx#bound-identifier=?
                                     _g7830778309_
                                     _hd78279_))))
                             (declare (not safe))
                             (find __tmp79169 _kws77878_))
                           (let* ((_g7831378328_
                                   (lambda (_g7831478324_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7831478324_)))
                                  (_g7831278379_
                                   (lambda (_g7831478332_)
                                     (if (gx#stx-pair? _g7831478332_)
                                         (let ((_e7831978335_
                                                (gx#syntax-e _g7831478332_)))
                                           (let ((_hd7831878339_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7831978335_)))
                                                 (_tl7831778342_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7831978335_))))
                                             (if (gx#stx-pair? _tl7831778342_)
                                                 (let ((_e7832278345_
                                                        (gx#syntax-e
                                                         _tl7831778342_)))
                                                   (let ((_hd7832178349_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7832278345_)))
                                                         (_tl7832078352_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7832278345_))))
                                                     (if (gx#stx-null?
                                                          _tl7832078352_)
                                                         ((lambda (_L78355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78357_)
                    (let ()
                      (let ((__tmp79168 (gx#datum->syntax '#f 'if))
                            (__tmp79151
                             (let ((__tmp79154
                                    (let ((__tmp79167
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp79155
                                           (let ((__tmp79164
                                                  (let ((__tmp79166
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp79165
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L78357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79166
                                                          __tmp79165)))
                                                 (__tmp79156
                                                  (let ((__tmp79157
                                                         (let ((__tmp79163
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp79158
                        (let ((__tmp79159
                               (let ((__tmp79160
                                      (let ((__tmp79162
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp79161
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78355_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79162 __tmp79161))))
                                 (declare (not safe))
                                 (cons __tmp79160 '()))))
                          (declare (not safe))
                          (cons _L78357_ __tmp79159))))
                   (declare (not safe))
                   (cons __tmp79163 __tmp79158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79157 '()))))
                                             (declare (not safe))
                                             (cons __tmp79164 __tmp79156))))
                                      (declare (not safe))
                                      (cons __tmp79167 __tmp79155)))
                                   (__tmp79152
                                    (let ((__tmp79153
                                           (let ()
                                             (declare (not safe))
                                             (cons _E78274_ '()))))
                                      (declare (not safe))
                                      (cons _K78282_ __tmp79153))))
                               (declare (not safe))
                               (cons __tmp79154 __tmp79152))))
                        (declare (not safe))
                        (cons __tmp79168 __tmp79151))))
                  _hd7832178349_
                  _hd7831878339_)
                 (_g7831378328_ _g7831478332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7831378328_
                                                  _g7831478332_))))
                                         (_g7831378328_ _g7831478332_)))))
                             (_g7831278379_ (list _tgt78281_ _hd78279_)))
                           (let* ((_g7838378398_
                                   (lambda (_g7838478394_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7838478394_)))
                                  (_g7838278442_
                                   (lambda (_g7838478402_)
                                     (if (gx#stx-pair? _g7838478402_)
                                         (let ((_e7838978405_
                                                (gx#syntax-e _g7838478402_)))
                                           (let ((_hd7838878409_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7838978405_)))
                                                 (_tl7838778412_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7838978405_))))
                                             (if (gx#stx-pair? _tl7838778412_)
                                                 (let ((_e7839278415_
                                                        (gx#syntax-e
                                                         _tl7838778412_)))
                                                   (let ((_hd7839178419_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7839278415_)))
                                                         (_tl7839078422_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7839278415_))))
                                                     (if (gx#stx-null?
                                                          _tl7839078422_)
                                                         ((lambda (_L78425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78427_)
                    (let ()
                      (let ((__tmp79150 (gx#datum->syntax '#f 'let))
                            (__tmp79145
                             (let ((__tmp79147
                                    (let ((__tmp79148
                                           (let ((__tmp79149
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78427_ '()))))
                                             (declare (not safe))
                                             (cons _L78425_ __tmp79149))))
                                      (declare (not safe))
                                      (cons __tmp79148 '())))
                                   (__tmp79146
                                    (let ()
                                      (declare (not safe))
                                      (cons _K78282_ '()))))
                               (declare (not safe))
                               (cons __tmp79147 __tmp79146))))
                        (declare (not safe))
                        (cons __tmp79150 __tmp79145))))
                  _hd7839178419_
                  _hd7838878409_)
                 (_g7838378398_ _g7838478402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7838378398_
                                                  _g7838478402_))))
                                         (_g7838378398_ _g7838478402_)))))
                             (_g7838278442_ (list _tgt78281_ _hd78279_)))))
                   (if (gx#stx-null? _hd78279_)
                       (let* ((_g7844678454_
                               (lambda (_g7844778450_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7844778450_)))
                              (_g7844578472_
                               (lambda (_g7844778458_)
                                 ((lambda (_L78461_)
                                    (let ()
                                      (let ((__tmp79144
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp79138
                                             (let ((__tmp79141
                                                    (let ((__tmp79143
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp79142
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L78461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79143 __tmp79142)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79139
                                                    (let ((__tmp79140
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E78274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K78282_ __tmp79140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79141 __tmp79139))))
                                        (declare (not safe))
                                        (cons __tmp79144 __tmp79138))))
                                  _g7844778458_))))
                         (_g7844578472_ _tgt78281_))
                       (if (gx#stx-datum? _hd78279_)
                           (let* ((_g7847678495_
                                   (lambda (_g7847778491_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7847778491_)))
                                  (_g7847578553_
                                   (lambda (_g7847778499_)
                                     (if (gx#stx-pair? _g7847778499_)
                                         (let ((_e7848378502_
                                                (gx#syntax-e _g7847778499_)))
                                           (let ((_hd7848278506_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7848378502_)))
                                                 (_tl7848178509_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7848378502_))))
                                             (if (gx#stx-pair? _tl7848178509_)
                                                 (let ((_e7848678512_
                                                        (gx#syntax-e
                                                         _tl7848178509_)))
                                                   (let ((_hd7848578516_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7848678512_)))
                                                         (_tl7848478519_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7848678512_))))
                                                     (if (gx#stx-pair?
                                                          _tl7848478519_)
                                                         (let ((_e7848978522_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7848478519_)))
                   (let ((_hd7848878526_
                          (let () (declare (not safe)) (##car _e7848978522_)))
                         (_tl7848778529_
                          (let () (declare (not safe)) (##cdr _e7848978522_))))
                     (if (gx#stx-null? _tl7848778529_)
                         ((lambda (_L78532_ _L78534_ _L78535_)
                            (let ()
                              (let ((__tmp79137 (gx#datum->syntax '#f 'if))
                                    (__tmp79125
                                     (let ((__tmp79128
                                            (let ((__tmp79129
                                                   (let ((__tmp79134
                                                          (let ((__tmp79136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp79135
                         (let () (declare (not safe)) (cons _L78535_ '()))))
                    (declare (not safe))
                    (cons __tmp79136 __tmp79135)))
                 (__tmp79130
                  (let ((__tmp79131
                         (let ((__tmp79133 (gx#datum->syntax '#f 'quote))
                               (__tmp79132
                                (let ()
                                  (declare (not safe))
                                  (cons _L78534_ '()))))
                           (declare (not safe))
                           (cons __tmp79133 __tmp79132))))
                    (declare (not safe))
                    (cons __tmp79131 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79134
                                                           __tmp79130))))
                                              (declare (not safe))
                                              (cons _L78532_ __tmp79129)))
                                           (__tmp79126
                                            (let ((__tmp79127
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E78274_ '()))))
                                              (declare (not safe))
                                              (cons _K78282_ __tmp79127))))
                                       (declare (not safe))
                                       (cons __tmp79128 __tmp79126))))
                                (declare (not safe))
                                (cons __tmp79137 __tmp79125))))
                          _hd7848878526_
                          _hd7848578516_
                          _hd7848278506_)
                         (_g7847678495_ _g7847778499_))))
                 (_g7847678495_ _g7847778499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7847678495_
                                                  _g7847778499_))))
                                         (_g7847678495_ _g7847778499_)))))
                             (_g7847578553_
                              (list _tgt78281_
                                    _hd78279_
                                    (let ((_e78557_ (gx#stx-e _hd78279_)))
                                      (if (or (keyword? _e78557_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e78557_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e78557_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx77724_
                            _where78269_
                            _hd78279_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7898978990_)
                                                    (let ((_e7829178571_
                                                           (gx#syntax-e
                                                            ___stx7898978990_)))
                                                      (let ((_tl7828978578_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7829178571_)))
                    (_hd7829078575_
                     (let () (declare (not safe)) (##car _e7829178571_))))
                (___kont7899278993_ _tl7828978578_ _hd7829078575_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7899478995_)))))))
                                  (_recur78276_
                                   _hd78271_
                                   _tgt77876_
                                   (let ((__tmp79173
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp79170
                                          (let ((__tmp79171
                                                 (let ((__tmp79172
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E78274_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body78273_
                                                         __tmp79172))))
                                            (declare (not safe))
                                            (cons _fender78272_ __tmp79171))))
                                     (declare (not safe))
                                     (cons __tmp79173 __tmp79170))))))
                             (_generate-clauses77884_
                              (lambda (_clauses78007_)
                                (let _lp78010_ ((_rest78013_ _clauses78007_)
                                                (_E78015_ (gx#genident 'E))
                                                (_r78016_ '()))
                                  (let* ((___stx7902579026_ _rest78013_)
                                         (_g7801978031_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7902579026_))))
                                    (let ((___kont7902879029_
                                           (lambda (_L78096_ _L78098_)
                                             (let* ((___stx7900579006_
                                                     _L78098_)
                                                    (_g7811078121_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7900579006_))))
                                               (let ((___kont7900879009_
                                                      (lambda (_L78250_)
                                                        (if (gx#stx-null?
                                                             _L78096_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78250_)
                             (let ((__tmp79182 (gx#stx-null? _L78250_)))
                               (declare (not safe))
                               (not __tmp79182)))
                        (let ((__tmp79174
                               (let ((__tmp79175
                                      (let ((__tmp79176
                                             (gx#stx-wrap-source
                                              (let ((__tmp79181
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp79177
                                                     (let ((__tmp79178
                                                            (let ((__tmp79179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79180 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp79180 _L78250_))))
                      (declare (not safe))
                      (cons __tmp79179 '()))))
               (declare (not safe))
               (cons '() __tmp79178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79181 __tmp79177))
                                              (gx#stx-source _L78098_))))
                                        (declare (not safe))
                                        (cons __tmp79176 '()))))
                                 (declare (not safe))
                                 (cons _E78015_ __tmp79175))))
                          (declare (not safe))
                          (cons __tmp79174 _r78016_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx77724_
                         _L78098_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx77724_
                     _L78098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7901079011_
                                                      (lambda ()
                                                        (let* ((_g7813278140_
                                                                (lambda (_g7813378136_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7813378136_)))
                       (_g7813178229_
                        (lambda (_g7813378144_)
                          ((lambda (_L78147_)
                             (let ()
                               (let* ((_g7816378171_
                                       (lambda (_g7816478167_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7816478167_)))
                                      (_g7816278225_
                                       (lambda (_g7816478175_)
                                         ((lambda (_L78178_)
                                            (let ()
                                              (let* ((_g7819178199_
                                                      (lambda (_g7819278195_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7819278195_)))
                                                     (_g7819078221_
                                                      (lambda (_g7819278203_)
                                                        ((lambda (_L78206_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78010_
                                                                _L78096_
                                                                _L78147_
                                                                (let ((__tmp79183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79184
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78206_ '()))))
                                 (declare (not safe))
                                 (cons _E78015_ __tmp79184))))
                          (declare (not safe))
                          (cons __tmp79183 _r78016_))))))
                 _g7819278203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7819078221_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp79187
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp79185
                                                         (let ((__tmp79186
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L78178_ '()))))
                   (declare (not safe))
                   (cons '() __tmp79186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79187
                                                          __tmp79185))
                                                  (gx#stx-source _L78098_))))))
                                          _g7816478175_))))
                                 (_g7816278225_
                                  (_generate-clause77881_
                                   _L78098_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L78147_ '())))))))
                           _g7813378144_))))
                  (_g7813178229_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7900579006_)
                                                     (let ((_e7811578240_
                                                            (gx#syntax-e
                                                             ___stx7900579006_)))
                                                       (let ((_tl7811378247_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7811578240_)))
                     (_hd7811478244_
                      (let () (declare (not safe)) (##car _e7811578240_))))
                 (if (gx#identifier? _hd7811478244_)
                     (if (gx#free-identifier=? |gx[1]#_g79188_| _hd7811478244_)
                         (___kont7900879009_ _tl7811378247_)
                         (___kont7901079011_))
                     (___kont7901079011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7901079011_))))))
                                          (___kont7903079031_
                                           (lambda ()
                                             (let* ((_g7804278050_
                                                     (lambda (_g7804378046_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7804378046_)))
                                                    (_g7804178075_
                                                     (lambda (_g7804378054_)
                                                       ((lambda (_L78057_)
                                                          (let ()
                                                            (let ((__tmp79189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79190
                                  (let ((__tmp79191
                                         (gx#stx-wrap-source
                                          (let ((__tmp79199
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp79192
                                                 (let ((__tmp79193
                                                        (let ((__tmp79194
                                                               (let ((__tmp79198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp79195
                              (let ((__tmp79196
                                     (let ((__tmp79197
                                            (let ()
                                              (declare (not safe))
                                              (cons _L78057_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp79197))))
                                (declare (not safe))
                                (cons '#f __tmp79196))))
                         (declare (not safe))
                         (cons __tmp79198 __tmp79195))))
                  (declare (not safe))
                  (cons __tmp79194 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp79193))))
                                            (declare (not safe))
                                            (cons __tmp79199 __tmp79192))
                                          (gx#stx-source _stx77724_))))
                                    (declare (not safe))
                                    (cons __tmp79191 '()))))
                             (declare (not safe))
                             (cons _E78015_ __tmp79190))))
                      (declare (not safe))
                      (cons __tmp79189 _r78016_))))
                _g7804378054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7804178075_ _tgt77876_)))))
                                      (if (gx#stx-pair? ___stx7902579026_)
                                          (let ((_e7802578086_
                                                 (gx#syntax-e
                                                  ___stx7902579026_)))
                                            (let ((_tl7802378093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7802578086_)))
                                                  (_hd7802478090_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7802578086_))))
                                              (___kont7902879029_
                                               _tl7802378093_
                                               _hd7802478090_)))
                                          (___kont7903079031_))))))))
                      (let* ((_bind77886_
                              (_generate-clauses77884_ _clauses77879_))
                             (_g7788977906_
                              (lambda (_g7789077902_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7789077902_)))
                             (_g7788878003_
                              (lambda (_g7789077910_)
                                (if (gx#stx-pair/null? _g7789077910_)
                                    (let ((_g79200_
                                           (gx#syntax-split-splice
                                            _g7789077910_
                                            '0)))
                                      (begin
                                        (let ((_g79201_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79200_)
                                                     (##vector-length _g79200_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79201_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79201_)))
                                        (let ((_target7789277913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79200_ 0)))
                                              (_tl7789477916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79200_ 1))))
                                          (if (gx#stx-null? _tl7789477916_)
                                              (letrec ((_loop7789577919_
                                                        (lambda (_hd7789377923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7789977926_)
                  (if (gx#stx-pair? _hd7789377923_)
                      (let ((_e7789677929_ (gx#syntax-e _hd7789377923_)))
                        (let ((_lp-hd7789777933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7789677929_)))
                              (_lp-tl7789877936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7789677929_))))
                          (_loop7789577919_
                           _lp-tl7789877936_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7789777933_ _bind-try7789977926_)))))
                      (let ((_bind-try7790077939_
                             (reverse _bind-try7789977926_)))
                        ((lambda (_L77943_)
                           (let ()
                             (let* ((_g7796177969_
                                     (lambda (_g7796277965_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7796277965_)))
                                    (_g7796077999_
                                     (lambda (_g7796277973_)
                                       ((lambda (_L77976_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp79207
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp79202
                                                     (let ((__tmp79205
                                                            (let ((__tmp79206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7799077993_ _g7799177996_)
                             (let ()
                               (declare (not safe))
                               (cons _g7799077993_ _g7799177996_)))))
                      (declare (not safe))
                      (foldr1 __tmp79206 '() _L77943_)))
                   (__tmp79203
                    (let ((__tmp79204
                           (let () (declare (not safe)) (cons _L77976_ '()))))
                      (declare (not safe))
                      (cons __tmp79204 '()))))
               (declare (not safe))
               (cons __tmp79205 __tmp79203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79207
                                                      __tmp79202)))))
                                        _g7796277973_))))
                               (_g7796077999_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind77886_)))))))
                         _bind-try7790077939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7789577919_
                                                 _target7789277913_
                                                 '()))
                                              (_g7788977906_ _g7789077910_)))))
                                    (_g7788977906_ _g7789077910_)))))
                        (_g7788878003_ _bind77886_))))))
          (let* ((_g7773077749_
                  (lambda (_g7773177745_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7773177745_)))
                 (_g7772977872_
                  (lambda (_g7773177753_)
                    (if (gx#stx-pair? _g7773177753_)
                        (let ((_e7773777756_ (gx#syntax-e _g7773177753_)))
                          (let ((_hd7773677760_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7773777756_)))
                                (_tl7773577763_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7773777756_))))
                            (if (gx#stx-pair? _tl7773577763_)
                                (let ((_e7774077766_
                                       (gx#syntax-e _tl7773577763_)))
                                  (let ((_hd7773977770_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7774077766_)))
                                        (_tl7773877773_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7774077766_))))
                                    (if (gx#stx-pair? _tl7773877773_)
                                        (let ((_e7774377776_
                                               (gx#syntax-e _tl7773877773_)))
                                          (let ((_hd7774277780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7774377776_)))
                                                (_tl7774177783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7774377776_))))
                                            ((lambda (_L77786_
                                                      _L77788_
                                                      _L77789_)
                                               (if (and (gx#identifier-list?
                                                         _L77788_)
                                                        (gx#stx-list?
                                                         _L77786_))
                                                   (let* ((_g7780777815_
                                                           (lambda (_g7780877811_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7780877811_)))
                                                          (_g7780677868_
                                                           (lambda (_g7780877819_)
                                                             ((lambda (_L77822_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7783477842_
                                  (lambda (_g7783577838_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7783577838_)))
                                 (_g7783377864_
                                  (lambda (_g7783577846_)
                                    ((lambda (_L77849_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp79213
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp79208
                                                  (let ((__tmp79210
                                                         (let ((__tmp79211
                                                                (let ((__tmp79212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L77789_ '()))))
                          (declare (not safe))
                          (cons _L77822_ __tmp79212))))
                   (declare (not safe))
                   (cons __tmp79211 '())))
                (__tmp79209 (let () (declare (not safe)) (cons _L77849_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79210
                                                          __tmp79209))))
                                             (declare (not safe))
                                             (cons __tmp79213 __tmp79208)))))
                                     _g7783577846_))))
                            (_g7783377864_
                             (_generate77727_
                              _L77822_
                              (gx#syntax->list _L77788_)
                              _L77786_)))))
                      _g7780877819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7780677868_
                                                      (gx#genident 'e)))
                                                   (_g7773077749_
                                                    _g7773177753_)))
                                             _tl7774177783_
                                             _hd7774277780_
                                             _hd7773977770_)))
                                        (_g7773077749_ _g7773177753_))))
                                (_g7773077749_ _g7773177753_))))
                        (_g7773077749_ _g7773177753_)))))
            (_g7772977872_ _stx77724_)))))))
