(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g136994_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136996_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136998_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137003_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137006_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137011_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137014_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137019_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137022_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137027_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137030_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137137_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj136989
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
           __obj136989
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136993 |gx[1]#_g136994_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           __tmp136993
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136995 |gx[1]#_g136996_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           __tmp136995
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136997 |gx[1]#_g136998_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           __tmp136997
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136999
               (let ((__tmp137004
                      (let ((__tmp137005 |gx[1]#_g137006_|))
                        (declare (not safe))
                        (cons 'e __tmp137005)))
                     (__tmp137000
                      (let ((__tmp137001
                             (let ((__tmp137002 |gx[1]#_g137003_|))
                               (declare (not safe))
                               (cons 'source __tmp137002))))
                        (declare (not safe))
                        (cons __tmp137001 '()))))
                 (declare (not safe))
                 (cons __tmp137004 __tmp137000))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           __tmp136999
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137007
               (let ((__tmp137012
                      (let ((__tmp137013 |gx[1]#_g137014_|))
                        (declare (not safe))
                        (cons 'e __tmp137013)))
                     (__tmp137008
                      (let ((__tmp137009
                             (let ((__tmp137010 |gx[1]#_g137011_|))
                               (declare (not safe))
                               (cons 'source __tmp137010))))
                        (declare (not safe))
                        (cons __tmp137009 '()))))
                 (declare (not safe))
                 (cons __tmp137012 __tmp137008))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           __tmp137007
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137015
               (let ((__tmp137020
                      (let ((__tmp137021 |gx[1]#_g137022_|))
                        (declare (not safe))
                        (cons 'e __tmp137021)))
                     (__tmp137016
                      (let ((__tmp137017
                             (let ((__tmp137018 |gx[1]#_g137019_|))
                               (declare (not safe))
                               (cons 'source __tmp137018))))
                        (declare (not safe))
                        (cons __tmp137017 '()))))
                 (declare (not safe))
                 (cons __tmp137020 __tmp137016))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           __tmp137015
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137023
               (let ((__tmp137028
                      (let ((__tmp137029 |gx[1]#_g137030_|))
                        (declare (not safe))
                        (cons 'e __tmp137029)))
                     (__tmp137024
                      (let ((__tmp137025
                             (let ((__tmp137026 |gx[1]#_g137027_|))
                               (declare (not safe))
                               (cons 'source __tmp137026))))
                        (declare (not safe))
                        (cons __tmp137025 '()))))
                 (declare (not safe))
                 (cons __tmp137028 __tmp137024))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136989
           __tmp137023
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj136989))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx131041_)
        (let* ((_g131045131059_
                (lambda (_g131046131055_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g131046131055_)))
               (_g131044131101_
                (lambda (_g131046131063_)
                  (if (gx#stx-pair? _g131046131063_)
                      (let ((_e131050131066_ (gx#syntax-e _g131046131063_)))
                        (let ((_hd131049131070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131050131066_)))
                              (_tl131048131073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131050131066_))))
                          (if (gx#stx-pair? _tl131048131073_)
                              (let ((_e131053131076_
                                     (gx#syntax-e _tl131048131073_)))
                                (let ((_hd131052131080_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131053131076_)))
                                      (_tl131051131083_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131053131076_))))
                                  (if (gx#stx-null? _tl131051131083_)
                                      ((lambda (_L131086_)
                                         (let ((__tmp137040
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp137031
                                                (let ((__tmp137037
                                                       (let ((__tmp137039
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp137038
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L131086_ '()))))
                 (declare (not safe))
                 (cons __tmp137039 __tmp137038)))
              (__tmp137032
               (let ((__tmp137033
                      (let ((__tmp137036 (gx#datum->syntax '#f 'error))
                            (__tmp137034
                             (let ((__tmp137035
                                    (let ()
                                      (declare (not safe))
                                      (cons _L131086_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp137035))))
                        (declare (not safe))
                        (cons __tmp137036 __tmp137034))))
                 (declare (not safe))
                 (cons __tmp137033 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137037
                                                        __tmp137032))))
                                           (declare (not safe))
                                           (cons __tmp137040 __tmp137031)))
                                       _hd131052131080_)
                                      (_g131045131059_ _g131046131063_))))
                              (_g131045131059_ _g131046131063_))))
                      (_g131045131059_ _g131046131063_)))))
          (_g131044131101_ _$stx131041_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx131105_)
        (letrec ((_generate131108_
                  (lambda (_tgt131257_ _kws131259_ _clauses131260_)
                    (letrec ((_generate-clause131262_
                              (lambda (_hd132172_ _E132174_)
                                (let* ((___stx136892136893_ _hd132172_)
                                       (_g132178132205_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx136892136893_))))
                                  (let ((___kont136895136896_
                                         (lambda (_L132301_ _L132303_)
                                           (_generate1131264_
                                            _hd132172_
                                            _L132303_
                                            '#t
                                            _L132301_
                                            _E132174_)))
                                        (___kont136897136898_
                                         (lambda (_L132253_
                                                  _L132255_
                                                  _L132256_)
                                           (_generate1131264_
                                            _hd132172_
                                            _L132256_
                                            _L132255_
                                            _L132253_
                                            _E132174_)))
                                        (___kont136899136900_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx131105_
                                            _hd132172_))))
                                    (if (gx#stx-pair? ___stx136892136893_)
                                        (let ((_e132184132281_
                                               (gx#syntax-e
                                                ___stx136892136893_)))
                                          (let ((_tl132182132288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132184132281_)))
                                                (_hd132183132285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132184132281_))))
                                            (if (gx#stx-pair? _tl132182132288_)
                                                (let ((_e132187132291_
                                                       (gx#syntax-e
                                                        _tl132182132288_)))
                                                  (let ((_tl132185132298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132187132291_)))
                                                        (_hd132186132295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132187132291_))))
                                                    (if (gx#stx-null?
                                                         _tl132185132298_)
                                                        (___kont136895136896_
                                                         _hd132186132295_
                                                         _hd132183132285_)
                                                        (if (gx#stx-pair?
                                                             _tl132185132298_)
                                                            (let ((_e132199132243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl132185132298_)))
                      (let ((_tl132197132250_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132199132243_)))
                            (_hd132198132247_
                             (let ()
                               (declare (not safe))
                               (##car _e132199132243_))))
                        (if (gx#stx-null? _tl132197132250_)
                            (___kont136897136898_
                             _hd132198132247_
                             _hd132186132295_
                             _hd132183132285_)
                            (___kont136899136900_))))
                    (___kont136899136900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136899136900_))))
                                        (___kont136899136900_))))))
                             (_generate1131264_
                              (lambda (_where131650_
                                       _hd131652_
                                       _fender131653_
                                       _body131654_
                                       _E131655_)
                                (letrec ((_recur131657_
                                          (lambda (_hd131660_
                                                   _tgt131662_
                                                   _K131663_)
                                            (let* ((___stx136938136939_
                                                    _hd131660_)
                                                   (_g131666131678_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136938136939_))))
                                              (let ((___kont136941136942_
                                                     (lambda (_L131962_
                                                              _L131964_)
                                                       (let* ((_g131975131983_
                                                               (lambda (_g131976131979_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g131976131979_)))
                      (_g131974132164_
                       (lambda (_g131976131987_)
                         ((lambda (_L131990_)
                            (let ()
                              (let* ((_g132002132010_
                                      (lambda (_g132003132006_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g132003132006_)))
                                     (_g132001132160_
                                      (lambda (_g132003132014_)
                                        ((lambda (_L132017_)
                                           (let ()
                                             (let* ((_g132030132038_
                                                     (lambda (_g132031132034_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g132031132034_)))
                                                    (_g132029132156_
                                                     (lambda (_g132031132042_)
                                                       ((lambda (_L132045_)
                                                          (let ()
                                                            (let* ((_g132058132066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g132059132062_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132059132062_)))
                           (_g132057132152_
                            (lambda (_g132059132070_)
                              ((lambda (_L132073_)
                                 (let ()
                                   (let* ((_g132086132094_
                                           (lambda (_g132087132090_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132087132090_)))
                                          (_g132085132148_
                                           (lambda (_g132087132098_)
                                             ((lambda (_L132101_)
                                                (let ()
                                                  (let* ((_g132114132122_
                                                          (lambda (_g132115132118_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g132115132118_)))
                                                         (_g132113132144_
                                                          (lambda (_g132115132126_)
                                                            ((lambda (_L132129_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp137073 (gx#datum->syntax '#f 'if))
                                 (__tmp137041
                                  (let ((__tmp137070
                                         (let ((__tmp137072
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp137071
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L131990_ '()))))
                                           (declare (not safe))
                                           (cons __tmp137072 __tmp137071)))
                                        (__tmp137042
                                         (let ((__tmp137044
                                                (let ((__tmp137069
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp137045
                                                       (let ((__tmp137063
                                                              (let ((__tmp137064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137065
                                    (let ((__tmp137066
                                           (let ((__tmp137068
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp137067
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131990_ '()))))
                                             (declare (not safe))
                                             (cons __tmp137068 __tmp137067))))
                                      (declare (not safe))
                                      (cons __tmp137066 '()))))
                               (declare (not safe))
                               (cons _L132017_ __tmp137065))))
                        (declare (not safe))
                        (cons __tmp137064 '())))
                     (__tmp137046
                      (let ((__tmp137047
                             (let ((__tmp137062 (gx#datum->syntax '#f 'let))
                                   (__tmp137048
                                    (let ((__tmp137050
                                           (let ((__tmp137057
                                                  (let ((__tmp137058
                                                         (let ((__tmp137059
                                                                (let ((__tmp137061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp137060
                               (let ()
                                 (declare (not safe))
                                 (cons _L132017_ '()))))
                          (declare (not safe))
                          (cons __tmp137061 __tmp137060))))
                   (declare (not safe))
                   (cons __tmp137059 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L132045_
                                                          __tmp137058)))
                                                 (__tmp137051
                                                  (let ((__tmp137052
                                                         (let ((__tmp137053
                                                                (let ((__tmp137054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137056
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp137055
                                      (let ()
                                        (declare (not safe))
                                        (cons _L132017_ '()))))
                                 (declare (not safe))
                                 (cons __tmp137056 __tmp137055))))
                          (declare (not safe))
                          (cons __tmp137054 '()))))
                   (declare (not safe))
                   (cons _L132073_ __tmp137053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137052 '()))))
                                             (declare (not safe))
                                             (cons __tmp137057 __tmp137051)))
                                          (__tmp137049
                                           (let ()
                                             (declare (not safe))
                                             (cons _L132101_ '()))))
                                      (declare (not safe))
                                      (cons __tmp137050 __tmp137049))))
                               (declare (not safe))
                               (cons __tmp137062 __tmp137048))))
                        (declare (not safe))
                        (cons __tmp137047 '()))))
                 (declare (not safe))
                 (cons __tmp137063 __tmp137046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137069
                                                        __tmp137045)))
                                               (__tmp137043
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L132129_ '()))))
                                           (declare (not safe))
                                           (cons __tmp137044 __tmp137043))))
                                    (declare (not safe))
                                    (cons __tmp137070 __tmp137042))))
                             (declare (not safe))
                             (cons __tmp137073 __tmp137041)))))
                     _g132115132126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g132113132144_
                                                     _E131655_))))
                                              _g132087132098_))))
                                     (_g132085132148_
                                      (_recur131657_
                                       _L131964_
                                       _L132045_
                                       (_recur131657_
                                        _L131962_
                                        _L132073_
                                        _K131663_))))))
                               _g132059132070_))))
                      (_g132057132152_ (gx#genident 'tl)))))
                _g132031132042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g132029132156_
                                                (gx#genident 'hd)))))
                                         _g132003132014_))))
                                (_g132001132160_ (gx#genident 'e)))))
                          _g131976131987_))))
                 (_g131974132164_ _tgt131662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136943136944_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd131660_)
                                                           (if (gx#underscore?
                                                                _hd131660_)
                                                               _K131663_
                                                               (if (let ((__tmp137118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g131688131690_)
                                    (gx#bound-identifier=?
                                     _g131688131690_
                                     _hd131660_))))
                             (declare (not safe))
                             (find __tmp137118 _kws131259_))
                           (let* ((_g131694131709_
                                   (lambda (_g131695131705_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131695131705_)))
                                  (_g131693131760_
                                   (lambda (_g131695131713_)
                                     (if (gx#stx-pair? _g131695131713_)
                                         (let ((_e131700131716_
                                                (gx#syntax-e _g131695131713_)))
                                           (let ((_hd131699131720_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131700131716_)))
                                                 (_tl131698131723_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131700131716_))))
                                             (if (gx#stx-pair?
                                                  _tl131698131723_)
                                                 (let ((_e131703131726_
                                                        (gx#syntax-e
                                                         _tl131698131723_)))
                                                   (let ((_hd131702131730_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131703131726_)))
                                                         (_tl131701131733_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131703131726_))))
                                                     (if (gx#stx-null?
                                                          _tl131701131733_)
                                                         ((lambda (_L131736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131738_)
                    (let ()
                      (let ((__tmp137117 (gx#datum->syntax '#f 'if))
                            (__tmp137100
                             (let ((__tmp137103
                                    (let ((__tmp137116
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp137104
                                           (let ((__tmp137113
                                                  (let ((__tmp137115
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp137114
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L131738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137115
                                                          __tmp137114)))
                                                 (__tmp137105
                                                  (let ((__tmp137106
                                                         (let ((__tmp137112
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp137107
                        (let ((__tmp137108
                               (let ((__tmp137109
                                      (let ((__tmp137111
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp137110
                                             (let ()
                                               (declare (not safe))
                                               (cons _L131736_ '()))))
                                        (declare (not safe))
                                        (cons __tmp137111 __tmp137110))))
                                 (declare (not safe))
                                 (cons __tmp137109 '()))))
                          (declare (not safe))
                          (cons _L131738_ __tmp137108))))
                   (declare (not safe))
                   (cons __tmp137112 __tmp137107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137106 '()))))
                                             (declare (not safe))
                                             (cons __tmp137113 __tmp137105))))
                                      (declare (not safe))
                                      (cons __tmp137116 __tmp137104)))
                                   (__tmp137101
                                    (let ((__tmp137102
                                           (let ()
                                             (declare (not safe))
                                             (cons _E131655_ '()))))
                                      (declare (not safe))
                                      (cons _K131663_ __tmp137102))))
                               (declare (not safe))
                               (cons __tmp137103 __tmp137101))))
                        (declare (not safe))
                        (cons __tmp137117 __tmp137100))))
                  _hd131702131730_
                  _hd131699131720_)
                 (_g131694131709_ _g131695131713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131694131709_
                                                  _g131695131713_))))
                                         (_g131694131709_ _g131695131713_)))))
                             (_g131693131760_ (list _tgt131662_ _hd131660_)))
                           (let* ((_g131764131779_
                                   (lambda (_g131765131775_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131765131775_)))
                                  (_g131763131823_
                                   (lambda (_g131765131783_)
                                     (if (gx#stx-pair? _g131765131783_)
                                         (let ((_e131770131786_
                                                (gx#syntax-e _g131765131783_)))
                                           (let ((_hd131769131790_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131770131786_)))
                                                 (_tl131768131793_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131770131786_))))
                                             (if (gx#stx-pair?
                                                  _tl131768131793_)
                                                 (let ((_e131773131796_
                                                        (gx#syntax-e
                                                         _tl131768131793_)))
                                                   (let ((_hd131772131800_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131773131796_)))
                                                         (_tl131771131803_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131773131796_))))
                                                     (if (gx#stx-null?
                                                          _tl131771131803_)
                                                         ((lambda (_L131806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131808_)
                    (let ()
                      (let ((__tmp137099 (gx#datum->syntax '#f 'let))
                            (__tmp137094
                             (let ((__tmp137096
                                    (let ((__tmp137097
                                           (let ((__tmp137098
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131808_ '()))))
                                             (declare (not safe))
                                             (cons _L131806_ __tmp137098))))
                                      (declare (not safe))
                                      (cons __tmp137097 '())))
                                   (__tmp137095
                                    (let ()
                                      (declare (not safe))
                                      (cons _K131663_ '()))))
                               (declare (not safe))
                               (cons __tmp137096 __tmp137095))))
                        (declare (not safe))
                        (cons __tmp137099 __tmp137094))))
                  _hd131772131800_
                  _hd131769131790_)
                 (_g131764131779_ _g131765131783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131764131779_
                                                  _g131765131783_))))
                                         (_g131764131779_ _g131765131783_)))))
                             (_g131763131823_ (list _tgt131662_ _hd131660_)))))
                   (if (gx#stx-null? _hd131660_)
                       (let* ((_g131827131835_
                               (lambda (_g131828131831_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g131828131831_)))
                              (_g131826131853_
                               (lambda (_g131828131839_)
                                 ((lambda (_L131842_)
                                    (let ()
                                      (let ((__tmp137093
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp137087
                                             (let ((__tmp137090
                                                    (let ((__tmp137092
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp137091
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L131842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp137092 __tmp137091)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137088
                                                    (let ((__tmp137089
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E131655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K131663_ __tmp137089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137090
                                                     __tmp137088))))
                                        (declare (not safe))
                                        (cons __tmp137093 __tmp137087))))
                                  _g131828131839_))))
                         (_g131826131853_ _tgt131662_))
                       (if (gx#stx-datum? _hd131660_)
                           (let* ((_g131857131876_
                                   (lambda (_g131858131872_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131858131872_)))
                                  (_g131856131934_
                                   (lambda (_g131858131880_)
                                     (if (gx#stx-pair? _g131858131880_)
                                         (let ((_e131864131883_
                                                (gx#syntax-e _g131858131880_)))
                                           (let ((_hd131863131887_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131864131883_)))
                                                 (_tl131862131890_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131864131883_))))
                                             (if (gx#stx-pair?
                                                  _tl131862131890_)
                                                 (let ((_e131867131893_
                                                        (gx#syntax-e
                                                         _tl131862131890_)))
                                                   (let ((_hd131866131897_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131867131893_)))
                                                         (_tl131865131900_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131867131893_))))
                                                     (if (gx#stx-pair?
                                                          _tl131865131900_)
                                                         (let ((_e131870131903_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl131865131900_)))
                   (let ((_hd131869131907_
                          (let ()
                            (declare (not safe))
                            (##car _e131870131903_)))
                         (_tl131868131910_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131870131903_))))
                     (if (gx#stx-null? _tl131868131910_)
                         ((lambda (_L131913_ _L131915_ _L131916_)
                            (let ()
                              (let ((__tmp137086 (gx#datum->syntax '#f 'if))
                                    (__tmp137074
                                     (let ((__tmp137077
                                            (let ((__tmp137078
                                                   (let ((__tmp137083
                                                          (let ((__tmp137085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp137084
                         (let () (declare (not safe)) (cons _L131916_ '()))))
                    (declare (not safe))
                    (cons __tmp137085 __tmp137084)))
                 (__tmp137079
                  (let ((__tmp137080
                         (let ((__tmp137082 (gx#datum->syntax '#f 'quote))
                               (__tmp137081
                                (let ()
                                  (declare (not safe))
                                  (cons _L131915_ '()))))
                           (declare (not safe))
                           (cons __tmp137082 __tmp137081))))
                    (declare (not safe))
                    (cons __tmp137080 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137083
                                                           __tmp137079))))
                                              (declare (not safe))
                                              (cons _L131913_ __tmp137078)))
                                           (__tmp137075
                                            (let ((__tmp137076
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E131655_ '()))))
                                              (declare (not safe))
                                              (cons _K131663_ __tmp137076))))
                                       (declare (not safe))
                                       (cons __tmp137077 __tmp137075))))
                                (declare (not safe))
                                (cons __tmp137086 __tmp137074))))
                          _hd131869131907_
                          _hd131866131897_
                          _hd131863131887_)
                         (_g131857131876_ _g131858131880_))))
                 (_g131857131876_ _g131858131880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131857131876_
                                                  _g131858131880_))))
                                         (_g131857131876_ _g131858131880_)))))
                             (_g131856131934_
                              (list _tgt131662_
                                    _hd131660_
                                    (let ((_e131938_ (gx#stx-e _hd131660_)))
                                      (if (or (keyword? _e131938_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e131938_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e131938_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx131105_
                            _where131650_
                            _hd131660_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx136938136939_)
                                                    (let ((_e131672131952_
                                                           (gx#syntax-e
                                                            ___stx136938136939_)))
                                                      (let ((_tl131670131959_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131672131952_)))
                    (_hd131671131956_
                     (let () (declare (not safe)) (##car _e131672131952_))))
                (___kont136941136942_ _tl131670131959_ _hd131671131956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136943136944_)))))))
                                  (_recur131657_
                                   _hd131652_
                                   _tgt131257_
                                   (let ((__tmp137122
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp137119
                                          (let ((__tmp137120
                                                 (let ((__tmp137121
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E131655_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body131654_
                                                         __tmp137121))))
                                            (declare (not safe))
                                            (cons _fender131653_
                                                  __tmp137120))))
                                     (declare (not safe))
                                     (cons __tmp137122 __tmp137119))))))
                             (_generate-clauses131265_
                              (lambda (_clauses131388_)
                                (let _lp131391_ ((_rest131394_ _clauses131388_)
                                                 (_E131396_ (gx#genident 'E))
                                                 (_r131397_ '()))
                                  (let* ((___stx136974136975_ _rest131394_)
                                         (_g131400131412_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx136974136975_))))
                                    (let ((___kont136977136978_
                                           (lambda (_L131477_ _L131479_)
                                             (let* ((___stx136954136955_
                                                     _L131479_)
                                                    (_g131491131502_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx136954136955_))))
                                               (let ((___kont136957136958_
                                                      (lambda (_L131631_)
                                                        (if (gx#stx-null?
                                                             _L131477_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L131631_)
                             (let ((__tmp137131 (gx#stx-null? _L131631_)))
                               (declare (not safe))
                               (not __tmp137131)))
                        (let ((__tmp137123
                               (let ((__tmp137124
                                      (let ((__tmp137125
                                             (gx#stx-wrap-source
                                              (let ((__tmp137130
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp137126
                                                     (let ((__tmp137127
                                                            (let ((__tmp137128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137129 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp137129 _L131631_))))
                      (declare (not safe))
                      (cons __tmp137128 '()))))
               (declare (not safe))
               (cons '() __tmp137127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137130 __tmp137126))
                                              (gx#stx-source _L131479_))))
                                        (declare (not safe))
                                        (cons __tmp137125 '()))))
                                 (declare (not safe))
                                 (cons _E131396_ __tmp137124))))
                          (declare (not safe))
                          (cons __tmp137123 _r131397_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx131105_
                         _L131479_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx131105_
                     _L131479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136959136960_
                                                      (lambda ()
                                                        (let* ((_g131513131521_
                                                                (lambda (_g131514131517_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131514131517_)))
                       (_g131512131610_
                        (lambda (_g131514131525_)
                          ((lambda (_L131528_)
                             (let ()
                               (let* ((_g131544131552_
                                       (lambda (_g131545131548_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g131545131548_)))
                                      (_g131543131606_
                                       (lambda (_g131545131556_)
                                         ((lambda (_L131559_)
                                            (let ()
                                              (let* ((_g131572131580_
                                                      (lambda (_g131573131576_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g131573131576_)))
                                                     (_g131571131602_
                                                      (lambda (_g131573131584_)
                                                        ((lambda (_L131587_)
                                                           (let ()
                                                             (let ()
                                                               (_lp131391_
                                                                _L131477_
                                                                _L131528_
                                                                (let ((__tmp137132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137133
                                      (let ()
                                        (declare (not safe))
                                        (cons _L131587_ '()))))
                                 (declare (not safe))
                                 (cons _E131396_ __tmp137133))))
                          (declare (not safe))
                          (cons __tmp137132 _r131397_))))))
                 _g131573131584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g131571131602_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp137136
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp137134
                                                         (let ((__tmp137135
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L131559_ '()))))
                   (declare (not safe))
                   (cons '() __tmp137135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137136
                                                          __tmp137134))
                                                  (gx#stx-source
                                                   _L131479_))))))
                                          _g131545131556_))))
                                 (_g131543131606_
                                  (_generate-clause131262_
                                   _L131479_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L131528_ '())))))))
                           _g131514131525_))))
                  (_g131512131610_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx136954136955_)
                                                     (let ((_e131496131621_
                                                            (gx#syntax-e
                                                             ___stx136954136955_)))
                                                       (let ((_tl131494131628_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131496131621_)))
                     (_hd131495131625_
                      (let () (declare (not safe)) (##car _e131496131621_))))
                 (if (gx#identifier? _hd131495131625_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g137137_|
                          _hd131495131625_)
                         (___kont136957136958_ _tl131494131628_)
                         (___kont136959136960_))
                     (___kont136959136960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136959136960_))))))
                                          (___kont136979136980_
                                           (lambda ()
                                             (let* ((_g131423131431_
                                                     (lambda (_g131424131427_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g131424131427_)))
                                                    (_g131422131456_
                                                     (lambda (_g131424131435_)
                                                       ((lambda (_L131438_)
                                                          (let ()
                                                            (let ((__tmp137138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137139
                                  (let ((__tmp137140
                                         (gx#stx-wrap-source
                                          (let ((__tmp137148
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp137141
                                                 (let ((__tmp137142
                                                        (let ((__tmp137143
                                                               (let ((__tmp137147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp137144
                              (let ((__tmp137145
                                     (let ((__tmp137146
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131438_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp137146))))
                                (declare (not safe))
                                (cons '#f __tmp137145))))
                         (declare (not safe))
                         (cons __tmp137147 __tmp137144))))
                  (declare (not safe))
                  (cons __tmp137143 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp137142))))
                                            (declare (not safe))
                                            (cons __tmp137148 __tmp137141))
                                          (gx#stx-source _stx131105_))))
                                    (declare (not safe))
                                    (cons __tmp137140 '()))))
                             (declare (not safe))
                             (cons _E131396_ __tmp137139))))
                      (declare (not safe))
                      (cons __tmp137138 _r131397_))))
                _g131424131435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g131422131456_
                                                _tgt131257_)))))
                                      (if (gx#stx-pair? ___stx136974136975_)
                                          (let ((_e131406131467_
                                                 (gx#syntax-e
                                                  ___stx136974136975_)))
                                            (let ((_tl131404131474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131406131467_)))
                                                  (_hd131405131471_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131406131467_))))
                                              (___kont136977136978_
                                               _tl131404131474_
                                               _hd131405131471_)))
                                          (___kont136979136980_))))))))
                      (let* ((_bind131267_
                              (_generate-clauses131265_ _clauses131260_))
                             (_g131270131287_
                              (lambda (_g131271131283_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g131271131283_)))
                             (_g131269131384_
                              (lambda (_g131271131291_)
                                (if (gx#stx-pair/null? _g131271131291_)
                                    (let ((_g137149_
                                           (gx#syntax-split-splice
                                            _g131271131291_
                                            '0)))
                                      (begin
                                        (let ((_g137150_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137149_)
                                                     (##vector-length
                                                      _g137149_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137150_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137150_)))
                                        (let ((_target131273131294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137149_ 0)))
                                              (_tl131275131297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137149_ 1))))
                                          (if (gx#stx-null? _tl131275131297_)
                                              (letrec ((_loop131276131300_
                                                        (lambda (_hd131274131304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try131280131307_)
                  (if (gx#stx-pair? _hd131274131304_)
                      (let ((_e131277131310_ (gx#syntax-e _hd131274131304_)))
                        (let ((_lp-hd131278131314_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131277131310_)))
                              (_lp-tl131279131317_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131277131310_))))
                          (_loop131276131300_
                           _lp-tl131279131317_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd131278131314_
                                   _bind-try131280131307_)))))
                      (let ((_bind-try131281131320_
                             (reverse _bind-try131280131307_)))
                        ((lambda (_L131324_)
                           (let ()
                             (let* ((_g131342131350_
                                     (lambda (_g131343131346_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g131343131346_)))
                                    (_g131341131380_
                                     (lambda (_g131343131354_)
                                       ((lambda (_L131357_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp137156
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp137151
                                                     (let ((__tmp137154
                                                            (let ((__tmp137155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g131371131374_ _g131372131377_)
                             (let ()
                               (declare (not safe))
                               (cons _g131371131374_ _g131372131377_)))))
                      (declare (not safe))
                      (foldr1 __tmp137155 '() _L131324_)))
                   (__tmp137152
                    (let ((__tmp137153
                           (let () (declare (not safe)) (cons _L131357_ '()))))
                      (declare (not safe))
                      (cons __tmp137153 '()))))
               (declare (not safe))
               (cons __tmp137154 __tmp137152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137156
                                                      __tmp137151)))))
                                        _g131343131354_))))
                               (_g131341131380_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind131267_)))))))
                         _bind-try131281131320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop131276131300_
                                                 _target131273131294_
                                                 '()))
                                              (_g131270131287_
                                               _g131271131291_)))))
                                    (_g131270131287_ _g131271131291_)))))
                        (_g131269131384_ _bind131267_))))))
          (let* ((_g131111131130_
                  (lambda (_g131112131126_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g131112131126_)))
                 (_g131110131253_
                  (lambda (_g131112131134_)
                    (if (gx#stx-pair? _g131112131134_)
                        (let ((_e131118131137_ (gx#syntax-e _g131112131134_)))
                          (let ((_hd131117131141_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131118131137_)))
                                (_tl131116131144_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131118131137_))))
                            (if (gx#stx-pair? _tl131116131144_)
                                (let ((_e131121131147_
                                       (gx#syntax-e _tl131116131144_)))
                                  (let ((_hd131120131151_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131121131147_)))
                                        (_tl131119131154_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131121131147_))))
                                    (if (gx#stx-pair? _tl131119131154_)
                                        (let ((_e131124131157_
                                               (gx#syntax-e _tl131119131154_)))
                                          (let ((_hd131123131161_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131124131157_)))
                                                (_tl131122131164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131124131157_))))
                                            ((lambda (_L131167_
                                                      _L131169_
                                                      _L131170_)
                                               (if (and (gx#identifier-list?
                                                         _L131169_)
                                                        (gx#stx-list?
                                                         _L131167_))
                                                   (let* ((_g131188131196_
                                                           (lambda (_g131189131192_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g131189131192_)))
                                                          (_g131187131249_
                                                           (lambda (_g131189131200_)
                                                             ((lambda (_L131203_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g131215131223_
                                  (lambda (_g131216131219_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g131216131219_)))
                                 (_g131214131245_
                                  (lambda (_g131216131227_)
                                    ((lambda (_L131230_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp137162
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp137157
                                                  (let ((__tmp137159
                                                         (let ((__tmp137160
                                                                (let ((__tmp137161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L131170_ '()))))
                          (declare (not safe))
                          (cons _L131203_ __tmp137161))))
                   (declare (not safe))
                   (cons __tmp137160 '())))
                (__tmp137158
                 (let () (declare (not safe)) (cons _L131230_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137159
                                                          __tmp137158))))
                                             (declare (not safe))
                                             (cons __tmp137162 __tmp137157)))))
                                     _g131216131227_))))
                            (_g131214131245_
                             (_generate131108_
                              _L131203_
                              (gx#syntax->list _L131169_)
                              _L131167_)))))
                      _g131189131200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g131187131249_
                                                      (gx#genident 'e)))
                                                   (_g131111131130_
                                                    _g131112131134_)))
                                             _tl131122131164_
                                             _hd131123131161_
                                             _hd131120131151_)))
                                        (_g131111131130_ _g131112131134_))))
                                (_g131111131130_ _g131112131134_))))
                        (_g131111131130_ _g131112131134_)))))
            (_g131110131253_ _stx131105_)))))))
