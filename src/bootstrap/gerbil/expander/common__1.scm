(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g136989_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136991_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136993_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136998_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137001_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137006_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137009_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137014_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137017_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137022_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137025_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137132_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj136984
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
           __obj136984
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136988 |gx[1]#_g136989_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           __tmp136988
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136990 |gx[1]#_g136991_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           __tmp136990
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136992 |gx[1]#_g136993_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           __tmp136992
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136994
               (let ((__tmp136999
                      (let ((__tmp137000 |gx[1]#_g137001_|))
                        (declare (not safe))
                        (cons 'e __tmp137000)))
                     (__tmp136995
                      (let ((__tmp136996
                             (let ((__tmp136997 |gx[1]#_g136998_|))
                               (declare (not safe))
                               (cons 'source __tmp136997))))
                        (declare (not safe))
                        (cons __tmp136996 '()))))
                 (declare (not safe))
                 (cons __tmp136999 __tmp136995))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           __tmp136994
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137002
               (let ((__tmp137007
                      (let ((__tmp137008 |gx[1]#_g137009_|))
                        (declare (not safe))
                        (cons 'e __tmp137008)))
                     (__tmp137003
                      (let ((__tmp137004
                             (let ((__tmp137005 |gx[1]#_g137006_|))
                               (declare (not safe))
                               (cons 'source __tmp137005))))
                        (declare (not safe))
                        (cons __tmp137004 '()))))
                 (declare (not safe))
                 (cons __tmp137007 __tmp137003))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           __tmp137002
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137010
               (let ((__tmp137015
                      (let ((__tmp137016 |gx[1]#_g137017_|))
                        (declare (not safe))
                        (cons 'e __tmp137016)))
                     (__tmp137011
                      (let ((__tmp137012
                             (let ((__tmp137013 |gx[1]#_g137014_|))
                               (declare (not safe))
                               (cons 'source __tmp137013))))
                        (declare (not safe))
                        (cons __tmp137012 '()))))
                 (declare (not safe))
                 (cons __tmp137015 __tmp137011))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           __tmp137010
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137018
               (let ((__tmp137023
                      (let ((__tmp137024 |gx[1]#_g137025_|))
                        (declare (not safe))
                        (cons 'e __tmp137024)))
                     (__tmp137019
                      (let ((__tmp137020
                             (let ((__tmp137021 |gx[1]#_g137022_|))
                               (declare (not safe))
                               (cons 'source __tmp137021))))
                        (declare (not safe))
                        (cons __tmp137020 '()))))
                 (declare (not safe))
                 (cons __tmp137023 __tmp137019))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136984
           __tmp137018
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj136984))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx131036_)
        (let* ((_g131040131054_
                (lambda (_g131041131050_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g131041131050_)))
               (_g131039131096_
                (lambda (_g131041131058_)
                  (if (gx#stx-pair? _g131041131058_)
                      (let ((_e131045131061_ (gx#syntax-e _g131041131058_)))
                        (let ((_hd131044131065_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131045131061_)))
                              (_tl131043131068_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131045131061_))))
                          (if (gx#stx-pair? _tl131043131068_)
                              (let ((_e131048131071_
                                     (gx#syntax-e _tl131043131068_)))
                                (let ((_hd131047131075_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131048131071_)))
                                      (_tl131046131078_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131048131071_))))
                                  (if (gx#stx-null? _tl131046131078_)
                                      ((lambda (_L131081_)
                                         (let ((__tmp137035
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp137026
                                                (let ((__tmp137032
                                                       (let ((__tmp137034
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp137033
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L131081_ '()))))
                 (declare (not safe))
                 (cons __tmp137034 __tmp137033)))
              (__tmp137027
               (let ((__tmp137028
                      (let ((__tmp137031 (gx#datum->syntax '#f 'error))
                            (__tmp137029
                             (let ((__tmp137030
                                    (let ()
                                      (declare (not safe))
                                      (cons _L131081_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp137030))))
                        (declare (not safe))
                        (cons __tmp137031 __tmp137029))))
                 (declare (not safe))
                 (cons __tmp137028 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137032
                                                        __tmp137027))))
                                           (declare (not safe))
                                           (cons __tmp137035 __tmp137026)))
                                       _hd131047131075_)
                                      (_g131040131054_ _g131041131058_))))
                              (_g131040131054_ _g131041131058_))))
                      (_g131040131054_ _g131041131058_)))))
          (_g131039131096_ _$stx131036_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx131100_)
        (letrec ((_generate131103_
                  (lambda (_tgt131252_ _kws131254_ _clauses131255_)
                    (letrec ((_generate-clause131257_
                              (lambda (_hd132167_ _E132169_)
                                (let* ((___stx136887136888_ _hd132167_)
                                       (_g132173132200_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx136887136888_))))
                                  (let ((___kont136890136891_
                                         (lambda (_L132296_ _L132298_)
                                           (_generate1131259_
                                            _hd132167_
                                            _L132298_
                                            '#t
                                            _L132296_
                                            _E132169_)))
                                        (___kont136892136893_
                                         (lambda (_L132248_
                                                  _L132250_
                                                  _L132251_)
                                           (_generate1131259_
                                            _hd132167_
                                            _L132251_
                                            _L132250_
                                            _L132248_
                                            _E132169_)))
                                        (___kont136894136895_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx131100_
                                            _hd132167_))))
                                    (if (gx#stx-pair? ___stx136887136888_)
                                        (let ((_e132179132276_
                                               (gx#syntax-e
                                                ___stx136887136888_)))
                                          (let ((_tl132177132283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132179132276_)))
                                                (_hd132178132280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132179132276_))))
                                            (if (gx#stx-pair? _tl132177132283_)
                                                (let ((_e132182132286_
                                                       (gx#syntax-e
                                                        _tl132177132283_)))
                                                  (let ((_tl132180132293_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132182132286_)))
                                                        (_hd132181132290_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132182132286_))))
                                                    (if (gx#stx-null?
                                                         _tl132180132293_)
                                                        (___kont136890136891_
                                                         _hd132181132290_
                                                         _hd132178132280_)
                                                        (if (gx#stx-pair?
                                                             _tl132180132293_)
                                                            (let ((_e132194132238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl132180132293_)))
                      (let ((_tl132192132245_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132194132238_)))
                            (_hd132193132242_
                             (let ()
                               (declare (not safe))
                               (##car _e132194132238_))))
                        (if (gx#stx-null? _tl132192132245_)
                            (___kont136892136893_
                             _hd132193132242_
                             _hd132181132290_
                             _hd132178132280_)
                            (___kont136894136895_))))
                    (___kont136894136895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136894136895_))))
                                        (___kont136894136895_))))))
                             (_generate1131259_
                              (lambda (_where131645_
                                       _hd131647_
                                       _fender131648_
                                       _body131649_
                                       _E131650_)
                                (letrec ((_recur131652_
                                          (lambda (_hd131655_
                                                   _tgt131657_
                                                   _K131658_)
                                            (let* ((___stx136933136934_
                                                    _hd131655_)
                                                   (_g131661131673_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136933136934_))))
                                              (let ((___kont136936136937_
                                                     (lambda (_L131957_
                                                              _L131959_)
                                                       (let* ((_g131970131978_
                                                               (lambda (_g131971131974_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g131971131974_)))
                      (_g131969132159_
                       (lambda (_g131971131982_)
                         ((lambda (_L131985_)
                            (let ()
                              (let* ((_g131997132005_
                                      (lambda (_g131998132001_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g131998132001_)))
                                     (_g131996132155_
                                      (lambda (_g131998132009_)
                                        ((lambda (_L132012_)
                                           (let ()
                                             (let* ((_g132025132033_
                                                     (lambda (_g132026132029_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g132026132029_)))
                                                    (_g132024132151_
                                                     (lambda (_g132026132037_)
                                                       ((lambda (_L132040_)
                                                          (let ()
                                                            (let* ((_g132053132061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g132054132057_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132054132057_)))
                           (_g132052132147_
                            (lambda (_g132054132065_)
                              ((lambda (_L132068_)
                                 (let ()
                                   (let* ((_g132081132089_
                                           (lambda (_g132082132085_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132082132085_)))
                                          (_g132080132143_
                                           (lambda (_g132082132093_)
                                             ((lambda (_L132096_)
                                                (let ()
                                                  (let* ((_g132109132117_
                                                          (lambda (_g132110132113_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g132110132113_)))
                                                         (_g132108132139_
                                                          (lambda (_g132110132121_)
                                                            ((lambda (_L132124_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp137068 (gx#datum->syntax '#f 'if))
                                 (__tmp137036
                                  (let ((__tmp137065
                                         (let ((__tmp137067
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp137066
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L131985_ '()))))
                                           (declare (not safe))
                                           (cons __tmp137067 __tmp137066)))
                                        (__tmp137037
                                         (let ((__tmp137039
                                                (let ((__tmp137064
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp137040
                                                       (let ((__tmp137058
                                                              (let ((__tmp137059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137060
                                    (let ((__tmp137061
                                           (let ((__tmp137063
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp137062
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131985_ '()))))
                                             (declare (not safe))
                                             (cons __tmp137063 __tmp137062))))
                                      (declare (not safe))
                                      (cons __tmp137061 '()))))
                               (declare (not safe))
                               (cons _L132012_ __tmp137060))))
                        (declare (not safe))
                        (cons __tmp137059 '())))
                     (__tmp137041
                      (let ((__tmp137042
                             (let ((__tmp137057 (gx#datum->syntax '#f 'let))
                                   (__tmp137043
                                    (let ((__tmp137045
                                           (let ((__tmp137052
                                                  (let ((__tmp137053
                                                         (let ((__tmp137054
                                                                (let ((__tmp137056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp137055
                               (let ()
                                 (declare (not safe))
                                 (cons _L132012_ '()))))
                          (declare (not safe))
                          (cons __tmp137056 __tmp137055))))
                   (declare (not safe))
                   (cons __tmp137054 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L132040_
                                                          __tmp137053)))
                                                 (__tmp137046
                                                  (let ((__tmp137047
                                                         (let ((__tmp137048
                                                                (let ((__tmp137049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137051
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp137050
                                      (let ()
                                        (declare (not safe))
                                        (cons _L132012_ '()))))
                                 (declare (not safe))
                                 (cons __tmp137051 __tmp137050))))
                          (declare (not safe))
                          (cons __tmp137049 '()))))
                   (declare (not safe))
                   (cons _L132068_ __tmp137048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137047 '()))))
                                             (declare (not safe))
                                             (cons __tmp137052 __tmp137046)))
                                          (__tmp137044
                                           (let ()
                                             (declare (not safe))
                                             (cons _L132096_ '()))))
                                      (declare (not safe))
                                      (cons __tmp137045 __tmp137044))))
                               (declare (not safe))
                               (cons __tmp137057 __tmp137043))))
                        (declare (not safe))
                        (cons __tmp137042 '()))))
                 (declare (not safe))
                 (cons __tmp137058 __tmp137041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137064
                                                        __tmp137040)))
                                               (__tmp137038
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L132124_ '()))))
                                           (declare (not safe))
                                           (cons __tmp137039 __tmp137038))))
                                    (declare (not safe))
                                    (cons __tmp137065 __tmp137037))))
                             (declare (not safe))
                             (cons __tmp137068 __tmp137036)))))
                     _g132110132121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g132108132139_
                                                     _E131650_))))
                                              _g132082132093_))))
                                     (_g132080132143_
                                      (_recur131652_
                                       _L131959_
                                       _L132040_
                                       (_recur131652_
                                        _L131957_
                                        _L132068_
                                        _K131658_))))))
                               _g132054132065_))))
                      (_g132052132147_ (gx#genident 'tl)))))
                _g132026132037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g132024132151_
                                                (gx#genident 'hd)))))
                                         _g131998132009_))))
                                (_g131996132155_ (gx#genident 'e)))))
                          _g131971131982_))))
                 (_g131969132159_ _tgt131657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136938136939_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd131655_)
                                                           (if (gx#underscore?
                                                                _hd131655_)
                                                               _K131658_
                                                               (if (let ((__tmp137113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g131683131685_)
                                    (gx#bound-identifier=?
                                     _g131683131685_
                                     _hd131655_))))
                             (declare (not safe))
                             (find __tmp137113 _kws131254_))
                           (let* ((_g131689131704_
                                   (lambda (_g131690131700_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131690131700_)))
                                  (_g131688131755_
                                   (lambda (_g131690131708_)
                                     (if (gx#stx-pair? _g131690131708_)
                                         (let ((_e131695131711_
                                                (gx#syntax-e _g131690131708_)))
                                           (let ((_hd131694131715_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131695131711_)))
                                                 (_tl131693131718_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131695131711_))))
                                             (if (gx#stx-pair?
                                                  _tl131693131718_)
                                                 (let ((_e131698131721_
                                                        (gx#syntax-e
                                                         _tl131693131718_)))
                                                   (let ((_hd131697131725_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131698131721_)))
                                                         (_tl131696131728_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131698131721_))))
                                                     (if (gx#stx-null?
                                                          _tl131696131728_)
                                                         ((lambda (_L131731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131733_)
                    (let ()
                      (let ((__tmp137112 (gx#datum->syntax '#f 'if))
                            (__tmp137095
                             (let ((__tmp137098
                                    (let ((__tmp137111
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp137099
                                           (let ((__tmp137108
                                                  (let ((__tmp137110
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp137109
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L131733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137110
                                                          __tmp137109)))
                                                 (__tmp137100
                                                  (let ((__tmp137101
                                                         (let ((__tmp137107
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp137102
                        (let ((__tmp137103
                               (let ((__tmp137104
                                      (let ((__tmp137106
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp137105
                                             (let ()
                                               (declare (not safe))
                                               (cons _L131731_ '()))))
                                        (declare (not safe))
                                        (cons __tmp137106 __tmp137105))))
                                 (declare (not safe))
                                 (cons __tmp137104 '()))))
                          (declare (not safe))
                          (cons _L131733_ __tmp137103))))
                   (declare (not safe))
                   (cons __tmp137107 __tmp137102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137101 '()))))
                                             (declare (not safe))
                                             (cons __tmp137108 __tmp137100))))
                                      (declare (not safe))
                                      (cons __tmp137111 __tmp137099)))
                                   (__tmp137096
                                    (let ((__tmp137097
                                           (let ()
                                             (declare (not safe))
                                             (cons _E131650_ '()))))
                                      (declare (not safe))
                                      (cons _K131658_ __tmp137097))))
                               (declare (not safe))
                               (cons __tmp137098 __tmp137096))))
                        (declare (not safe))
                        (cons __tmp137112 __tmp137095))))
                  _hd131697131725_
                  _hd131694131715_)
                 (_g131689131704_ _g131690131708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131689131704_
                                                  _g131690131708_))))
                                         (_g131689131704_ _g131690131708_)))))
                             (_g131688131755_ (list _tgt131657_ _hd131655_)))
                           (let* ((_g131759131774_
                                   (lambda (_g131760131770_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131760131770_)))
                                  (_g131758131818_
                                   (lambda (_g131760131778_)
                                     (if (gx#stx-pair? _g131760131778_)
                                         (let ((_e131765131781_
                                                (gx#syntax-e _g131760131778_)))
                                           (let ((_hd131764131785_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131765131781_)))
                                                 (_tl131763131788_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131765131781_))))
                                             (if (gx#stx-pair?
                                                  _tl131763131788_)
                                                 (let ((_e131768131791_
                                                        (gx#syntax-e
                                                         _tl131763131788_)))
                                                   (let ((_hd131767131795_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131768131791_)))
                                                         (_tl131766131798_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131768131791_))))
                                                     (if (gx#stx-null?
                                                          _tl131766131798_)
                                                         ((lambda (_L131801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131803_)
                    (let ()
                      (let ((__tmp137094 (gx#datum->syntax '#f 'let))
                            (__tmp137089
                             (let ((__tmp137091
                                    (let ((__tmp137092
                                           (let ((__tmp137093
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131803_ '()))))
                                             (declare (not safe))
                                             (cons _L131801_ __tmp137093))))
                                      (declare (not safe))
                                      (cons __tmp137092 '())))
                                   (__tmp137090
                                    (let ()
                                      (declare (not safe))
                                      (cons _K131658_ '()))))
                               (declare (not safe))
                               (cons __tmp137091 __tmp137090))))
                        (declare (not safe))
                        (cons __tmp137094 __tmp137089))))
                  _hd131767131795_
                  _hd131764131785_)
                 (_g131759131774_ _g131760131778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131759131774_
                                                  _g131760131778_))))
                                         (_g131759131774_ _g131760131778_)))))
                             (_g131758131818_ (list _tgt131657_ _hd131655_)))))
                   (if (gx#stx-null? _hd131655_)
                       (let* ((_g131822131830_
                               (lambda (_g131823131826_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g131823131826_)))
                              (_g131821131848_
                               (lambda (_g131823131834_)
                                 ((lambda (_L131837_)
                                    (let ()
                                      (let ((__tmp137088
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp137082
                                             (let ((__tmp137085
                                                    (let ((__tmp137087
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp137086
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L131837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp137087 __tmp137086)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137083
                                                    (let ((__tmp137084
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E131650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K131658_ __tmp137084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137085
                                                     __tmp137083))))
                                        (declare (not safe))
                                        (cons __tmp137088 __tmp137082))))
                                  _g131823131834_))))
                         (_g131821131848_ _tgt131657_))
                       (if (gx#stx-datum? _hd131655_)
                           (let* ((_g131852131871_
                                   (lambda (_g131853131867_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131853131867_)))
                                  (_g131851131929_
                                   (lambda (_g131853131875_)
                                     (if (gx#stx-pair? _g131853131875_)
                                         (let ((_e131859131878_
                                                (gx#syntax-e _g131853131875_)))
                                           (let ((_hd131858131882_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131859131878_)))
                                                 (_tl131857131885_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131859131878_))))
                                             (if (gx#stx-pair?
                                                  _tl131857131885_)
                                                 (let ((_e131862131888_
                                                        (gx#syntax-e
                                                         _tl131857131885_)))
                                                   (let ((_hd131861131892_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131862131888_)))
                                                         (_tl131860131895_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131862131888_))))
                                                     (if (gx#stx-pair?
                                                          _tl131860131895_)
                                                         (let ((_e131865131898_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl131860131895_)))
                   (let ((_hd131864131902_
                          (let ()
                            (declare (not safe))
                            (##car _e131865131898_)))
                         (_tl131863131905_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131865131898_))))
                     (if (gx#stx-null? _tl131863131905_)
                         ((lambda (_L131908_ _L131910_ _L131911_)
                            (let ()
                              (let ((__tmp137081 (gx#datum->syntax '#f 'if))
                                    (__tmp137069
                                     (let ((__tmp137072
                                            (let ((__tmp137073
                                                   (let ((__tmp137078
                                                          (let ((__tmp137080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp137079
                         (let () (declare (not safe)) (cons _L131911_ '()))))
                    (declare (not safe))
                    (cons __tmp137080 __tmp137079)))
                 (__tmp137074
                  (let ((__tmp137075
                         (let ((__tmp137077 (gx#datum->syntax '#f 'quote))
                               (__tmp137076
                                (let ()
                                  (declare (not safe))
                                  (cons _L131910_ '()))))
                           (declare (not safe))
                           (cons __tmp137077 __tmp137076))))
                    (declare (not safe))
                    (cons __tmp137075 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137078
                                                           __tmp137074))))
                                              (declare (not safe))
                                              (cons _L131908_ __tmp137073)))
                                           (__tmp137070
                                            (let ((__tmp137071
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E131650_ '()))))
                                              (declare (not safe))
                                              (cons _K131658_ __tmp137071))))
                                       (declare (not safe))
                                       (cons __tmp137072 __tmp137070))))
                                (declare (not safe))
                                (cons __tmp137081 __tmp137069))))
                          _hd131864131902_
                          _hd131861131892_
                          _hd131858131882_)
                         (_g131852131871_ _g131853131875_))))
                 (_g131852131871_ _g131853131875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131852131871_
                                                  _g131853131875_))))
                                         (_g131852131871_ _g131853131875_)))))
                             (_g131851131929_
                              (list _tgt131657_
                                    _hd131655_
                                    (let ((_e131933_ (gx#stx-e _hd131655_)))
                                      (if (or (keyword? _e131933_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e131933_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e131933_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx131100_
                            _where131645_
                            _hd131655_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx136933136934_)
                                                    (let ((_e131667131947_
                                                           (gx#syntax-e
                                                            ___stx136933136934_)))
                                                      (let ((_tl131665131954_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131667131947_)))
                    (_hd131666131951_
                     (let () (declare (not safe)) (##car _e131667131947_))))
                (___kont136936136937_ _tl131665131954_ _hd131666131951_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136938136939_)))))))
                                  (_recur131652_
                                   _hd131647_
                                   _tgt131252_
                                   (let ((__tmp137117
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp137114
                                          (let ((__tmp137115
                                                 (let ((__tmp137116
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E131650_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body131649_
                                                         __tmp137116))))
                                            (declare (not safe))
                                            (cons _fender131648_
                                                  __tmp137115))))
                                     (declare (not safe))
                                     (cons __tmp137117 __tmp137114))))))
                             (_generate-clauses131260_
                              (lambda (_clauses131383_)
                                (let _lp131386_ ((_rest131389_ _clauses131383_)
                                                 (_E131391_ (gx#genident 'E))
                                                 (_r131392_ '()))
                                  (let* ((___stx136969136970_ _rest131389_)
                                         (_g131395131407_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx136969136970_))))
                                    (let ((___kont136972136973_
                                           (lambda (_L131472_ _L131474_)
                                             (let* ((___stx136949136950_
                                                     _L131474_)
                                                    (_g131486131497_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx136949136950_))))
                                               (let ((___kont136952136953_
                                                      (lambda (_L131626_)
                                                        (if (gx#stx-null?
                                                             _L131472_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L131626_)
                             (let ((__tmp137126 (gx#stx-null? _L131626_)))
                               (declare (not safe))
                               (not __tmp137126)))
                        (let ((__tmp137118
                               (let ((__tmp137119
                                      (let ((__tmp137120
                                             (gx#stx-wrap-source
                                              (let ((__tmp137125
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp137121
                                                     (let ((__tmp137122
                                                            (let ((__tmp137123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137124 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp137124 _L131626_))))
                      (declare (not safe))
                      (cons __tmp137123 '()))))
               (declare (not safe))
               (cons '() __tmp137122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137125 __tmp137121))
                                              (gx#stx-source _L131474_))))
                                        (declare (not safe))
                                        (cons __tmp137120 '()))))
                                 (declare (not safe))
                                 (cons _E131391_ __tmp137119))))
                          (declare (not safe))
                          (cons __tmp137118 _r131392_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx131100_
                         _L131474_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx131100_
                     _L131474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136954136955_
                                                      (lambda ()
                                                        (let* ((_g131508131516_
                                                                (lambda (_g131509131512_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131509131512_)))
                       (_g131507131605_
                        (lambda (_g131509131520_)
                          ((lambda (_L131523_)
                             (let ()
                               (let* ((_g131539131547_
                                       (lambda (_g131540131543_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g131540131543_)))
                                      (_g131538131601_
                                       (lambda (_g131540131551_)
                                         ((lambda (_L131554_)
                                            (let ()
                                              (let* ((_g131567131575_
                                                      (lambda (_g131568131571_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g131568131571_)))
                                                     (_g131566131597_
                                                      (lambda (_g131568131579_)
                                                        ((lambda (_L131582_)
                                                           (let ()
                                                             (let ()
                                                               (_lp131386_
                                                                _L131472_
                                                                _L131523_
                                                                (let ((__tmp137127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137128
                                      (let ()
                                        (declare (not safe))
                                        (cons _L131582_ '()))))
                                 (declare (not safe))
                                 (cons _E131391_ __tmp137128))))
                          (declare (not safe))
                          (cons __tmp137127 _r131392_))))))
                 _g131568131579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g131566131597_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp137131
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp137129
                                                         (let ((__tmp137130
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L131554_ '()))))
                   (declare (not safe))
                   (cons '() __tmp137130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137131
                                                          __tmp137129))
                                                  (gx#stx-source
                                                   _L131474_))))))
                                          _g131540131551_))))
                                 (_g131538131601_
                                  (_generate-clause131257_
                                   _L131474_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L131523_ '())))))))
                           _g131509131520_))))
                  (_g131507131605_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx136949136950_)
                                                     (let ((_e131491131616_
                                                            (gx#syntax-e
                                                             ___stx136949136950_)))
                                                       (let ((_tl131489131623_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131491131616_)))
                     (_hd131490131620_
                      (let () (declare (not safe)) (##car _e131491131616_))))
                 (if (gx#identifier? _hd131490131620_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g137132_|
                          _hd131490131620_)
                         (___kont136952136953_ _tl131489131623_)
                         (___kont136954136955_))
                     (___kont136954136955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136954136955_))))))
                                          (___kont136974136975_
                                           (lambda ()
                                             (let* ((_g131418131426_
                                                     (lambda (_g131419131422_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g131419131422_)))
                                                    (_g131417131451_
                                                     (lambda (_g131419131430_)
                                                       ((lambda (_L131433_)
                                                          (let ()
                                                            (let ((__tmp137133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137134
                                  (let ((__tmp137135
                                         (gx#stx-wrap-source
                                          (let ((__tmp137143
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp137136
                                                 (let ((__tmp137137
                                                        (let ((__tmp137138
                                                               (let ((__tmp137142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp137139
                              (let ((__tmp137140
                                     (let ((__tmp137141
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131433_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp137141))))
                                (declare (not safe))
                                (cons '#f __tmp137140))))
                         (declare (not safe))
                         (cons __tmp137142 __tmp137139))))
                  (declare (not safe))
                  (cons __tmp137138 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp137137))))
                                            (declare (not safe))
                                            (cons __tmp137143 __tmp137136))
                                          (gx#stx-source _stx131100_))))
                                    (declare (not safe))
                                    (cons __tmp137135 '()))))
                             (declare (not safe))
                             (cons _E131391_ __tmp137134))))
                      (declare (not safe))
                      (cons __tmp137133 _r131392_))))
                _g131419131430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g131417131451_
                                                _tgt131252_)))))
                                      (if (gx#stx-pair? ___stx136969136970_)
                                          (let ((_e131401131462_
                                                 (gx#syntax-e
                                                  ___stx136969136970_)))
                                            (let ((_tl131399131469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131401131462_)))
                                                  (_hd131400131466_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131401131462_))))
                                              (___kont136972136973_
                                               _tl131399131469_
                                               _hd131400131466_)))
                                          (___kont136974136975_))))))))
                      (let* ((_bind131262_
                              (_generate-clauses131260_ _clauses131255_))
                             (_g131265131282_
                              (lambda (_g131266131278_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g131266131278_)))
                             (_g131264131379_
                              (lambda (_g131266131286_)
                                (if (gx#stx-pair/null? _g131266131286_)
                                    (let ((_g137144_
                                           (gx#syntax-split-splice
                                            _g131266131286_
                                            '0)))
                                      (begin
                                        (let ((_g137145_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137144_)
                                                     (##vector-length
                                                      _g137144_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137145_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137145_)))
                                        (let ((_target131268131289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137144_ 0)))
                                              (_tl131270131292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137144_ 1))))
                                          (if (gx#stx-null? _tl131270131292_)
                                              (letrec ((_loop131271131295_
                                                        (lambda (_hd131269131299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try131275131302_)
                  (if (gx#stx-pair? _hd131269131299_)
                      (let ((_e131272131305_ (gx#syntax-e _hd131269131299_)))
                        (let ((_lp-hd131273131309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131272131305_)))
                              (_lp-tl131274131312_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131272131305_))))
                          (_loop131271131295_
                           _lp-tl131274131312_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd131273131309_
                                   _bind-try131275131302_)))))
                      (let ((_bind-try131276131315_
                             (reverse _bind-try131275131302_)))
                        ((lambda (_L131319_)
                           (let ()
                             (let* ((_g131337131345_
                                     (lambda (_g131338131341_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g131338131341_)))
                                    (_g131336131375_
                                     (lambda (_g131338131349_)
                                       ((lambda (_L131352_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp137151
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp137146
                                                     (let ((__tmp137149
                                                            (let ((__tmp137150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g131366131369_ _g131367131372_)
                             (let ()
                               (declare (not safe))
                               (cons _g131366131369_ _g131367131372_)))))
                      (declare (not safe))
                      (foldr1 __tmp137150 '() _L131319_)))
                   (__tmp137147
                    (let ((__tmp137148
                           (let () (declare (not safe)) (cons _L131352_ '()))))
                      (declare (not safe))
                      (cons __tmp137148 '()))))
               (declare (not safe))
               (cons __tmp137149 __tmp137147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137151
                                                      __tmp137146)))))
                                        _g131338131349_))))
                               (_g131336131375_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind131262_)))))))
                         _bind-try131276131315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop131271131295_
                                                 _target131268131289_
                                                 '()))
                                              (_g131265131282_
                                               _g131266131286_)))))
                                    (_g131265131282_ _g131266131286_)))))
                        (_g131264131379_ _bind131262_))))))
          (let* ((_g131106131125_
                  (lambda (_g131107131121_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g131107131121_)))
                 (_g131105131248_
                  (lambda (_g131107131129_)
                    (if (gx#stx-pair? _g131107131129_)
                        (let ((_e131113131132_ (gx#syntax-e _g131107131129_)))
                          (let ((_hd131112131136_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131113131132_)))
                                (_tl131111131139_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131113131132_))))
                            (if (gx#stx-pair? _tl131111131139_)
                                (let ((_e131116131142_
                                       (gx#syntax-e _tl131111131139_)))
                                  (let ((_hd131115131146_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131116131142_)))
                                        (_tl131114131149_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131116131142_))))
                                    (if (gx#stx-pair? _tl131114131149_)
                                        (let ((_e131119131152_
                                               (gx#syntax-e _tl131114131149_)))
                                          (let ((_hd131118131156_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131119131152_)))
                                                (_tl131117131159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131119131152_))))
                                            ((lambda (_L131162_
                                                      _L131164_
                                                      _L131165_)
                                               (if (and (gx#identifier-list?
                                                         _L131164_)
                                                        (gx#stx-list?
                                                         _L131162_))
                                                   (let* ((_g131183131191_
                                                           (lambda (_g131184131187_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g131184131187_)))
                                                          (_g131182131244_
                                                           (lambda (_g131184131195_)
                                                             ((lambda (_L131198_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g131210131218_
                                  (lambda (_g131211131214_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g131211131214_)))
                                 (_g131209131240_
                                  (lambda (_g131211131222_)
                                    ((lambda (_L131225_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp137157
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp137152
                                                  (let ((__tmp137154
                                                         (let ((__tmp137155
                                                                (let ((__tmp137156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L131165_ '()))))
                          (declare (not safe))
                          (cons _L131198_ __tmp137156))))
                   (declare (not safe))
                   (cons __tmp137155 '())))
                (__tmp137153
                 (let () (declare (not safe)) (cons _L131225_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137154
                                                          __tmp137153))))
                                             (declare (not safe))
                                             (cons __tmp137157 __tmp137152)))))
                                     _g131211131222_))))
                            (_g131209131240_
                             (_generate131103_
                              _L131198_
                              (gx#syntax->list _L131164_)
                              _L131162_)))))
                      _g131184131195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g131182131244_
                                                      (gx#genident 'e)))
                                                   (_g131106131125_
                                                    _g131107131129_)))
                                             _tl131117131159_
                                             _hd131118131156_
                                             _hd131115131146_)))
                                        (_g131106131125_ _g131107131129_))))
                                (_g131106131125_ _g131107131129_))))
                        (_g131106131125_ _g131107131129_)))))
            (_g131105131248_ _stx131100_)))))))
