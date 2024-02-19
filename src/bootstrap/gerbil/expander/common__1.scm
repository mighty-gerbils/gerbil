(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79046_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79048_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79050_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79055_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79058_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79063_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79066_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79071_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79074_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79079_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79082_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79189_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79041
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
           __obj79041
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79045 |gx[1]#_g79046_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           __tmp79045
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79047 |gx[1]#_g79048_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           __tmp79047
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79049 |gx[1]#_g79050_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           __tmp79049
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79051
               (let ((__tmp79056
                      (let ((__tmp79057 |gx[1]#_g79058_|))
                        (declare (not safe))
                        (cons 'e __tmp79057)))
                     (__tmp79052
                      (let ((__tmp79053
                             (let ((__tmp79054 |gx[1]#_g79055_|))
                               (declare (not safe))
                               (cons 'source __tmp79054))))
                        (declare (not safe))
                        (cons __tmp79053 '()))))
                 (declare (not safe))
                 (cons __tmp79056 __tmp79052))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           __tmp79051
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79059
               (let ((__tmp79064
                      (let ((__tmp79065 |gx[1]#_g79066_|))
                        (declare (not safe))
                        (cons 'e __tmp79065)))
                     (__tmp79060
                      (let ((__tmp79061
                             (let ((__tmp79062 |gx[1]#_g79063_|))
                               (declare (not safe))
                               (cons 'source __tmp79062))))
                        (declare (not safe))
                        (cons __tmp79061 '()))))
                 (declare (not safe))
                 (cons __tmp79064 __tmp79060))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           __tmp79059
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79067
               (let ((__tmp79072
                      (let ((__tmp79073 |gx[1]#_g79074_|))
                        (declare (not safe))
                        (cons 'e __tmp79073)))
                     (__tmp79068
                      (let ((__tmp79069
                             (let ((__tmp79070 |gx[1]#_g79071_|))
                               (declare (not safe))
                               (cons 'source __tmp79070))))
                        (declare (not safe))
                        (cons __tmp79069 '()))))
                 (declare (not safe))
                 (cons __tmp79072 __tmp79068))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           __tmp79067
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79075
               (let ((__tmp79080
                      (let ((__tmp79081 |gx[1]#_g79082_|))
                        (declare (not safe))
                        (cons 'e __tmp79081)))
                     (__tmp79076
                      (let ((__tmp79077
                             (let ((__tmp79078 |gx[1]#_g79079_|))
                               (declare (not safe))
                               (cons 'source __tmp79078))))
                        (declare (not safe))
                        (cons __tmp79077 '()))))
                 (declare (not safe))
                 (cons __tmp79080 __tmp79076))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79041
           __tmp79075
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj79041))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx77661_)
        (let* ((_g7766577679_
                (lambda (_g7766677675_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7766677675_)))
               (_g7766477721_
                (lambda (_g7766677683_)
                  (if (gx#stx-pair? _g7766677683_)
                      (let ((_e7767077686_ (gx#syntax-e _g7766677683_)))
                        (let ((_hd7766977690_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7767077686_)))
                              (_tl7766877693_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7767077686_))))
                          (if (gx#stx-pair? _tl7766877693_)
                              (let ((_e7767377696_
                                     (gx#syntax-e _tl7766877693_)))
                                (let ((_hd7767277700_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7767377696_)))
                                      (_tl7767177703_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7767377696_))))
                                  (if (gx#stx-null? _tl7767177703_)
                                      ((lambda (_L77706_)
                                         (let ((__tmp79092
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp79083
                                                (let ((__tmp79089
                                                       (let ((__tmp79091
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp79090
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L77706_ '()))))
                 (declare (not safe))
                 (cons __tmp79091 __tmp79090)))
              (__tmp79084
               (let ((__tmp79085
                      (let ((__tmp79088 (gx#datum->syntax '#f 'error))
                            (__tmp79086
                             (let ((__tmp79087
                                    (let ()
                                      (declare (not safe))
                                      (cons _L77706_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp79087))))
                        (declare (not safe))
                        (cons __tmp79088 __tmp79086))))
                 (declare (not safe))
                 (cons __tmp79085 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79089
                                                        __tmp79084))))
                                           (declare (not safe))
                                           (cons __tmp79092 __tmp79083)))
                                       _hd7767277700_)
                                      (_g7766577679_ _g7766677683_))))
                              (_g7766577679_ _g7766677683_))))
                      (_g7766577679_ _g7766677683_)))))
          (_g7766477721_ _$stx77661_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx77725_)
        (letrec ((_generate77728_
                  (lambda (_tgt77877_ _kws77879_ _clauses77880_)
                    (letrec ((_generate-clause77882_
                              (lambda (_hd78792_ _E78794_)
                                (let* ((___stx7894478945_ _hd78792_)
                                       (_g7879878825_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7894478945_))))
                                  (let ((___kont7894778948_
                                         (lambda (_L78921_ _L78923_)
                                           (_generate177884_
                                            _hd78792_
                                            _L78923_
                                            '#t
                                            _L78921_
                                            _E78794_)))
                                        (___kont7894978950_
                                         (lambda (_L78873_ _L78875_ _L78876_)
                                           (_generate177884_
                                            _hd78792_
                                            _L78876_
                                            _L78875_
                                            _L78873_
                                            _E78794_)))
                                        (___kont7895178952_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx77725_
                                            _hd78792_))))
                                    (if (gx#stx-pair? ___stx7894478945_)
                                        (let ((_e7880478901_
                                               (gx#syntax-e
                                                ___stx7894478945_)))
                                          (let ((_tl7880278908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7880478901_)))
                                                (_hd7880378905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7880478901_))))
                                            (if (gx#stx-pair? _tl7880278908_)
                                                (let ((_e7880778911_
                                                       (gx#syntax-e
                                                        _tl7880278908_)))
                                                  (let ((_tl7880578918_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7880778911_)))
                                                        (_hd7880678915_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7880778911_))))
                                                    (if (gx#stx-null?
                                                         _tl7880578918_)
                                                        (___kont7894778948_
                                                         _hd7880678915_
                                                         _hd7880378905_)
                                                        (if (gx#stx-pair?
                                                             _tl7880578918_)
                                                            (let ((_e7881978863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7880578918_)))
                      (let ((_tl7881778870_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7881978863_)))
                            (_hd7881878867_
                             (let ()
                               (declare (not safe))
                               (##car _e7881978863_))))
                        (if (gx#stx-null? _tl7881778870_)
                            (___kont7894978950_
                             _hd7881878867_
                             _hd7880678915_
                             _hd7880378905_)
                            (___kont7895178952_))))
                    (___kont7895178952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7895178952_))))
                                        (___kont7895178952_))))))
                             (_generate177884_
                              (lambda (_where78270_
                                       _hd78272_
                                       _fender78273_
                                       _body78274_
                                       _E78275_)
                                (letrec ((_recur78277_
                                          (lambda (_hd78280_
                                                   _tgt78282_
                                                   _K78283_)
                                            (let* ((___stx7899078991_
                                                    _hd78280_)
                                                   (_g7828678298_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7899078991_))))
                                              (let ((___kont7899378994_
                                                     (lambda (_L78582_
                                                              _L78584_)
                                                       (let* ((_g7859578603_
                                                               (lambda (_g7859678599_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7859678599_)))
                      (_g7859478784_
                       (lambda (_g7859678607_)
                         ((lambda (_L78610_)
                            (let ()
                              (let* ((_g7862278630_
                                      (lambda (_g7862378626_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7862378626_)))
                                     (_g7862178780_
                                      (lambda (_g7862378634_)
                                        ((lambda (_L78637_)
                                           (let ()
                                             (let* ((_g7865078658_
                                                     (lambda (_g7865178654_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7865178654_)))
                                                    (_g7864978776_
                                                     (lambda (_g7865178662_)
                                                       ((lambda (_L78665_)
                                                          (let ()
                                                            (let* ((_g7867878686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7867978682_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7867978682_)))
                           (_g7867778772_
                            (lambda (_g7867978690_)
                              ((lambda (_L78693_)
                                 (let ()
                                   (let* ((_g7870678714_
                                           (lambda (_g7870778710_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7870778710_)))
                                          (_g7870578768_
                                           (lambda (_g7870778718_)
                                             ((lambda (_L78721_)
                                                (let ()
                                                  (let* ((_g7873478742_
                                                          (lambda (_g7873578738_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7873578738_)))
                                                         (_g7873378764_
                                                          (lambda (_g7873578746_)
                                                            ((lambda (_L78749_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp79125 (gx#datum->syntax '#f 'if))
                                 (__tmp79093
                                  (let ((__tmp79122
                                         (let ((__tmp79124
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp79123
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78610_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79124 __tmp79123)))
                                        (__tmp79094
                                         (let ((__tmp79096
                                                (let ((__tmp79121
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp79097
                                                       (let ((__tmp79115
                                                              (let ((__tmp79116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79117
                                    (let ((__tmp79118
                                           (let ((__tmp79120
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp79119
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78610_ '()))))
                                             (declare (not safe))
                                             (cons __tmp79120 __tmp79119))))
                                      (declare (not safe))
                                      (cons __tmp79118 '()))))
                               (declare (not safe))
                               (cons _L78637_ __tmp79117))))
                        (declare (not safe))
                        (cons __tmp79116 '())))
                     (__tmp79098
                      (let ((__tmp79099
                             (let ((__tmp79114 (gx#datum->syntax '#f 'let))
                                   (__tmp79100
                                    (let ((__tmp79102
                                           (let ((__tmp79109
                                                  (let ((__tmp79110
                                                         (let ((__tmp79111
                                                                (let ((__tmp79113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp79112
                               (let ()
                                 (declare (not safe))
                                 (cons _L78637_ '()))))
                          (declare (not safe))
                          (cons __tmp79113 __tmp79112))))
                   (declare (not safe))
                   (cons __tmp79111 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L78665_
                                                          __tmp79110)))
                                                 (__tmp79103
                                                  (let ((__tmp79104
                                                         (let ((__tmp79105
                                                                (let ((__tmp79106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79108 (gx#datum->syntax '#f '##cdr))
                                     (__tmp79107
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78637_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79108 __tmp79107))))
                          (declare (not safe))
                          (cons __tmp79106 '()))))
                   (declare (not safe))
                   (cons _L78693_ __tmp79105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79104 '()))))
                                             (declare (not safe))
                                             (cons __tmp79109 __tmp79103)))
                                          (__tmp79101
                                           (let ()
                                             (declare (not safe))
                                             (cons _L78721_ '()))))
                                      (declare (not safe))
                                      (cons __tmp79102 __tmp79101))))
                               (declare (not safe))
                               (cons __tmp79114 __tmp79100))))
                        (declare (not safe))
                        (cons __tmp79099 '()))))
                 (declare (not safe))
                 (cons __tmp79115 __tmp79098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79121
                                                        __tmp79097)))
                                               (__tmp79095
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78749_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79096 __tmp79095))))
                                    (declare (not safe))
                                    (cons __tmp79122 __tmp79094))))
                             (declare (not safe))
                             (cons __tmp79125 __tmp79093)))))
                     _g7873578746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7873378764_ _E78275_))))
                                              _g7870778718_))))
                                     (_g7870578768_
                                      (_recur78277_
                                       _L78584_
                                       _L78665_
                                       (_recur78277_
                                        _L78582_
                                        _L78693_
                                        _K78283_))))))
                               _g7867978690_))))
                      (_g7867778772_ (gx#genident 'tl)))))
                _g7865178662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7864978776_
                                                (gx#genident 'hd)))))
                                         _g7862378634_))))
                                (_g7862178780_ (gx#genident 'e)))))
                          _g7859678607_))))
                 (_g7859478784_ _tgt78282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7899578996_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78280_)
                                                           (if (gx#underscore?
                                                                _hd78280_)
                                                               _K78283_
                                                               (if (let ((__tmp79170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7830878310_)
                                    (gx#bound-identifier=?
                                     _g7830878310_
                                     _hd78280_))))
                             (declare (not safe))
                             (find __tmp79170 _kws77879_))
                           (let* ((_g7831478329_
                                   (lambda (_g7831578325_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7831578325_)))
                                  (_g7831378380_
                                   (lambda (_g7831578333_)
                                     (if (gx#stx-pair? _g7831578333_)
                                         (let ((_e7832078336_
                                                (gx#syntax-e _g7831578333_)))
                                           (let ((_hd7831978340_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7832078336_)))
                                                 (_tl7831878343_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7832078336_))))
                                             (if (gx#stx-pair? _tl7831878343_)
                                                 (let ((_e7832378346_
                                                        (gx#syntax-e
                                                         _tl7831878343_)))
                                                   (let ((_hd7832278350_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7832378346_)))
                                                         (_tl7832178353_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7832378346_))))
                                                     (if (gx#stx-null?
                                                          _tl7832178353_)
                                                         ((lambda (_L78356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78358_)
                    (let ()
                      (let ((__tmp79169 (gx#datum->syntax '#f 'if))
                            (__tmp79152
                             (let ((__tmp79155
                                    (let ((__tmp79168
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp79156
                                           (let ((__tmp79165
                                                  (let ((__tmp79167
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp79166
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L78358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79167
                                                          __tmp79166)))
                                                 (__tmp79157
                                                  (let ((__tmp79158
                                                         (let ((__tmp79164
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp79159
                        (let ((__tmp79160
                               (let ((__tmp79161
                                      (let ((__tmp79163
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp79162
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78356_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79163 __tmp79162))))
                                 (declare (not safe))
                                 (cons __tmp79161 '()))))
                          (declare (not safe))
                          (cons _L78358_ __tmp79160))))
                   (declare (not safe))
                   (cons __tmp79164 __tmp79159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79158 '()))))
                                             (declare (not safe))
                                             (cons __tmp79165 __tmp79157))))
                                      (declare (not safe))
                                      (cons __tmp79168 __tmp79156)))
                                   (__tmp79153
                                    (let ((__tmp79154
                                           (let ()
                                             (declare (not safe))
                                             (cons _E78275_ '()))))
                                      (declare (not safe))
                                      (cons _K78283_ __tmp79154))))
                               (declare (not safe))
                               (cons __tmp79155 __tmp79153))))
                        (declare (not safe))
                        (cons __tmp79169 __tmp79152))))
                  _hd7832278350_
                  _hd7831978340_)
                 (_g7831478329_ _g7831578333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7831478329_
                                                  _g7831578333_))))
                                         (_g7831478329_ _g7831578333_)))))
                             (_g7831378380_ (list _tgt78282_ _hd78280_)))
                           (let* ((_g7838478399_
                                   (lambda (_g7838578395_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7838578395_)))
                                  (_g7838378443_
                                   (lambda (_g7838578403_)
                                     (if (gx#stx-pair? _g7838578403_)
                                         (let ((_e7839078406_
                                                (gx#syntax-e _g7838578403_)))
                                           (let ((_hd7838978410_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7839078406_)))
                                                 (_tl7838878413_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7839078406_))))
                                             (if (gx#stx-pair? _tl7838878413_)
                                                 (let ((_e7839378416_
                                                        (gx#syntax-e
                                                         _tl7838878413_)))
                                                   (let ((_hd7839278420_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7839378416_)))
                                                         (_tl7839178423_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7839378416_))))
                                                     (if (gx#stx-null?
                                                          _tl7839178423_)
                                                         ((lambda (_L78426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78428_)
                    (let ()
                      (let ((__tmp79151 (gx#datum->syntax '#f 'let))
                            (__tmp79146
                             (let ((__tmp79148
                                    (let ((__tmp79149
                                           (let ((__tmp79150
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78428_ '()))))
                                             (declare (not safe))
                                             (cons _L78426_ __tmp79150))))
                                      (declare (not safe))
                                      (cons __tmp79149 '())))
                                   (__tmp79147
                                    (let ()
                                      (declare (not safe))
                                      (cons _K78283_ '()))))
                               (declare (not safe))
                               (cons __tmp79148 __tmp79147))))
                        (declare (not safe))
                        (cons __tmp79151 __tmp79146))))
                  _hd7839278420_
                  _hd7838978410_)
                 (_g7838478399_ _g7838578403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7838478399_
                                                  _g7838578403_))))
                                         (_g7838478399_ _g7838578403_)))))
                             (_g7838378443_ (list _tgt78282_ _hd78280_)))))
                   (if (gx#stx-null? _hd78280_)
                       (let* ((_g7844778455_
                               (lambda (_g7844878451_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7844878451_)))
                              (_g7844678473_
                               (lambda (_g7844878459_)
                                 ((lambda (_L78462_)
                                    (let ()
                                      (let ((__tmp79145
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp79139
                                             (let ((__tmp79142
                                                    (let ((__tmp79144
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp79143
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L78462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79144 __tmp79143)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79140
                                                    (let ((__tmp79141
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E78275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K78283_ __tmp79141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79142 __tmp79140))))
                                        (declare (not safe))
                                        (cons __tmp79145 __tmp79139))))
                                  _g7844878459_))))
                         (_g7844678473_ _tgt78282_))
                       (if (gx#stx-datum? _hd78280_)
                           (let* ((_g7847778496_
                                   (lambda (_g7847878492_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7847878492_)))
                                  (_g7847678554_
                                   (lambda (_g7847878500_)
                                     (if (gx#stx-pair? _g7847878500_)
                                         (let ((_e7848478503_
                                                (gx#syntax-e _g7847878500_)))
                                           (let ((_hd7848378507_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7848478503_)))
                                                 (_tl7848278510_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7848478503_))))
                                             (if (gx#stx-pair? _tl7848278510_)
                                                 (let ((_e7848778513_
                                                        (gx#syntax-e
                                                         _tl7848278510_)))
                                                   (let ((_hd7848678517_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7848778513_)))
                                                         (_tl7848578520_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7848778513_))))
                                                     (if (gx#stx-pair?
                                                          _tl7848578520_)
                                                         (let ((_e7849078523_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7848578520_)))
                   (let ((_hd7848978527_
                          (let () (declare (not safe)) (##car _e7849078523_)))
                         (_tl7848878530_
                          (let () (declare (not safe)) (##cdr _e7849078523_))))
                     (if (gx#stx-null? _tl7848878530_)
                         ((lambda (_L78533_ _L78535_ _L78536_)
                            (let ()
                              (let ((__tmp79138 (gx#datum->syntax '#f 'if))
                                    (__tmp79126
                                     (let ((__tmp79129
                                            (let ((__tmp79130
                                                   (let ((__tmp79135
                                                          (let ((__tmp79137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp79136
                         (let () (declare (not safe)) (cons _L78536_ '()))))
                    (declare (not safe))
                    (cons __tmp79137 __tmp79136)))
                 (__tmp79131
                  (let ((__tmp79132
                         (let ((__tmp79134 (gx#datum->syntax '#f 'quote))
                               (__tmp79133
                                (let ()
                                  (declare (not safe))
                                  (cons _L78535_ '()))))
                           (declare (not safe))
                           (cons __tmp79134 __tmp79133))))
                    (declare (not safe))
                    (cons __tmp79132 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79135
                                                           __tmp79131))))
                                              (declare (not safe))
                                              (cons _L78533_ __tmp79130)))
                                           (__tmp79127
                                            (let ((__tmp79128
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E78275_ '()))))
                                              (declare (not safe))
                                              (cons _K78283_ __tmp79128))))
                                       (declare (not safe))
                                       (cons __tmp79129 __tmp79127))))
                                (declare (not safe))
                                (cons __tmp79138 __tmp79126))))
                          _hd7848978527_
                          _hd7848678517_
                          _hd7848378507_)
                         (_g7847778496_ _g7847878500_))))
                 (_g7847778496_ _g7847878500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7847778496_
                                                  _g7847878500_))))
                                         (_g7847778496_ _g7847878500_)))))
                             (_g7847678554_
                              (list _tgt78282_
                                    _hd78280_
                                    (let ((_e78558_ (gx#stx-e _hd78280_)))
                                      (if (or (keyword? _e78558_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e78558_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e78558_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx77725_
                            _where78270_
                            _hd78280_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7899078991_)
                                                    (let ((_e7829278572_
                                                           (gx#syntax-e
                                                            ___stx7899078991_)))
                                                      (let ((_tl7829078579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7829278572_)))
                    (_hd7829178576_
                     (let () (declare (not safe)) (##car _e7829278572_))))
                (___kont7899378994_ _tl7829078579_ _hd7829178576_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7899578996_)))))))
                                  (_recur78277_
                                   _hd78272_
                                   _tgt77877_
                                   (let ((__tmp79174
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp79171
                                          (let ((__tmp79172
                                                 (let ((__tmp79173
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E78275_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body78274_
                                                         __tmp79173))))
                                            (declare (not safe))
                                            (cons _fender78273_ __tmp79172))))
                                     (declare (not safe))
                                     (cons __tmp79174 __tmp79171))))))
                             (_generate-clauses77885_
                              (lambda (_clauses78008_)
                                (let _lp78011_ ((_rest78014_ _clauses78008_)
                                                (_E78016_ (gx#genident 'E))
                                                (_r78017_ '()))
                                  (let* ((___stx7902679027_ _rest78014_)
                                         (_g7802078032_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7902679027_))))
                                    (let ((___kont7902979030_
                                           (lambda (_L78097_ _L78099_)
                                             (let* ((___stx7900679007_
                                                     _L78099_)
                                                    (_g7811178122_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7900679007_))))
                                               (let ((___kont7900979010_
                                                      (lambda (_L78251_)
                                                        (if (gx#stx-null?
                                                             _L78097_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78251_)
                             (let ((__tmp79183 (gx#stx-null? _L78251_)))
                               (declare (not safe))
                               (not __tmp79183)))
                        (let ((__tmp79175
                               (let ((__tmp79176
                                      (let ((__tmp79177
                                             (gx#stx-wrap-source
                                              (let ((__tmp79182
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp79178
                                                     (let ((__tmp79179
                                                            (let ((__tmp79180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79181 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp79181 _L78251_))))
                      (declare (not safe))
                      (cons __tmp79180 '()))))
               (declare (not safe))
               (cons '() __tmp79179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79182 __tmp79178))
                                              (gx#stx-source _L78099_))))
                                        (declare (not safe))
                                        (cons __tmp79177 '()))))
                                 (declare (not safe))
                                 (cons _E78016_ __tmp79176))))
                          (declare (not safe))
                          (cons __tmp79175 _r78017_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx77725_
                         _L78099_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx77725_
                     _L78099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7901179012_
                                                      (lambda ()
                                                        (let* ((_g7813378141_
                                                                (lambda (_g7813478137_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7813478137_)))
                       (_g7813278230_
                        (lambda (_g7813478145_)
                          ((lambda (_L78148_)
                             (let ()
                               (let* ((_g7816478172_
                                       (lambda (_g7816578168_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7816578168_)))
                                      (_g7816378226_
                                       (lambda (_g7816578176_)
                                         ((lambda (_L78179_)
                                            (let ()
                                              (let* ((_g7819278200_
                                                      (lambda (_g7819378196_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7819378196_)))
                                                     (_g7819178222_
                                                      (lambda (_g7819378204_)
                                                        ((lambda (_L78207_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78011_
                                                                _L78097_
                                                                _L78148_
                                                                (let ((__tmp79184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79185
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78207_ '()))))
                                 (declare (not safe))
                                 (cons _E78016_ __tmp79185))))
                          (declare (not safe))
                          (cons __tmp79184 _r78017_))))))
                 _g7819378204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7819178222_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp79188
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp79186
                                                         (let ((__tmp79187
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L78179_ '()))))
                   (declare (not safe))
                   (cons '() __tmp79187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79188
                                                          __tmp79186))
                                                  (gx#stx-source _L78099_))))))
                                          _g7816578176_))))
                                 (_g7816378226_
                                  (_generate-clause77882_
                                   _L78099_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L78148_ '())))))))
                           _g7813478145_))))
                  (_g7813278230_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7900679007_)
                                                     (let ((_e7811678241_
                                                            (gx#syntax-e
                                                             ___stx7900679007_)))
                                                       (let ((_tl7811478248_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7811678241_)))
                     (_hd7811578245_
                      (let () (declare (not safe)) (##car _e7811678241_))))
                 (if (gx#identifier? _hd7811578245_)
                     (if (gx#free-identifier=? |gx[1]#_g79189_| _hd7811578245_)
                         (___kont7900979010_ _tl7811478248_)
                         (___kont7901179012_))
                     (___kont7901179012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7901179012_))))))
                                          (___kont7903179032_
                                           (lambda ()
                                             (let* ((_g7804378051_
                                                     (lambda (_g7804478047_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7804478047_)))
                                                    (_g7804278076_
                                                     (lambda (_g7804478055_)
                                                       ((lambda (_L78058_)
                                                          (let ()
                                                            (let ((__tmp79190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79191
                                  (let ((__tmp79192
                                         (gx#stx-wrap-source
                                          (let ((__tmp79200
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp79193
                                                 (let ((__tmp79194
                                                        (let ((__tmp79195
                                                               (let ((__tmp79199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp79196
                              (let ((__tmp79197
                                     (let ((__tmp79198
                                            (let ()
                                              (declare (not safe))
                                              (cons _L78058_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp79198))))
                                (declare (not safe))
                                (cons '#f __tmp79197))))
                         (declare (not safe))
                         (cons __tmp79199 __tmp79196))))
                  (declare (not safe))
                  (cons __tmp79195 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp79194))))
                                            (declare (not safe))
                                            (cons __tmp79200 __tmp79193))
                                          (gx#stx-source _stx77725_))))
                                    (declare (not safe))
                                    (cons __tmp79192 '()))))
                             (declare (not safe))
                             (cons _E78016_ __tmp79191))))
                      (declare (not safe))
                      (cons __tmp79190 _r78017_))))
                _g7804478055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7804278076_ _tgt77877_)))))
                                      (if (gx#stx-pair? ___stx7902679027_)
                                          (let ((_e7802678087_
                                                 (gx#syntax-e
                                                  ___stx7902679027_)))
                                            (let ((_tl7802478094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7802678087_)))
                                                  (_hd7802578091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7802678087_))))
                                              (___kont7902979030_
                                               _tl7802478094_
                                               _hd7802578091_)))
                                          (___kont7903179032_))))))))
                      (let* ((_bind77887_
                              (_generate-clauses77885_ _clauses77880_))
                             (_g7789077907_
                              (lambda (_g7789177903_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7789177903_)))
                             (_g7788978004_
                              (lambda (_g7789177911_)
                                (if (gx#stx-pair/null? _g7789177911_)
                                    (let ((_g79201_
                                           (gx#syntax-split-splice
                                            _g7789177911_
                                            '0)))
                                      (begin
                                        (let ((_g79202_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79201_)
                                                     (##vector-length _g79201_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79202_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79202_)))
                                        (let ((_target7789377914_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79201_ 0)))
                                              (_tl7789577917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79201_ 1))))
                                          (if (gx#stx-null? _tl7789577917_)
                                              (letrec ((_loop7789677920_
                                                        (lambda (_hd7789477924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7790077927_)
                  (if (gx#stx-pair? _hd7789477924_)
                      (let ((_e7789777930_ (gx#syntax-e _hd7789477924_)))
                        (let ((_lp-hd7789877934_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7789777930_)))
                              (_lp-tl7789977937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7789777930_))))
                          (_loop7789677920_
                           _lp-tl7789977937_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7789877934_ _bind-try7790077927_)))))
                      (let ((_bind-try7790177940_
                             (reverse _bind-try7790077927_)))
                        ((lambda (_L77944_)
                           (let ()
                             (let* ((_g7796277970_
                                     (lambda (_g7796377966_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7796377966_)))
                                    (_g7796178000_
                                     (lambda (_g7796377974_)
                                       ((lambda (_L77977_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp79208
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp79203
                                                     (let ((__tmp79206
                                                            (let ((__tmp79207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7799177994_ _g7799277997_)
                             (let ()
                               (declare (not safe))
                               (cons _g7799177994_ _g7799277997_)))))
                      (declare (not safe))
                      (foldr1 __tmp79207 '() _L77944_)))
                   (__tmp79204
                    (let ((__tmp79205
                           (let () (declare (not safe)) (cons _L77977_ '()))))
                      (declare (not safe))
                      (cons __tmp79205 '()))))
               (declare (not safe))
               (cons __tmp79206 __tmp79204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79208
                                                      __tmp79203)))))
                                        _g7796377974_))))
                               (_g7796178000_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind77887_)))))))
                         _bind-try7790177940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7789677920_
                                                 _target7789377914_
                                                 '()))
                                              (_g7789077907_ _g7789177911_)))))
                                    (_g7789077907_ _g7789177911_)))))
                        (_g7788978004_ _bind77887_))))))
          (let* ((_g7773177750_
                  (lambda (_g7773277746_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7773277746_)))
                 (_g7773077873_
                  (lambda (_g7773277754_)
                    (if (gx#stx-pair? _g7773277754_)
                        (let ((_e7773877757_ (gx#syntax-e _g7773277754_)))
                          (let ((_hd7773777761_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7773877757_)))
                                (_tl7773677764_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7773877757_))))
                            (if (gx#stx-pair? _tl7773677764_)
                                (let ((_e7774177767_
                                       (gx#syntax-e _tl7773677764_)))
                                  (let ((_hd7774077771_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7774177767_)))
                                        (_tl7773977774_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7774177767_))))
                                    (if (gx#stx-pair? _tl7773977774_)
                                        (let ((_e7774477777_
                                               (gx#syntax-e _tl7773977774_)))
                                          (let ((_hd7774377781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7774477777_)))
                                                (_tl7774277784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7774477777_))))
                                            ((lambda (_L77787_
                                                      _L77789_
                                                      _L77790_)
                                               (if (and (gx#identifier-list?
                                                         _L77789_)
                                                        (gx#stx-list?
                                                         _L77787_))
                                                   (let* ((_g7780877816_
                                                           (lambda (_g7780977812_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7780977812_)))
                                                          (_g7780777869_
                                                           (lambda (_g7780977820_)
                                                             ((lambda (_L77823_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7783577843_
                                  (lambda (_g7783677839_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7783677839_)))
                                 (_g7783477865_
                                  (lambda (_g7783677847_)
                                    ((lambda (_L77850_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp79214
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp79209
                                                  (let ((__tmp79211
                                                         (let ((__tmp79212
                                                                (let ((__tmp79213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L77790_ '()))))
                          (declare (not safe))
                          (cons _L77823_ __tmp79213))))
                   (declare (not safe))
                   (cons __tmp79212 '())))
                (__tmp79210 (let () (declare (not safe)) (cons _L77850_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79211
                                                          __tmp79210))))
                                             (declare (not safe))
                                             (cons __tmp79214 __tmp79209)))))
                                     _g7783677847_))))
                            (_g7783477865_
                             (_generate77728_
                              _L77823_
                              (gx#syntax->list _L77789_)
                              _L77787_)))))
                      _g7780977820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7780777869_
                                                      (gx#genident 'e)))
                                                   (_g7773177750_
                                                    _g7773277754_)))
                                             _tl7774277784_
                                             _hd7774377781_
                                             _hd7774077771_)))
                                        (_g7773177750_ _g7773277754_))))
                                (_g7773177750_ _g7773277754_))))
                        (_g7773177750_ _g7773277754_)))))
            (_g7773077873_ _stx77725_)))))))
