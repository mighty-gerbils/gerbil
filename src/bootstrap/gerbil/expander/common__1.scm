(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g133995_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133997_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133999_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134004_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134007_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134012_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134015_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134020_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134023_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134028_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134031_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134138_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj133990
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp133994 |gx[1]#_g133995_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           __tmp133994
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp133996 |gx[1]#_g133997_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           __tmp133996
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp133998 |gx[1]#_g133999_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           __tmp133998
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134000
               (let ((__tmp134005
                      (let ((__tmp134006 |gx[1]#_g134007_|))
                        (declare (not safe))
                        (cons 'e __tmp134006)))
                     (__tmp134001
                      (let ((__tmp134002
                             (let ((__tmp134003 |gx[1]#_g134004_|))
                               (declare (not safe))
                               (cons 'source __tmp134003))))
                        (declare (not safe))
                        (cons __tmp134002 '()))))
                 (declare (not safe))
                 (cons __tmp134005 __tmp134001))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           __tmp134000
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134008
               (let ((__tmp134013
                      (let ((__tmp134014 |gx[1]#_g134015_|))
                        (declare (not safe))
                        (cons 'e __tmp134014)))
                     (__tmp134009
                      (let ((__tmp134010
                             (let ((__tmp134011 |gx[1]#_g134012_|))
                               (declare (not safe))
                               (cons 'source __tmp134011))))
                        (declare (not safe))
                        (cons __tmp134010 '()))))
                 (declare (not safe))
                 (cons __tmp134013 __tmp134009))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           __tmp134008
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134016
               (let ((__tmp134021
                      (let ((__tmp134022 |gx[1]#_g134023_|))
                        (declare (not safe))
                        (cons 'e __tmp134022)))
                     (__tmp134017
                      (let ((__tmp134018
                             (let ((__tmp134019 |gx[1]#_g134020_|))
                               (declare (not safe))
                               (cons 'source __tmp134019))))
                        (declare (not safe))
                        (cons __tmp134018 '()))))
                 (declare (not safe))
                 (cons __tmp134021 __tmp134017))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           __tmp134016
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134024
               (let ((__tmp134029
                      (let ((__tmp134030 |gx[1]#_g134031_|))
                        (declare (not safe))
                        (cons 'e __tmp134030)))
                     (__tmp134025
                      (let ((__tmp134026
                             (let ((__tmp134027 |gx[1]#_g134028_|))
                               (declare (not safe))
                               (cons 'source __tmp134027))))
                        (declare (not safe))
                        (cons __tmp134026 '()))))
                 (declare (not safe))
                 (cons __tmp134029 __tmp134025))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133990
           __tmp134024
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj133990))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128142_)
        (let* ((_g128146128160_
                (lambda (_g128147128156_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128147128156_)))
               (_g128145128202_
                (lambda (_g128147128164_)
                  (if (gx#stx-pair? _g128147128164_)
                      (let ((_e128151128167_ (gx#syntax-e _g128147128164_)))
                        (let ((_hd128150128171_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128151128167_)))
                              (_tl128149128174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128151128167_))))
                          (if (gx#stx-pair? _tl128149128174_)
                              (let ((_e128154128177_
                                     (gx#syntax-e _tl128149128174_)))
                                (let ((_hd128153128181_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128154128177_)))
                                      (_tl128152128184_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128154128177_))))
                                  (if (gx#stx-null? _tl128152128184_)
                                      ((lambda (_L128187_)
                                         (let ((__tmp134041
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134032
                                                (let ((__tmp134038
                                                       (let ((__tmp134040
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134039
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128187_ '()))))
                 (declare (not safe))
                 (cons __tmp134040 __tmp134039)))
              (__tmp134033
               (let ((__tmp134034
                      (let ((__tmp134037 (gx#datum->syntax '#f 'error))
                            (__tmp134035
                             (let ((__tmp134036
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128187_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134036))))
                        (declare (not safe))
                        (cons __tmp134037 __tmp134035))))
                 (declare (not safe))
                 (cons __tmp134034 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134038
                                                        __tmp134033))))
                                           (declare (not safe))
                                           (cons __tmp134041 __tmp134032)))
                                       _hd128153128181_)
                                      (_g128146128160_ _g128147128164_))))
                              (_g128146128160_ _g128147128164_))))
                      (_g128146128160_ _g128147128164_)))))
          (_g128145128202_ _$stx128142_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128206_)
        (letrec ((_generate128209_
                  (lambda (_tgt128358_ _kws128360_ _clauses128361_)
                    (letrec ((_generate-clause128363_
                              (lambda (_hd129273_ _E129275_)
                                (let* ((___stx133893133894_ _hd129273_)
                                       (_g129279129306_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx133893133894_))))
                                  (let ((___kont133896133897_
                                         (lambda (_L129402_ _L129404_)
                                           (_generate1128365_
                                            _hd129273_
                                            _L129404_
                                            '#t
                                            _L129402_
                                            _E129275_)))
                                        (___kont133898133899_
                                         (lambda (_L129354_
                                                  _L129356_
                                                  _L129357_)
                                           (_generate1128365_
                                            _hd129273_
                                            _L129357_
                                            _L129356_
                                            _L129354_
                                            _E129275_)))
                                        (___kont133900133901_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128206_
                                            _hd129273_))))
                                    (if (gx#stx-pair? ___stx133893133894_)
                                        (let ((_e129285129382_
                                               (gx#syntax-e
                                                ___stx133893133894_)))
                                          (let ((_tl129283129389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129285129382_)))
                                                (_hd129284129386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129285129382_))))
                                            (if (gx#stx-pair? _tl129283129389_)
                                                (let ((_e129288129392_
                                                       (gx#syntax-e
                                                        _tl129283129389_)))
                                                  (let ((_tl129286129399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129288129392_)))
                                                        (_hd129287129396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129288129392_))))
                                                    (if (gx#stx-null?
                                                         _tl129286129399_)
                                                        (___kont133896133897_
                                                         _hd129287129396_
                                                         _hd129284129386_)
                                                        (if (gx#stx-pair?
                                                             _tl129286129399_)
                                                            (let ((_e129300129344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129286129399_)))
                      (let ((_tl129298129351_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129300129344_)))
                            (_hd129299129348_
                             (let ()
                               (declare (not safe))
                               (##car _e129300129344_))))
                        (if (gx#stx-null? _tl129298129351_)
                            (___kont133898133899_
                             _hd129299129348_
                             _hd129287129396_
                             _hd129284129386_)
                            (___kont133900133901_))))
                    (___kont133900133901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont133900133901_))))
                                        (___kont133900133901_))))))
                             (_generate1128365_
                              (lambda (_where128751_
                                       _hd128753_
                                       _fender128754_
                                       _body128755_
                                       _E128756_)
                                (letrec ((_recur128758_
                                          (lambda (_hd128761_
                                                   _tgt128763_
                                                   _K128764_)
                                            (let* ((___stx133939133940_
                                                    _hd128761_)
                                                   (_g128767128779_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx133939133940_))))
                                              (let ((___kont133942133943_
                                                     (lambda (_L129063_
                                                              _L129065_)
                                                       (let* ((_g129076129084_
                                                               (lambda (_g129077129080_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129077129080_)))
                      (_g129075129265_
                       (lambda (_g129077129088_)
                         ((lambda (_L129091_)
                            (let ()
                              (let* ((_g129103129111_
                                      (lambda (_g129104129107_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129104129107_)))
                                     (_g129102129261_
                                      (lambda (_g129104129115_)
                                        ((lambda (_L129118_)
                                           (let ()
                                             (let* ((_g129131129139_
                                                     (lambda (_g129132129135_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129132129135_)))
                                                    (_g129130129257_
                                                     (lambda (_g129132129143_)
                                                       ((lambda (_L129146_)
                                                          (let ()
                                                            (let* ((_g129159129167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129160129163_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129160129163_)))
                           (_g129158129253_
                            (lambda (_g129160129171_)
                              ((lambda (_L129174_)
                                 (let ()
                                   (let* ((_g129187129195_
                                           (lambda (_g129188129191_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129188129191_)))
                                          (_g129186129249_
                                           (lambda (_g129188129199_)
                                             ((lambda (_L129202_)
                                                (let ()
                                                  (let* ((_g129215129223_
                                                          (lambda (_g129216129219_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129216129219_)))
                                                         (_g129214129245_
                                                          (lambda (_g129216129227_)
                                                            ((lambda (_L129230_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134074 (gx#datum->syntax '#f 'if))
                                 (__tmp134042
                                  (let ((__tmp134071
                                         (let ((__tmp134073
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134072
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129091_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134073 __tmp134072)))
                                        (__tmp134043
                                         (let ((__tmp134045
                                                (let ((__tmp134070
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134046
                                                       (let ((__tmp134064
                                                              (let ((__tmp134065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134066
                                    (let ((__tmp134067
                                           (let ((__tmp134069
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134068
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129091_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134069 __tmp134068))))
                                      (declare (not safe))
                                      (cons __tmp134067 '()))))
                               (declare (not safe))
                               (cons _L129118_ __tmp134066))))
                        (declare (not safe))
                        (cons __tmp134065 '())))
                     (__tmp134047
                      (let ((__tmp134048
                             (let ((__tmp134063 (gx#datum->syntax '#f 'let))
                                   (__tmp134049
                                    (let ((__tmp134051
                                           (let ((__tmp134058
                                                  (let ((__tmp134059
                                                         (let ((__tmp134060
                                                                (let ((__tmp134062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134061
                               (let ()
                                 (declare (not safe))
                                 (cons _L129118_ '()))))
                          (declare (not safe))
                          (cons __tmp134062 __tmp134061))))
                   (declare (not safe))
                   (cons __tmp134060 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129146_
                                                          __tmp134059)))
                                                 (__tmp134052
                                                  (let ((__tmp134053
                                                         (let ((__tmp134054
                                                                (let ((__tmp134055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134057
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134056
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129118_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134057 __tmp134056))))
                          (declare (not safe))
                          (cons __tmp134055 '()))))
                   (declare (not safe))
                   (cons _L129174_ __tmp134054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134053 '()))))
                                             (declare (not safe))
                                             (cons __tmp134058 __tmp134052)))
                                          (__tmp134050
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129202_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134051 __tmp134050))))
                               (declare (not safe))
                               (cons __tmp134063 __tmp134049))))
                        (declare (not safe))
                        (cons __tmp134048 '()))))
                 (declare (not safe))
                 (cons __tmp134064 __tmp134047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134070
                                                        __tmp134046)))
                                               (__tmp134044
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129230_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134045 __tmp134044))))
                                    (declare (not safe))
                                    (cons __tmp134071 __tmp134043))))
                             (declare (not safe))
                             (cons __tmp134074 __tmp134042)))))
                     _g129216129227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129214129245_
                                                     _E128756_))))
                                              _g129188129199_))))
                                     (_g129186129249_
                                      (_recur128758_
                                       _L129065_
                                       _L129146_
                                       (_recur128758_
                                        _L129063_
                                        _L129174_
                                        _K128764_))))))
                               _g129160129171_))))
                      (_g129158129253_ (gx#genident 'tl)))))
                _g129132129143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129130129257_
                                                (gx#genident 'hd)))))
                                         _g129104129115_))))
                                (_g129102129261_ (gx#genident 'e)))))
                          _g129077129088_))))
                 (_g129075129265_ _tgt128763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133944133945_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd128761_)
                                                           (if (gx#underscore?
                                                                _hd128761_)
                                                               _K128764_
                                                               (if (let ((__tmp134119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g128789128791_)
                                    (gx#bound-identifier=?
                                     _g128789128791_
                                     _hd128761_))))
                             (declare (not safe))
                             (find __tmp134119 _kws128360_))
                           (let* ((_g128795128810_
                                   (lambda (_g128796128806_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g128796128806_)))
                                  (_g128794128861_
                                   (lambda (_g128796128814_)
                                     (if (gx#stx-pair? _g128796128814_)
                                         (let ((_e128801128817_
                                                (gx#syntax-e _g128796128814_)))
                                           (let ((_hd128800128821_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128801128817_)))
                                                 (_tl128799128824_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128801128817_))))
                                             (if (gx#stx-pair?
                                                  _tl128799128824_)
                                                 (let ((_e128804128827_
                                                        (gx#syntax-e
                                                         _tl128799128824_)))
                                                   (let ((_hd128803128831_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e128804128827_)))
                                                         (_tl128802128834_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e128804128827_))))
                                                     (if (gx#stx-null?
                                                          _tl128802128834_)
                                                         ((lambda (_L128837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L128839_)
                    (let ()
                      (let ((__tmp134118 (gx#datum->syntax '#f 'if))
                            (__tmp134101
                             (let ((__tmp134104
                                    (let ((__tmp134117
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134105
                                           (let ((__tmp134114
                                                  (let ((__tmp134116
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134115
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L128839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134116
                                                          __tmp134115)))
                                                 (__tmp134106
                                                  (let ((__tmp134107
                                                         (let ((__tmp134113
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134108
                        (let ((__tmp134109
                               (let ((__tmp134110
                                      (let ((__tmp134112
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134111
                                             (let ()
                                               (declare (not safe))
                                               (cons _L128837_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134112 __tmp134111))))
                                 (declare (not safe))
                                 (cons __tmp134110 '()))))
                          (declare (not safe))
                          (cons _L128839_ __tmp134109))))
                   (declare (not safe))
                   (cons __tmp134113 __tmp134108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134107 '()))))
                                             (declare (not safe))
                                             (cons __tmp134114 __tmp134106))))
                                      (declare (not safe))
                                      (cons __tmp134117 __tmp134105)))
                                   (__tmp134102
                                    (let ((__tmp134103
                                           (let ()
                                             (declare (not safe))
                                             (cons _E128756_ '()))))
                                      (declare (not safe))
                                      (cons _K128764_ __tmp134103))))
                               (declare (not safe))
                               (cons __tmp134104 __tmp134102))))
                        (declare (not safe))
                        (cons __tmp134118 __tmp134101))))
                  _hd128803128831_
                  _hd128800128821_)
                 (_g128795128810_ _g128796128814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g128795128810_
                                                  _g128796128814_))))
                                         (_g128795128810_ _g128796128814_)))))
                             (_g128794128861_ (list _tgt128763_ _hd128761_)))
                           (let* ((_g128865128880_
                                   (lambda (_g128866128876_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g128866128876_)))
                                  (_g128864128924_
                                   (lambda (_g128866128884_)
                                     (if (gx#stx-pair? _g128866128884_)
                                         (let ((_e128871128887_
                                                (gx#syntax-e _g128866128884_)))
                                           (let ((_hd128870128891_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128871128887_)))
                                                 (_tl128869128894_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128871128887_))))
                                             (if (gx#stx-pair?
                                                  _tl128869128894_)
                                                 (let ((_e128874128897_
                                                        (gx#syntax-e
                                                         _tl128869128894_)))
                                                   (let ((_hd128873128901_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e128874128897_)))
                                                         (_tl128872128904_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e128874128897_))))
                                                     (if (gx#stx-null?
                                                          _tl128872128904_)
                                                         ((lambda (_L128907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L128909_)
                    (let ()
                      (let ((__tmp134100 (gx#datum->syntax '#f 'let))
                            (__tmp134095
                             (let ((__tmp134097
                                    (let ((__tmp134098
                                           (let ((__tmp134099
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L128909_ '()))))
                                             (declare (not safe))
                                             (cons _L128907_ __tmp134099))))
                                      (declare (not safe))
                                      (cons __tmp134098 '())))
                                   (__tmp134096
                                    (let ()
                                      (declare (not safe))
                                      (cons _K128764_ '()))))
                               (declare (not safe))
                               (cons __tmp134097 __tmp134096))))
                        (declare (not safe))
                        (cons __tmp134100 __tmp134095))))
                  _hd128873128901_
                  _hd128870128891_)
                 (_g128865128880_ _g128866128884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g128865128880_
                                                  _g128866128884_))))
                                         (_g128865128880_ _g128866128884_)))))
                             (_g128864128924_ (list _tgt128763_ _hd128761_)))))
                   (if (gx#stx-null? _hd128761_)
                       (let* ((_g128928128936_
                               (lambda (_g128929128932_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g128929128932_)))
                              (_g128927128954_
                               (lambda (_g128929128940_)
                                 ((lambda (_L128943_)
                                    (let ()
                                      (let ((__tmp134094
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134088
                                             (let ((__tmp134091
                                                    (let ((__tmp134093
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134092
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L128943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134093 __tmp134092)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134089
                                                    (let ((__tmp134090
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E128756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K128764_ __tmp134090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134091
                                                     __tmp134089))))
                                        (declare (not safe))
                                        (cons __tmp134094 __tmp134088))))
                                  _g128929128940_))))
                         (_g128927128954_ _tgt128763_))
                       (if (gx#stx-datum? _hd128761_)
                           (let* ((_g128958128977_
                                   (lambda (_g128959128973_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g128959128973_)))
                                  (_g128957129035_
                                   (lambda (_g128959128981_)
                                     (if (gx#stx-pair? _g128959128981_)
                                         (let ((_e128965128984_
                                                (gx#syntax-e _g128959128981_)))
                                           (let ((_hd128964128988_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128965128984_)))
                                                 (_tl128963128991_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128965128984_))))
                                             (if (gx#stx-pair?
                                                  _tl128963128991_)
                                                 (let ((_e128968128994_
                                                        (gx#syntax-e
                                                         _tl128963128991_)))
                                                   (let ((_hd128967128998_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e128968128994_)))
                                                         (_tl128966129001_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e128968128994_))))
                                                     (if (gx#stx-pair?
                                                          _tl128966129001_)
                                                         (let ((_e128971129004_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl128966129001_)))
                   (let ((_hd128970129008_
                          (let ()
                            (declare (not safe))
                            (##car _e128971129004_)))
                         (_tl128969129011_
                          (let ()
                            (declare (not safe))
                            (##cdr _e128971129004_))))
                     (if (gx#stx-null? _tl128969129011_)
                         ((lambda (_L129014_ _L129016_ _L129017_)
                            (let ()
                              (let ((__tmp134087 (gx#datum->syntax '#f 'if))
                                    (__tmp134075
                                     (let ((__tmp134078
                                            (let ((__tmp134079
                                                   (let ((__tmp134084
                                                          (let ((__tmp134086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134085
                         (let () (declare (not safe)) (cons _L129017_ '()))))
                    (declare (not safe))
                    (cons __tmp134086 __tmp134085)))
                 (__tmp134080
                  (let ((__tmp134081
                         (let ((__tmp134083 (gx#datum->syntax '#f 'quote))
                               (__tmp134082
                                (let ()
                                  (declare (not safe))
                                  (cons _L129016_ '()))))
                           (declare (not safe))
                           (cons __tmp134083 __tmp134082))))
                    (declare (not safe))
                    (cons __tmp134081 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134084
                                                           __tmp134080))))
                                              (declare (not safe))
                                              (cons _L129014_ __tmp134079)))
                                           (__tmp134076
                                            (let ((__tmp134077
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E128756_ '()))))
                                              (declare (not safe))
                                              (cons _K128764_ __tmp134077))))
                                       (declare (not safe))
                                       (cons __tmp134078 __tmp134076))))
                                (declare (not safe))
                                (cons __tmp134087 __tmp134075))))
                          _hd128970129008_
                          _hd128967128998_
                          _hd128964128988_)
                         (_g128958128977_ _g128959128981_))))
                 (_g128958128977_ _g128959128981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g128958128977_
                                                  _g128959128981_))))
                                         (_g128958128977_ _g128959128981_)))))
                             (_g128957129035_
                              (list _tgt128763_
                                    _hd128761_
                                    (let ((_e129039_ (gx#stx-e _hd128761_)))
                                      (if (or (keyword? _e129039_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129039_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129039_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128206_
                            _where128751_
                            _hd128761_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx133939133940_)
                                                    (let ((_e128773129053_
                                                           (gx#syntax-e
                                                            ___stx133939133940_)))
                                                      (let ((_tl128771129060_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128773129053_)))
                    (_hd128772129057_
                     (let () (declare (not safe)) (##car _e128773129053_))))
                (___kont133942133943_ _tl128771129060_ _hd128772129057_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133944133945_)))))))
                                  (_recur128758_
                                   _hd128753_
                                   _tgt128358_
                                   (let ((__tmp134123
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134120
                                          (let ((__tmp134121
                                                 (let ((__tmp134122
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E128756_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body128755_
                                                         __tmp134122))))
                                            (declare (not safe))
                                            (cons _fender128754_
                                                  __tmp134121))))
                                     (declare (not safe))
                                     (cons __tmp134123 __tmp134120))))))
                             (_generate-clauses128366_
                              (lambda (_clauses128489_)
                                (let _lp128492_ ((_rest128495_ _clauses128489_)
                                                 (_E128497_ (gx#genident 'E))
                                                 (_r128498_ '()))
                                  (let* ((___stx133975133976_ _rest128495_)
                                         (_g128501128513_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx133975133976_))))
                                    (let ((___kont133978133979_
                                           (lambda (_L128578_ _L128580_)
                                             (let* ((___stx133955133956_
                                                     _L128580_)
                                                    (_g128592128603_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx133955133956_))))
                                               (let ((___kont133958133959_
                                                      (lambda (_L128732_)
                                                        (if (gx#stx-null?
                                                             _L128578_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L128732_)
                             (let ((__tmp134132 (gx#stx-null? _L128732_)))
                               (declare (not safe))
                               (not __tmp134132)))
                        (let ((__tmp134124
                               (let ((__tmp134125
                                      (let ((__tmp134126
                                             (gx#stx-wrap-source
                                              (let ((__tmp134131
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134127
                                                     (let ((__tmp134128
                                                            (let ((__tmp134129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134130 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134130 _L128732_))))
                      (declare (not safe))
                      (cons __tmp134129 '()))))
               (declare (not safe))
               (cons '() __tmp134128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134131 __tmp134127))
                                              (gx#stx-source _L128580_))))
                                        (declare (not safe))
                                        (cons __tmp134126 '()))))
                                 (declare (not safe))
                                 (cons _E128497_ __tmp134125))))
                          (declare (not safe))
                          (cons __tmp134124 _r128498_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128206_
                         _L128580_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128206_
                     _L128580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133960133961_
                                                      (lambda ()
                                                        (let* ((_g128614128622_
                                                                (lambda (_g128615128618_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g128615128618_)))
                       (_g128613128711_
                        (lambda (_g128615128626_)
                          ((lambda (_L128629_)
                             (let ()
                               (let* ((_g128645128653_
                                       (lambda (_g128646128649_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g128646128649_)))
                                      (_g128644128707_
                                       (lambda (_g128646128657_)
                                         ((lambda (_L128660_)
                                            (let ()
                                              (let* ((_g128673128681_
                                                      (lambda (_g128674128677_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g128674128677_)))
                                                     (_g128672128703_
                                                      (lambda (_g128674128685_)
                                                        ((lambda (_L128688_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128492_
                                                                _L128578_
                                                                _L128629_
                                                                (let ((__tmp134133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134134
                                      (let ()
                                        (declare (not safe))
                                        (cons _L128688_ '()))))
                                 (declare (not safe))
                                 (cons _E128497_ __tmp134134))))
                          (declare (not safe))
                          (cons __tmp134133 _r128498_))))))
                 _g128674128685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g128672128703_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134137
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134135
                                                         (let ((__tmp134136
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L128660_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134137
                                                          __tmp134135))
                                                  (gx#stx-source
                                                   _L128580_))))))
                                          _g128646128657_))))
                                 (_g128644128707_
                                  (_generate-clause128363_
                                   _L128580_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L128629_ '())))))))
                           _g128615128626_))))
                  (_g128613128711_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx133955133956_)
                                                     (let ((_e128597128722_
                                                            (gx#syntax-e
                                                             ___stx133955133956_)))
                                                       (let ((_tl128595128729_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e128597128722_)))
                     (_hd128596128726_
                      (let () (declare (not safe)) (##car _e128597128722_))))
                 (if (gx#identifier? _hd128596128726_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134138_|
                          _hd128596128726_)
                         (___kont133958133959_ _tl128595128729_)
                         (___kont133960133961_))
                     (___kont133960133961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133960133961_))))))
                                          (___kont133980133981_
                                           (lambda ()
                                             (let* ((_g128524128532_
                                                     (lambda (_g128525128528_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128525128528_)))
                                                    (_g128523128557_
                                                     (lambda (_g128525128536_)
                                                       ((lambda (_L128539_)
                                                          (let ()
                                                            (let ((__tmp134139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134140
                                  (let ((__tmp134141
                                         (gx#stx-wrap-source
                                          (let ((__tmp134149
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134142
                                                 (let ((__tmp134143
                                                        (let ((__tmp134144
                                                               (let ((__tmp134148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134145
                              (let ((__tmp134146
                                     (let ((__tmp134147
                                            (let ()
                                              (declare (not safe))
                                              (cons _L128539_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134147))))
                                (declare (not safe))
                                (cons '#f __tmp134146))))
                         (declare (not safe))
                         (cons __tmp134148 __tmp134145))))
                  (declare (not safe))
                  (cons __tmp134144 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134143))))
                                            (declare (not safe))
                                            (cons __tmp134149 __tmp134142))
                                          (gx#stx-source _stx128206_))))
                                    (declare (not safe))
                                    (cons __tmp134141 '()))))
                             (declare (not safe))
                             (cons _E128497_ __tmp134140))))
                      (declare (not safe))
                      (cons __tmp134139 _r128498_))))
                _g128525128536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128523128557_
                                                _tgt128358_)))))
                                      (if (gx#stx-pair? ___stx133975133976_)
                                          (let ((_e128507128568_
                                                 (gx#syntax-e
                                                  ___stx133975133976_)))
                                            (let ((_tl128505128575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128507128568_)))
                                                  (_hd128506128572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128507128568_))))
                                              (___kont133978133979_
                                               _tl128505128575_
                                               _hd128506128572_)))
                                          (___kont133980133981_))))))))
                      (let* ((_bind128368_
                              (_generate-clauses128366_ _clauses128361_))
                             (_g128371128388_
                              (lambda (_g128372128384_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128372128384_)))
                             (_g128370128485_
                              (lambda (_g128372128392_)
                                (if (gx#stx-pair/null? _g128372128392_)
                                    (let ((_g134150_
                                           (gx#syntax-split-splice
                                            _g128372128392_
                                            '0)))
                                      (begin
                                        (let ((_g134151_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134150_)
                                                     (##vector-length
                                                      _g134150_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134151_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134151_)))
                                        (let ((_target128374128395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134150_ 0)))
                                              (_tl128376128398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134150_ 1))))
                                          (if (gx#stx-null? _tl128376128398_)
                                              (letrec ((_loop128377128401_
                                                        (lambda (_hd128375128405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128381128408_)
                  (if (gx#stx-pair? _hd128375128405_)
                      (let ((_e128378128411_ (gx#syntax-e _hd128375128405_)))
                        (let ((_lp-hd128379128415_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128378128411_)))
                              (_lp-tl128380128418_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128378128411_))))
                          (_loop128377128401_
                           _lp-tl128380128418_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128379128415_
                                   _bind-try128381128408_)))))
                      (let ((_bind-try128382128421_
                             (reverse _bind-try128381128408_)))
                        ((lambda (_L128425_)
                           (let ()
                             (let* ((_g128443128451_
                                     (lambda (_g128444128447_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128444128447_)))
                                    (_g128442128481_
                                     (lambda (_g128444128455_)
                                       ((lambda (_L128458_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134157
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134152
                                                     (let ((__tmp134155
                                                            (let ((__tmp134156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128472128475_ _g128473128478_)
                             (let ()
                               (declare (not safe))
                               (cons _g128472128475_ _g128473128478_)))))
                      (declare (not safe))
                      (foldr1 __tmp134156 '() _L128425_)))
                   (__tmp134153
                    (let ((__tmp134154
                           (let () (declare (not safe)) (cons _L128458_ '()))))
                      (declare (not safe))
                      (cons __tmp134154 '()))))
               (declare (not safe))
               (cons __tmp134155 __tmp134153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134157
                                                      __tmp134152)))))
                                        _g128444128455_))))
                               (_g128442128481_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128368_)))))))
                         _bind-try128382128421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128377128401_
                                                 _target128374128395_
                                                 '()))
                                              (_g128371128388_
                                               _g128372128392_)))))
                                    (_g128371128388_ _g128372128392_)))))
                        (_g128370128485_ _bind128368_))))))
          (let* ((_g128212128231_
                  (lambda (_g128213128227_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128213128227_)))
                 (_g128211128354_
                  (lambda (_g128213128235_)
                    (if (gx#stx-pair? _g128213128235_)
                        (let ((_e128219128238_ (gx#syntax-e _g128213128235_)))
                          (let ((_hd128218128242_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128219128238_)))
                                (_tl128217128245_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128219128238_))))
                            (if (gx#stx-pair? _tl128217128245_)
                                (let ((_e128222128248_
                                       (gx#syntax-e _tl128217128245_)))
                                  (let ((_hd128221128252_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128222128248_)))
                                        (_tl128220128255_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128222128248_))))
                                    (if (gx#stx-pair? _tl128220128255_)
                                        (let ((_e128225128258_
                                               (gx#syntax-e _tl128220128255_)))
                                          (let ((_hd128224128262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128225128258_)))
                                                (_tl128223128265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128225128258_))))
                                            ((lambda (_L128268_
                                                      _L128270_
                                                      _L128271_)
                                               (if (and (gx#identifier-list?
                                                         _L128270_)
                                                        (gx#stx-list?
                                                         _L128268_))
                                                   (let* ((_g128289128297_
                                                           (lambda (_g128290128293_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128290128293_)))
                                                          (_g128288128350_
                                                           (lambda (_g128290128301_)
                                                             ((lambda (_L128304_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128316128324_
                                  (lambda (_g128317128320_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128317128320_)))
                                 (_g128315128346_
                                  (lambda (_g128317128328_)
                                    ((lambda (_L128331_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134163
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134158
                                                  (let ((__tmp134160
                                                         (let ((__tmp134161
                                                                (let ((__tmp134162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128271_ '()))))
                          (declare (not safe))
                          (cons _L128304_ __tmp134162))))
                   (declare (not safe))
                   (cons __tmp134161 '())))
                (__tmp134159
                 (let () (declare (not safe)) (cons _L128331_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134160
                                                          __tmp134159))))
                                             (declare (not safe))
                                             (cons __tmp134163 __tmp134158)))))
                                     _g128317128328_))))
                            (_g128315128346_
                             (_generate128209_
                              _L128304_
                              (gx#syntax->list _L128270_)
                              _L128268_)))))
                      _g128290128301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128288128350_
                                                      (gx#genident 'e)))
                                                   (_g128212128231_
                                                    _g128213128235_)))
                                             _tl128223128265_
                                             _hd128224128262_
                                             _hd128221128252_)))
                                        (_g128212128231_ _g128213128235_))))
                                (_g128212128231_ _g128213128235_))))
                        (_g128212128231_ _g128213128235_)))))
            (_g128211128354_ _stx128206_)))))))
