(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g77070_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77072_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77074_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77079_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77082_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77087_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77090_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77095_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77098_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77103_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77106_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g77213_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj77065
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
           __obj77065
           'gerbil#AST::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           'syntax
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           '(e source)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp77069 |gx[1]#_g77070_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           __tmp77069
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp77071 |gx[1]#_g77072_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           __tmp77071
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp77073 |gx[1]#_g77074_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           __tmp77073
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp77075
               (let ((__tmp77080
                      (let ((__tmp77081 |gx[1]#_g77082_|))
                        (declare (not safe))
                        (cons 'e __tmp77081)))
                     (__tmp77076
                      (let ((__tmp77077
                             (let ((__tmp77078 |gx[1]#_g77079_|))
                               (declare (not safe))
                               (cons 'source __tmp77078))))
                        (declare (not safe))
                        (cons __tmp77077 '()))))
                 (declare (not safe))
                 (cons __tmp77080 __tmp77076))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           __tmp77075
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp77083
               (let ((__tmp77088
                      (let ((__tmp77089 |gx[1]#_g77090_|))
                        (declare (not safe))
                        (cons 'e __tmp77089)))
                     (__tmp77084
                      (let ((__tmp77085
                             (let ((__tmp77086 |gx[1]#_g77087_|))
                               (declare (not safe))
                               (cons 'source __tmp77086))))
                        (declare (not safe))
                        (cons __tmp77085 '()))))
                 (declare (not safe))
                 (cons __tmp77088 __tmp77084))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           __tmp77083
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp77091
               (let ((__tmp77096
                      (let ((__tmp77097 |gx[1]#_g77098_|))
                        (declare (not safe))
                        (cons 'e __tmp77097)))
                     (__tmp77092
                      (let ((__tmp77093
                             (let ((__tmp77094 |gx[1]#_g77095_|))
                               (declare (not safe))
                               (cons 'source __tmp77094))))
                        (declare (not safe))
                        (cons __tmp77093 '()))))
                 (declare (not safe))
                 (cons __tmp77096 __tmp77092))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           __tmp77091
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp77099
               (let ((__tmp77104
                      (let ((__tmp77105 |gx[1]#_g77106_|))
                        (declare (not safe))
                        (cons 'e __tmp77105)))
                     (__tmp77100
                      (let ((__tmp77101
                             (let ((__tmp77102 |gx[1]#_g77103_|))
                               (declare (not safe))
                               (cons 'source __tmp77102))))
                        (declare (not safe))
                        (cons __tmp77101 '()))))
                 (declare (not safe))
                 (cons __tmp77104 __tmp77100))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj77065
           __tmp77099
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj77065))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx75685_)
        (let* ((_g7568975703_
                (lambda (_g7569075699_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7569075699_)))
               (_g7568875745_
                (lambda (_g7569075707_)
                  (if (gx#stx-pair? _g7569075707_)
                      (let ((_e7569275710_ (gx#syntax-e _g7569075707_)))
                        (let ((_hd7569375714_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7569275710_)))
                              (_tl7569475717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7569275710_))))
                          (if (gx#stx-pair? _tl7569475717_)
                              (let ((_e7569575720_
                                     (gx#syntax-e _tl7569475717_)))
                                (let ((_hd7569675724_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7569575720_)))
                                      (_tl7569775727_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7569575720_))))
                                  (if (gx#stx-null? _tl7569775727_)
                                      ((lambda (_L75730_)
                                         (let ((__tmp77116
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp77107
                                                (let ((__tmp77113
                                                       (let ((__tmp77115
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp77114
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L75730_ '()))))
                 (declare (not safe))
                 (cons __tmp77115 __tmp77114)))
              (__tmp77108
               (let ((__tmp77109
                      (let ((__tmp77112 (gx#datum->syntax '#f 'error))
                            (__tmp77110
                             (let ((__tmp77111
                                    (let ()
                                      (declare (not safe))
                                      (cons _L75730_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp77111))))
                        (declare (not safe))
                        (cons __tmp77112 __tmp77110))))
                 (declare (not safe))
                 (cons __tmp77109 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77113
                                                        __tmp77108))))
                                           (declare (not safe))
                                           (cons __tmp77116 __tmp77107)))
                                       _hd7569675724_)
                                      (_g7568975703_ _g7569075707_))))
                              (_g7568975703_ _g7569075707_))))
                      (_g7568975703_ _g7569075707_)))))
          (_g7568875745_ _$stx75685_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx75749_)
        (letrec ((_generate75752_
                  (lambda (_tgt75901_ _kws75903_ _clauses75904_)
                    (letrec ((_generate-clause75906_
                              (lambda (_hd76816_ _E76818_)
                                (let* ((___stx7696876969_ _hd76816_)
                                       (_g7682276849_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7696876969_))))
                                  (let ((___kont7697176972_
                                         (lambda (_L76945_ _L76947_)
                                           (_generate175908_
                                            _hd76816_
                                            _L76947_
                                            '#t
                                            _L76945_
                                            _E76818_)))
                                        (___kont7697376974_
                                         (lambda (_L76897_ _L76899_ _L76900_)
                                           (_generate175908_
                                            _hd76816_
                                            _L76900_
                                            _L76899_
                                            _L76897_
                                            _E76818_)))
                                        (___kont7697576976_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx75749_
                                            _hd76816_))))
                                    (if (gx#stx-pair? ___stx7696876969_)
                                        (let ((_e7682676925_
                                               (gx#syntax-e
                                                ___stx7696876969_)))
                                          (let ((_tl7682876932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7682676925_)))
                                                (_hd7682776929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7682676925_))))
                                            (if (gx#stx-pair? _tl7682876932_)
                                                (let ((_e7682976935_
                                                       (gx#syntax-e
                                                        _tl7682876932_)))
                                                  (let ((_tl7683176942_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7682976935_)))
                                                        (_hd7683076939_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7682976935_))))
                                                    (if (gx#stx-null?
                                                         _tl7683176942_)
                                                        (___kont7697176972_
                                                         _hd7683076939_
                                                         _hd7682776929_)
                                                        (if (gx#stx-pair?
                                                             _tl7683176942_)
                                                            (let ((_e7684176887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7683176942_)))
                      (let ((_tl7684376894_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7684176887_)))
                            (_hd7684276891_
                             (let ()
                               (declare (not safe))
                               (##car _e7684176887_))))
                        (if (gx#stx-null? _tl7684376894_)
                            (___kont7697376974_
                             _hd7684276891_
                             _hd7683076939_
                             _hd7682776929_)
                            (___kont7697576976_))))
                    (___kont7697576976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7697576976_))))
                                        (___kont7697576976_))))))
                             (_generate175908_
                              (lambda (_where76294_
                                       _hd76296_
                                       _fender76297_
                                       _body76298_
                                       _E76299_)
                                (letrec ((_recur76301_
                                          (lambda (_hd76304_
                                                   _tgt76306_
                                                   _K76307_)
                                            (let* ((___stx7701477015_
                                                    _hd76304_)
                                                   (_g7631076322_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7701477015_))))
                                              (let ((___kont7701777018_
                                                     (lambda (_L76606_
                                                              _L76608_)
                                                       (let* ((_g7661976627_
                                                               (lambda (_g7662076623_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7662076623_)))
                      (_g7661876808_
                       (lambda (_g7662076631_)
                         ((lambda (_L76634_)
                            (let ()
                              (let* ((_g7664676654_
                                      (lambda (_g7664776650_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7664776650_)))
                                     (_g7664576804_
                                      (lambda (_g7664776658_)
                                        ((lambda (_L76661_)
                                           (let ()
                                             (let* ((_g7667476682_
                                                     (lambda (_g7667576678_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7667576678_)))
                                                    (_g7667376800_
                                                     (lambda (_g7667576686_)
                                                       ((lambda (_L76689_)
                                                          (let ()
                                                            (let* ((_g7670276710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7670376706_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7670376706_)))
                           (_g7670176796_
                            (lambda (_g7670376714_)
                              ((lambda (_L76717_)
                                 (let ()
                                   (let* ((_g7673076738_
                                           (lambda (_g7673176734_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7673176734_)))
                                          (_g7672976792_
                                           (lambda (_g7673176742_)
                                             ((lambda (_L76745_)
                                                (let ()
                                                  (let* ((_g7675876766_
                                                          (lambda (_g7675976762_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7675976762_)))
                                                         (_g7675776788_
                                                          (lambda (_g7675976770_)
                                                            ((lambda (_L76773_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp77149 (gx#datum->syntax '#f 'if))
                                 (__tmp77117
                                  (let ((__tmp77146
                                         (let ((__tmp77148
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp77147
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L76634_ '()))))
                                           (declare (not safe))
                                           (cons __tmp77148 __tmp77147)))
                                        (__tmp77118
                                         (let ((__tmp77120
                                                (let ((__tmp77145
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp77121
                                                       (let ((__tmp77139
                                                              (let ((__tmp77140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77141
                                    (let ((__tmp77142
                                           (let ((__tmp77144
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp77143
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L76634_ '()))))
                                             (declare (not safe))
                                             (cons __tmp77144 __tmp77143))))
                                      (declare (not safe))
                                      (cons __tmp77142 '()))))
                               (declare (not safe))
                               (cons _L76661_ __tmp77141))))
                        (declare (not safe))
                        (cons __tmp77140 '())))
                     (__tmp77122
                      (let ((__tmp77123
                             (let ((__tmp77138 (gx#datum->syntax '#f 'let))
                                   (__tmp77124
                                    (let ((__tmp77126
                                           (let ((__tmp77133
                                                  (let ((__tmp77134
                                                         (let ((__tmp77135
                                                                (let ((__tmp77137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp77136
                               (let ()
                                 (declare (not safe))
                                 (cons _L76661_ '()))))
                          (declare (not safe))
                          (cons __tmp77137 __tmp77136))))
                   (declare (not safe))
                   (cons __tmp77135 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L76689_
                                                          __tmp77134)))
                                                 (__tmp77127
                                                  (let ((__tmp77128
                                                         (let ((__tmp77129
                                                                (let ((__tmp77130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77132 (gx#datum->syntax '#f '##cdr))
                                     (__tmp77131
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76661_ '()))))
                                 (declare (not safe))
                                 (cons __tmp77132 __tmp77131))))
                          (declare (not safe))
                          (cons __tmp77130 '()))))
                   (declare (not safe))
                   (cons _L76717_ __tmp77129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77128 '()))))
                                             (declare (not safe))
                                             (cons __tmp77133 __tmp77127)))
                                          (__tmp77125
                                           (let ()
                                             (declare (not safe))
                                             (cons _L76745_ '()))))
                                      (declare (not safe))
                                      (cons __tmp77126 __tmp77125))))
                               (declare (not safe))
                               (cons __tmp77138 __tmp77124))))
                        (declare (not safe))
                        (cons __tmp77123 '()))))
                 (declare (not safe))
                 (cons __tmp77139 __tmp77122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77145
                                                        __tmp77121)))
                                               (__tmp77119
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L76773_ '()))))
                                           (declare (not safe))
                                           (cons __tmp77120 __tmp77119))))
                                    (declare (not safe))
                                    (cons __tmp77146 __tmp77118))))
                             (declare (not safe))
                             (cons __tmp77149 __tmp77117)))))
                     _g7675976770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7675776788_ _E76299_))))
                                              _g7673176742_))))
                                     (_g7672976792_
                                      (_recur76301_
                                       _L76608_
                                       _L76689_
                                       (_recur76301_
                                        _L76606_
                                        _L76717_
                                        _K76307_))))))
                               _g7670376714_))))
                      (_g7670176796_ (gx#genident 'tl)))))
                _g7667576686_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7667376800_
                                                (gx#genident 'hd)))))
                                         _g7664776658_))))
                                (_g7664576804_ (gx#genident 'e)))))
                          _g7662076631_))))
                 (_g7661876808_ _tgt76306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7701977020_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd76304_)
                                                           (if (gx#underscore?
                                                                _hd76304_)
                                                               _K76307_
                                                               (if (let ((__tmp77150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7633276334_)
                                    (gx#bound-identifier=?
                                     _g7633276334_
                                     _hd76304_))))
                             (declare (not safe))
                             (find __tmp77150 _kws75903_))
                           (let* ((_g7633876353_
                                   (lambda (_g7633976349_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7633976349_)))
                                  (_g7633776404_
                                   (lambda (_g7633976357_)
                                     (if (gx#stx-pair? _g7633976357_)
                                         (let ((_e7634276360_
                                                (gx#syntax-e _g7633976357_)))
                                           (let ((_hd7634376364_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7634276360_)))
                                                 (_tl7634476367_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7634276360_))))
                                             (if (gx#stx-pair? _tl7634476367_)
                                                 (let ((_e7634576370_
                                                        (gx#syntax-e
                                                         _tl7634476367_)))
                                                   (let ((_hd7634676374_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7634576370_)))
                                                         (_tl7634776377_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7634576370_))))
                                                     (if (gx#stx-null?
                                                          _tl7634776377_)
                                                         ((lambda (_L76380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L76382_)
                    (let ()
                      (let ((__tmp77168 (gx#datum->syntax '#f 'if))
                            (__tmp77151
                             (let ((__tmp77154
                                    (let ((__tmp77167
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp77155
                                           (let ((__tmp77164
                                                  (let ((__tmp77166
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp77165
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L76382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77166
                                                          __tmp77165)))
                                                 (__tmp77156
                                                  (let ((__tmp77157
                                                         (let ((__tmp77163
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp77158
                        (let ((__tmp77159
                               (let ((__tmp77160
                                      (let ((__tmp77162
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp77161
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76380_ '()))))
                                        (declare (not safe))
                                        (cons __tmp77162 __tmp77161))))
                                 (declare (not safe))
                                 (cons __tmp77160 '()))))
                          (declare (not safe))
                          (cons _L76382_ __tmp77159))))
                   (declare (not safe))
                   (cons __tmp77163 __tmp77158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77157 '()))))
                                             (declare (not safe))
                                             (cons __tmp77164 __tmp77156))))
                                      (declare (not safe))
                                      (cons __tmp77167 __tmp77155)))
                                   (__tmp77152
                                    (let ((__tmp77153
                                           (let ()
                                             (declare (not safe))
                                             (cons _E76299_ '()))))
                                      (declare (not safe))
                                      (cons _K76307_ __tmp77153))))
                               (declare (not safe))
                               (cons __tmp77154 __tmp77152))))
                        (declare (not safe))
                        (cons __tmp77168 __tmp77151))))
                  _hd7634676374_
                  _hd7634376364_)
                 (_g7633876353_ _g7633976357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7633876353_
                                                  _g7633976357_))))
                                         (_g7633876353_ _g7633976357_)))))
                             (_g7633776404_ (list _tgt76306_ _hd76304_)))
                           (let* ((_g7640876423_
                                   (lambda (_g7640976419_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7640976419_)))
                                  (_g7640776467_
                                   (lambda (_g7640976427_)
                                     (if (gx#stx-pair? _g7640976427_)
                                         (let ((_e7641276430_
                                                (gx#syntax-e _g7640976427_)))
                                           (let ((_hd7641376434_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7641276430_)))
                                                 (_tl7641476437_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7641276430_))))
                                             (if (gx#stx-pair? _tl7641476437_)
                                                 (let ((_e7641576440_
                                                        (gx#syntax-e
                                                         _tl7641476437_)))
                                                   (let ((_hd7641676444_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7641576440_)))
                                                         (_tl7641776447_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7641576440_))))
                                                     (if (gx#stx-null?
                                                          _tl7641776447_)
                                                         ((lambda (_L76450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L76452_)
                    (let ()
                      (let ((__tmp77174 (gx#datum->syntax '#f 'let))
                            (__tmp77169
                             (let ((__tmp77171
                                    (let ((__tmp77172
                                           (let ((__tmp77173
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L76452_ '()))))
                                             (declare (not safe))
                                             (cons _L76450_ __tmp77173))))
                                      (declare (not safe))
                                      (cons __tmp77172 '())))
                                   (__tmp77170
                                    (let ()
                                      (declare (not safe))
                                      (cons _K76307_ '()))))
                               (declare (not safe))
                               (cons __tmp77171 __tmp77170))))
                        (declare (not safe))
                        (cons __tmp77174 __tmp77169))))
                  _hd7641676444_
                  _hd7641376434_)
                 (_g7640876423_ _g7640976427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7640876423_
                                                  _g7640976427_))))
                                         (_g7640876423_ _g7640976427_)))))
                             (_g7640776467_ (list _tgt76306_ _hd76304_)))))
                   (if (gx#stx-null? _hd76304_)
                       (let* ((_g7647176479_
                               (lambda (_g7647276475_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7647276475_)))
                              (_g7647076497_
                               (lambda (_g7647276483_)
                                 ((lambda (_L76486_)
                                    (let ()
                                      (let ((__tmp77181
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp77175
                                             (let ((__tmp77178
                                                    (let ((__tmp77180
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp77179
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L76486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp77180 __tmp77179)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp77176
                                                    (let ((__tmp77177
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E76299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K76307_ __tmp77177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp77178 __tmp77176))))
                                        (declare (not safe))
                                        (cons __tmp77181 __tmp77175))))
                                  _g7647276483_))))
                         (_g7647076497_ _tgt76306_))
                       (if (gx#stx-datum? _hd76304_)
                           (let* ((_g7650176520_
                                   (lambda (_g7650276516_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7650276516_)))
                                  (_g7650076578_
                                   (lambda (_g7650276524_)
                                     (if (gx#stx-pair? _g7650276524_)
                                         (let ((_e7650676527_
                                                (gx#syntax-e _g7650276524_)))
                                           (let ((_hd7650776531_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7650676527_)))
                                                 (_tl7650876534_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7650676527_))))
                                             (if (gx#stx-pair? _tl7650876534_)
                                                 (let ((_e7650976537_
                                                        (gx#syntax-e
                                                         _tl7650876534_)))
                                                   (let ((_hd7651076541_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7650976537_)))
                                                         (_tl7651176544_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7650976537_))))
                                                     (if (gx#stx-pair?
                                                          _tl7651176544_)
                                                         (let ((_e7651276547_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7651176544_)))
                   (let ((_hd7651376551_
                          (let () (declare (not safe)) (##car _e7651276547_)))
                         (_tl7651476554_
                          (let () (declare (not safe)) (##cdr _e7651276547_))))
                     (if (gx#stx-null? _tl7651476554_)
                         ((lambda (_L76557_ _L76559_ _L76560_)
                            (let ()
                              (let ((__tmp77194 (gx#datum->syntax '#f 'if))
                                    (__tmp77182
                                     (let ((__tmp77185
                                            (let ((__tmp77186
                                                   (let ((__tmp77191
                                                          (let ((__tmp77193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp77192
                         (let () (declare (not safe)) (cons _L76560_ '()))))
                    (declare (not safe))
                    (cons __tmp77193 __tmp77192)))
                 (__tmp77187
                  (let ((__tmp77188
                         (let ((__tmp77190 (gx#datum->syntax '#f 'quote))
                               (__tmp77189
                                (let ()
                                  (declare (not safe))
                                  (cons _L76559_ '()))))
                           (declare (not safe))
                           (cons __tmp77190 __tmp77189))))
                    (declare (not safe))
                    (cons __tmp77188 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77191
                                                           __tmp77187))))
                                              (declare (not safe))
                                              (cons _L76557_ __tmp77186)))
                                           (__tmp77183
                                            (let ((__tmp77184
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E76299_ '()))))
                                              (declare (not safe))
                                              (cons _K76307_ __tmp77184))))
                                       (declare (not safe))
                                       (cons __tmp77185 __tmp77183))))
                                (declare (not safe))
                                (cons __tmp77194 __tmp77182))))
                          _hd7651376551_
                          _hd7651076541_
                          _hd7650776531_)
                         (_g7650176520_ _g7650276524_))))
                 (_g7650176520_ _g7650276524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7650176520_
                                                  _g7650276524_))))
                                         (_g7650176520_ _g7650276524_)))))
                             (_g7650076578_
                              (list _tgt76306_
                                    _hd76304_
                                    (let ((_e76582_ (gx#stx-e _hd76304_)))
                                      (if (or (keyword? _e76582_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e76582_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e76582_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx75749_
                            _where76294_
                            _hd76304_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7701477015_)
                                                    (let ((_e7631476596_
                                                           (gx#syntax-e
                                                            ___stx7701477015_)))
                                                      (let ((_tl7631676603_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7631476596_)))
                    (_hd7631576600_
                     (let () (declare (not safe)) (##car _e7631476596_))))
                (___kont7701777018_ _tl7631676603_ _hd7631576600_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7701977020_)))))))
                                  (_recur76301_
                                   _hd76296_
                                   _tgt75901_
                                   (let ((__tmp77198
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp77195
                                          (let ((__tmp77196
                                                 (let ((__tmp77197
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E76299_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body76298_
                                                         __tmp77197))))
                                            (declare (not safe))
                                            (cons _fender76297_ __tmp77196))))
                                     (declare (not safe))
                                     (cons __tmp77198 __tmp77195))))))
                             (_generate-clauses75909_
                              (lambda (_clauses76032_)
                                (let _lp76035_ ((_rest76038_ _clauses76032_)
                                                (_E76040_ (gx#genident 'E))
                                                (_r76041_ '()))
                                  (let* ((___stx7705077051_ _rest76038_)
                                         (_g7604476056_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7705077051_))))
                                    (let ((___kont7705377054_
                                           (lambda (_L76121_ _L76123_)
                                             (let* ((___stx7703077031_
                                                     _L76123_)
                                                    (_g7613576146_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7703077031_))))
                                               (let ((___kont7703377034_
                                                      (lambda (_L76275_)
                                                        (if (gx#stx-null?
                                                             _L76121_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L76275_)
                             (let ((__tmp77199 (gx#stx-null? _L76275_)))
                               (declare (not safe))
                               (not __tmp77199)))
                        (let ((__tmp77200
                               (let ((__tmp77201
                                      (let ((__tmp77202
                                             (gx#stx-wrap-source
                                              (let ((__tmp77207
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp77203
                                                     (let ((__tmp77204
                                                            (let ((__tmp77205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77206 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp77206 _L76275_))))
                      (declare (not safe))
                      (cons __tmp77205 '()))))
               (declare (not safe))
               (cons '() __tmp77204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77207 __tmp77203))
                                              (gx#stx-source _L76123_))))
                                        (declare (not safe))
                                        (cons __tmp77202 '()))))
                                 (declare (not safe))
                                 (cons _E76040_ __tmp77201))))
                          (declare (not safe))
                          (cons __tmp77200 _r76041_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx75749_
                         _L76123_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx75749_
                     _L76123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7703577036_
                                                      (lambda ()
                                                        (let* ((_g7615776165_
                                                                (lambda (_g7615876161_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7615876161_)))
                       (_g7615676254_
                        (lambda (_g7615876169_)
                          ((lambda (_L76172_)
                             (let ()
                               (let* ((_g7618876196_
                                       (lambda (_g7618976192_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7618976192_)))
                                      (_g7618776250_
                                       (lambda (_g7618976200_)
                                         ((lambda (_L76203_)
                                            (let ()
                                              (let* ((_g7621676224_
                                                      (lambda (_g7621776220_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7621776220_)))
                                                     (_g7621576246_
                                                      (lambda (_g7621776228_)
                                                        ((lambda (_L76231_)
                                                           (let ()
                                                             (let ()
                                                               (_lp76035_
                                                                _L76121_
                                                                _L76172_
                                                                (let ((__tmp77208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77209
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76231_ '()))))
                                 (declare (not safe))
                                 (cons _E76040_ __tmp77209))))
                          (declare (not safe))
                          (cons __tmp77208 _r76041_))))))
                 _g7621776228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7621576246_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp77212
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp77210
                                                         (let ((__tmp77211
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L76203_ '()))))
                   (declare (not safe))
                   (cons '() __tmp77211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77212
                                                          __tmp77210))
                                                  (gx#stx-source _L76123_))))))
                                          _g7618976200_))))
                                 (_g7618776250_
                                  (_generate-clause75906_
                                   _L76123_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L76172_ '())))))))
                           _g7615876169_))))
                  (_g7615676254_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7703077031_)
                                                     (let ((_e7613876265_
                                                            (gx#syntax-e
                                                             ___stx7703077031_)))
                                                       (let ((_tl7614076272_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7613876265_)))
                     (_hd7613976269_
                      (let () (declare (not safe)) (##car _e7613876265_))))
                 (if (gx#identifier? _hd7613976269_)
                     (if (gx#free-identifier=? |gx[1]#_g77213_| _hd7613976269_)
                         (___kont7703377034_ _tl7614076272_)
                         (___kont7703577036_))
                     (___kont7703577036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7703577036_))))))
                                          (___kont7705577056_
                                           (lambda ()
                                             (let* ((_g7606776075_
                                                     (lambda (_g7606876071_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7606876071_)))
                                                    (_g7606676100_
                                                     (lambda (_g7606876079_)
                                                       ((lambda (_L76082_)
                                                          (let ()
                                                            (let ((__tmp77214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77215
                                  (let ((__tmp77216
                                         (gx#stx-wrap-source
                                          (let ((__tmp77224
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp77217
                                                 (let ((__tmp77218
                                                        (let ((__tmp77219
                                                               (let ((__tmp77223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp77220
                              (let ((__tmp77221
                                     (let ((__tmp77222
                                            (let ()
                                              (declare (not safe))
                                              (cons _L76082_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp77222))))
                                (declare (not safe))
                                (cons '#f __tmp77221))))
                         (declare (not safe))
                         (cons __tmp77223 __tmp77220))))
                  (declare (not safe))
                  (cons __tmp77219 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp77218))))
                                            (declare (not safe))
                                            (cons __tmp77224 __tmp77217))
                                          (gx#stx-source _stx75749_))))
                                    (declare (not safe))
                                    (cons __tmp77216 '()))))
                             (declare (not safe))
                             (cons _E76040_ __tmp77215))))
                      (declare (not safe))
                      (cons __tmp77214 _r76041_))))
                _g7606876079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7606676100_ _tgt75901_)))))
                                      (if (gx#stx-pair? ___stx7705077051_)
                                          (let ((_e7604876111_
                                                 (gx#syntax-e
                                                  ___stx7705077051_)))
                                            (let ((_tl7605076118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7604876111_)))
                                                  (_hd7604976115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7604876111_))))
                                              (___kont7705377054_
                                               _tl7605076118_
                                               _hd7604976115_)))
                                          (___kont7705577056_))))))))
                      (let* ((_bind75911_
                              (_generate-clauses75909_ _clauses75904_))
                             (_g7591475931_
                              (lambda (_g7591575927_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7591575927_)))
                             (_g7591376028_
                              (lambda (_g7591575935_)
                                (if (gx#stx-pair/null? _g7591575935_)
                                    (let ((_g77225_
                                           (gx#syntax-split-splice
                                            _g7591575935_
                                            '0)))
                                      (begin
                                        (let ((_g77226_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g77225_)
                                                     (##vector-length _g77225_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g77226_ 2)))
                                              (error "Context expects 2 values"
                                                     _g77226_)))
                                        (let ((_target7591775938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g77225_ 0)))
                                              (_tl7591975941_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g77225_ 1))))
                                          (if (gx#stx-null? _tl7591975941_)
                                              (letrec ((_loop7592075944_
                                                        (lambda (_hd7591875948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7592475951_)
                  (if (gx#stx-pair? _hd7591875948_)
                      (let ((_e7592175954_ (gx#syntax-e _hd7591875948_)))
                        (let ((_lp-hd7592275958_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7592175954_)))
                              (_lp-tl7592375961_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7592175954_))))
                          (_loop7592075944_
                           _lp-tl7592375961_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7592275958_ _bind-try7592475951_)))))
                      (let ((_bind-try7592575964_
                             (reverse _bind-try7592475951_)))
                        ((lambda (_L75968_)
                           (let ()
                             (let* ((_g7598675994_
                                     (lambda (_g7598775990_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7598775990_)))
                                    (_g7598576024_
                                     (lambda (_g7598775998_)
                                       ((lambda (_L76001_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp77232
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp77227
                                                     (let ((__tmp77230
                                                            (let ((__tmp77231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7601576018_ _g7601676021_)
                             (let ()
                               (declare (not safe))
                               (cons _g7601576018_ _g7601676021_)))))
                      (declare (not safe))
                      (foldr1 __tmp77231 '() _L75968_)))
                   (__tmp77228
                    (let ((__tmp77229
                           (let () (declare (not safe)) (cons _L76001_ '()))))
                      (declare (not safe))
                      (cons __tmp77229 '()))))
               (declare (not safe))
               (cons __tmp77230 __tmp77228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77232
                                                      __tmp77227)))))
                                        _g7598775998_))))
                               (_g7598576024_ (car (last _bind75911_))))))
                         _bind-try7592575964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7592075944_
                                                 _target7591775938_
                                                 '()))
                                              (_g7591475931_ _g7591575935_)))))
                                    (_g7591475931_ _g7591575935_)))))
                        (_g7591376028_ _bind75911_))))))
          (let* ((_g7575575774_
                  (lambda (_g7575675770_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7575675770_)))
                 (_g7575475897_
                  (lambda (_g7575675778_)
                    (if (gx#stx-pair? _g7575675778_)
                        (let ((_e7576075781_ (gx#syntax-e _g7575675778_)))
                          (let ((_hd7576175785_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7576075781_)))
                                (_tl7576275788_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7576075781_))))
                            (if (gx#stx-pair? _tl7576275788_)
                                (let ((_e7576375791_
                                       (gx#syntax-e _tl7576275788_)))
                                  (let ((_hd7576475795_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7576375791_)))
                                        (_tl7576575798_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7576375791_))))
                                    (if (gx#stx-pair? _tl7576575798_)
                                        (let ((_e7576675801_
                                               (gx#syntax-e _tl7576575798_)))
                                          (let ((_hd7576775805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7576675801_)))
                                                (_tl7576875808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7576675801_))))
                                            ((lambda (_L75811_
                                                      _L75813_
                                                      _L75814_)
                                               (if (and (gx#identifier-list?
                                                         _L75813_)
                                                        (gx#stx-list?
                                                         _L75811_))
                                                   (let* ((_g7583275840_
                                                           (lambda (_g7583375836_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7583375836_)))
                                                          (_g7583175893_
                                                           (lambda (_g7583375844_)
                                                             ((lambda (_L75847_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7585975867_
                                  (lambda (_g7586075863_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7586075863_)))
                                 (_g7585875889_
                                  (lambda (_g7586075871_)
                                    ((lambda (_L75874_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp77238
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp77233
                                                  (let ((__tmp77235
                                                         (let ((__tmp77236
                                                                (let ((__tmp77237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L75814_ '()))))
                          (declare (not safe))
                          (cons _L75847_ __tmp77237))))
                   (declare (not safe))
                   (cons __tmp77236 '())))
                (__tmp77234 (let () (declare (not safe)) (cons _L75874_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77235
                                                          __tmp77234))))
                                             (declare (not safe))
                                             (cons __tmp77238 __tmp77233)))))
                                     _g7586075871_))))
                            (_g7585875889_
                             (_generate75752_
                              _L75847_
                              (gx#syntax->list _L75813_)
                              _L75811_)))))
                      _g7583375844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7583175893_
                                                      (gx#genident 'e)))
                                                   (_g7575575774_
                                                    _g7575675778_)))
                                             _tl7576875808_
                                             _hd7576775805_
                                             _hd7576475795_)))
                                        (_g7575575774_ _g7575675778_))))
                                (_g7575575774_ _g7575675778_))))
                        (_g7575575774_ _g7575675778_)))))
            (_g7575475897_ _stx75749_)))))))
