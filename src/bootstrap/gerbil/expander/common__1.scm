(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g136993_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136995_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136997_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137002_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137005_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137010_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137013_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137018_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137021_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137026_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137029_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137136_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj136988
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
           __obj136988
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136992 |gx[1]#_g136993_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           __tmp136992
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136994 |gx[1]#_g136995_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           __tmp136994
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136996 |gx[1]#_g136997_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           __tmp136996
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136998
               (let ((__tmp137003
                      (let ((__tmp137004 |gx[1]#_g137005_|))
                        (declare (not safe))
                        (cons 'e __tmp137004)))
                     (__tmp136999
                      (let ((__tmp137000
                             (let ((__tmp137001 |gx[1]#_g137002_|))
                               (declare (not safe))
                               (cons 'source __tmp137001))))
                        (declare (not safe))
                        (cons __tmp137000 '()))))
                 (declare (not safe))
                 (cons __tmp137003 __tmp136999))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           __tmp136998
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137006
               (let ((__tmp137011
                      (let ((__tmp137012 |gx[1]#_g137013_|))
                        (declare (not safe))
                        (cons 'e __tmp137012)))
                     (__tmp137007
                      (let ((__tmp137008
                             (let ((__tmp137009 |gx[1]#_g137010_|))
                               (declare (not safe))
                               (cons 'source __tmp137009))))
                        (declare (not safe))
                        (cons __tmp137008 '()))))
                 (declare (not safe))
                 (cons __tmp137011 __tmp137007))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           __tmp137006
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137014
               (let ((__tmp137019
                      (let ((__tmp137020 |gx[1]#_g137021_|))
                        (declare (not safe))
                        (cons 'e __tmp137020)))
                     (__tmp137015
                      (let ((__tmp137016
                             (let ((__tmp137017 |gx[1]#_g137018_|))
                               (declare (not safe))
                               (cons 'source __tmp137017))))
                        (declare (not safe))
                        (cons __tmp137016 '()))))
                 (declare (not safe))
                 (cons __tmp137019 __tmp137015))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           __tmp137014
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137022
               (let ((__tmp137027
                      (let ((__tmp137028 |gx[1]#_g137029_|))
                        (declare (not safe))
                        (cons 'e __tmp137028)))
                     (__tmp137023
                      (let ((__tmp137024
                             (let ((__tmp137025 |gx[1]#_g137026_|))
                               (declare (not safe))
                               (cons 'source __tmp137025))))
                        (declare (not safe))
                        (cons __tmp137024 '()))))
                 (declare (not safe))
                 (cons __tmp137027 __tmp137023))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136988
           __tmp137022
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj136988))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx131040_)
        (let* ((_g131044131058_
                (lambda (_g131045131054_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g131045131054_)))
               (_g131043131100_
                (lambda (_g131045131062_)
                  (if (gx#stx-pair? _g131045131062_)
                      (let ((_e131049131065_ (gx#syntax-e _g131045131062_)))
                        (let ((_hd131048131069_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131049131065_)))
                              (_tl131047131072_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131049131065_))))
                          (if (gx#stx-pair? _tl131047131072_)
                              (let ((_e131052131075_
                                     (gx#syntax-e _tl131047131072_)))
                                (let ((_hd131051131079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131052131075_)))
                                      (_tl131050131082_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131052131075_))))
                                  (if (gx#stx-null? _tl131050131082_)
                                      ((lambda (_L131085_)
                                         (let ((__tmp137039
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp137030
                                                (let ((__tmp137036
                                                       (let ((__tmp137038
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp137037
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L131085_ '()))))
                 (declare (not safe))
                 (cons __tmp137038 __tmp137037)))
              (__tmp137031
               (let ((__tmp137032
                      (let ((__tmp137035 (gx#datum->syntax '#f 'error))
                            (__tmp137033
                             (let ((__tmp137034
                                    (let ()
                                      (declare (not safe))
                                      (cons _L131085_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp137034))))
                        (declare (not safe))
                        (cons __tmp137035 __tmp137033))))
                 (declare (not safe))
                 (cons __tmp137032 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137036
                                                        __tmp137031))))
                                           (declare (not safe))
                                           (cons __tmp137039 __tmp137030)))
                                       _hd131051131079_)
                                      (_g131044131058_ _g131045131062_))))
                              (_g131044131058_ _g131045131062_))))
                      (_g131044131058_ _g131045131062_)))))
          (_g131043131100_ _$stx131040_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx131104_)
        (letrec ((_generate131107_
                  (lambda (_tgt131256_ _kws131258_ _clauses131259_)
                    (letrec ((_generate-clause131261_
                              (lambda (_hd132171_ _E132173_)
                                (let* ((___stx136891136892_ _hd132171_)
                                       (_g132177132204_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx136891136892_))))
                                  (let ((___kont136894136895_
                                         (lambda (_L132300_ _L132302_)
                                           (_generate1131263_
                                            _hd132171_
                                            _L132302_
                                            '#t
                                            _L132300_
                                            _E132173_)))
                                        (___kont136896136897_
                                         (lambda (_L132252_
                                                  _L132254_
                                                  _L132255_)
                                           (_generate1131263_
                                            _hd132171_
                                            _L132255_
                                            _L132254_
                                            _L132252_
                                            _E132173_)))
                                        (___kont136898136899_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx131104_
                                            _hd132171_))))
                                    (if (gx#stx-pair? ___stx136891136892_)
                                        (let ((_e132183132280_
                                               (gx#syntax-e
                                                ___stx136891136892_)))
                                          (let ((_tl132181132287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132183132280_)))
                                                (_hd132182132284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132183132280_))))
                                            (if (gx#stx-pair? _tl132181132287_)
                                                (let ((_e132186132290_
                                                       (gx#syntax-e
                                                        _tl132181132287_)))
                                                  (let ((_tl132184132297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132186132290_)))
                                                        (_hd132185132294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132186132290_))))
                                                    (if (gx#stx-null?
                                                         _tl132184132297_)
                                                        (___kont136894136895_
                                                         _hd132185132294_
                                                         _hd132182132284_)
                                                        (if (gx#stx-pair?
                                                             _tl132184132297_)
                                                            (let ((_e132198132242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl132184132297_)))
                      (let ((_tl132196132249_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132198132242_)))
                            (_hd132197132246_
                             (let ()
                               (declare (not safe))
                               (##car _e132198132242_))))
                        (if (gx#stx-null? _tl132196132249_)
                            (___kont136896136897_
                             _hd132197132246_
                             _hd132185132294_
                             _hd132182132284_)
                            (___kont136898136899_))))
                    (___kont136898136899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136898136899_))))
                                        (___kont136898136899_))))))
                             (_generate1131263_
                              (lambda (_where131649_
                                       _hd131651_
                                       _fender131652_
                                       _body131653_
                                       _E131654_)
                                (letrec ((_recur131656_
                                          (lambda (_hd131659_
                                                   _tgt131661_
                                                   _K131662_)
                                            (let* ((___stx136937136938_
                                                    _hd131659_)
                                                   (_g131665131677_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136937136938_))))
                                              (let ((___kont136940136941_
                                                     (lambda (_L131961_
                                                              _L131963_)
                                                       (let* ((_g131974131982_
                                                               (lambda (_g131975131978_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g131975131978_)))
                      (_g131973132163_
                       (lambda (_g131975131986_)
                         ((lambda (_L131989_)
                            (let ()
                              (let* ((_g132001132009_
                                      (lambda (_g132002132005_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g132002132005_)))
                                     (_g132000132159_
                                      (lambda (_g132002132013_)
                                        ((lambda (_L132016_)
                                           (let ()
                                             (let* ((_g132029132037_
                                                     (lambda (_g132030132033_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g132030132033_)))
                                                    (_g132028132155_
                                                     (lambda (_g132030132041_)
                                                       ((lambda (_L132044_)
                                                          (let ()
                                                            (let* ((_g132057132065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g132058132061_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132058132061_)))
                           (_g132056132151_
                            (lambda (_g132058132069_)
                              ((lambda (_L132072_)
                                 (let ()
                                   (let* ((_g132085132093_
                                           (lambda (_g132086132089_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132086132089_)))
                                          (_g132084132147_
                                           (lambda (_g132086132097_)
                                             ((lambda (_L132100_)
                                                (let ()
                                                  (let* ((_g132113132121_
                                                          (lambda (_g132114132117_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g132114132117_)))
                                                         (_g132112132143_
                                                          (lambda (_g132114132125_)
                                                            ((lambda (_L132128_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp137072 (gx#datum->syntax '#f 'if))
                                 (__tmp137040
                                  (let ((__tmp137069
                                         (let ((__tmp137071
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp137070
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L131989_ '()))))
                                           (declare (not safe))
                                           (cons __tmp137071 __tmp137070)))
                                        (__tmp137041
                                         (let ((__tmp137043
                                                (let ((__tmp137068
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp137044
                                                       (let ((__tmp137062
                                                              (let ((__tmp137063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137064
                                    (let ((__tmp137065
                                           (let ((__tmp137067
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp137066
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131989_ '()))))
                                             (declare (not safe))
                                             (cons __tmp137067 __tmp137066))))
                                      (declare (not safe))
                                      (cons __tmp137065 '()))))
                               (declare (not safe))
                               (cons _L132016_ __tmp137064))))
                        (declare (not safe))
                        (cons __tmp137063 '())))
                     (__tmp137045
                      (let ((__tmp137046
                             (let ((__tmp137061 (gx#datum->syntax '#f 'let))
                                   (__tmp137047
                                    (let ((__tmp137049
                                           (let ((__tmp137056
                                                  (let ((__tmp137057
                                                         (let ((__tmp137058
                                                                (let ((__tmp137060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp137059
                               (let ()
                                 (declare (not safe))
                                 (cons _L132016_ '()))))
                          (declare (not safe))
                          (cons __tmp137060 __tmp137059))))
                   (declare (not safe))
                   (cons __tmp137058 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L132044_
                                                          __tmp137057)))
                                                 (__tmp137050
                                                  (let ((__tmp137051
                                                         (let ((__tmp137052
                                                                (let ((__tmp137053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137055
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp137054
                                      (let ()
                                        (declare (not safe))
                                        (cons _L132016_ '()))))
                                 (declare (not safe))
                                 (cons __tmp137055 __tmp137054))))
                          (declare (not safe))
                          (cons __tmp137053 '()))))
                   (declare (not safe))
                   (cons _L132072_ __tmp137052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137051 '()))))
                                             (declare (not safe))
                                             (cons __tmp137056 __tmp137050)))
                                          (__tmp137048
                                           (let ()
                                             (declare (not safe))
                                             (cons _L132100_ '()))))
                                      (declare (not safe))
                                      (cons __tmp137049 __tmp137048))))
                               (declare (not safe))
                               (cons __tmp137061 __tmp137047))))
                        (declare (not safe))
                        (cons __tmp137046 '()))))
                 (declare (not safe))
                 (cons __tmp137062 __tmp137045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137068
                                                        __tmp137044)))
                                               (__tmp137042
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L132128_ '()))))
                                           (declare (not safe))
                                           (cons __tmp137043 __tmp137042))))
                                    (declare (not safe))
                                    (cons __tmp137069 __tmp137041))))
                             (declare (not safe))
                             (cons __tmp137072 __tmp137040)))))
                     _g132114132125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g132112132143_
                                                     _E131654_))))
                                              _g132086132097_))))
                                     (_g132084132147_
                                      (_recur131656_
                                       _L131963_
                                       _L132044_
                                       (_recur131656_
                                        _L131961_
                                        _L132072_
                                        _K131662_))))))
                               _g132058132069_))))
                      (_g132056132151_ (gx#genident 'tl)))))
                _g132030132041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g132028132155_
                                                (gx#genident 'hd)))))
                                         _g132002132013_))))
                                (_g132000132159_ (gx#genident 'e)))))
                          _g131975131986_))))
                 (_g131973132163_ _tgt131661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136942136943_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd131659_)
                                                           (if (gx#underscore?
                                                                _hd131659_)
                                                               _K131662_
                                                               (if (let ((__tmp137117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g131687131689_)
                                    (gx#bound-identifier=?
                                     _g131687131689_
                                     _hd131659_))))
                             (declare (not safe))
                             (find __tmp137117 _kws131258_))
                           (let* ((_g131693131708_
                                   (lambda (_g131694131704_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131694131704_)))
                                  (_g131692131759_
                                   (lambda (_g131694131712_)
                                     (if (gx#stx-pair? _g131694131712_)
                                         (let ((_e131699131715_
                                                (gx#syntax-e _g131694131712_)))
                                           (let ((_hd131698131719_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131699131715_)))
                                                 (_tl131697131722_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131699131715_))))
                                             (if (gx#stx-pair?
                                                  _tl131697131722_)
                                                 (let ((_e131702131725_
                                                        (gx#syntax-e
                                                         _tl131697131722_)))
                                                   (let ((_hd131701131729_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131702131725_)))
                                                         (_tl131700131732_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131702131725_))))
                                                     (if (gx#stx-null?
                                                          _tl131700131732_)
                                                         ((lambda (_L131735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131737_)
                    (let ()
                      (let ((__tmp137116 (gx#datum->syntax '#f 'if))
                            (__tmp137099
                             (let ((__tmp137102
                                    (let ((__tmp137115
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp137103
                                           (let ((__tmp137112
                                                  (let ((__tmp137114
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp137113
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L131737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137114
                                                          __tmp137113)))
                                                 (__tmp137104
                                                  (let ((__tmp137105
                                                         (let ((__tmp137111
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp137106
                        (let ((__tmp137107
                               (let ((__tmp137108
                                      (let ((__tmp137110
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp137109
                                             (let ()
                                               (declare (not safe))
                                               (cons _L131735_ '()))))
                                        (declare (not safe))
                                        (cons __tmp137110 __tmp137109))))
                                 (declare (not safe))
                                 (cons __tmp137108 '()))))
                          (declare (not safe))
                          (cons _L131737_ __tmp137107))))
                   (declare (not safe))
                   (cons __tmp137111 __tmp137106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137105 '()))))
                                             (declare (not safe))
                                             (cons __tmp137112 __tmp137104))))
                                      (declare (not safe))
                                      (cons __tmp137115 __tmp137103)))
                                   (__tmp137100
                                    (let ((__tmp137101
                                           (let ()
                                             (declare (not safe))
                                             (cons _E131654_ '()))))
                                      (declare (not safe))
                                      (cons _K131662_ __tmp137101))))
                               (declare (not safe))
                               (cons __tmp137102 __tmp137100))))
                        (declare (not safe))
                        (cons __tmp137116 __tmp137099))))
                  _hd131701131729_
                  _hd131698131719_)
                 (_g131693131708_ _g131694131712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131693131708_
                                                  _g131694131712_))))
                                         (_g131693131708_ _g131694131712_)))))
                             (_g131692131759_ (list _tgt131661_ _hd131659_)))
                           (let* ((_g131763131778_
                                   (lambda (_g131764131774_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131764131774_)))
                                  (_g131762131822_
                                   (lambda (_g131764131782_)
                                     (if (gx#stx-pair? _g131764131782_)
                                         (let ((_e131769131785_
                                                (gx#syntax-e _g131764131782_)))
                                           (let ((_hd131768131789_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131769131785_)))
                                                 (_tl131767131792_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131769131785_))))
                                             (if (gx#stx-pair?
                                                  _tl131767131792_)
                                                 (let ((_e131772131795_
                                                        (gx#syntax-e
                                                         _tl131767131792_)))
                                                   (let ((_hd131771131799_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131772131795_)))
                                                         (_tl131770131802_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131772131795_))))
                                                     (if (gx#stx-null?
                                                          _tl131770131802_)
                                                         ((lambda (_L131805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131807_)
                    (let ()
                      (let ((__tmp137098 (gx#datum->syntax '#f 'let))
                            (__tmp137093
                             (let ((__tmp137095
                                    (let ((__tmp137096
                                           (let ((__tmp137097
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131807_ '()))))
                                             (declare (not safe))
                                             (cons _L131805_ __tmp137097))))
                                      (declare (not safe))
                                      (cons __tmp137096 '())))
                                   (__tmp137094
                                    (let ()
                                      (declare (not safe))
                                      (cons _K131662_ '()))))
                               (declare (not safe))
                               (cons __tmp137095 __tmp137094))))
                        (declare (not safe))
                        (cons __tmp137098 __tmp137093))))
                  _hd131771131799_
                  _hd131768131789_)
                 (_g131763131778_ _g131764131782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131763131778_
                                                  _g131764131782_))))
                                         (_g131763131778_ _g131764131782_)))))
                             (_g131762131822_ (list _tgt131661_ _hd131659_)))))
                   (if (gx#stx-null? _hd131659_)
                       (let* ((_g131826131834_
                               (lambda (_g131827131830_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g131827131830_)))
                              (_g131825131852_
                               (lambda (_g131827131838_)
                                 ((lambda (_L131841_)
                                    (let ()
                                      (let ((__tmp137092
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp137086
                                             (let ((__tmp137089
                                                    (let ((__tmp137091
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp137090
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L131841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp137091 __tmp137090)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137087
                                                    (let ((__tmp137088
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E131654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K131662_ __tmp137088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137089
                                                     __tmp137087))))
                                        (declare (not safe))
                                        (cons __tmp137092 __tmp137086))))
                                  _g131827131838_))))
                         (_g131825131852_ _tgt131661_))
                       (if (gx#stx-datum? _hd131659_)
                           (let* ((_g131856131875_
                                   (lambda (_g131857131871_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131857131871_)))
                                  (_g131855131933_
                                   (lambda (_g131857131879_)
                                     (if (gx#stx-pair? _g131857131879_)
                                         (let ((_e131863131882_
                                                (gx#syntax-e _g131857131879_)))
                                           (let ((_hd131862131886_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131863131882_)))
                                                 (_tl131861131889_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131863131882_))))
                                             (if (gx#stx-pair?
                                                  _tl131861131889_)
                                                 (let ((_e131866131892_
                                                        (gx#syntax-e
                                                         _tl131861131889_)))
                                                   (let ((_hd131865131896_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131866131892_)))
                                                         (_tl131864131899_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131866131892_))))
                                                     (if (gx#stx-pair?
                                                          _tl131864131899_)
                                                         (let ((_e131869131902_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl131864131899_)))
                   (let ((_hd131868131906_
                          (let ()
                            (declare (not safe))
                            (##car _e131869131902_)))
                         (_tl131867131909_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131869131902_))))
                     (if (gx#stx-null? _tl131867131909_)
                         ((lambda (_L131912_ _L131914_ _L131915_)
                            (let ()
                              (let ((__tmp137085 (gx#datum->syntax '#f 'if))
                                    (__tmp137073
                                     (let ((__tmp137076
                                            (let ((__tmp137077
                                                   (let ((__tmp137082
                                                          (let ((__tmp137084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp137083
                         (let () (declare (not safe)) (cons _L131915_ '()))))
                    (declare (not safe))
                    (cons __tmp137084 __tmp137083)))
                 (__tmp137078
                  (let ((__tmp137079
                         (let ((__tmp137081 (gx#datum->syntax '#f 'quote))
                               (__tmp137080
                                (let ()
                                  (declare (not safe))
                                  (cons _L131914_ '()))))
                           (declare (not safe))
                           (cons __tmp137081 __tmp137080))))
                    (declare (not safe))
                    (cons __tmp137079 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137082
                                                           __tmp137078))))
                                              (declare (not safe))
                                              (cons _L131912_ __tmp137077)))
                                           (__tmp137074
                                            (let ((__tmp137075
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E131654_ '()))))
                                              (declare (not safe))
                                              (cons _K131662_ __tmp137075))))
                                       (declare (not safe))
                                       (cons __tmp137076 __tmp137074))))
                                (declare (not safe))
                                (cons __tmp137085 __tmp137073))))
                          _hd131868131906_
                          _hd131865131896_
                          _hd131862131886_)
                         (_g131856131875_ _g131857131879_))))
                 (_g131856131875_ _g131857131879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131856131875_
                                                  _g131857131879_))))
                                         (_g131856131875_ _g131857131879_)))))
                             (_g131855131933_
                              (list _tgt131661_
                                    _hd131659_
                                    (let ((_e131937_ (gx#stx-e _hd131659_)))
                                      (if (or (keyword? _e131937_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e131937_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e131937_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx131104_
                            _where131649_
                            _hd131659_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx136937136938_)
                                                    (let ((_e131671131951_
                                                           (gx#syntax-e
                                                            ___stx136937136938_)))
                                                      (let ((_tl131669131958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131671131951_)))
                    (_hd131670131955_
                     (let () (declare (not safe)) (##car _e131671131951_))))
                (___kont136940136941_ _tl131669131958_ _hd131670131955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136942136943_)))))))
                                  (_recur131656_
                                   _hd131651_
                                   _tgt131256_
                                   (let ((__tmp137121
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp137118
                                          (let ((__tmp137119
                                                 (let ((__tmp137120
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E131654_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body131653_
                                                         __tmp137120))))
                                            (declare (not safe))
                                            (cons _fender131652_
                                                  __tmp137119))))
                                     (declare (not safe))
                                     (cons __tmp137121 __tmp137118))))))
                             (_generate-clauses131264_
                              (lambda (_clauses131387_)
                                (let _lp131390_ ((_rest131393_ _clauses131387_)
                                                 (_E131395_ (gx#genident 'E))
                                                 (_r131396_ '()))
                                  (let* ((___stx136973136974_ _rest131393_)
                                         (_g131399131411_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx136973136974_))))
                                    (let ((___kont136976136977_
                                           (lambda (_L131476_ _L131478_)
                                             (let* ((___stx136953136954_
                                                     _L131478_)
                                                    (_g131490131501_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx136953136954_))))
                                               (let ((___kont136956136957_
                                                      (lambda (_L131630_)
                                                        (if (gx#stx-null?
                                                             _L131476_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L131630_)
                             (let ((__tmp137130 (gx#stx-null? _L131630_)))
                               (declare (not safe))
                               (not __tmp137130)))
                        (let ((__tmp137122
                               (let ((__tmp137123
                                      (let ((__tmp137124
                                             (gx#stx-wrap-source
                                              (let ((__tmp137129
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp137125
                                                     (let ((__tmp137126
                                                            (let ((__tmp137127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137128 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp137128 _L131630_))))
                      (declare (not safe))
                      (cons __tmp137127 '()))))
               (declare (not safe))
               (cons '() __tmp137126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137129 __tmp137125))
                                              (gx#stx-source _L131478_))))
                                        (declare (not safe))
                                        (cons __tmp137124 '()))))
                                 (declare (not safe))
                                 (cons _E131395_ __tmp137123))))
                          (declare (not safe))
                          (cons __tmp137122 _r131396_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx131104_
                         _L131478_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx131104_
                     _L131478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136958136959_
                                                      (lambda ()
                                                        (let* ((_g131512131520_
                                                                (lambda (_g131513131516_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131513131516_)))
                       (_g131511131609_
                        (lambda (_g131513131524_)
                          ((lambda (_L131527_)
                             (let ()
                               (let* ((_g131543131551_
                                       (lambda (_g131544131547_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g131544131547_)))
                                      (_g131542131605_
                                       (lambda (_g131544131555_)
                                         ((lambda (_L131558_)
                                            (let ()
                                              (let* ((_g131571131579_
                                                      (lambda (_g131572131575_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g131572131575_)))
                                                     (_g131570131601_
                                                      (lambda (_g131572131583_)
                                                        ((lambda (_L131586_)
                                                           (let ()
                                                             (let ()
                                                               (_lp131390_
                                                                _L131476_
                                                                _L131527_
                                                                (let ((__tmp137131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137132
                                      (let ()
                                        (declare (not safe))
                                        (cons _L131586_ '()))))
                                 (declare (not safe))
                                 (cons _E131395_ __tmp137132))))
                          (declare (not safe))
                          (cons __tmp137131 _r131396_))))))
                 _g131572131583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g131570131601_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp137135
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp137133
                                                         (let ((__tmp137134
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L131558_ '()))))
                   (declare (not safe))
                   (cons '() __tmp137134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137135
                                                          __tmp137133))
                                                  (gx#stx-source
                                                   _L131478_))))))
                                          _g131544131555_))))
                                 (_g131542131605_
                                  (_generate-clause131261_
                                   _L131478_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L131527_ '())))))))
                           _g131513131524_))))
                  (_g131511131609_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx136953136954_)
                                                     (let ((_e131495131620_
                                                            (gx#syntax-e
                                                             ___stx136953136954_)))
                                                       (let ((_tl131493131627_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131495131620_)))
                     (_hd131494131624_
                      (let () (declare (not safe)) (##car _e131495131620_))))
                 (if (gx#identifier? _hd131494131624_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g137136_|
                          _hd131494131624_)
                         (___kont136956136957_ _tl131493131627_)
                         (___kont136958136959_))
                     (___kont136958136959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136958136959_))))))
                                          (___kont136978136979_
                                           (lambda ()
                                             (let* ((_g131422131430_
                                                     (lambda (_g131423131426_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g131423131426_)))
                                                    (_g131421131455_
                                                     (lambda (_g131423131434_)
                                                       ((lambda (_L131437_)
                                                          (let ()
                                                            (let ((__tmp137137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137138
                                  (let ((__tmp137139
                                         (gx#stx-wrap-source
                                          (let ((__tmp137147
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp137140
                                                 (let ((__tmp137141
                                                        (let ((__tmp137142
                                                               (let ((__tmp137146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp137143
                              (let ((__tmp137144
                                     (let ((__tmp137145
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131437_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp137145))))
                                (declare (not safe))
                                (cons '#f __tmp137144))))
                         (declare (not safe))
                         (cons __tmp137146 __tmp137143))))
                  (declare (not safe))
                  (cons __tmp137142 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp137141))))
                                            (declare (not safe))
                                            (cons __tmp137147 __tmp137140))
                                          (gx#stx-source _stx131104_))))
                                    (declare (not safe))
                                    (cons __tmp137139 '()))))
                             (declare (not safe))
                             (cons _E131395_ __tmp137138))))
                      (declare (not safe))
                      (cons __tmp137137 _r131396_))))
                _g131423131434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g131421131455_
                                                _tgt131256_)))))
                                      (if (gx#stx-pair? ___stx136973136974_)
                                          (let ((_e131405131466_
                                                 (gx#syntax-e
                                                  ___stx136973136974_)))
                                            (let ((_tl131403131473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131405131466_)))
                                                  (_hd131404131470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131405131466_))))
                                              (___kont136976136977_
                                               _tl131403131473_
                                               _hd131404131470_)))
                                          (___kont136978136979_))))))))
                      (let* ((_bind131266_
                              (_generate-clauses131264_ _clauses131259_))
                             (_g131269131286_
                              (lambda (_g131270131282_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g131270131282_)))
                             (_g131268131383_
                              (lambda (_g131270131290_)
                                (if (gx#stx-pair/null? _g131270131290_)
                                    (let ((_g137148_
                                           (gx#syntax-split-splice
                                            _g131270131290_
                                            '0)))
                                      (begin
                                        (let ((_g137149_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137148_)
                                                     (##vector-length
                                                      _g137148_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137149_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137149_)))
                                        (let ((_target131272131293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137148_ 0)))
                                              (_tl131274131296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137148_ 1))))
                                          (if (gx#stx-null? _tl131274131296_)
                                              (letrec ((_loop131275131299_
                                                        (lambda (_hd131273131303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try131279131306_)
                  (if (gx#stx-pair? _hd131273131303_)
                      (let ((_e131276131309_ (gx#syntax-e _hd131273131303_)))
                        (let ((_lp-hd131277131313_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131276131309_)))
                              (_lp-tl131278131316_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131276131309_))))
                          (_loop131275131299_
                           _lp-tl131278131316_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd131277131313_
                                   _bind-try131279131306_)))))
                      (let ((_bind-try131280131319_
                             (reverse _bind-try131279131306_)))
                        ((lambda (_L131323_)
                           (let ()
                             (let* ((_g131341131349_
                                     (lambda (_g131342131345_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g131342131345_)))
                                    (_g131340131379_
                                     (lambda (_g131342131353_)
                                       ((lambda (_L131356_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp137155
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp137150
                                                     (let ((__tmp137153
                                                            (let ((__tmp137154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g131370131373_ _g131371131376_)
                             (let ()
                               (declare (not safe))
                               (cons _g131370131373_ _g131371131376_)))))
                      (declare (not safe))
                      (foldr1 __tmp137154 '() _L131323_)))
                   (__tmp137151
                    (let ((__tmp137152
                           (let () (declare (not safe)) (cons _L131356_ '()))))
                      (declare (not safe))
                      (cons __tmp137152 '()))))
               (declare (not safe))
               (cons __tmp137153 __tmp137151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137155
                                                      __tmp137150)))))
                                        _g131342131353_))))
                               (_g131340131379_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind131266_)))))))
                         _bind-try131280131319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop131275131299_
                                                 _target131272131293_
                                                 '()))
                                              (_g131269131286_
                                               _g131270131290_)))))
                                    (_g131269131286_ _g131270131290_)))))
                        (_g131268131383_ _bind131266_))))))
          (let* ((_g131110131129_
                  (lambda (_g131111131125_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g131111131125_)))
                 (_g131109131252_
                  (lambda (_g131111131133_)
                    (if (gx#stx-pair? _g131111131133_)
                        (let ((_e131117131136_ (gx#syntax-e _g131111131133_)))
                          (let ((_hd131116131140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131117131136_)))
                                (_tl131115131143_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131117131136_))))
                            (if (gx#stx-pair? _tl131115131143_)
                                (let ((_e131120131146_
                                       (gx#syntax-e _tl131115131143_)))
                                  (let ((_hd131119131150_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131120131146_)))
                                        (_tl131118131153_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131120131146_))))
                                    (if (gx#stx-pair? _tl131118131153_)
                                        (let ((_e131123131156_
                                               (gx#syntax-e _tl131118131153_)))
                                          (let ((_hd131122131160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131123131156_)))
                                                (_tl131121131163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131123131156_))))
                                            ((lambda (_L131166_
                                                      _L131168_
                                                      _L131169_)
                                               (if (and (gx#identifier-list?
                                                         _L131168_)
                                                        (gx#stx-list?
                                                         _L131166_))
                                                   (let* ((_g131187131195_
                                                           (lambda (_g131188131191_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g131188131191_)))
                                                          (_g131186131248_
                                                           (lambda (_g131188131199_)
                                                             ((lambda (_L131202_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g131214131222_
                                  (lambda (_g131215131218_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g131215131218_)))
                                 (_g131213131244_
                                  (lambda (_g131215131226_)
                                    ((lambda (_L131229_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp137161
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp137156
                                                  (let ((__tmp137158
                                                         (let ((__tmp137159
                                                                (let ((__tmp137160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L131169_ '()))))
                          (declare (not safe))
                          (cons _L131202_ __tmp137160))))
                   (declare (not safe))
                   (cons __tmp137159 '())))
                (__tmp137157
                 (let () (declare (not safe)) (cons _L131229_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137158
                                                          __tmp137157))))
                                             (declare (not safe))
                                             (cons __tmp137161 __tmp137156)))))
                                     _g131215131226_))))
                            (_g131213131244_
                             (_generate131107_
                              _L131202_
                              (gx#syntax->list _L131168_)
                              _L131166_)))))
                      _g131188131199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g131186131248_
                                                      (gx#genident 'e)))
                                                   (_g131110131129_
                                                    _g131111131133_)))
                                             _tl131121131163_
                                             _hd131122131160_
                                             _hd131119131150_)))
                                        (_g131110131129_ _g131111131133_))))
                                (_g131110131129_ _g131111131133_))))
                        (_g131110131129_ _g131111131133_)))))
            (_g131109131252_ _stx131104_)))))))
