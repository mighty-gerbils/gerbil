(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134049_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134051_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134053_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134058_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134061_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134066_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134069_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134074_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134077_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134082_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134085_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134192_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134046
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
           __obj134046
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134048 |gx[1]#_g134049_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           __tmp134048
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134050 |gx[1]#_g134051_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           __tmp134050
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134052 |gx[1]#_g134053_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           __tmp134052
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134054
               (let ((__tmp134059
                      (let ((__tmp134060 |gx[1]#_g134061_|))
                        (declare (not safe))
                        (cons 'e __tmp134060)))
                     (__tmp134055
                      (let ((__tmp134056
                             (let ((__tmp134057 |gx[1]#_g134058_|))
                               (declare (not safe))
                               (cons 'source __tmp134057))))
                        (declare (not safe))
                        (cons __tmp134056 '()))))
                 (declare (not safe))
                 (cons __tmp134059 __tmp134055))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           __tmp134054
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134062
               (let ((__tmp134067
                      (let ((__tmp134068 |gx[1]#_g134069_|))
                        (declare (not safe))
                        (cons 'e __tmp134068)))
                     (__tmp134063
                      (let ((__tmp134064
                             (let ((__tmp134065 |gx[1]#_g134066_|))
                               (declare (not safe))
                               (cons 'source __tmp134065))))
                        (declare (not safe))
                        (cons __tmp134064 '()))))
                 (declare (not safe))
                 (cons __tmp134067 __tmp134063))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           __tmp134062
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134070
               (let ((__tmp134075
                      (let ((__tmp134076 |gx[1]#_g134077_|))
                        (declare (not safe))
                        (cons 'e __tmp134076)))
                     (__tmp134071
                      (let ((__tmp134072
                             (let ((__tmp134073 |gx[1]#_g134074_|))
                               (declare (not safe))
                               (cons 'source __tmp134073))))
                        (declare (not safe))
                        (cons __tmp134072 '()))))
                 (declare (not safe))
                 (cons __tmp134075 __tmp134071))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           __tmp134070
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134078
               (let ((__tmp134083
                      (let ((__tmp134084 |gx[1]#_g134085_|))
                        (declare (not safe))
                        (cons 'e __tmp134084)))
                     (__tmp134079
                      (let ((__tmp134080
                             (let ((__tmp134081 |gx[1]#_g134082_|))
                               (declare (not safe))
                               (cons 'source __tmp134081))))
                        (declare (not safe))
                        (cons __tmp134080 '()))))
                 (declare (not safe))
                 (cons __tmp134083 __tmp134079))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134046
           __tmp134078
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134046))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128198_)
        (let* ((_g128202128216_
                (lambda (_g128203128212_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128203128212_)))
               (_g128201128258_
                (lambda (_g128203128220_)
                  (if (gx#stx-pair? _g128203128220_)
                      (let ((_e128207128223_ (gx#syntax-e _g128203128220_)))
                        (let ((_hd128206128227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128207128223_)))
                              (_tl128205128230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128207128223_))))
                          (if (gx#stx-pair? _tl128205128230_)
                              (let ((_e128210128233_
                                     (gx#syntax-e _tl128205128230_)))
                                (let ((_hd128209128237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128210128233_)))
                                      (_tl128208128240_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128210128233_))))
                                  (if (gx#stx-null? _tl128208128240_)
                                      ((lambda (_L128243_)
                                         (let ((__tmp134095
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134086
                                                (let ((__tmp134092
                                                       (let ((__tmp134094
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134093
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128243_ '()))))
                 (declare (not safe))
                 (cons __tmp134094 __tmp134093)))
              (__tmp134087
               (let ((__tmp134088
                      (let ((__tmp134091 (gx#datum->syntax '#f 'error))
                            (__tmp134089
                             (let ((__tmp134090
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128243_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134090))))
                        (declare (not safe))
                        (cons __tmp134091 __tmp134089))))
                 (declare (not safe))
                 (cons __tmp134088 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134092
                                                        __tmp134087))))
                                           (declare (not safe))
                                           (cons __tmp134095 __tmp134086)))
                                       _hd128209128237_)
                                      (_g128202128216_ _g128203128220_))))
                              (_g128202128216_ _g128203128220_))))
                      (_g128202128216_ _g128203128220_)))))
          (_g128201128258_ _$stx128198_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128262_)
        (letrec ((_generate128265_
                  (lambda (_tgt128414_ _kws128416_ _clauses128417_)
                    (letrec ((_generate-clause128419_
                              (lambda (_hd129329_ _E129331_)
                                (let* ((___stx133949133950_ _hd129329_)
                                       (_g129335129362_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx133949133950_))))
                                  (let ((___kont133952133953_
                                         (lambda (_L129458_ _L129460_)
                                           (_generate1128421_
                                            _hd129329_
                                            _L129460_
                                            '#t
                                            _L129458_
                                            _E129331_)))
                                        (___kont133954133955_
                                         (lambda (_L129410_
                                                  _L129412_
                                                  _L129413_)
                                           (_generate1128421_
                                            _hd129329_
                                            _L129413_
                                            _L129412_
                                            _L129410_
                                            _E129331_)))
                                        (___kont133956133957_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128262_
                                            _hd129329_))))
                                    (if (gx#stx-pair? ___stx133949133950_)
                                        (let ((_e129341129438_
                                               (gx#syntax-e
                                                ___stx133949133950_)))
                                          (let ((_tl129339129445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129341129438_)))
                                                (_hd129340129442_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129341129438_))))
                                            (if (gx#stx-pair? _tl129339129445_)
                                                (let ((_e129344129448_
                                                       (gx#syntax-e
                                                        _tl129339129445_)))
                                                  (let ((_tl129342129455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129344129448_)))
                                                        (_hd129343129452_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129344129448_))))
                                                    (if (gx#stx-null?
                                                         _tl129342129455_)
                                                        (___kont133952133953_
                                                         _hd129343129452_
                                                         _hd129340129442_)
                                                        (if (gx#stx-pair?
                                                             _tl129342129455_)
                                                            (let ((_e129356129400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129342129455_)))
                      (let ((_tl129354129407_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129356129400_)))
                            (_hd129355129404_
                             (let ()
                               (declare (not safe))
                               (##car _e129356129400_))))
                        (if (gx#stx-null? _tl129354129407_)
                            (___kont133954133955_
                             _hd129355129404_
                             _hd129343129452_
                             _hd129340129442_)
                            (___kont133956133957_))))
                    (___kont133956133957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont133956133957_))))
                                        (___kont133956133957_))))))
                             (_generate1128421_
                              (lambda (_where128807_
                                       _hd128809_
                                       _fender128810_
                                       _body128811_
                                       _E128812_)
                                (letrec ((_recur128814_
                                          (lambda (_hd128817_
                                                   _tgt128819_
                                                   _K128820_)
                                            (let* ((___stx133995133996_
                                                    _hd128817_)
                                                   (_g128823128835_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx133995133996_))))
                                              (let ((___kont133998133999_
                                                     (lambda (_L129119_
                                                              _L129121_)
                                                       (let* ((_g129132129140_
                                                               (lambda (_g129133129136_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129133129136_)))
                      (_g129131129321_
                       (lambda (_g129133129144_)
                         ((lambda (_L129147_)
                            (let ()
                              (let* ((_g129159129167_
                                      (lambda (_g129160129163_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129160129163_)))
                                     (_g129158129317_
                                      (lambda (_g129160129171_)
                                        ((lambda (_L129174_)
                                           (let ()
                                             (let* ((_g129187129195_
                                                     (lambda (_g129188129191_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129188129191_)))
                                                    (_g129186129313_
                                                     (lambda (_g129188129199_)
                                                       ((lambda (_L129202_)
                                                          (let ()
                                                            (let* ((_g129215129223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129216129219_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129216129219_)))
                           (_g129214129309_
                            (lambda (_g129216129227_)
                              ((lambda (_L129230_)
                                 (let ()
                                   (let* ((_g129243129251_
                                           (lambda (_g129244129247_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129244129247_)))
                                          (_g129242129305_
                                           (lambda (_g129244129255_)
                                             ((lambda (_L129258_)
                                                (let ()
                                                  (let* ((_g129271129279_
                                                          (lambda (_g129272129275_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129272129275_)))
                                                         (_g129270129301_
                                                          (lambda (_g129272129283_)
                                                            ((lambda (_L129286_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134128 (gx#datum->syntax '#f 'if))
                                 (__tmp134096
                                  (let ((__tmp134125
                                         (let ((__tmp134127
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134126
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129147_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134127 __tmp134126)))
                                        (__tmp134097
                                         (let ((__tmp134099
                                                (let ((__tmp134124
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134100
                                                       (let ((__tmp134118
                                                              (let ((__tmp134119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134120
                                    (let ((__tmp134121
                                           (let ((__tmp134123
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134122
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129147_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134123 __tmp134122))))
                                      (declare (not safe))
                                      (cons __tmp134121 '()))))
                               (declare (not safe))
                               (cons _L129174_ __tmp134120))))
                        (declare (not safe))
                        (cons __tmp134119 '())))
                     (__tmp134101
                      (let ((__tmp134102
                             (let ((__tmp134117 (gx#datum->syntax '#f 'let))
                                   (__tmp134103
                                    (let ((__tmp134105
                                           (let ((__tmp134112
                                                  (let ((__tmp134113
                                                         (let ((__tmp134114
                                                                (let ((__tmp134116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134115
                               (let ()
                                 (declare (not safe))
                                 (cons _L129174_ '()))))
                          (declare (not safe))
                          (cons __tmp134116 __tmp134115))))
                   (declare (not safe))
                   (cons __tmp134114 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129202_
                                                          __tmp134113)))
                                                 (__tmp134106
                                                  (let ((__tmp134107
                                                         (let ((__tmp134108
                                                                (let ((__tmp134109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134111
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134110
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129174_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134111 __tmp134110))))
                          (declare (not safe))
                          (cons __tmp134109 '()))))
                   (declare (not safe))
                   (cons _L129230_ __tmp134108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134107 '()))))
                                             (declare (not safe))
                                             (cons __tmp134112 __tmp134106)))
                                          (__tmp134104
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129258_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134105 __tmp134104))))
                               (declare (not safe))
                               (cons __tmp134117 __tmp134103))))
                        (declare (not safe))
                        (cons __tmp134102 '()))))
                 (declare (not safe))
                 (cons __tmp134118 __tmp134101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134124
                                                        __tmp134100)))
                                               (__tmp134098
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129286_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134099 __tmp134098))))
                                    (declare (not safe))
                                    (cons __tmp134125 __tmp134097))))
                             (declare (not safe))
                             (cons __tmp134128 __tmp134096)))))
                     _g129272129283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129270129301_
                                                     _E128812_))))
                                              _g129244129255_))))
                                     (_g129242129305_
                                      (_recur128814_
                                       _L129121_
                                       _L129202_
                                       (_recur128814_
                                        _L129119_
                                        _L129230_
                                        _K128820_))))))
                               _g129216129227_))))
                      (_g129214129309_ (gx#genident 'tl)))))
                _g129188129199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129186129313_
                                                (gx#genident 'hd)))))
                                         _g129160129171_))))
                                (_g129158129317_ (gx#genident 'e)))))
                          _g129133129144_))))
                 (_g129131129321_ _tgt128819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134000134001_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd128817_)
                                                           (if (gx#underscore?
                                                                _hd128817_)
                                                               _K128820_
                                                               (if (let ((__tmp134173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g128845128847_)
                                    (gx#bound-identifier=?
                                     _g128845128847_
                                     _hd128817_))))
                             (declare (not safe))
                             (find __tmp134173 _kws128416_))
                           (let* ((_g128851128866_
                                   (lambda (_g128852128862_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g128852128862_)))
                                  (_g128850128917_
                                   (lambda (_g128852128870_)
                                     (if (gx#stx-pair? _g128852128870_)
                                         (let ((_e128857128873_
                                                (gx#syntax-e _g128852128870_)))
                                           (let ((_hd128856128877_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128857128873_)))
                                                 (_tl128855128880_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128857128873_))))
                                             (if (gx#stx-pair?
                                                  _tl128855128880_)
                                                 (let ((_e128860128883_
                                                        (gx#syntax-e
                                                         _tl128855128880_)))
                                                   (let ((_hd128859128887_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e128860128883_)))
                                                         (_tl128858128890_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e128860128883_))))
                                                     (if (gx#stx-null?
                                                          _tl128858128890_)
                                                         ((lambda (_L128893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L128895_)
                    (let ()
                      (let ((__tmp134172 (gx#datum->syntax '#f 'if))
                            (__tmp134155
                             (let ((__tmp134158
                                    (let ((__tmp134171
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134159
                                           (let ((__tmp134168
                                                  (let ((__tmp134170
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134169
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L128895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134170
                                                          __tmp134169)))
                                                 (__tmp134160
                                                  (let ((__tmp134161
                                                         (let ((__tmp134167
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134162
                        (let ((__tmp134163
                               (let ((__tmp134164
                                      (let ((__tmp134166
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134165
                                             (let ()
                                               (declare (not safe))
                                               (cons _L128893_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134166 __tmp134165))))
                                 (declare (not safe))
                                 (cons __tmp134164 '()))))
                          (declare (not safe))
                          (cons _L128895_ __tmp134163))))
                   (declare (not safe))
                   (cons __tmp134167 __tmp134162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134161 '()))))
                                             (declare (not safe))
                                             (cons __tmp134168 __tmp134160))))
                                      (declare (not safe))
                                      (cons __tmp134171 __tmp134159)))
                                   (__tmp134156
                                    (let ((__tmp134157
                                           (let ()
                                             (declare (not safe))
                                             (cons _E128812_ '()))))
                                      (declare (not safe))
                                      (cons _K128820_ __tmp134157))))
                               (declare (not safe))
                               (cons __tmp134158 __tmp134156))))
                        (declare (not safe))
                        (cons __tmp134172 __tmp134155))))
                  _hd128859128887_
                  _hd128856128877_)
                 (_g128851128866_ _g128852128870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g128851128866_
                                                  _g128852128870_))))
                                         (_g128851128866_ _g128852128870_)))))
                             (_g128850128917_ (list _tgt128819_ _hd128817_)))
                           (let* ((_g128921128936_
                                   (lambda (_g128922128932_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g128922128932_)))
                                  (_g128920128980_
                                   (lambda (_g128922128940_)
                                     (if (gx#stx-pair? _g128922128940_)
                                         (let ((_e128927128943_
                                                (gx#syntax-e _g128922128940_)))
                                           (let ((_hd128926128947_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128927128943_)))
                                                 (_tl128925128950_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128927128943_))))
                                             (if (gx#stx-pair?
                                                  _tl128925128950_)
                                                 (let ((_e128930128953_
                                                        (gx#syntax-e
                                                         _tl128925128950_)))
                                                   (let ((_hd128929128957_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e128930128953_)))
                                                         (_tl128928128960_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e128930128953_))))
                                                     (if (gx#stx-null?
                                                          _tl128928128960_)
                                                         ((lambda (_L128963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L128965_)
                    (let ()
                      (let ((__tmp134154 (gx#datum->syntax '#f 'let))
                            (__tmp134149
                             (let ((__tmp134151
                                    (let ((__tmp134152
                                           (let ((__tmp134153
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L128965_ '()))))
                                             (declare (not safe))
                                             (cons _L128963_ __tmp134153))))
                                      (declare (not safe))
                                      (cons __tmp134152 '())))
                                   (__tmp134150
                                    (let ()
                                      (declare (not safe))
                                      (cons _K128820_ '()))))
                               (declare (not safe))
                               (cons __tmp134151 __tmp134150))))
                        (declare (not safe))
                        (cons __tmp134154 __tmp134149))))
                  _hd128929128957_
                  _hd128926128947_)
                 (_g128921128936_ _g128922128940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g128921128936_
                                                  _g128922128940_))))
                                         (_g128921128936_ _g128922128940_)))))
                             (_g128920128980_ (list _tgt128819_ _hd128817_)))))
                   (if (gx#stx-null? _hd128817_)
                       (let* ((_g128984128992_
                               (lambda (_g128985128988_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g128985128988_)))
                              (_g128983129010_
                               (lambda (_g128985128996_)
                                 ((lambda (_L128999_)
                                    (let ()
                                      (let ((__tmp134148
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134142
                                             (let ((__tmp134145
                                                    (let ((__tmp134147
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134146
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L128999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134147 __tmp134146)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134143
                                                    (let ((__tmp134144
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E128812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K128820_ __tmp134144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134145
                                                     __tmp134143))))
                                        (declare (not safe))
                                        (cons __tmp134148 __tmp134142))))
                                  _g128985128996_))))
                         (_g128983129010_ _tgt128819_))
                       (if (gx#stx-datum? _hd128817_)
                           (let* ((_g129014129033_
                                   (lambda (_g129015129029_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129015129029_)))
                                  (_g129013129091_
                                   (lambda (_g129015129037_)
                                     (if (gx#stx-pair? _g129015129037_)
                                         (let ((_e129021129040_
                                                (gx#syntax-e _g129015129037_)))
                                           (let ((_hd129020129044_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129021129040_)))
                                                 (_tl129019129047_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129021129040_))))
                                             (if (gx#stx-pair?
                                                  _tl129019129047_)
                                                 (let ((_e129024129050_
                                                        (gx#syntax-e
                                                         _tl129019129047_)))
                                                   (let ((_hd129023129054_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129024129050_)))
                                                         (_tl129022129057_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129024129050_))))
                                                     (if (gx#stx-pair?
                                                          _tl129022129057_)
                                                         (let ((_e129027129060_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129022129057_)))
                   (let ((_hd129026129064_
                          (let ()
                            (declare (not safe))
                            (##car _e129027129060_)))
                         (_tl129025129067_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129027129060_))))
                     (if (gx#stx-null? _tl129025129067_)
                         ((lambda (_L129070_ _L129072_ _L129073_)
                            (let ()
                              (let ((__tmp134141 (gx#datum->syntax '#f 'if))
                                    (__tmp134129
                                     (let ((__tmp134132
                                            (let ((__tmp134133
                                                   (let ((__tmp134138
                                                          (let ((__tmp134140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134139
                         (let () (declare (not safe)) (cons _L129073_ '()))))
                    (declare (not safe))
                    (cons __tmp134140 __tmp134139)))
                 (__tmp134134
                  (let ((__tmp134135
                         (let ((__tmp134137 (gx#datum->syntax '#f 'quote))
                               (__tmp134136
                                (let ()
                                  (declare (not safe))
                                  (cons _L129072_ '()))))
                           (declare (not safe))
                           (cons __tmp134137 __tmp134136))))
                    (declare (not safe))
                    (cons __tmp134135 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134138
                                                           __tmp134134))))
                                              (declare (not safe))
                                              (cons _L129070_ __tmp134133)))
                                           (__tmp134130
                                            (let ((__tmp134131
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E128812_ '()))))
                                              (declare (not safe))
                                              (cons _K128820_ __tmp134131))))
                                       (declare (not safe))
                                       (cons __tmp134132 __tmp134130))))
                                (declare (not safe))
                                (cons __tmp134141 __tmp134129))))
                          _hd129026129064_
                          _hd129023129054_
                          _hd129020129044_)
                         (_g129014129033_ _g129015129037_))))
                 (_g129014129033_ _g129015129037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129014129033_
                                                  _g129015129037_))))
                                         (_g129014129033_ _g129015129037_)))))
                             (_g129013129091_
                              (list _tgt128819_
                                    _hd128817_
                                    (let ((_e129095_ (gx#stx-e _hd128817_)))
                                      (if (or (keyword? _e129095_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129095_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129095_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128262_
                            _where128807_
                            _hd128817_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx133995133996_)
                                                    (let ((_e128829129109_
                                                           (gx#syntax-e
                                                            ___stx133995133996_)))
                                                      (let ((_tl128827129116_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128829129109_)))
                    (_hd128828129113_
                     (let () (declare (not safe)) (##car _e128829129109_))))
                (___kont133998133999_ _tl128827129116_ _hd128828129113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134000134001_)))))))
                                  (_recur128814_
                                   _hd128809_
                                   _tgt128414_
                                   (let ((__tmp134177
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134174
                                          (let ((__tmp134175
                                                 (let ((__tmp134176
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E128812_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body128811_
                                                         __tmp134176))))
                                            (declare (not safe))
                                            (cons _fender128810_
                                                  __tmp134175))))
                                     (declare (not safe))
                                     (cons __tmp134177 __tmp134174))))))
                             (_generate-clauses128422_
                              (lambda (_clauses128545_)
                                (let _lp128548_ ((_rest128551_ _clauses128545_)
                                                 (_E128553_ (gx#genident 'E))
                                                 (_r128554_ '()))
                                  (let* ((___stx134031134032_ _rest128551_)
                                         (_g128557128569_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134031134032_))))
                                    (let ((___kont134034134035_
                                           (lambda (_L128634_ _L128636_)
                                             (let* ((___stx134011134012_
                                                     _L128636_)
                                                    (_g128648128659_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134011134012_))))
                                               (let ((___kont134014134015_
                                                      (lambda (_L128788_)
                                                        (if (gx#stx-null?
                                                             _L128634_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L128788_)
                             (let ((__tmp134186 (gx#stx-null? _L128788_)))
                               (declare (not safe))
                               (not __tmp134186)))
                        (let ((__tmp134178
                               (let ((__tmp134179
                                      (let ((__tmp134180
                                             (gx#stx-wrap-source
                                              (let ((__tmp134185
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134181
                                                     (let ((__tmp134182
                                                            (let ((__tmp134183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134184 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134184 _L128788_))))
                      (declare (not safe))
                      (cons __tmp134183 '()))))
               (declare (not safe))
               (cons '() __tmp134182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134185 __tmp134181))
                                              (gx#stx-source _L128636_))))
                                        (declare (not safe))
                                        (cons __tmp134180 '()))))
                                 (declare (not safe))
                                 (cons _E128553_ __tmp134179))))
                          (declare (not safe))
                          (cons __tmp134178 _r128554_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128262_
                         _L128636_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128262_
                     _L128636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134016134017_
                                                      (lambda ()
                                                        (let* ((_g128670128678_
                                                                (lambda (_g128671128674_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g128671128674_)))
                       (_g128669128767_
                        (lambda (_g128671128682_)
                          ((lambda (_L128685_)
                             (let ()
                               (let* ((_g128701128709_
                                       (lambda (_g128702128705_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g128702128705_)))
                                      (_g128700128763_
                                       (lambda (_g128702128713_)
                                         ((lambda (_L128716_)
                                            (let ()
                                              (let* ((_g128729128737_
                                                      (lambda (_g128730128733_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g128730128733_)))
                                                     (_g128728128759_
                                                      (lambda (_g128730128741_)
                                                        ((lambda (_L128744_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128548_
                                                                _L128634_
                                                                _L128685_
                                                                (let ((__tmp134187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134188
                                      (let ()
                                        (declare (not safe))
                                        (cons _L128744_ '()))))
                                 (declare (not safe))
                                 (cons _E128553_ __tmp134188))))
                          (declare (not safe))
                          (cons __tmp134187 _r128554_))))))
                 _g128730128741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g128728128759_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134191
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134189
                                                         (let ((__tmp134190
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L128716_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134191
                                                          __tmp134189))
                                                  (gx#stx-source
                                                   _L128636_))))))
                                          _g128702128713_))))
                                 (_g128700128763_
                                  (_generate-clause128419_
                                   _L128636_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L128685_ '())))))))
                           _g128671128682_))))
                  (_g128669128767_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134011134012_)
                                                     (let ((_e128653128778_
                                                            (gx#syntax-e
                                                             ___stx134011134012_)))
                                                       (let ((_tl128651128785_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e128653128778_)))
                     (_hd128652128782_
                      (let () (declare (not safe)) (##car _e128653128778_))))
                 (if (gx#identifier? _hd128652128782_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134192_|
                          _hd128652128782_)
                         (___kont134014134015_ _tl128651128785_)
                         (___kont134016134017_))
                     (___kont134016134017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134016134017_))))))
                                          (___kont134036134037_
                                           (lambda ()
                                             (let* ((_g128580128588_
                                                     (lambda (_g128581128584_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128581128584_)))
                                                    (_g128579128613_
                                                     (lambda (_g128581128592_)
                                                       ((lambda (_L128595_)
                                                          (let ()
                                                            (let ((__tmp134193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134194
                                  (let ((__tmp134195
                                         (gx#stx-wrap-source
                                          (let ((__tmp134203
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134196
                                                 (let ((__tmp134197
                                                        (let ((__tmp134198
                                                               (let ((__tmp134202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134199
                              (let ((__tmp134200
                                     (let ((__tmp134201
                                            (let ()
                                              (declare (not safe))
                                              (cons _L128595_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134201))))
                                (declare (not safe))
                                (cons '#f __tmp134200))))
                         (declare (not safe))
                         (cons __tmp134202 __tmp134199))))
                  (declare (not safe))
                  (cons __tmp134198 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134197))))
                                            (declare (not safe))
                                            (cons __tmp134203 __tmp134196))
                                          (gx#stx-source _stx128262_))))
                                    (declare (not safe))
                                    (cons __tmp134195 '()))))
                             (declare (not safe))
                             (cons _E128553_ __tmp134194))))
                      (declare (not safe))
                      (cons __tmp134193 _r128554_))))
                _g128581128592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128579128613_
                                                _tgt128414_)))))
                                      (if (gx#stx-pair? ___stx134031134032_)
                                          (let ((_e128563128624_
                                                 (gx#syntax-e
                                                  ___stx134031134032_)))
                                            (let ((_tl128561128631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128563128624_)))
                                                  (_hd128562128628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128563128624_))))
                                              (___kont134034134035_
                                               _tl128561128631_
                                               _hd128562128628_)))
                                          (___kont134036134037_))))))))
                      (let* ((_bind128424_
                              (_generate-clauses128422_ _clauses128417_))
                             (_g128427128444_
                              (lambda (_g128428128440_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128428128440_)))
                             (_g128426128541_
                              (lambda (_g128428128448_)
                                (if (gx#stx-pair/null? _g128428128448_)
                                    (let ((_g134204_
                                           (gx#syntax-split-splice
                                            _g128428128448_
                                            '0)))
                                      (begin
                                        (let ((_g134205_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134204_)
                                                     (##vector-length
                                                      _g134204_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134205_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134205_)))
                                        (let ((_target128430128451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134204_ 0)))
                                              (_tl128432128454_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134204_ 1))))
                                          (if (gx#stx-null? _tl128432128454_)
                                              (letrec ((_loop128433128457_
                                                        (lambda (_hd128431128461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128437128464_)
                  (if (gx#stx-pair? _hd128431128461_)
                      (let ((_e128434128467_ (gx#syntax-e _hd128431128461_)))
                        (let ((_lp-hd128435128471_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128434128467_)))
                              (_lp-tl128436128474_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128434128467_))))
                          (_loop128433128457_
                           _lp-tl128436128474_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128435128471_
                                   _bind-try128437128464_)))))
                      (let ((_bind-try128438128477_
                             (reverse _bind-try128437128464_)))
                        ((lambda (_L128481_)
                           (let ()
                             (let* ((_g128499128507_
                                     (lambda (_g128500128503_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128500128503_)))
                                    (_g128498128537_
                                     (lambda (_g128500128511_)
                                       ((lambda (_L128514_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134211
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134206
                                                     (let ((__tmp134209
                                                            (let ((__tmp134210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128528128531_ _g128529128534_)
                             (let ()
                               (declare (not safe))
                               (cons _g128528128531_ _g128529128534_)))))
                      (declare (not safe))
                      (foldr1 __tmp134210 '() _L128481_)))
                   (__tmp134207
                    (let ((__tmp134208
                           (let () (declare (not safe)) (cons _L128514_ '()))))
                      (declare (not safe))
                      (cons __tmp134208 '()))))
               (declare (not safe))
               (cons __tmp134209 __tmp134207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134211
                                                      __tmp134206)))))
                                        _g128500128511_))))
                               (_g128498128537_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128424_)))))))
                         _bind-try128438128477_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128433128457_
                                                 _target128430128451_
                                                 '()))
                                              (_g128427128444_
                                               _g128428128448_)))))
                                    (_g128427128444_ _g128428128448_)))))
                        (_g128426128541_ _bind128424_))))))
          (let* ((_g128268128287_
                  (lambda (_g128269128283_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128269128283_)))
                 (_g128267128410_
                  (lambda (_g128269128291_)
                    (if (gx#stx-pair? _g128269128291_)
                        (let ((_e128275128294_ (gx#syntax-e _g128269128291_)))
                          (let ((_hd128274128298_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128275128294_)))
                                (_tl128273128301_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128275128294_))))
                            (if (gx#stx-pair? _tl128273128301_)
                                (let ((_e128278128304_
                                       (gx#syntax-e _tl128273128301_)))
                                  (let ((_hd128277128308_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128278128304_)))
                                        (_tl128276128311_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128278128304_))))
                                    (if (gx#stx-pair? _tl128276128311_)
                                        (let ((_e128281128314_
                                               (gx#syntax-e _tl128276128311_)))
                                          (let ((_hd128280128318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128281128314_)))
                                                (_tl128279128321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128281128314_))))
                                            ((lambda (_L128324_
                                                      _L128326_
                                                      _L128327_)
                                               (if (and (gx#identifier-list?
                                                         _L128326_)
                                                        (gx#stx-list?
                                                         _L128324_))
                                                   (let* ((_g128345128353_
                                                           (lambda (_g128346128349_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128346128349_)))
                                                          (_g128344128406_
                                                           (lambda (_g128346128357_)
                                                             ((lambda (_L128360_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128372128380_
                                  (lambda (_g128373128376_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128373128376_)))
                                 (_g128371128402_
                                  (lambda (_g128373128384_)
                                    ((lambda (_L128387_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134217
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134212
                                                  (let ((__tmp134214
                                                         (let ((__tmp134215
                                                                (let ((__tmp134216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128327_ '()))))
                          (declare (not safe))
                          (cons _L128360_ __tmp134216))))
                   (declare (not safe))
                   (cons __tmp134215 '())))
                (__tmp134213
                 (let () (declare (not safe)) (cons _L128387_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134214
                                                          __tmp134213))))
                                             (declare (not safe))
                                             (cons __tmp134217 __tmp134212)))))
                                     _g128373128384_))))
                            (_g128371128402_
                             (_generate128265_
                              _L128360_
                              (gx#syntax->list _L128326_)
                              _L128324_)))))
                      _g128346128357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128344128406_
                                                      (gx#genident 'e)))
                                                   (_g128268128287_
                                                    _g128269128291_)))
                                             _tl128279128321_
                                             _hd128280128318_
                                             _hd128277128308_)))
                                        (_g128268128287_ _g128269128291_))))
                                (_g128268128287_ _g128269128291_))))
                        (_g128268128287_ _g128269128291_)))))
            (_g128267128410_ _stx128262_)))))))
