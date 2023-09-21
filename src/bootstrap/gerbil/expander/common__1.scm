(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g5028_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5037_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5039_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5043_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5045_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5047_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5049_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5157_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5028_|
       'expander-identifiers:
       (let ((__tmp5029
              (let ((__tmp5050 |gx[1]#_g5028_|)
                    (__tmp5030
                     (let ((__tmp5048 |gx[1]#_g5049_|)
                           (__tmp5031
                            (let ((__tmp5046 |gx[1]#_g5047_|)
                                  (__tmp5032
                                   (let ((__tmp5040
                                          (let ((__tmp5044 |gx[1]#_g5045_|)
                                                (__tmp5041
                                                 (let ((__tmp5042
                                                        |gx[1]#_g5043_|))
                                                   (declare (not safe))
                                                   (cons __tmp5042 '()))))
                                            (declare (not safe))
                                            (cons __tmp5044 __tmp5041)))
                                         (__tmp5033
                                          (let ((__tmp5034
                                                 (let ((__tmp5038
                                                        |gx[1]#_g5039_|)
                                                       (__tmp5035
                                                        (let ((__tmp5036
                                                               |gx[1]#_g5037_|))
                                                          (declare (not safe))
                                                          (cons __tmp5036
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp5038
                                                         __tmp5035))))
                                            (declare (not safe))
                                            (cons __tmp5034 '()))))
                                     (declare (not safe))
                                     (cons __tmp5040 __tmp5033))))
                              (declare (not safe))
                              (cons __tmp5046 __tmp5032))))
                       (declare (not safe))
                       (cons __tmp5048 __tmp5031))))
                (declare (not safe))
                (cons __tmp5050 __tmp5030))))
         (declare (not safe))
         (cons '#f __tmp5029))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx39_)
        (let* ((_g4357_ (lambda (_g4453_)
                          (gx#raise-syntax-error '#f '"Bad syntax" _g4453_)))
               (_g42100_
                (lambda (_g4461_)
                  (if (gx#stx-pair? _g4461_)
                      (let ((_e4864_ (gx#syntax-e _g4461_)))
                        (let ((_hd4768_
                               (let () (declare (not safe)) (##car _e4864_)))
                              (_tl4671_
                               (let () (declare (not safe)) (##cdr _e4864_))))
                          (if (gx#stx-pair? _tl4671_)
                              (let ((_e5174_ (gx#syntax-e _tl4671_)))
                                (let ((_hd5078_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5174_)))
                                      (_tl4981_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5174_))))
                                  (if (gx#stx-null? _tl4981_)
                                      ((lambda (_L84_)
                                         (let ((__tmp5060
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp5051
                                                (let ((__tmp5057
                                                       (let ((__tmp5059
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp5058
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L84_ '()))))
                 (declare (not safe))
                 (cons __tmp5059 __tmp5058)))
              (__tmp5052
               (let ((__tmp5053
                      (let ((__tmp5056 (gx#datum->syntax '#f 'error))
                            (__tmp5054
                             (let ((__tmp5055
                                    (let ()
                                      (declare (not safe))
                                      (cons _L84_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp5055))))
                        (declare (not safe))
                        (cons __tmp5056 __tmp5054))))
                 (declare (not safe))
                 (cons __tmp5053 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp5057 __tmp5052))))
                                           (declare (not safe))
                                           (cons __tmp5060 __tmp5051)))
                                       _hd5078_)
                                      (_g4357_ _g4461_))))
                              (_g4357_ _g4461_))))
                      (_g4357_ _g4461_)))))
          (_g42100_ _$stx39_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx104_)
        (letrec ((_generate107_
                  (lambda (_tgt256_ _kws258_ _clauses259_)
                    (letrec ((_generate-clause261_
                              (lambda (_hd1171_ _E1173_)
                                (let* ((___stx49314932_ _hd1171_)
                                       (_g11771204_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx49314932_))))
                                  (let ((___kont49344935_
                                         (lambda (_L1300_ _L1302_)
                                           (_generate1263_
                                            _hd1171_
                                            _L1302_
                                            '#t
                                            _L1300_
                                            _E1173_)))
                                        (___kont49364937_
                                         (lambda (_L1252_ _L1254_ _L1255_)
                                           (_generate1263_
                                            _hd1171_
                                            _L1255_
                                            _L1254_
                                            _L1252_
                                            _E1173_)))
                                        (___kont49384939_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _stx104_
                                            _hd1171_))))
                                    (if (gx#stx-pair? ___stx49314932_)
                                        (let ((_e11831280_
                                               (gx#syntax-e ___stx49314932_)))
                                          (let ((_tl11811287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e11831280_)))
                                                (_hd11821284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e11831280_))))
                                            (if (gx#stx-pair? _tl11811287_)
                                                (let ((_e11861290_
                                                       (gx#syntax-e
                                                        _tl11811287_)))
                                                  (let ((_tl11841297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e11861290_)))
                                                        (_hd11851294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e11861290_))))
                                                    (if (gx#stx-null?
                                                         _tl11841297_)
                                                        (___kont49344935_
                                                         _hd11851294_
                                                         _hd11821284_)
                                                        (if (gx#stx-pair?
                                                             _tl11841297_)
                                                            (let ((_e11981242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl11841297_)))
                      (let ((_tl11961249_
                             (let () (declare (not safe)) (##cdr _e11981242_)))
                            (_hd11971246_
                             (let ()
                               (declare (not safe))
                               (##car _e11981242_))))
                        (if (gx#stx-null? _tl11961249_)
                            (___kont49364937_
                             _hd11971246_
                             _hd11851294_
                             _hd11821284_)
                            (___kont49384939_))))
                    (___kont49384939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont49384939_))))
                                        (___kont49384939_))))))
                             (_generate1263_
                              (lambda (_where649_
                                       _hd651_
                                       _fender652_
                                       _body653_
                                       _E654_)
                                (letrec ((_recur656_
                                          (lambda (_hd659_ _tgt661_ _K662_)
                                            (let* ((___stx49774978_ _hd659_)
                                                   (_g665677_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx49774978_))))
                                              (let ((___kont49804981_
                                                     (lambda (_L961_ _L963_)
                                                       (let* ((_g974982_
                                                               (lambda (_g975978_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error '#f '"Bad syntax" _g975978_)))
                      (_g9731163_
                       (lambda (_g975986_)
                         ((lambda (_L989_)
                            (let ()
                              (let* ((_g10011009_
                                      (lambda (_g10021005_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g10021005_)))
                                     (_g10001159_
                                      (lambda (_g10021013_)
                                        ((lambda (_L1016_)
                                           (let ()
                                             (let* ((_g10291037_
                                                     (lambda (_g10301033_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g10301033_)))
                                                    (_g10281155_
                                                     (lambda (_g10301041_)
                                                       ((lambda (_L1044_)
                                                          (let ()
                                                            (let* ((_g10571065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g10581061_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g10581061_)))
                           (_g10561151_
                            (lambda (_g10581069_)
                              ((lambda (_L1072_)
                                 (let ()
                                   (let* ((_g10851093_
                                           (lambda (_g10861089_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g10861089_)))
                                          (_g10841147_
                                           (lambda (_g10861097_)
                                             ((lambda (_L1100_)
                                                (let ()
                                                  (let* ((_g11131121_
                                                          (lambda (_g11141117_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g11141117_)))
                                                         (_g11121143_
                                                          (lambda (_g11141125_)
                                                            ((lambda (_L1128_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp5093 (gx#datum->syntax '#f 'if))
                                 (__tmp5061
                                  (let ((__tmp5090
                                         (let ((__tmp5092
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp5091
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L989_ '()))))
                                           (declare (not safe))
                                           (cons __tmp5092 __tmp5091)))
                                        (__tmp5062
                                         (let ((__tmp5064
                                                (let ((__tmp5089
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp5065
                                                       (let ((__tmp5083
                                                              (let ((__tmp5084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp5085
                                    (let ((__tmp5086
                                           (let ((__tmp5088
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp5087
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L989_ '()))))
                                             (declare (not safe))
                                             (cons __tmp5088 __tmp5087))))
                                      (declare (not safe))
                                      (cons __tmp5086 '()))))
                               (declare (not safe))
                               (cons _L1016_ __tmp5085))))
                        (declare (not safe))
                        (cons __tmp5084 '())))
                     (__tmp5066
                      (let ((__tmp5067
                             (let ((__tmp5082 (gx#datum->syntax '#f 'let))
                                   (__tmp5068
                                    (let ((__tmp5070
                                           (let ((__tmp5077
                                                  (let ((__tmp5078
                                                         (let ((__tmp5079
                                                                (let ((__tmp5081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp5080
                               (let ()
                                 (declare (not safe))
                                 (cons _L1016_ '()))))
                          (declare (not safe))
                          (cons __tmp5081 __tmp5080))))
                   (declare (not safe))
                   (cons __tmp5079 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L1044_ __tmp5078)))
                                                 (__tmp5071
                                                  (let ((__tmp5072
                                                         (let ((__tmp5073
                                                                (let ((__tmp5074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp5076 (gx#datum->syntax '#f '##cdr))
                                     (__tmp5075
                                      (let ()
                                        (declare (not safe))
                                        (cons _L1016_ '()))))
                                 (declare (not safe))
                                 (cons __tmp5076 __tmp5075))))
                          (declare (not safe))
                          (cons __tmp5074 '()))))
                   (declare (not safe))
                   (cons _L1072_ __tmp5073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp5072 '()))))
                                             (declare (not safe))
                                             (cons __tmp5077 __tmp5071)))
                                          (__tmp5069
                                           (let ()
                                             (declare (not safe))
                                             (cons _L1100_ '()))))
                                      (declare (not safe))
                                      (cons __tmp5070 __tmp5069))))
                               (declare (not safe))
                               (cons __tmp5082 __tmp5068))))
                        (declare (not safe))
                        (cons __tmp5067 '()))))
                 (declare (not safe))
                 (cons __tmp5083 __tmp5066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp5089 __tmp5065)))
                                               (__tmp5063
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L1128_ '()))))
                                           (declare (not safe))
                                           (cons __tmp5064 __tmp5063))))
                                    (declare (not safe))
                                    (cons __tmp5090 __tmp5062))))
                             (declare (not safe))
                             (cons __tmp5093 __tmp5061)))))
                     _g11141125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g11121143_ _E654_))))
                                              _g10861097_))))
                                     (_g10841147_
                                      (_recur656_
                                       _L963_
                                       _L1044_
                                       (_recur656_ _L961_ _L1072_ _K662_))))))
                               _g10581069_))))
                      (_g10561151_ (gx#genident 'tl)))))
                _g10301041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g10281155_
                                                (gx#genident 'hd)))))
                                         _g10021013_))))
                                (_g10001159_ (gx#genident 'e)))))
                          _g975986_))))
                 (_g9731163_ _tgt661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont49824983_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd659_)
                                                           (if (gx#underscore?
                                                                _hd659_)
                                                               _K662_
                                                               (if (let ((__tmp5138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g687689_)
                                    (gx#bound-identifier=?
                                     _g687689_
                                     _hd659_))))
                             (declare (not safe))
                             (find __tmp5138 _kws258_))
                           (let* ((_g693708_
                                   (lambda (_g694704_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g694704_)))
                                  (_g692759_
                                   (lambda (_g694712_)
                                     (if (gx#stx-pair? _g694712_)
                                         (let ((_e699715_
                                                (gx#syntax-e _g694712_)))
                                           (let ((_hd698719_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e699715_)))
                                                 (_tl697722_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e699715_))))
                                             (if (gx#stx-pair? _tl697722_)
                                                 (let ((_e702725_
                                                        (gx#syntax-e
                                                         _tl697722_)))
                                                   (let ((_hd701729_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e702725_)))
                                                         (_tl700732_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e702725_))))
                                                     (if (gx#stx-null?
                                                          _tl700732_)
                                                         ((lambda (_L735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L737_)
                    (let ()
                      (let ((__tmp5137 (gx#datum->syntax '#f 'if))
                            (__tmp5120
                             (let ((__tmp5123
                                    (let ((__tmp5136
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp5124
                                           (let ((__tmp5133
                                                  (let ((__tmp5135
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp5134
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L737_ '()))))
                                                    (declare (not safe))
                                                    (cons __tmp5135
                                                          __tmp5134)))
                                                 (__tmp5125
                                                  (let ((__tmp5126
                                                         (let ((__tmp5132
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp5127
                        (let ((__tmp5128
                               (let ((__tmp5129
                                      (let ((__tmp5131
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp5130
                                             (let ()
                                               (declare (not safe))
                                               (cons _L735_ '()))))
                                        (declare (not safe))
                                        (cons __tmp5131 __tmp5130))))
                                 (declare (not safe))
                                 (cons __tmp5129 '()))))
                          (declare (not safe))
                          (cons _L737_ __tmp5128))))
                   (declare (not safe))
                   (cons __tmp5132 __tmp5127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp5126 '()))))
                                             (declare (not safe))
                                             (cons __tmp5133 __tmp5125))))
                                      (declare (not safe))
                                      (cons __tmp5136 __tmp5124)))
                                   (__tmp5121
                                    (let ((__tmp5122
                                           (let ()
                                             (declare (not safe))
                                             (cons _E654_ '()))))
                                      (declare (not safe))
                                      (cons _K662_ __tmp5122))))
                               (declare (not safe))
                               (cons __tmp5123 __tmp5121))))
                        (declare (not safe))
                        (cons __tmp5137 __tmp5120))))
                  _hd701729_
                  _hd698719_)
                 (_g693708_ _g694712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g693708_ _g694712_))))
                                         (_g693708_ _g694712_)))))
                             (_g692759_ (list _tgt661_ _hd659_)))
                           (let* ((_g763778_
                                   (lambda (_g764774_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g764774_)))
                                  (_g762822_
                                   (lambda (_g764782_)
                                     (if (gx#stx-pair? _g764782_)
                                         (let ((_e769785_
                                                (gx#syntax-e _g764782_)))
                                           (let ((_hd768789_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e769785_)))
                                                 (_tl767792_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e769785_))))
                                             (if (gx#stx-pair? _tl767792_)
                                                 (let ((_e772795_
                                                        (gx#syntax-e
                                                         _tl767792_)))
                                                   (let ((_hd771799_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e772795_)))
                                                         (_tl770802_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e772795_))))
                                                     (if (gx#stx-null?
                                                          _tl770802_)
                                                         ((lambda (_L805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L807_)
                    (let ()
                      (let ((__tmp5119 (gx#datum->syntax '#f 'let))
                            (__tmp5114
                             (let ((__tmp5116
                                    (let ((__tmp5117
                                           (let ((__tmp5118
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L807_ '()))))
                                             (declare (not safe))
                                             (cons _L805_ __tmp5118))))
                                      (declare (not safe))
                                      (cons __tmp5117 '())))
                                   (__tmp5115
                                    (let ()
                                      (declare (not safe))
                                      (cons _K662_ '()))))
                               (declare (not safe))
                               (cons __tmp5116 __tmp5115))))
                        (declare (not safe))
                        (cons __tmp5119 __tmp5114))))
                  _hd771799_
                  _hd768789_)
                 (_g763778_ _g764782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g763778_ _g764782_))))
                                         (_g763778_ _g764782_)))))
                             (_g762822_ (list _tgt661_ _hd659_)))))
                   (if (gx#stx-null? _hd659_)
                       (let* ((_g826834_
                               (lambda (_g827830_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g827830_)))
                              (_g825852_
                               (lambda (_g827838_)
                                 ((lambda (_L841_)
                                    (let ()
                                      (let ((__tmp5113
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp5107
                                             (let ((__tmp5110
                                                    (let ((__tmp5112
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp5111
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp5112 __tmp5111)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp5108
                                                    (let ((__tmp5109
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K662_ __tmp5109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp5110 __tmp5108))))
                                        (declare (not safe))
                                        (cons __tmp5113 __tmp5107))))
                                  _g827838_))))
                         (_g825852_ _tgt661_))
                       (if (gx#stx-datum? _hd659_)
                           (let* ((_g856875_
                                   (lambda (_g857871_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g857871_)))
                                  (_g855933_
                                   (lambda (_g857879_)
                                     (if (gx#stx-pair? _g857879_)
                                         (let ((_e863882_
                                                (gx#syntax-e _g857879_)))
                                           (let ((_hd862886_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e863882_)))
                                                 (_tl861889_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e863882_))))
                                             (if (gx#stx-pair? _tl861889_)
                                                 (let ((_e866892_
                                                        (gx#syntax-e
                                                         _tl861889_)))
                                                   (let ((_hd865896_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e866892_)))
                                                         (_tl864899_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e866892_))))
                                                     (if (gx#stx-pair?
                                                          _tl864899_)
                                                         (let ((_e869902_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl864899_)))
                   (let ((_hd868906_
                          (let () (declare (not safe)) (##car _e869902_)))
                         (_tl867909_
                          (let () (declare (not safe)) (##cdr _e869902_))))
                     (if (gx#stx-null? _tl867909_)
                         ((lambda (_L912_ _L914_ _L915_)
                            (let ()
                              (let ((__tmp5106 (gx#datum->syntax '#f 'if))
                                    (__tmp5094
                                     (let ((__tmp5097
                                            (let ((__tmp5098
                                                   (let ((__tmp5103
                                                          (let ((__tmp5105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp5104
                         (let () (declare (not safe)) (cons _L915_ '()))))
                    (declare (not safe))
                    (cons __tmp5105 __tmp5104)))
                 (__tmp5099
                  (let ((__tmp5100
                         (let ((__tmp5102 (gx#datum->syntax '#f 'quote))
                               (__tmp5101
                                (let ()
                                  (declare (not safe))
                                  (cons _L914_ '()))))
                           (declare (not safe))
                           (cons __tmp5102 __tmp5101))))
                    (declare (not safe))
                    (cons __tmp5100 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp5103
                                                           __tmp5099))))
                                              (declare (not safe))
                                              (cons _L912_ __tmp5098)))
                                           (__tmp5095
                                            (let ((__tmp5096
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E654_ '()))))
                                              (declare (not safe))
                                              (cons _K662_ __tmp5096))))
                                       (declare (not safe))
                                       (cons __tmp5097 __tmp5095))))
                                (declare (not safe))
                                (cons __tmp5106 __tmp5094))))
                          _hd868906_
                          _hd865896_
                          _hd862886_)
                         (_g856875_ _g857879_))))
                 (_g856875_ _g857879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g856875_ _g857879_))))
                                         (_g856875_ _g857879_)))))
                             (_g855933_
                              (list _tgt661_
                                    _hd659_
                                    (let ((_e937_ (gx#stx-e _hd659_)))
                                      (if (or (let ()
                                                (declare (not safe))
                                                (keyword? _e937_))
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e937_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e937_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _stx104_
                            _where649_
                            _hd659_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx49774978_)
                                                    (let ((_e671951_
                                                           (gx#syntax-e
                                                            ___stx49774978_)))
                                                      (let ((_tl669958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e671951_)))
                    (_hd670955_
                     (let () (declare (not safe)) (##car _e671951_))))
                (___kont49804981_ _tl669958_ _hd670955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont49824983_)))))))
                                  (_recur656_
                                   _hd651_
                                   _tgt256_
                                   (let ((__tmp5142 (gx#datum->syntax '#f 'if))
                                         (__tmp5139
                                          (let ((__tmp5140
                                                 (let ((__tmp5141
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E654_ '()))))
                                                   (declare (not safe))
                                                   (cons _body653_
                                                         __tmp5141))))
                                            (declare (not safe))
                                            (cons _fender652_ __tmp5140))))
                                     (declare (not safe))
                                     (cons __tmp5142 __tmp5139))))))
                             (_generate-clauses264_
                              (lambda (_clauses387_)
                                (let _lp390_ ((_rest393_ _clauses387_)
                                              (_E395_ (gx#genident 'E))
                                              (_r396_ '()))
                                  (let* ((___stx50135014_ _rest393_)
                                         (_g399411_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx50135014_))))
                                    (let ((___kont50165017_
                                           (lambda (_L476_ _L478_)
                                             (let* ((___stx49934994_ _L478_)
                                                    (_g490501_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx49934994_))))
                                               (let ((___kont49964997_
                                                      (lambda (_L630_)
                                                        (if (gx#stx-null?
                                                             _L476_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L630_)
                             (let ((__tmp5151 (gx#stx-null? _L630_)))
                               (declare (not safe))
                               (not __tmp5151)))
                        (let ((__tmp5143
                               (let ((__tmp5144
                                      (let ((__tmp5145
                                             (gx#stx-wrap-source
                                              (let ((__tmp5150
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp5146
                                                     (let ((__tmp5147
                                                            (let ((__tmp5148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp5149 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp5149 _L630_))))
                      (declare (not safe))
                      (cons __tmp5148 '()))))
               (declare (not safe))
               (cons '() __tmp5147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp5150 __tmp5146))
                                              (gx#stx-source _L478_))))
                                        (declare (not safe))
                                        (cons __tmp5145 '()))))
                                 (declare (not safe))
                                 (cons _E395_ __tmp5144))))
                          (declare (not safe))
                          (cons __tmp5143 _r396_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx104_
                         _L478_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx104_
                     _L478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont49984999_
                                                      (lambda ()
                                                        (let* ((_g512520_
                                                                (lambda (_g513516_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error '#f '"Bad syntax" _g513516_)))
                       (_g511609_
                        (lambda (_g513524_)
                          ((lambda (_L527_)
                             (let ()
                               (let* ((_g543551_
                                       (lambda (_g544547_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g544547_)))
                                      (_g542605_
                                       (lambda (_g544555_)
                                         ((lambda (_L558_)
                                            (let ()
                                              (let* ((_g571579_
                                                      (lambda (_g572575_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g572575_)))
                                                     (_g570601_
                                                      (lambda (_g572583_)
                                                        ((lambda (_L586_)
                                                           (let ()
                                                             (let ()
                                                               (_lp390_ _L476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L527_
                                (let ((__tmp5152
                                       (let ((__tmp5153
                                              (let ()
                                                (declare (not safe))
                                                (cons _L586_ '()))))
                                         (declare (not safe))
                                         (cons _E395_ __tmp5153))))
                                  (declare (not safe))
                                  (cons __tmp5152 _r396_))))))
                 _g572583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g570601_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp5156
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp5154
                                                         (let ((__tmp5155
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L558_ '()))))
                   (declare (not safe))
                   (cons '() __tmp5155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp5156 __tmp5154))
                                                  (gx#stx-source _L478_))))))
                                          _g544555_))))
                                 (_g542605_
                                  (_generate-clause261_
                                   _L478_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L527_ '())))))))
                           _g513524_))))
                  (_g511609_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx49934994_)
                                                     (let ((_e495620_
                                                            (gx#syntax-e
                                                             ___stx49934994_)))
                                                       (let ((_tl493627_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e495620_)))
                     (_hd494624_
                      (let () (declare (not safe)) (##car _e495620_))))
                 (if (gx#identifier? _hd494624_)
                     (if (gx#free-identifier=? |gx[1]#_g5157_| _hd494624_)
                         (___kont49964997_ _tl493627_)
                         (___kont49984999_))
                     (___kont49984999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont49984999_))))))
                                          (___kont50185019_
                                           (lambda ()
                                             (let* ((_g422430_
                                                     (lambda (_g423426_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g423426_)))
                                                    (_g421455_
                                                     (lambda (_g423434_)
                                                       ((lambda (_L437_)
                                                          (let ()
                                                            (let ((__tmp5158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp5159
                                  (let ((__tmp5160
                                         (gx#stx-wrap-source
                                          (let ((__tmp5168
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp5161
                                                 (let ((__tmp5162
                                                        (let ((__tmp5163
                                                               (let ((__tmp5167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp5164
                              (let ((__tmp5165
                                     (let ((__tmp5166
                                            (let ()
                                              (declare (not safe))
                                              (cons _L437_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax" __tmp5166))))
                                (declare (not safe))
                                (cons '#f __tmp5165))))
                         (declare (not safe))
                         (cons __tmp5167 __tmp5164))))
                  (declare (not safe))
                  (cons __tmp5163 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp5162))))
                                            (declare (not safe))
                                            (cons __tmp5168 __tmp5161))
                                          (gx#stx-source _stx104_))))
                                    (declare (not safe))
                                    (cons __tmp5160 '()))))
                             (declare (not safe))
                             (cons _E395_ __tmp5159))))
                      (declare (not safe))
                      (cons __tmp5158 _r396_))))
                _g423434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g421455_ _tgt256_)))))
                                      (if (gx#stx-pair? ___stx50135014_)
                                          (let ((_e405466_
                                                 (gx#syntax-e
                                                  ___stx50135014_)))
                                            (let ((_tl403473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e405466_)))
                                                  (_hd404470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e405466_))))
                                              (___kont50165017_
                                               _tl403473_
                                               _hd404470_)))
                                          (___kont50185019_))))))))
                      (let* ((_bind266_ (_generate-clauses264_ _clauses259_))
                             (_g269286_
                              (lambda (_g270282_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g270282_)))
                             (_g268383_
                              (lambda (_g270290_)
                                (if (gx#stx-pair/null? _g270290_)
                                    (let ((_g5169_ (gx#syntax-split-splice
                                                    _g270290_
                                                    '0)))
                                      (begin
                                        (let ((_g5170_ (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g5169_)
                                                             (##vector-length
                                                              _g5169_)
                                                             1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g5170_ 2)))
                                              (error "Context expects 2 values"
                                                     _g5170_)))
                                        (let ((_target272293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g5169_ 0)))
                                              (_tl274296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g5169_ 1))))
                                          (if (gx#stx-null? _tl274296_)
                                              (letrec ((_loop275299_
                                                        (lambda (_hd273303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try279306_)
                  (if (gx#stx-pair? _hd273303_)
                      (let ((_e276309_ (gx#syntax-e _hd273303_)))
                        (let ((_lp-hd277313_
                               (let () (declare (not safe)) (##car _e276309_)))
                              (_lp-tl278316_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276309_))))
                          (_loop275299_
                           _lp-tl278316_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd277313_ _bind-try279306_)))))
                      (let ((_bind-try280319_
                             (let ()
                               (declare (not safe))
                               (reverse _bind-try279306_))))
                        ((lambda (_L323_)
                           (let ()
                             (let* ((_g341349_
                                     (lambda (_g342345_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g342345_)))
                                    (_g340379_
                                     (lambda (_g342353_)
                                       ((lambda (_L356_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp5176
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp5171
                                                     (let ((__tmp5174
                                                            (let ((__tmp5175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g370373_ _g371376_)
                             (let ()
                               (declare (not safe))
                               (cons _g370373_ _g371376_)))))
                      (declare (not safe))
                      (foldr1 __tmp5175 '() _L323_)))
                   (__tmp5172
                    (let ((__tmp5173
                           (let () (declare (not safe)) (cons _L356_ '()))))
                      (declare (not safe))
                      (cons __tmp5173 '()))))
               (declare (not safe))
               (cons __tmp5174 __tmp5172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp5176 __tmp5171)))))
                                        _g342353_))))
                               (_g340379_
                                (let ((__tmp5177
                                       (let ()
                                         (declare (not safe))
                                         (last _bind266_))))
                                  (declare (not safe))
                                  (car __tmp5177))))))
                         _bind-try280319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop275299_
                                                 _target272293_
                                                 '()))
                                              (_g269286_ _g270290_)))))
                                    (_g269286_ _g270290_)))))
                        (_g268383_ _bind266_))))))
          (let* ((_g110129_
                  (lambda (_g111125_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g111125_)))
                 (_g109252_
                  (lambda (_g111133_)
                    (if (gx#stx-pair? _g111133_)
                        (let ((_e117136_ (gx#syntax-e _g111133_)))
                          (let ((_hd116140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117136_)))
                                (_tl115143_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117136_))))
                            (if (gx#stx-pair? _tl115143_)
                                (let ((_e120146_ (gx#syntax-e _tl115143_)))
                                  (let ((_hd119150_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120146_)))
                                        (_tl118153_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120146_))))
                                    (if (gx#stx-pair? _tl118153_)
                                        (let ((_e123156_
                                               (gx#syntax-e _tl118153_)))
                                          (let ((_hd122160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123156_)))
                                                (_tl121163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123156_))))
                                            ((lambda (_L166_ _L168_ _L169_)
                                               (if (and (gx#identifier-list?
                                                         _L168_)
                                                        (gx#stx-list? _L166_))
                                                   (let* ((_g187195_
                                                           (lambda (_g188191_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g188191_)))
                                                          (_g186248_
                                                           (lambda (_g188199_)
                                                             ((lambda (_L202_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g214222_
                                  (lambda (_g215218_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g215218_)))
                                 (_g213244_
                                  (lambda (_g215226_)
                                    ((lambda (_L229_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp5183
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp5178
                                                  (let ((__tmp5180
                                                         (let ((__tmp5181
                                                                (let ((__tmp5182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L169_ '()))))
                          (declare (not safe))
                          (cons _L202_ __tmp5182))))
                   (declare (not safe))
                   (cons __tmp5181 '())))
                (__tmp5179 (let () (declare (not safe)) (cons _L229_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp5180
                                                          __tmp5179))))
                                             (declare (not safe))
                                             (cons __tmp5183 __tmp5178)))))
                                     _g215226_))))
                            (_g213244_
                             (_generate107_
                              _L202_
                              (gx#syntax->list _L168_)
                              _L166_)))))
                      _g188199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g186248_
                                                      (gx#genident 'e)))
                                                   (_g110129_ _g111133_)))
                                             _tl121163_
                                             _hd122160_
                                             _hd119150_)))
                                        (_g110129_ _g111133_))))
                                (_g110129_ _g111133_))))
                        (_g110129_ _g111133_)))))
            (_g109252_ _stx104_)))))))
