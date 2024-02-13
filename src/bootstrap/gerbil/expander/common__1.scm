(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g137095_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137097_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137099_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137104_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137107_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137112_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137115_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137120_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137123_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137128_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137131_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g137238_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj137090
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
           __obj137090
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137094 |gx[1]#_g137095_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           __tmp137094
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137096 |gx[1]#_g137097_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           __tmp137096
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137098 |gx[1]#_g137099_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           __tmp137098
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137100
               (let ((__tmp137105
                      (let ((__tmp137106 |gx[1]#_g137107_|))
                        (declare (not safe))
                        (cons 'e __tmp137106)))
                     (__tmp137101
                      (let ((__tmp137102
                             (let ((__tmp137103 |gx[1]#_g137104_|))
                               (declare (not safe))
                               (cons 'source __tmp137103))))
                        (declare (not safe))
                        (cons __tmp137102 '()))))
                 (declare (not safe))
                 (cons __tmp137105 __tmp137101))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           __tmp137100
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137108
               (let ((__tmp137113
                      (let ((__tmp137114 |gx[1]#_g137115_|))
                        (declare (not safe))
                        (cons 'e __tmp137114)))
                     (__tmp137109
                      (let ((__tmp137110
                             (let ((__tmp137111 |gx[1]#_g137112_|))
                               (declare (not safe))
                               (cons 'source __tmp137111))))
                        (declare (not safe))
                        (cons __tmp137110 '()))))
                 (declare (not safe))
                 (cons __tmp137113 __tmp137109))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           __tmp137108
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137116
               (let ((__tmp137121
                      (let ((__tmp137122 |gx[1]#_g137123_|))
                        (declare (not safe))
                        (cons 'e __tmp137122)))
                     (__tmp137117
                      (let ((__tmp137118
                             (let ((__tmp137119 |gx[1]#_g137120_|))
                               (declare (not safe))
                               (cons 'source __tmp137119))))
                        (declare (not safe))
                        (cons __tmp137118 '()))))
                 (declare (not safe))
                 (cons __tmp137121 __tmp137117))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           __tmp137116
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp137124
               (let ((__tmp137129
                      (let ((__tmp137130 |gx[1]#_g137131_|))
                        (declare (not safe))
                        (cons 'e __tmp137130)))
                     (__tmp137125
                      (let ((__tmp137126
                             (let ((__tmp137127 |gx[1]#_g137128_|))
                               (declare (not safe))
                               (cons 'source __tmp137127))))
                        (declare (not safe))
                        (cons __tmp137126 '()))))
                 (declare (not safe))
                 (cons __tmp137129 __tmp137125))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj137090
           __tmp137124
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj137090))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx131142_)
        (let* ((_g131146131160_
                (lambda (_g131147131156_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g131147131156_)))
               (_g131145131202_
                (lambda (_g131147131164_)
                  (if (gx#stx-pair? _g131147131164_)
                      (let ((_e131151131167_ (gx#syntax-e _g131147131164_)))
                        (let ((_hd131150131171_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131151131167_)))
                              (_tl131149131174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131151131167_))))
                          (if (gx#stx-pair? _tl131149131174_)
                              (let ((_e131154131177_
                                     (gx#syntax-e _tl131149131174_)))
                                (let ((_hd131153131181_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131154131177_)))
                                      (_tl131152131184_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131154131177_))))
                                  (if (gx#stx-null? _tl131152131184_)
                                      ((lambda (_L131187_)
                                         (let ((__tmp137141
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp137132
                                                (let ((__tmp137138
                                                       (let ((__tmp137140
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp137139
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L131187_ '()))))
                 (declare (not safe))
                 (cons __tmp137140 __tmp137139)))
              (__tmp137133
               (let ((__tmp137134
                      (let ((__tmp137137 (gx#datum->syntax '#f 'error))
                            (__tmp137135
                             (let ((__tmp137136
                                    (let ()
                                      (declare (not safe))
                                      (cons _L131187_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp137136))))
                        (declare (not safe))
                        (cons __tmp137137 __tmp137135))))
                 (declare (not safe))
                 (cons __tmp137134 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137138
                                                        __tmp137133))))
                                           (declare (not safe))
                                           (cons __tmp137141 __tmp137132)))
                                       _hd131153131181_)
                                      (_g131146131160_ _g131147131164_))))
                              (_g131146131160_ _g131147131164_))))
                      (_g131146131160_ _g131147131164_)))))
          (_g131145131202_ _$stx131142_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx131206_)
        (letrec ((_generate131209_
                  (lambda (_tgt131358_ _kws131360_ _clauses131361_)
                    (letrec ((_generate-clause131363_
                              (lambda (_hd132273_ _E132275_)
                                (let* ((___stx136993136994_ _hd132273_)
                                       (_g132279132306_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx136993136994_))))
                                  (let ((___kont136996136997_
                                         (lambda (_L132402_ _L132404_)
                                           (_generate1131365_
                                            _hd132273_
                                            _L132404_
                                            '#t
                                            _L132402_
                                            _E132275_)))
                                        (___kont136998136999_
                                         (lambda (_L132354_
                                                  _L132356_
                                                  _L132357_)
                                           (_generate1131365_
                                            _hd132273_
                                            _L132357_
                                            _L132356_
                                            _L132354_
                                            _E132275_)))
                                        (___kont137000137001_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx131206_
                                            _hd132273_))))
                                    (if (gx#stx-pair? ___stx136993136994_)
                                        (let ((_e132285132382_
                                               (gx#syntax-e
                                                ___stx136993136994_)))
                                          (let ((_tl132283132389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132285132382_)))
                                                (_hd132284132386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132285132382_))))
                                            (if (gx#stx-pair? _tl132283132389_)
                                                (let ((_e132288132392_
                                                       (gx#syntax-e
                                                        _tl132283132389_)))
                                                  (let ((_tl132286132399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132288132392_)))
                                                        (_hd132287132396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132288132392_))))
                                                    (if (gx#stx-null?
                                                         _tl132286132399_)
                                                        (___kont136996136997_
                                                         _hd132287132396_
                                                         _hd132284132386_)
                                                        (if (gx#stx-pair?
                                                             _tl132286132399_)
                                                            (let ((_e132300132344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl132286132399_)))
                      (let ((_tl132298132351_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132300132344_)))
                            (_hd132299132348_
                             (let ()
                               (declare (not safe))
                               (##car _e132300132344_))))
                        (if (gx#stx-null? _tl132298132351_)
                            (___kont136998136999_
                             _hd132299132348_
                             _hd132287132396_
                             _hd132284132386_)
                            (___kont137000137001_))))
                    (___kont137000137001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont137000137001_))))
                                        (___kont137000137001_))))))
                             (_generate1131365_
                              (lambda (_where131751_
                                       _hd131753_
                                       _fender131754_
                                       _body131755_
                                       _E131756_)
                                (letrec ((_recur131758_
                                          (lambda (_hd131761_
                                                   _tgt131763_
                                                   _K131764_)
                                            (let* ((___stx137039137040_
                                                    _hd131761_)
                                                   (_g131767131779_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx137039137040_))))
                                              (let ((___kont137042137043_
                                                     (lambda (_L132063_
                                                              _L132065_)
                                                       (let* ((_g132076132084_
                                                               (lambda (_g132077132080_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g132077132080_)))
                      (_g132075132265_
                       (lambda (_g132077132088_)
                         ((lambda (_L132091_)
                            (let ()
                              (let* ((_g132103132111_
                                      (lambda (_g132104132107_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g132104132107_)))
                                     (_g132102132261_
                                      (lambda (_g132104132115_)
                                        ((lambda (_L132118_)
                                           (let ()
                                             (let* ((_g132131132139_
                                                     (lambda (_g132132132135_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g132132132135_)))
                                                    (_g132130132257_
                                                     (lambda (_g132132132143_)
                                                       ((lambda (_L132146_)
                                                          (let ()
                                                            (let* ((_g132159132167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g132160132163_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132160132163_)))
                           (_g132158132253_
                            (lambda (_g132160132171_)
                              ((lambda (_L132174_)
                                 (let ()
                                   (let* ((_g132187132195_
                                           (lambda (_g132188132191_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132188132191_)))
                                          (_g132186132249_
                                           (lambda (_g132188132199_)
                                             ((lambda (_L132202_)
                                                (let ()
                                                  (let* ((_g132215132223_
                                                          (lambda (_g132216132219_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g132216132219_)))
                                                         (_g132214132245_
                                                          (lambda (_g132216132227_)
                                                            ((lambda (_L132230_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp137174 (gx#datum->syntax '#f 'if))
                                 (__tmp137142
                                  (let ((__tmp137171
                                         (let ((__tmp137173
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp137172
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L132091_ '()))))
                                           (declare (not safe))
                                           (cons __tmp137173 __tmp137172)))
                                        (__tmp137143
                                         (let ((__tmp137145
                                                (let ((__tmp137170
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp137146
                                                       (let ((__tmp137164
                                                              (let ((__tmp137165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137166
                                    (let ((__tmp137167
                                           (let ((__tmp137169
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp137168
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L132091_ '()))))
                                             (declare (not safe))
                                             (cons __tmp137169 __tmp137168))))
                                      (declare (not safe))
                                      (cons __tmp137167 '()))))
                               (declare (not safe))
                               (cons _L132118_ __tmp137166))))
                        (declare (not safe))
                        (cons __tmp137165 '())))
                     (__tmp137147
                      (let ((__tmp137148
                             (let ((__tmp137163 (gx#datum->syntax '#f 'let))
                                   (__tmp137149
                                    (let ((__tmp137151
                                           (let ((__tmp137158
                                                  (let ((__tmp137159
                                                         (let ((__tmp137160
                                                                (let ((__tmp137162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp137161
                               (let ()
                                 (declare (not safe))
                                 (cons _L132118_ '()))))
                          (declare (not safe))
                          (cons __tmp137162 __tmp137161))))
                   (declare (not safe))
                   (cons __tmp137160 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L132146_
                                                          __tmp137159)))
                                                 (__tmp137152
                                                  (let ((__tmp137153
                                                         (let ((__tmp137154
                                                                (let ((__tmp137155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137157
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp137156
                                      (let ()
                                        (declare (not safe))
                                        (cons _L132118_ '()))))
                                 (declare (not safe))
                                 (cons __tmp137157 __tmp137156))))
                          (declare (not safe))
                          (cons __tmp137155 '()))))
                   (declare (not safe))
                   (cons _L132174_ __tmp137154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137153 '()))))
                                             (declare (not safe))
                                             (cons __tmp137158 __tmp137152)))
                                          (__tmp137150
                                           (let ()
                                             (declare (not safe))
                                             (cons _L132202_ '()))))
                                      (declare (not safe))
                                      (cons __tmp137151 __tmp137150))))
                               (declare (not safe))
                               (cons __tmp137163 __tmp137149))))
                        (declare (not safe))
                        (cons __tmp137148 '()))))
                 (declare (not safe))
                 (cons __tmp137164 __tmp137147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137170
                                                        __tmp137146)))
                                               (__tmp137144
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L132230_ '()))))
                                           (declare (not safe))
                                           (cons __tmp137145 __tmp137144))))
                                    (declare (not safe))
                                    (cons __tmp137171 __tmp137143))))
                             (declare (not safe))
                             (cons __tmp137174 __tmp137142)))))
                     _g132216132227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g132214132245_
                                                     _E131756_))))
                                              _g132188132199_))))
                                     (_g132186132249_
                                      (_recur131758_
                                       _L132065_
                                       _L132146_
                                       (_recur131758_
                                        _L132063_
                                        _L132174_
                                        _K131764_))))))
                               _g132160132171_))))
                      (_g132158132253_ (gx#genident 'tl)))))
                _g132132132143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g132130132257_
                                                (gx#genident 'hd)))))
                                         _g132104132115_))))
                                (_g132102132261_ (gx#genident 'e)))))
                          _g132077132088_))))
                 (_g132075132265_ _tgt131763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont137044137045_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd131761_)
                                                           (if (gx#underscore?
                                                                _hd131761_)
                                                               _K131764_
                                                               (if (let ((__tmp137219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g131789131791_)
                                    (gx#bound-identifier=?
                                     _g131789131791_
                                     _hd131761_))))
                             (declare (not safe))
                             (find __tmp137219 _kws131360_))
                           (let* ((_g131795131810_
                                   (lambda (_g131796131806_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131796131806_)))
                                  (_g131794131861_
                                   (lambda (_g131796131814_)
                                     (if (gx#stx-pair? _g131796131814_)
                                         (let ((_e131801131817_
                                                (gx#syntax-e _g131796131814_)))
                                           (let ((_hd131800131821_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131801131817_)))
                                                 (_tl131799131824_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131801131817_))))
                                             (if (gx#stx-pair?
                                                  _tl131799131824_)
                                                 (let ((_e131804131827_
                                                        (gx#syntax-e
                                                         _tl131799131824_)))
                                                   (let ((_hd131803131831_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131804131827_)))
                                                         (_tl131802131834_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131804131827_))))
                                                     (if (gx#stx-null?
                                                          _tl131802131834_)
                                                         ((lambda (_L131837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131839_)
                    (let ()
                      (let ((__tmp137218 (gx#datum->syntax '#f 'if))
                            (__tmp137201
                             (let ((__tmp137204
                                    (let ((__tmp137217
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp137205
                                           (let ((__tmp137214
                                                  (let ((__tmp137216
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp137215
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L131839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137216
                                                          __tmp137215)))
                                                 (__tmp137206
                                                  (let ((__tmp137207
                                                         (let ((__tmp137213
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp137208
                        (let ((__tmp137209
                               (let ((__tmp137210
                                      (let ((__tmp137212
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp137211
                                             (let ()
                                               (declare (not safe))
                                               (cons _L131837_ '()))))
                                        (declare (not safe))
                                        (cons __tmp137212 __tmp137211))))
                                 (declare (not safe))
                                 (cons __tmp137210 '()))))
                          (declare (not safe))
                          (cons _L131839_ __tmp137209))))
                   (declare (not safe))
                   (cons __tmp137213 __tmp137208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137207 '()))))
                                             (declare (not safe))
                                             (cons __tmp137214 __tmp137206))))
                                      (declare (not safe))
                                      (cons __tmp137217 __tmp137205)))
                                   (__tmp137202
                                    (let ((__tmp137203
                                           (let ()
                                             (declare (not safe))
                                             (cons _E131756_ '()))))
                                      (declare (not safe))
                                      (cons _K131764_ __tmp137203))))
                               (declare (not safe))
                               (cons __tmp137204 __tmp137202))))
                        (declare (not safe))
                        (cons __tmp137218 __tmp137201))))
                  _hd131803131831_
                  _hd131800131821_)
                 (_g131795131810_ _g131796131814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131795131810_
                                                  _g131796131814_))))
                                         (_g131795131810_ _g131796131814_)))))
                             (_g131794131861_ (list _tgt131763_ _hd131761_)))
                           (let* ((_g131865131880_
                                   (lambda (_g131866131876_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131866131876_)))
                                  (_g131864131924_
                                   (lambda (_g131866131884_)
                                     (if (gx#stx-pair? _g131866131884_)
                                         (let ((_e131871131887_
                                                (gx#syntax-e _g131866131884_)))
                                           (let ((_hd131870131891_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131871131887_)))
                                                 (_tl131869131894_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131871131887_))))
                                             (if (gx#stx-pair?
                                                  _tl131869131894_)
                                                 (let ((_e131874131897_
                                                        (gx#syntax-e
                                                         _tl131869131894_)))
                                                   (let ((_hd131873131901_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131874131897_)))
                                                         (_tl131872131904_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131874131897_))))
                                                     (if (gx#stx-null?
                                                          _tl131872131904_)
                                                         ((lambda (_L131907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131909_)
                    (let ()
                      (let ((__tmp137200 (gx#datum->syntax '#f 'let))
                            (__tmp137195
                             (let ((__tmp137197
                                    (let ((__tmp137198
                                           (let ((__tmp137199
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131909_ '()))))
                                             (declare (not safe))
                                             (cons _L131907_ __tmp137199))))
                                      (declare (not safe))
                                      (cons __tmp137198 '())))
                                   (__tmp137196
                                    (let ()
                                      (declare (not safe))
                                      (cons _K131764_ '()))))
                               (declare (not safe))
                               (cons __tmp137197 __tmp137196))))
                        (declare (not safe))
                        (cons __tmp137200 __tmp137195))))
                  _hd131873131901_
                  _hd131870131891_)
                 (_g131865131880_ _g131866131884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131865131880_
                                                  _g131866131884_))))
                                         (_g131865131880_ _g131866131884_)))))
                             (_g131864131924_ (list _tgt131763_ _hd131761_)))))
                   (if (gx#stx-null? _hd131761_)
                       (let* ((_g131928131936_
                               (lambda (_g131929131932_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g131929131932_)))
                              (_g131927131954_
                               (lambda (_g131929131940_)
                                 ((lambda (_L131943_)
                                    (let ()
                                      (let ((__tmp137194
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp137188
                                             (let ((__tmp137191
                                                    (let ((__tmp137193
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp137192
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L131943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp137193 __tmp137192)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137189
                                                    (let ((__tmp137190
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E131756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K131764_ __tmp137190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137191
                                                     __tmp137189))))
                                        (declare (not safe))
                                        (cons __tmp137194 __tmp137188))))
                                  _g131929131940_))))
                         (_g131927131954_ _tgt131763_))
                       (if (gx#stx-datum? _hd131761_)
                           (let* ((_g131958131977_
                                   (lambda (_g131959131973_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131959131973_)))
                                  (_g131957132035_
                                   (lambda (_g131959131981_)
                                     (if (gx#stx-pair? _g131959131981_)
                                         (let ((_e131965131984_
                                                (gx#syntax-e _g131959131981_)))
                                           (let ((_hd131964131988_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131965131984_)))
                                                 (_tl131963131991_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131965131984_))))
                                             (if (gx#stx-pair?
                                                  _tl131963131991_)
                                                 (let ((_e131968131994_
                                                        (gx#syntax-e
                                                         _tl131963131991_)))
                                                   (let ((_hd131967131998_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131968131994_)))
                                                         (_tl131966132001_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131968131994_))))
                                                     (if (gx#stx-pair?
                                                          _tl131966132001_)
                                                         (let ((_e131971132004_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl131966132001_)))
                   (let ((_hd131970132008_
                          (let ()
                            (declare (not safe))
                            (##car _e131971132004_)))
                         (_tl131969132011_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131971132004_))))
                     (if (gx#stx-null? _tl131969132011_)
                         ((lambda (_L132014_ _L132016_ _L132017_)
                            (let ()
                              (let ((__tmp137187 (gx#datum->syntax '#f 'if))
                                    (__tmp137175
                                     (let ((__tmp137178
                                            (let ((__tmp137179
                                                   (let ((__tmp137184
                                                          (let ((__tmp137186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp137185
                         (let () (declare (not safe)) (cons _L132017_ '()))))
                    (declare (not safe))
                    (cons __tmp137186 __tmp137185)))
                 (__tmp137180
                  (let ((__tmp137181
                         (let ((__tmp137183 (gx#datum->syntax '#f 'quote))
                               (__tmp137182
                                (let ()
                                  (declare (not safe))
                                  (cons _L132016_ '()))))
                           (declare (not safe))
                           (cons __tmp137183 __tmp137182))))
                    (declare (not safe))
                    (cons __tmp137181 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137184
                                                           __tmp137180))))
                                              (declare (not safe))
                                              (cons _L132014_ __tmp137179)))
                                           (__tmp137176
                                            (let ((__tmp137177
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E131756_ '()))))
                                              (declare (not safe))
                                              (cons _K131764_ __tmp137177))))
                                       (declare (not safe))
                                       (cons __tmp137178 __tmp137176))))
                                (declare (not safe))
                                (cons __tmp137187 __tmp137175))))
                          _hd131970132008_
                          _hd131967131998_
                          _hd131964131988_)
                         (_g131958131977_ _g131959131981_))))
                 (_g131958131977_ _g131959131981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131958131977_
                                                  _g131959131981_))))
                                         (_g131958131977_ _g131959131981_)))))
                             (_g131957132035_
                              (list _tgt131763_
                                    _hd131761_
                                    (let ((_e132039_ (gx#stx-e _hd131761_)))
                                      (if (or (keyword? _e132039_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e132039_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e132039_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx131206_
                            _where131751_
                            _hd131761_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx137039137040_)
                                                    (let ((_e131773132053_
                                                           (gx#syntax-e
                                                            ___stx137039137040_)))
                                                      (let ((_tl131771132060_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131773132053_)))
                    (_hd131772132057_
                     (let () (declare (not safe)) (##car _e131773132053_))))
                (___kont137042137043_ _tl131771132060_ _hd131772132057_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont137044137045_)))))))
                                  (_recur131758_
                                   _hd131753_
                                   _tgt131358_
                                   (let ((__tmp137223
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp137220
                                          (let ((__tmp137221
                                                 (let ((__tmp137222
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E131756_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body131755_
                                                         __tmp137222))))
                                            (declare (not safe))
                                            (cons _fender131754_
                                                  __tmp137221))))
                                     (declare (not safe))
                                     (cons __tmp137223 __tmp137220))))))
                             (_generate-clauses131366_
                              (lambda (_clauses131489_)
                                (let _lp131492_ ((_rest131495_ _clauses131489_)
                                                 (_E131497_ (gx#genident 'E))
                                                 (_r131498_ '()))
                                  (let* ((___stx137075137076_ _rest131495_)
                                         (_g131501131513_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx137075137076_))))
                                    (let ((___kont137078137079_
                                           (lambda (_L131578_ _L131580_)
                                             (let* ((___stx137055137056_
                                                     _L131580_)
                                                    (_g131592131603_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx137055137056_))))
                                               (let ((___kont137058137059_
                                                      (lambda (_L131732_)
                                                        (if (gx#stx-null?
                                                             _L131578_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L131732_)
                             (let ((__tmp137232 (gx#stx-null? _L131732_)))
                               (declare (not safe))
                               (not __tmp137232)))
                        (let ((__tmp137224
                               (let ((__tmp137225
                                      (let ((__tmp137226
                                             (gx#stx-wrap-source
                                              (let ((__tmp137231
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp137227
                                                     (let ((__tmp137228
                                                            (let ((__tmp137229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137230 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp137230 _L131732_))))
                      (declare (not safe))
                      (cons __tmp137229 '()))))
               (declare (not safe))
               (cons '() __tmp137228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137231 __tmp137227))
                                              (gx#stx-source _L131580_))))
                                        (declare (not safe))
                                        (cons __tmp137226 '()))))
                                 (declare (not safe))
                                 (cons _E131497_ __tmp137225))))
                          (declare (not safe))
                          (cons __tmp137224 _r131498_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx131206_
                         _L131580_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx131206_
                     _L131580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont137060137061_
                                                      (lambda ()
                                                        (let* ((_g131614131622_
                                                                (lambda (_g131615131618_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131615131618_)))
                       (_g131613131711_
                        (lambda (_g131615131626_)
                          ((lambda (_L131629_)
                             (let ()
                               (let* ((_g131645131653_
                                       (lambda (_g131646131649_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g131646131649_)))
                                      (_g131644131707_
                                       (lambda (_g131646131657_)
                                         ((lambda (_L131660_)
                                            (let ()
                                              (let* ((_g131673131681_
                                                      (lambda (_g131674131677_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g131674131677_)))
                                                     (_g131672131703_
                                                      (lambda (_g131674131685_)
                                                        ((lambda (_L131688_)
                                                           (let ()
                                                             (let ()
                                                               (_lp131492_
                                                                _L131578_
                                                                _L131629_
                                                                (let ((__tmp137233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137234
                                      (let ()
                                        (declare (not safe))
                                        (cons _L131688_ '()))))
                                 (declare (not safe))
                                 (cons _E131497_ __tmp137234))))
                          (declare (not safe))
                          (cons __tmp137233 _r131498_))))))
                 _g131674131685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g131672131703_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp137237
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp137235
                                                         (let ((__tmp137236
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L131660_ '()))))
                   (declare (not safe))
                   (cons '() __tmp137236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137237
                                                          __tmp137235))
                                                  (gx#stx-source
                                                   _L131580_))))))
                                          _g131646131657_))))
                                 (_g131644131707_
                                  (_generate-clause131363_
                                   _L131580_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L131629_ '())))))))
                           _g131615131626_))))
                  (_g131613131711_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx137055137056_)
                                                     (let ((_e131597131722_
                                                            (gx#syntax-e
                                                             ___stx137055137056_)))
                                                       (let ((_tl131595131729_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131597131722_)))
                     (_hd131596131726_
                      (let () (declare (not safe)) (##car _e131597131722_))))
                 (if (gx#identifier? _hd131596131726_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g137238_|
                          _hd131596131726_)
                         (___kont137058137059_ _tl131595131729_)
                         (___kont137060137061_))
                     (___kont137060137061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont137060137061_))))))
                                          (___kont137080137081_
                                           (lambda ()
                                             (let* ((_g131524131532_
                                                     (lambda (_g131525131528_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g131525131528_)))
                                                    (_g131523131557_
                                                     (lambda (_g131525131536_)
                                                       ((lambda (_L131539_)
                                                          (let ()
                                                            (let ((__tmp137239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137240
                                  (let ((__tmp137241
                                         (gx#stx-wrap-source
                                          (let ((__tmp137249
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp137242
                                                 (let ((__tmp137243
                                                        (let ((__tmp137244
                                                               (let ((__tmp137248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp137245
                              (let ((__tmp137246
                                     (let ((__tmp137247
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131539_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp137247))))
                                (declare (not safe))
                                (cons '#f __tmp137246))))
                         (declare (not safe))
                         (cons __tmp137248 __tmp137245))))
                  (declare (not safe))
                  (cons __tmp137244 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp137243))))
                                            (declare (not safe))
                                            (cons __tmp137249 __tmp137242))
                                          (gx#stx-source _stx131206_))))
                                    (declare (not safe))
                                    (cons __tmp137241 '()))))
                             (declare (not safe))
                             (cons _E131497_ __tmp137240))))
                      (declare (not safe))
                      (cons __tmp137239 _r131498_))))
                _g131525131536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g131523131557_
                                                _tgt131358_)))))
                                      (if (gx#stx-pair? ___stx137075137076_)
                                          (let ((_e131507131568_
                                                 (gx#syntax-e
                                                  ___stx137075137076_)))
                                            (let ((_tl131505131575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131507131568_)))
                                                  (_hd131506131572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131507131568_))))
                                              (___kont137078137079_
                                               _tl131505131575_
                                               _hd131506131572_)))
                                          (___kont137080137081_))))))))
                      (let* ((_bind131368_
                              (_generate-clauses131366_ _clauses131361_))
                             (_g131371131388_
                              (lambda (_g131372131384_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g131372131384_)))
                             (_g131370131485_
                              (lambda (_g131372131392_)
                                (if (gx#stx-pair/null? _g131372131392_)
                                    (let ((_g137250_
                                           (gx#syntax-split-splice
                                            _g131372131392_
                                            '0)))
                                      (begin
                                        (let ((_g137251_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137250_)
                                                     (##vector-length
                                                      _g137250_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137251_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137251_)))
                                        (let ((_target131374131395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137250_ 0)))
                                              (_tl131376131398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137250_ 1))))
                                          (if (gx#stx-null? _tl131376131398_)
                                              (letrec ((_loop131377131401_
                                                        (lambda (_hd131375131405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try131381131408_)
                  (if (gx#stx-pair? _hd131375131405_)
                      (let ((_e131378131411_ (gx#syntax-e _hd131375131405_)))
                        (let ((_lp-hd131379131415_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131378131411_)))
                              (_lp-tl131380131418_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131378131411_))))
                          (_loop131377131401_
                           _lp-tl131380131418_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd131379131415_
                                   _bind-try131381131408_)))))
                      (let ((_bind-try131382131421_
                             (reverse _bind-try131381131408_)))
                        ((lambda (_L131425_)
                           (let ()
                             (let* ((_g131443131451_
                                     (lambda (_g131444131447_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g131444131447_)))
                                    (_g131442131481_
                                     (lambda (_g131444131455_)
                                       ((lambda (_L131458_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp137257
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp137252
                                                     (let ((__tmp137255
                                                            (let ((__tmp137256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g131472131475_ _g131473131478_)
                             (let ()
                               (declare (not safe))
                               (cons _g131472131475_ _g131473131478_)))))
                      (declare (not safe))
                      (foldr1 __tmp137256 '() _L131425_)))
                   (__tmp137253
                    (let ((__tmp137254
                           (let () (declare (not safe)) (cons _L131458_ '()))))
                      (declare (not safe))
                      (cons __tmp137254 '()))))
               (declare (not safe))
               (cons __tmp137255 __tmp137253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137257
                                                      __tmp137252)))))
                                        _g131444131455_))))
                               (_g131442131481_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind131368_)))))))
                         _bind-try131382131421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop131377131401_
                                                 _target131374131395_
                                                 '()))
                                              (_g131371131388_
                                               _g131372131392_)))))
                                    (_g131371131388_ _g131372131392_)))))
                        (_g131370131485_ _bind131368_))))))
          (let* ((_g131212131231_
                  (lambda (_g131213131227_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g131213131227_)))
                 (_g131211131354_
                  (lambda (_g131213131235_)
                    (if (gx#stx-pair? _g131213131235_)
                        (let ((_e131219131238_ (gx#syntax-e _g131213131235_)))
                          (let ((_hd131218131242_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131219131238_)))
                                (_tl131217131245_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131219131238_))))
                            (if (gx#stx-pair? _tl131217131245_)
                                (let ((_e131222131248_
                                       (gx#syntax-e _tl131217131245_)))
                                  (let ((_hd131221131252_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131222131248_)))
                                        (_tl131220131255_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131222131248_))))
                                    (if (gx#stx-pair? _tl131220131255_)
                                        (let ((_e131225131258_
                                               (gx#syntax-e _tl131220131255_)))
                                          (let ((_hd131224131262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131225131258_)))
                                                (_tl131223131265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131225131258_))))
                                            ((lambda (_L131268_
                                                      _L131270_
                                                      _L131271_)
                                               (if (and (gx#identifier-list?
                                                         _L131270_)
                                                        (gx#stx-list?
                                                         _L131268_))
                                                   (let* ((_g131289131297_
                                                           (lambda (_g131290131293_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g131290131293_)))
                                                          (_g131288131350_
                                                           (lambda (_g131290131301_)
                                                             ((lambda (_L131304_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g131316131324_
                                  (lambda (_g131317131320_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g131317131320_)))
                                 (_g131315131346_
                                  (lambda (_g131317131328_)
                                    ((lambda (_L131331_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp137263
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp137258
                                                  (let ((__tmp137260
                                                         (let ((__tmp137261
                                                                (let ((__tmp137262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L131271_ '()))))
                          (declare (not safe))
                          (cons _L131304_ __tmp137262))))
                   (declare (not safe))
                   (cons __tmp137261 '())))
                (__tmp137259
                 (let () (declare (not safe)) (cons _L131331_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137260
                                                          __tmp137259))))
                                             (declare (not safe))
                                             (cons __tmp137263 __tmp137258)))))
                                     _g131317131328_))))
                            (_g131315131346_
                             (_generate131209_
                              _L131304_
                              (gx#syntax->list _L131270_)
                              _L131268_)))))
                      _g131290131301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g131288131350_
                                                      (gx#genident 'e)))
                                                   (_g131212131231_
                                                    _g131213131235_)))
                                             _tl131223131265_
                                             _hd131224131262_
                                             _hd131221131252_)))
                                        (_g131212131231_ _g131213131235_))))
                                (_g131212131231_ _g131213131235_))))
                        (_g131212131231_ _g131213131235_)))))
            (_g131211131354_ _stx131206_)))))))
