(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135074_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135076_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135078_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135083_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135086_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135091_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135094_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135099_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135102_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135107_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135110_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135217_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135069
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
           __obj135069
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135073 |gx[1]#_g135074_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           __tmp135073
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135075 |gx[1]#_g135076_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           __tmp135075
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135077 |gx[1]#_g135078_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           __tmp135077
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135079
               (let ((__tmp135084
                      (let ((__tmp135085 |gx[1]#_g135086_|))
                        (declare (not safe))
                        (cons 'e __tmp135085)))
                     (__tmp135080
                      (let ((__tmp135081
                             (let ((__tmp135082 |gx[1]#_g135083_|))
                               (declare (not safe))
                               (cons 'source __tmp135082))))
                        (declare (not safe))
                        (cons __tmp135081 '()))))
                 (declare (not safe))
                 (cons __tmp135084 __tmp135080))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           __tmp135079
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135087
               (let ((__tmp135092
                      (let ((__tmp135093 |gx[1]#_g135094_|))
                        (declare (not safe))
                        (cons 'e __tmp135093)))
                     (__tmp135088
                      (let ((__tmp135089
                             (let ((__tmp135090 |gx[1]#_g135091_|))
                               (declare (not safe))
                               (cons 'source __tmp135090))))
                        (declare (not safe))
                        (cons __tmp135089 '()))))
                 (declare (not safe))
                 (cons __tmp135092 __tmp135088))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           __tmp135087
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135095
               (let ((__tmp135100
                      (let ((__tmp135101 |gx[1]#_g135102_|))
                        (declare (not safe))
                        (cons 'e __tmp135101)))
                     (__tmp135096
                      (let ((__tmp135097
                             (let ((__tmp135098 |gx[1]#_g135099_|))
                               (declare (not safe))
                               (cons 'source __tmp135098))))
                        (declare (not safe))
                        (cons __tmp135097 '()))))
                 (declare (not safe))
                 (cons __tmp135100 __tmp135096))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           __tmp135095
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135103
               (let ((__tmp135108
                      (let ((__tmp135109 |gx[1]#_g135110_|))
                        (declare (not safe))
                        (cons 'e __tmp135109)))
                     (__tmp135104
                      (let ((__tmp135105
                             (let ((__tmp135106 |gx[1]#_g135107_|))
                               (declare (not safe))
                               (cons 'source __tmp135106))))
                        (declare (not safe))
                        (cons __tmp135105 '()))))
                 (declare (not safe))
                 (cons __tmp135108 __tmp135104))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135069
           __tmp135103
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135069))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129622_)
        (let* ((_g129626129640_
                (lambda (_g129627129636_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129627129636_)))
               (_g129625129682_
                (lambda (_g129627129644_)
                  (if (gx#stx-pair? _g129627129644_)
                      (let ((_e129629129647_ (gx#syntax-e _g129627129644_)))
                        (let ((_hd129630129651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129629129647_)))
                              (_tl129631129654_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129629129647_))))
                          (if (gx#stx-pair? _tl129631129654_)
                              (let ((_e129632129657_
                                     (gx#syntax-e _tl129631129654_)))
                                (let ((_hd129633129661_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129632129657_)))
                                      (_tl129634129664_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129632129657_))))
                                  (if (gx#stx-null? _tl129634129664_)
                                      ((lambda (_L129667_)
                                         (let ((__tmp135120
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135111
                                                (let ((__tmp135117
                                                       (let ((__tmp135119
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135118
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129667_ '()))))
                 (declare (not safe))
                 (cons __tmp135119 __tmp135118)))
              (__tmp135112
               (let ((__tmp135113
                      (let ((__tmp135116 (gx#datum->syntax '#f 'error))
                            (__tmp135114
                             (let ((__tmp135115
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129667_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135115))))
                        (declare (not safe))
                        (cons __tmp135116 __tmp135114))))
                 (declare (not safe))
                 (cons __tmp135113 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135117
                                                        __tmp135112))))
                                           (declare (not safe))
                                           (cons __tmp135120 __tmp135111)))
                                       _hd129633129661_)
                                      (_g129626129640_ _g129627129644_))))
                              (_g129626129640_ _g129627129644_))))
                      (_g129626129640_ _g129627129644_)))))
          (_g129625129682_ _$stx129622_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129686_)
        (letrec ((_generate129689_
                  (lambda (_tgt129838_ _kws129840_ _clauses129841_)
                    (letrec ((_generate-clause129843_
                              (lambda (_hd130753_ _E130755_)
                                (let* ((___stx134972134973_ _hd130753_)
                                       (_g130759130786_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134972134973_))))
                                  (let ((___kont134975134976_
                                         (lambda (_L130882_ _L130884_)
                                           (_generate1129845_
                                            _hd130753_
                                            _L130884_
                                            '#t
                                            _L130882_
                                            _E130755_)))
                                        (___kont134977134978_
                                         (lambda (_L130834_
                                                  _L130836_
                                                  _L130837_)
                                           (_generate1129845_
                                            _hd130753_
                                            _L130837_
                                            _L130836_
                                            _L130834_
                                            _E130755_)))
                                        (___kont134979134980_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129686_
                                            _hd130753_))))
                                    (if (gx#stx-pair? ___stx134972134973_)
                                        (let ((_e130763130862_
                                               (gx#syntax-e
                                                ___stx134972134973_)))
                                          (let ((_tl130765130869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130763130862_)))
                                                (_hd130764130866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130763130862_))))
                                            (if (gx#stx-pair? _tl130765130869_)
                                                (let ((_e130766130872_
                                                       (gx#syntax-e
                                                        _tl130765130869_)))
                                                  (let ((_tl130768130879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130766130872_)))
                                                        (_hd130767130876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130766130872_))))
                                                    (if (gx#stx-null?
                                                         _tl130768130879_)
                                                        (___kont134975134976_
                                                         _hd130767130876_
                                                         _hd130764130866_)
                                                        (if (gx#stx-pair?
                                                             _tl130768130879_)
                                                            (let ((_e130778130824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl130768130879_)))
                      (let ((_tl130780130831_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130778130824_)))
                            (_hd130779130828_
                             (let ()
                               (declare (not safe))
                               (##car _e130778130824_))))
                        (if (gx#stx-null? _tl130780130831_)
                            (___kont134977134978_
                             _hd130779130828_
                             _hd130767130876_
                             _hd130764130866_)
                            (___kont134979134980_))))
                    (___kont134979134980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134979134980_))))
                                        (___kont134979134980_))))))
                             (_generate1129845_
                              (lambda (_where130231_
                                       _hd130233_
                                       _fender130234_
                                       _body130235_
                                       _E130236_)
                                (letrec ((_recur130238_
                                          (lambda (_hd130241_
                                                   _tgt130243_
                                                   _K130244_)
                                            (let* ((___stx135018135019_
                                                    _hd130241_)
                                                   (_g130247130259_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135018135019_))))
                                              (let ((___kont135021135022_
                                                     (lambda (_L130543_
                                                              _L130545_)
                                                       (let* ((_g130556130564_
                                                               (lambda (_g130557130560_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130557130560_)))
                      (_g130555130745_
                       (lambda (_g130557130568_)
                         ((lambda (_L130571_)
                            (let ()
                              (let* ((_g130583130591_
                                      (lambda (_g130584130587_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130584130587_)))
                                     (_g130582130741_
                                      (lambda (_g130584130595_)
                                        ((lambda (_L130598_)
                                           (let ()
                                             (let* ((_g130611130619_
                                                     (lambda (_g130612130615_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130612130615_)))
                                                    (_g130610130737_
                                                     (lambda (_g130612130623_)
                                                       ((lambda (_L130626_)
                                                          (let ()
                                                            (let* ((_g130639130647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130640130643_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130640130643_)))
                           (_g130638130733_
                            (lambda (_g130640130651_)
                              ((lambda (_L130654_)
                                 (let ()
                                   (let* ((_g130667130675_
                                           (lambda (_g130668130671_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130668130671_)))
                                          (_g130666130729_
                                           (lambda (_g130668130679_)
                                             ((lambda (_L130682_)
                                                (let ()
                                                  (let* ((_g130695130703_
                                                          (lambda (_g130696130699_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130696130699_)))
                                                         (_g130694130725_
                                                          (lambda (_g130696130707_)
                                                            ((lambda (_L130710_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135153 (gx#datum->syntax '#f 'if))
                                 (__tmp135121
                                  (let ((__tmp135150
                                         (let ((__tmp135152
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135151
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130571_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135152 __tmp135151)))
                                        (__tmp135122
                                         (let ((__tmp135124
                                                (let ((__tmp135149
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135125
                                                       (let ((__tmp135143
                                                              (let ((__tmp135144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135145
                                    (let ((__tmp135146
                                           (let ((__tmp135148
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135147
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130571_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135148 __tmp135147))))
                                      (declare (not safe))
                                      (cons __tmp135146 '()))))
                               (declare (not safe))
                               (cons _L130598_ __tmp135145))))
                        (declare (not safe))
                        (cons __tmp135144 '())))
                     (__tmp135126
                      (let ((__tmp135127
                             (let ((__tmp135142 (gx#datum->syntax '#f 'let))
                                   (__tmp135128
                                    (let ((__tmp135130
                                           (let ((__tmp135137
                                                  (let ((__tmp135138
                                                         (let ((__tmp135139
                                                                (let ((__tmp135141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135140
                               (let ()
                                 (declare (not safe))
                                 (cons _L130598_ '()))))
                          (declare (not safe))
                          (cons __tmp135141 __tmp135140))))
                   (declare (not safe))
                   (cons __tmp135139 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130626_
                                                          __tmp135138)))
                                                 (__tmp135131
                                                  (let ((__tmp135132
                                                         (let ((__tmp135133
                                                                (let ((__tmp135134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135136
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135135
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130598_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135136 __tmp135135))))
                          (declare (not safe))
                          (cons __tmp135134 '()))))
                   (declare (not safe))
                   (cons _L130654_ __tmp135133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135132 '()))))
                                             (declare (not safe))
                                             (cons __tmp135137 __tmp135131)))
                                          (__tmp135129
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130682_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135130 __tmp135129))))
                               (declare (not safe))
                               (cons __tmp135142 __tmp135128))))
                        (declare (not safe))
                        (cons __tmp135127 '()))))
                 (declare (not safe))
                 (cons __tmp135143 __tmp135126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135149
                                                        __tmp135125)))
                                               (__tmp135123
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130710_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135124 __tmp135123))))
                                    (declare (not safe))
                                    (cons __tmp135150 __tmp135122))))
                             (declare (not safe))
                             (cons __tmp135153 __tmp135121)))))
                     _g130696130707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130694130725_
                                                     _E130236_))))
                                              _g130668130679_))))
                                     (_g130666130729_
                                      (_recur130238_
                                       _L130545_
                                       _L130626_
                                       (_recur130238_
                                        _L130543_
                                        _L130654_
                                        _K130244_))))))
                               _g130640130651_))))
                      (_g130638130733_ (gx#genident 'tl)))))
                _g130612130623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130610130737_
                                                (gx#genident 'hd)))))
                                         _g130584130595_))))
                                (_g130582130741_ (gx#genident 'e)))))
                          _g130557130568_))))
                 (_g130555130745_ _tgt130243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135023135024_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130241_)
                                                           (if (gx#underscore?
                                                                _hd130241_)
                                                               _K130244_
                                                               (if (let ((__tmp135154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130269130271_)
                                    (gx#bound-identifier=?
                                     _g130269130271_
                                     _hd130241_))))
                             (declare (not safe))
                             (find __tmp135154 _kws129840_))
                           (let* ((_g130275130290_
                                   (lambda (_g130276130286_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130276130286_)))
                                  (_g130274130341_
                                   (lambda (_g130276130294_)
                                     (if (gx#stx-pair? _g130276130294_)
                                         (let ((_e130279130297_
                                                (gx#syntax-e _g130276130294_)))
                                           (let ((_hd130280130301_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130279130297_)))
                                                 (_tl130281130304_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130279130297_))))
                                             (if (gx#stx-pair?
                                                  _tl130281130304_)
                                                 (let ((_e130282130307_
                                                        (gx#syntax-e
                                                         _tl130281130304_)))
                                                   (let ((_hd130283130311_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130282130307_)))
                                                         (_tl130284130314_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130282130307_))))
                                                     (if (gx#stx-null?
                                                          _tl130284130314_)
                                                         ((lambda (_L130317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130319_)
                    (let ()
                      (let ((__tmp135172 (gx#datum->syntax '#f 'if))
                            (__tmp135155
                             (let ((__tmp135158
                                    (let ((__tmp135171
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135159
                                           (let ((__tmp135168
                                                  (let ((__tmp135170
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135169
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135170
                                                          __tmp135169)))
                                                 (__tmp135160
                                                  (let ((__tmp135161
                                                         (let ((__tmp135167
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135162
                        (let ((__tmp135163
                               (let ((__tmp135164
                                      (let ((__tmp135166
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135165
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130317_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135166 __tmp135165))))
                                 (declare (not safe))
                                 (cons __tmp135164 '()))))
                          (declare (not safe))
                          (cons _L130319_ __tmp135163))))
                   (declare (not safe))
                   (cons __tmp135167 __tmp135162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135161 '()))))
                                             (declare (not safe))
                                             (cons __tmp135168 __tmp135160))))
                                      (declare (not safe))
                                      (cons __tmp135171 __tmp135159)))
                                   (__tmp135156
                                    (let ((__tmp135157
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130236_ '()))))
                                      (declare (not safe))
                                      (cons _K130244_ __tmp135157))))
                               (declare (not safe))
                               (cons __tmp135158 __tmp135156))))
                        (declare (not safe))
                        (cons __tmp135172 __tmp135155))))
                  _hd130283130311_
                  _hd130280130301_)
                 (_g130275130290_ _g130276130294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130275130290_
                                                  _g130276130294_))))
                                         (_g130275130290_ _g130276130294_)))))
                             (_g130274130341_ (list _tgt130243_ _hd130241_)))
                           (let* ((_g130345130360_
                                   (lambda (_g130346130356_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130346130356_)))
                                  (_g130344130404_
                                   (lambda (_g130346130364_)
                                     (if (gx#stx-pair? _g130346130364_)
                                         (let ((_e130349130367_
                                                (gx#syntax-e _g130346130364_)))
                                           (let ((_hd130350130371_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130349130367_)))
                                                 (_tl130351130374_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130349130367_))))
                                             (if (gx#stx-pair?
                                                  _tl130351130374_)
                                                 (let ((_e130352130377_
                                                        (gx#syntax-e
                                                         _tl130351130374_)))
                                                   (let ((_hd130353130381_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130352130377_)))
                                                         (_tl130354130384_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130352130377_))))
                                                     (if (gx#stx-null?
                                                          _tl130354130384_)
                                                         ((lambda (_L130387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130389_)
                    (let ()
                      (let ((__tmp135178 (gx#datum->syntax '#f 'let))
                            (__tmp135173
                             (let ((__tmp135175
                                    (let ((__tmp135176
                                           (let ((__tmp135177
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130389_ '()))))
                                             (declare (not safe))
                                             (cons _L130387_ __tmp135177))))
                                      (declare (not safe))
                                      (cons __tmp135176 '())))
                                   (__tmp135174
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130244_ '()))))
                               (declare (not safe))
                               (cons __tmp135175 __tmp135174))))
                        (declare (not safe))
                        (cons __tmp135178 __tmp135173))))
                  _hd130353130381_
                  _hd130350130371_)
                 (_g130345130360_ _g130346130364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130345130360_
                                                  _g130346130364_))))
                                         (_g130345130360_ _g130346130364_)))))
                             (_g130344130404_ (list _tgt130243_ _hd130241_)))))
                   (if (gx#stx-null? _hd130241_)
                       (let* ((_g130408130416_
                               (lambda (_g130409130412_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130409130412_)))
                              (_g130407130434_
                               (lambda (_g130409130420_)
                                 ((lambda (_L130423_)
                                    (let ()
                                      (let ((__tmp135185
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135179
                                             (let ((__tmp135182
                                                    (let ((__tmp135184
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135183
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135184 __tmp135183)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135180
                                                    (let ((__tmp135181
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130244_ __tmp135181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135182
                                                     __tmp135180))))
                                        (declare (not safe))
                                        (cons __tmp135185 __tmp135179))))
                                  _g130409130420_))))
                         (_g130407130434_ _tgt130243_))
                       (if (gx#stx-datum? _hd130241_)
                           (let* ((_g130438130457_
                                   (lambda (_g130439130453_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130439130453_)))
                                  (_g130437130515_
                                   (lambda (_g130439130461_)
                                     (if (gx#stx-pair? _g130439130461_)
                                         (let ((_e130443130464_
                                                (gx#syntax-e _g130439130461_)))
                                           (let ((_hd130444130468_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130443130464_)))
                                                 (_tl130445130471_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130443130464_))))
                                             (if (gx#stx-pair?
                                                  _tl130445130471_)
                                                 (let ((_e130446130474_
                                                        (gx#syntax-e
                                                         _tl130445130471_)))
                                                   (let ((_hd130447130478_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130446130474_)))
                                                         (_tl130448130481_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130446130474_))))
                                                     (if (gx#stx-pair?
                                                          _tl130448130481_)
                                                         (let ((_e130449130484_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130448130481_)))
                   (let ((_hd130450130488_
                          (let ()
                            (declare (not safe))
                            (##car _e130449130484_)))
                         (_tl130451130491_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130449130484_))))
                     (if (gx#stx-null? _tl130451130491_)
                         ((lambda (_L130494_ _L130496_ _L130497_)
                            (let ()
                              (let ((__tmp135198 (gx#datum->syntax '#f 'if))
                                    (__tmp135186
                                     (let ((__tmp135189
                                            (let ((__tmp135190
                                                   (let ((__tmp135195
                                                          (let ((__tmp135197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135196
                         (let () (declare (not safe)) (cons _L130497_ '()))))
                    (declare (not safe))
                    (cons __tmp135197 __tmp135196)))
                 (__tmp135191
                  (let ((__tmp135192
                         (let ((__tmp135194 (gx#datum->syntax '#f 'quote))
                               (__tmp135193
                                (let ()
                                  (declare (not safe))
                                  (cons _L130496_ '()))))
                           (declare (not safe))
                           (cons __tmp135194 __tmp135193))))
                    (declare (not safe))
                    (cons __tmp135192 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135195
                                                           __tmp135191))))
                                              (declare (not safe))
                                              (cons _L130494_ __tmp135190)))
                                           (__tmp135187
                                            (let ((__tmp135188
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130236_ '()))))
                                              (declare (not safe))
                                              (cons _K130244_ __tmp135188))))
                                       (declare (not safe))
                                       (cons __tmp135189 __tmp135187))))
                                (declare (not safe))
                                (cons __tmp135198 __tmp135186))))
                          _hd130450130488_
                          _hd130447130478_
                          _hd130444130468_)
                         (_g130438130457_ _g130439130461_))))
                 (_g130438130457_ _g130439130461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130438130457_
                                                  _g130439130461_))))
                                         (_g130438130457_ _g130439130461_)))))
                             (_g130437130515_
                              (list _tgt130243_
                                    _hd130241_
                                    (let ((_e130519_ (gx#stx-e _hd130241_)))
                                      (if (or (keyword? _e130519_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130519_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130519_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129686_
                            _where130231_
                            _hd130241_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135018135019_)
                                                    (let ((_e130251130533_
                                                           (gx#syntax-e
                                                            ___stx135018135019_)))
                                                      (let ((_tl130253130540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130251130533_)))
                    (_hd130252130537_
                     (let () (declare (not safe)) (##car _e130251130533_))))
                (___kont135021135022_ _tl130253130540_ _hd130252130537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135023135024_)))))))
                                  (_recur130238_
                                   _hd130233_
                                   _tgt129838_
                                   (let ((__tmp135202
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135199
                                          (let ((__tmp135200
                                                 (let ((__tmp135201
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130236_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130235_
                                                         __tmp135201))))
                                            (declare (not safe))
                                            (cons _fender130234_
                                                  __tmp135200))))
                                     (declare (not safe))
                                     (cons __tmp135202 __tmp135199))))))
                             (_generate-clauses129846_
                              (lambda (_clauses129969_)
                                (let _lp129972_ ((_rest129975_ _clauses129969_)
                                                 (_E129977_ (gx#genident 'E))
                                                 (_r129978_ '()))
                                  (let* ((___stx135054135055_ _rest129975_)
                                         (_g129981129993_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135054135055_))))
                                    (let ((___kont135057135058_
                                           (lambda (_L130058_ _L130060_)
                                             (let* ((___stx135034135035_
                                                     _L130060_)
                                                    (_g130072130083_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135034135035_))))
                                               (let ((___kont135037135038_
                                                      (lambda (_L130212_)
                                                        (if (gx#stx-null?
                                                             _L130058_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130212_)
                             (let ((__tmp135203 (gx#stx-null? _L130212_)))
                               (declare (not safe))
                               (not __tmp135203)))
                        (let ((__tmp135204
                               (let ((__tmp135205
                                      (let ((__tmp135206
                                             (gx#stx-wrap-source
                                              (let ((__tmp135211
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135207
                                                     (let ((__tmp135208
                                                            (let ((__tmp135209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135210 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135210 _L130212_))))
                      (declare (not safe))
                      (cons __tmp135209 '()))))
               (declare (not safe))
               (cons '() __tmp135208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135211 __tmp135207))
                                              (gx#stx-source _L130060_))))
                                        (declare (not safe))
                                        (cons __tmp135206 '()))))
                                 (declare (not safe))
                                 (cons _E129977_ __tmp135205))))
                          (declare (not safe))
                          (cons __tmp135204 _r129978_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129686_
                         _L130060_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129686_
                     _L130060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135039135040_
                                                      (lambda ()
                                                        (let* ((_g130094130102_
                                                                (lambda (_g130095130098_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130095130098_)))
                       (_g130093130191_
                        (lambda (_g130095130106_)
                          ((lambda (_L130109_)
                             (let ()
                               (let* ((_g130125130133_
                                       (lambda (_g130126130129_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130126130129_)))
                                      (_g130124130187_
                                       (lambda (_g130126130137_)
                                         ((lambda (_L130140_)
                                            (let ()
                                              (let* ((_g130153130161_
                                                      (lambda (_g130154130157_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130154130157_)))
                                                     (_g130152130183_
                                                      (lambda (_g130154130165_)
                                                        ((lambda (_L130168_)
                                                           (let ()
                                                             (let ()
                                                               (_lp129972_
                                                                _L130058_
                                                                _L130109_
                                                                (let ((__tmp135212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135213
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130168_ '()))))
                                 (declare (not safe))
                                 (cons _E129977_ __tmp135213))))
                          (declare (not safe))
                          (cons __tmp135212 _r129978_))))))
                 _g130154130165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130152130183_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135216
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135214
                                                         (let ((__tmp135215
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130140_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135216
                                                          __tmp135214))
                                                  (gx#stx-source
                                                   _L130060_))))))
                                          _g130126130137_))))
                                 (_g130124130187_
                                  (_generate-clause129843_
                                   _L130060_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130109_ '())))))))
                           _g130095130106_))))
                  (_g130093130191_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135034135035_)
                                                     (let ((_e130075130202_
                                                            (gx#syntax-e
                                                             ___stx135034135035_)))
                                                       (let ((_tl130077130209_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130075130202_)))
                     (_hd130076130206_
                      (let () (declare (not safe)) (##car _e130075130202_))))
                 (if (gx#identifier? _hd130076130206_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135217_|
                          _hd130076130206_)
                         (___kont135037135038_ _tl130077130209_)
                         (___kont135039135040_))
                     (___kont135039135040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135039135040_))))))
                                          (___kont135059135060_
                                           (lambda ()
                                             (let* ((_g130004130012_
                                                     (lambda (_g130005130008_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130005130008_)))
                                                    (_g130003130037_
                                                     (lambda (_g130005130016_)
                                                       ((lambda (_L130019_)
                                                          (let ()
                                                            (let ((__tmp135218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135219
                                  (let ((__tmp135220
                                         (gx#stx-wrap-source
                                          (let ((__tmp135228
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135221
                                                 (let ((__tmp135222
                                                        (let ((__tmp135223
                                                               (let ((__tmp135227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135224
                              (let ((__tmp135225
                                     (let ((__tmp135226
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130019_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135226))))
                                (declare (not safe))
                                (cons '#f __tmp135225))))
                         (declare (not safe))
                         (cons __tmp135227 __tmp135224))))
                  (declare (not safe))
                  (cons __tmp135223 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135222))))
                                            (declare (not safe))
                                            (cons __tmp135228 __tmp135221))
                                          (gx#stx-source _stx129686_))))
                                    (declare (not safe))
                                    (cons __tmp135220 '()))))
                             (declare (not safe))
                             (cons _E129977_ __tmp135219))))
                      (declare (not safe))
                      (cons __tmp135218 _r129978_))))
                _g130005130016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130003130037_
                                                _tgt129838_)))))
                                      (if (gx#stx-pair? ___stx135054135055_)
                                          (let ((_e129985130048_
                                                 (gx#syntax-e
                                                  ___stx135054135055_)))
                                            (let ((_tl129987130055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129985130048_)))
                                                  (_hd129986130052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129985130048_))))
                                              (___kont135057135058_
                                               _tl129987130055_
                                               _hd129986130052_)))
                                          (___kont135059135060_))))))))
                      (let* ((_bind129848_
                              (_generate-clauses129846_ _clauses129841_))
                             (_g129851129868_
                              (lambda (_g129852129864_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g129852129864_)))
                             (_g129850129965_
                              (lambda (_g129852129872_)
                                (if (gx#stx-pair/null? _g129852129872_)
                                    (let ((_g135229_
                                           (gx#syntax-split-splice
                                            _g129852129872_
                                            '0)))
                                      (begin
                                        (let ((_g135230_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135229_)
                                                     (##vector-length
                                                      _g135229_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135230_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135230_)))
                                        (let ((_target129854129875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135229_ 0)))
                                              (_tl129856129878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135229_ 1))))
                                          (if (gx#stx-null? _tl129856129878_)
                                              (letrec ((_loop129857129881_
                                                        (lambda (_hd129855129885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try129861129888_)
                  (if (gx#stx-pair? _hd129855129885_)
                      (let ((_e129858129891_ (gx#syntax-e _hd129855129885_)))
                        (let ((_lp-hd129859129895_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129858129891_)))
                              (_lp-tl129860129898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129858129891_))))
                          (_loop129857129881_
                           _lp-tl129860129898_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd129859129895_
                                   _bind-try129861129888_)))))
                      (let ((_bind-try129862129901_
                             (reverse _bind-try129861129888_)))
                        ((lambda (_L129905_)
                           (let ()
                             (let* ((_g129923129931_
                                     (lambda (_g129924129927_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g129924129927_)))
                                    (_g129922129961_
                                     (lambda (_g129924129935_)
                                       ((lambda (_L129938_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135236
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135231
                                                     (let ((__tmp135234
                                                            (let ((__tmp135235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g129952129955_ _g129953129958_)
                             (let ()
                               (declare (not safe))
                               (cons _g129952129955_ _g129953129958_)))))
                      (declare (not safe))
                      (foldr1 __tmp135235 '() _L129905_)))
                   (__tmp135232
                    (let ((__tmp135233
                           (let () (declare (not safe)) (cons _L129938_ '()))))
                      (declare (not safe))
                      (cons __tmp135233 '()))))
               (declare (not safe))
               (cons __tmp135234 __tmp135232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135236
                                                      __tmp135231)))))
                                        _g129924129935_))))
                               (_g129922129961_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind129848_)))))))
                         _bind-try129862129901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop129857129881_
                                                 _target129854129875_
                                                 '()))
                                              (_g129851129868_
                                               _g129852129872_)))))
                                    (_g129851129868_ _g129852129872_)))))
                        (_g129850129965_ _bind129848_))))))
          (let* ((_g129692129711_
                  (lambda (_g129693129707_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129693129707_)))
                 (_g129691129834_
                  (lambda (_g129693129715_)
                    (if (gx#stx-pair? _g129693129715_)
                        (let ((_e129697129718_ (gx#syntax-e _g129693129715_)))
                          (let ((_hd129698129722_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129697129718_)))
                                (_tl129699129725_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129697129718_))))
                            (if (gx#stx-pair? _tl129699129725_)
                                (let ((_e129700129728_
                                       (gx#syntax-e _tl129699129725_)))
                                  (let ((_hd129701129732_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129700129728_)))
                                        (_tl129702129735_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129700129728_))))
                                    (if (gx#stx-pair? _tl129702129735_)
                                        (let ((_e129703129738_
                                               (gx#syntax-e _tl129702129735_)))
                                          (let ((_hd129704129742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129703129738_)))
                                                (_tl129705129745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129703129738_))))
                                            ((lambda (_L129748_
                                                      _L129750_
                                                      _L129751_)
                                               (if (and (gx#identifier-list?
                                                         _L129750_)
                                                        (gx#stx-list?
                                                         _L129748_))
                                                   (let* ((_g129769129777_
                                                           (lambda (_g129770129773_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g129770129773_)))
                                                          (_g129768129830_
                                                           (lambda (_g129770129781_)
                                                             ((lambda (_L129784_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g129796129804_
                                  (lambda (_g129797129800_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g129797129800_)))
                                 (_g129795129826_
                                  (lambda (_g129797129808_)
                                    ((lambda (_L129811_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp135242
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135237
                                                  (let ((__tmp135239
                                                         (let ((__tmp135240
                                                                (let ((__tmp135241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129751_ '()))))
                          (declare (not safe))
                          (cons _L129784_ __tmp135241))))
                   (declare (not safe))
                   (cons __tmp135240 '())))
                (__tmp135238
                 (let () (declare (not safe)) (cons _L129811_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135239
                                                          __tmp135238))))
                                             (declare (not safe))
                                             (cons __tmp135242 __tmp135237)))))
                                     _g129797129808_))))
                            (_g129795129826_
                             (_generate129689_
                              _L129784_
                              (gx#syntax->list _L129750_)
                              _L129748_)))))
                      _g129770129781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g129768129830_
                                                      (gx#genident 'e)))
                                                   (_g129692129711_
                                                    _g129693129715_)))
                                             _tl129705129745_
                                             _hd129704129742_
                                             _hd129701129732_)))
                                        (_g129692129711_ _g129693129715_))))
                                (_g129692129711_ _g129693129715_))))
                        (_g129692129711_ _g129693129715_)))))
            (_g129691129834_ _stx129686_)))))))
