(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g5028_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5029_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5030_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5031_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5032_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5033_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5034_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5035_|
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
       (cons '#f
             (cons |gx[1]#_g5028_|
                   (cons |gx[1]#_g5029_|
                         (cons |gx[1]#_g5030_|
                               (cons (cons |gx[1]#_g5031_|
                                           (cons |gx[1]#_g5032_| '()))
                                     (cons (cons |gx[1]#_g5033_|
                                                 (cons |gx[1]#_g5034_| '()))
                                           '()))))))
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
                      (let ((_e4664_ (gx#syntax-e _g4461_)))
                        (let ((_hd4768_
                               (let () (declare (not safe)) (##car _e4664_)))
                              (_tl4871_
                               (let () (declare (not safe)) (##cdr _e4664_))))
                          (if (gx#stx-pair? _tl4871_)
                              (let ((_e4974_ (gx#syntax-e _tl4871_)))
                                (let ((_hd5078_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4974_)))
                                      (_tl5181_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4974_))))
                                  (if (gx#stx-null? _tl5181_)
                                      ((lambda (_L84_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _L84_ '()))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _L84_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
                                        (let ((_e11811280_
                                               (gx#syntax-e ___stx49314932_)))
                                          (let ((_tl11831287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e11811280_)))
                                                (_hd11821284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e11811280_))))
                                            (if (gx#stx-pair? _tl11831287_)
                                                (let ((_e11841290_
                                                       (gx#syntax-e
                                                        _tl11831287_)))
                                                  (let ((_tl11861297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e11841290_)))
                                                        (_hd11851294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e11841290_))))
                                                    (if (gx#stx-null?
                                                         _tl11861297_)
                                                        (___kont49344935_
                                                         _hd11851294_
                                                         _hd11821284_)
                                                        (if (gx#stx-pair?
                                                             _tl11861297_)
                                                            (let ((_e11961242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl11861297_)))
                      (let ((_tl11981249_
                             (let () (declare (not safe)) (##cdr _e11961242_)))
                            (_hd11971246_
                             (let ()
                               (declare (not safe))
                               (##car _e11961242_))))
                        (if (gx#stx-null? _tl11981249_)
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
                           (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                             (cons _L989_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L1016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                         (cons _L989_ '()))
                                   '()))
                       '())
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L1044_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _L1016_ '()))
                                                     '()))
                                         (cons (cons _L1072_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _L1016_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons _L1100_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L1128_ '())))))))
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
                                                               (if (find (lambda (_g687689_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (gx#bound-identifier=? _g687689_ _hd659_))
                                 _kws258_)
                           (let* ((_g693708_
                                   (lambda (_g694704_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g694704_)))
                                  (_g692759_
                                   (lambda (_g694712_)
                                     (if (gx#stx-pair? _g694712_)
                                         (let ((_e697715_
                                                (gx#syntax-e _g694712_)))
                                           (let ((_hd698719_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e697715_)))
                                                 (_tl699722_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e697715_))))
                                             (if (gx#stx-pair? _tl699722_)
                                                 (let ((_e700725_
                                                        (gx#syntax-e
                                                         _tl699722_)))
                                                   (let ((_hd701729_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e700725_)))
                                                         (_tl702732_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e700725_))))
                                                     (if (gx#stx-null?
                                                          _tl702732_)
                                                         ((lambda (_L735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L737_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'identifier?)
                                                    (cons _L737_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-identifier=?)
                                                          (cons _L737_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote)
                                    (cons _L735_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K662_ (cons _E654_ '()))))))
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
                                         (let ((_e767785_
                                                (gx#syntax-e _g764782_)))
                                           (let ((_hd768789_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e767785_)))
                                                 (_tl769792_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e767785_))))
                                             (if (gx#stx-pair? _tl769792_)
                                                 (let ((_e770795_
                                                        (gx#syntax-e
                                                         _tl769792_)))
                                                   (let ((_hd771799_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e770795_)))
                                                         (_tl772802_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e770795_))))
                                                     (if (gx#stx-null?
                                                          _tl772802_)
                                                         ((lambda (_L805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L807_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L805_ (cons _L807_ '())) '())
                                  (cons _K662_ '())))))
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
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'stx-null?)
                                                        (cons _L841_ '()))
                                                  (cons _K662_
                                                        (cons _E654_ '()))))))
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
                                         (let ((_e861882_
                                                (gx#syntax-e _g857879_)))
                                           (let ((_hd862886_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e861882_)))
                                                 (_tl863889_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e861882_))))
                                             (if (gx#stx-pair? _tl863889_)
                                                 (let ((_e864892_
                                                        (gx#syntax-e
                                                         _tl863889_)))
                                                   (let ((_hd865896_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e864892_)))
                                                         (_tl866899_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e864892_))))
                                                     (if (gx#stx-pair?
                                                          _tl866899_)
                                                         (let ((_e867902_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl866899_)))
                   (let ((_hd868906_
                          (let () (declare (not safe)) (##car _e867902_)))
                         (_tl869909_
                          (let () (declare (not safe)) (##cdr _e867902_))))
                     (if (gx#stx-null? _tl869909_)
                         ((lambda (_L912_ _L914_ _L915_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons _L912_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-e)
                                                            (cons _L915_ '()))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L914_ '()))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _K662_ (cons _E654_ '()))))))
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
                                      (if (or (keyword? _e937_)
                                              (immediate? _e937_))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _e937_)
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
                                                    (let ((_e669951_
                                                           (gx#syntax-e
                                                            ___stx49774978_)))
                                                      (let ((_tl671958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e669951_)))
                    (_hd670955_
                     (let () (declare (not safe)) (##car _e669951_))))
                (___kont49804981_ _tl671958_ _hd670955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont49824983_)))))))
                                  (_recur656_
                                   _hd651_
                                   _tgt256_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender652_
                                               (cons _body653_
                                                     (cons _E654_ '()))))))))
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
                             (not (gx#stx-null? _L630_)))
                        (cons (cons _E395_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _L630_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _L478_))
                                          '()))
                              _r396_)
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
                                (cons (cons _E395_ (cons _L586_ '()))
                                      _r396_)))))
                 _g572583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g570601_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _L558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _L478_))))))
                                          _g544555_))))
                                 (_g542605_
                                  (_generate-clause261_
                                   _L478_
                                   (cons _L527_ '()))))))
                           _g513524_))))
                  (_g511609_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx49934994_)
                                                     (let ((_e493620_
                                                            (gx#syntax-e
                                                             ___stx49934994_)))
                                                       (let ((_tl495627_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e493620_)))
                     (_hd494624_
                      (let () (declare (not safe)) (##car _e493620_))))
                 (if (gx#identifier? _hd494624_)
                     (if (gx#free-identifier=? |gx[1]#_g5035_| _hd494624_)
                         (___kont49964997_ _tl495627_)
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
                                                            (cons (cons _E395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (gx#stx-wrap-source
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '()
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'raise-syntax-error)
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '"Bad syntax" (cons _L437_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _stx104_))
                                      '()))
                          _r396_)))
                _g423434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g421455_ _tgt256_)))))
                                      (if (gx#stx-pair? ___stx50135014_)
                                          (let ((_e403466_
                                                 (gx#syntax-e
                                                  ___stx50135014_)))
                                            (let ((_tl405473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e403466_)))
                                                  (_hd404470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e403466_))))
                                              (___kont50165017_
                                               _tl405473_
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
                                    (let ((_g5036_ (gx#syntax-split-splice
                                                    _g270290_
                                                    '0)))
                                      (begin
                                        (let ((_g5037_ (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g5036_)
                                                             (##vector-length
                                                              _g5036_)
                                                             1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g5037_ 2)))
                                              (error "Context expects 2 values"
                                                     _g5037_)))
                                        (let ((_target272293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g5036_ 0)))
                                              (_tl274296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g5036_ 1))))
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
                           (cons _lp-hd277313_ _bind-try279306_))))
                      (let ((_bind-try280319_ (reverse _bind-try279306_)))
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
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let*)
                                                    (cons (foldr1 (lambda (_g370373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g371376_)
                            (cons _g370373_ _g371376_))
                          '()
                          _L323_)
                  (cons (cons _L356_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g342353_))))
                               (_g340379_ (car (last _bind266_))))))
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
                        (let ((_e115136_ (gx#syntax-e _g111133_)))
                          (let ((_hd116140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115136_)))
                                (_tl117143_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115136_))))
                            (if (gx#stx-pair? _tl117143_)
                                (let ((_e118146_ (gx#syntax-e _tl117143_)))
                                  (let ((_hd119150_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118146_)))
                                        (_tl120153_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118146_))))
                                    (if (gx#stx-pair? _tl120153_)
                                        (let ((_e121156_
                                               (gx#syntax-e _tl120153_)))
                                          (let ((_hd122160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121156_)))
                                                (_tl123163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121156_))))
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
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L169_ '()))
                     '())
               (cons _L229_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
                                             _tl123163_
                                             _hd122160_
                                             _hd119150_)))
                                        (_g110129_ _g111133_))))
                                (_g110129_ _g111133_))))
                        (_g110129_ _g111133_)))))
            (_g109252_ _stx104_)))))))
