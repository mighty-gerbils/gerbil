(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g2842_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g2843_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2844_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2842_|))
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2843_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx332_)
        (letrec ((_generate335_
                  (lambda (_tgt487_ _kws489_ _clauses490_)
                    (letrec ((_generate-clause492_
                              (lambda (_hd1402_ _E1404_)
                                (let* ((_g14081435_
                                        (lambda (_g14091431_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g14091431_)))
                                       (_g14071446_
                                        (lambda (_g14091439_)
                                          ((lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _stx332_
                                              _hd1402_)))))
                                       (_g14061504_
                                        (lambda (_g14091450_)
                                          (if (gx#stx-pair? _g14091450_)
                                              (let ((_e14211453_
                                                     (gx#syntax-e
                                                      _g14091450_)))
                                                (let ((_hd14221457_
                                                       (##car _e14211453_))
                                                      (_tl14231460_
                                                       (##cdr _e14211453_)))
                                                  (if (gx#stx-pair?
                                                       _tl14231460_)
                                                      (let ((_e14241463_
                                                             (gx#syntax-e
                                                              _tl14231460_)))
                                                        (let ((_hd14251467_
                                                               (##car _e14241463_))
                                                              (_tl14261470_
                                                               (##cdr _e14241463_)))
                                                          (if (gx#stx-pair?
                                                               _tl14261470_)
                                                              (let ((_e14271473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl14261470_)))
                        (let ((_hd14281477_ (##car _e14271473_))
                              (_tl14291480_ (##cdr _e14271473_)))
                          (if (gx#stx-null? _tl14291480_)
                              ((lambda (_L1483_ _L1485_ _L1486_)
                                 (_generate1494_
                                  _hd1402_
                                  _L1486_
                                  _L1485_
                                  _L1483_
                                  _E1404_))
                               _hd14281477_
                               _hd14251467_
                               _hd14221457_)
                              (_g14071446_ _g14091450_))))
                      (_g14071446_ _g14091450_))))
              (_g14071446_ _g14091450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14071446_ _g14091450_))))
                                       (_g14051546_
                                        (lambda (_g14091508_)
                                          (if (gx#stx-pair? _g14091508_)
                                              (let ((_e14121511_
                                                     (gx#syntax-e
                                                      _g14091508_)))
                                                (let ((_hd14131515_
                                                       (##car _e14121511_))
                                                      (_tl14141518_
                                                       (##cdr _e14121511_)))
                                                  (if (gx#stx-pair?
                                                       _tl14141518_)
                                                      (let ((_e14151521_
                                                             (gx#syntax-e
                                                              _tl14141518_)))
                                                        (let ((_hd14161525_
                                                               (##car _e14151521_))
                                                              (_tl14171528_
                                                               (##cdr _e14151521_)))
                                                          (if (gx#stx-null?
                                                               _tl14171528_)
                                                              ((lambda (_L1531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L1533_)
                         (_generate1494_ _hd1402_ _L1533_ '#t _L1531_ _E1404_))
                       _hd14161525_
                       _hd14131515_)
                      (_g14061504_ _g14091508_))))
              (_g14061504_ _g14091508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14061504_ _g14091508_)))))
                                  (_g14051546_ _hd1402_))))
                             (_generate1494_
                              (lambda (_where880_
                                       _hd882_
                                       _fender883_
                                       _body884_
                                       _E885_)
                                (letrec ((_recur887_
                                          (lambda (_hd890_ _tgt892_ _K893_)
                                            (let* ((_g896908_
                                                    (lambda (_g897904_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g897904_)))
                                                   (_g8951175_
                                                    (lambda (_g897912_)
                                                      ((lambda ()
                                                         (if (gx#identifier?
                                                              _hd890_)
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd890_)
                         _K893_
                         (if (find (lambda (_g918920_)
                                     (gx#bound-identifier=? _g918920_ _hd890_))
                                   _kws489_)
                             (let* ((_g924939_
                                     (lambda (_g925935_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g925935_)))
                                    (_g923990_
                                     (lambda (_g925943_)
                                       (if (gx#stx-pair? _g925943_)
                                           (let ((_e928946_
                                                  (gx#syntax-e _g925943_)))
                                             (let ((_hd929950_
                                                    (##car _e928946_))
                                                   (_tl930953_
                                                    (##cdr _e928946_)))
                                               (if (gx#stx-pair? _tl930953_)
                                                   (let ((_e931956_
                                                          (gx#syntax-e
                                                           _tl930953_)))
                                                     (let ((_hd932960_
                                                            (##car _e931956_))
                                                           (_tl933963_
                                                            (##cdr _e931956_)))
                                                       (if (gx#stx-null?
                                                            _tl933963_)
                                                           ((lambda (_L966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L968_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'identifier?)
                                                      (cons _L968_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'core-identifier=?)
                                                            (cons _L968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L966_ '()))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _K893_ (cons _E885_ '()))))))
                    _hd932960_
                    _hd929950_)
                   (_g924939_ _g925943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g924939_ _g925943_))))
                                           (_g924939_ _g925943_)))))
                               (_g923990_ (list _tgt892_ _hd890_)))
                             (let* ((_g9941009_
                                     (lambda (_g9951005_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g9951005_)))
                                    (_g9931053_
                                     (lambda (_g9951013_)
                                       (if (gx#stx-pair? _g9951013_)
                                           (let ((_e9981016_
                                                  (gx#syntax-e _g9951013_)))
                                             (let ((_hd9991020_
                                                    (##car _e9981016_))
                                                   (_tl10001023_
                                                    (##cdr _e9981016_)))
                                               (if (gx#stx-pair? _tl10001023_)
                                                   (let ((_e10011026_
                                                          (gx#syntax-e
                                                           _tl10001023_)))
                                                     (let ((_hd10021030_
                                                            (##car _e10011026_))
                                                           (_tl10031033_
                                                            (##cdr _e10011026_)))
                                                       (if (gx#stx-null?
                                                            _tl10031033_)
                                                           ((lambda (_L1036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1038_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L1036_ (cons _L1038_ '()))
                                          '())
                                    (cons _K893_ '())))))
                    _hd10021030_
                    _hd9991020_)
                   (_g9941009_ _g9951013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9941009_ _g9951013_))))
                                           (_g9941009_ _g9951013_)))))
                               (_g9931053_ (list _tgt892_ _hd890_)))))
                     (if (gx#stx-null? _hd890_)
                         (let* ((_g10571065_
                                 (lambda (_g10581061_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g10581061_)))
                                (_g10561083_
                                 (lambda (_g10581069_)
                                   ((lambda (_L1072_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _L1072_ '()))
                                                    (cons _K893_
                                                          (cons _E885_
                                                                '()))))))
                                    _g10581069_))))
                           (_g10561083_ _tgt892_))
                         (if (gx#stx-datum? _hd890_)
                             (let* ((_g10871106_
                                     (lambda (_g10881102_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g10881102_)))
                                    (_g10861164_
                                     (lambda (_g10881110_)
                                       (if (gx#stx-pair? _g10881110_)
                                           (let ((_e10921113_
                                                  (gx#syntax-e _g10881110_)))
                                             (let ((_hd10931117_
                                                    (##car _e10921113_))
                                                   (_tl10941120_
                                                    (##cdr _e10921113_)))
                                               (if (gx#stx-pair? _tl10941120_)
                                                   (let ((_e10951123_
                                                          (gx#syntax-e
                                                           _tl10941120_)))
                                                     (let ((_hd10961127_
                                                            (##car _e10951123_))
                                                           (_tl10971130_
                                                            (##cdr _e10951123_)))
                                                       (if (gx#stx-pair?
                                                            _tl10971130_)
                                                           (let ((_e10981133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl10971130_)))
                     (let ((_hd10991137_ (##car _e10981133_))
                           (_tl11001140_ (##cdr _e10981133_)))
                       (if (gx#stx-null? _tl11001140_)
                           ((lambda (_L1143_ _L1145_ _L1146_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _L1143_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _L1146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote) (cons _L1145_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _K893_ (cons _E885_ '()))))))
                            _hd10991137_
                            _hd10961127_
                            _hd10931117_)
                           (_g10871106_ _g10881110_))))
                   (_g10871106_ _g10881110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g10871106_ _g10881110_))))
                                           (_g10871106_ _g10881110_)))))
                               (_g10861164_
                                (list _tgt892_
                                      _hd890_
                                      (let ((_e1168_ (gx#stx-e _hd890_)))
                                        (if (let ((_$e1171_
                                                   (keyword? _e1168_)))
                                              (if _$e1171_
                                                  _$e1171_
                                                  (immediate? _e1168_)))
                                            (gx#datum->syntax '#f 'eq?)
                                            (if (number? _e1168_)
                                                (gx#datum->syntax '#f 'eqv?)
                                                (gx#datum->syntax
                                                 '#f
                                                 'equal?)))))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx332_
                              _where880_
                              _hd890_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8941398_
                                                    (lambda (_g8971179_)
                                                      (if (gx#stx-pair?
                                                           _g8971179_)
                                                          (let ((_e9001182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g8971179_)))
                    (let ((_hd9011186_ (##car _e9001182_))
                          (_tl9021189_ (##cdr _e9001182_)))
                      ((lambda (_L1192_ _L1194_)
                         (let* ((_g12051213_
                                 (lambda (_g12061209_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g12061209_)))
                                (_g12041394_
                                 (lambda (_g12061217_)
                                   ((lambda (_L1220_)
                                      (let ()
                                        (let* ((_g12321240_
                                                (lambda (_g12331236_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g12331236_)))
                                               (_g12311390_
                                                (lambda (_g12331244_)
                                                  ((lambda (_L1247_)
                                                     (let ()
                                                       (let* ((_g12601268_
                                                               (lambda (_g12611264_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g12611264_)))
                      (_g12591386_
                       (lambda (_g12611272_)
                         ((lambda (_L1275_)
                            (let ()
                              (let* ((_g12881296_
                                      (lambda (_g12891292_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g12891292_)))
                                     (_g12871382_
                                      (lambda (_g12891300_)
                                        ((lambda (_L1303_)
                                           (let ()
                                             (let* ((_g13161324_
                                                     (lambda (_g13171320_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13171320_)))
                                                    (_g13151378_
                                                     (lambda (_g13171328_)
                                                       ((lambda (_L1331_)
                                                          (let ()
                                                            (let* ((_g13441352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g13451348_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g13451348_)))
                           (_g13431374_
                            (lambda (_g13451356_)
                              ((lambda (_L1359_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-pair?)
                                                       (cons _L1220_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _L1247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-e)
                                                   (cons _L1220_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L1275_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L1247_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L1303_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L1247_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L1331_ '())))
                                 '())))
               (cons _L1359_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _g13451356_))))
                      (_g13431374_ _E885_))))
                _g13171328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13151378_
                                                (_recur887_
                                                 _L1194_
                                                 _L1275_
                                                 (_recur887_
                                                  _L1192_
                                                  _L1303_
                                                  _K893_))))))
                                         _g12891300_))))
                                (_g12871382_ (gx#genident 'tl)))))
                          _g12611272_))))
                 (_g12591386_ (gx#genident 'hd)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g12331244_))))
                                          (_g12311390_ (gx#genident 'e)))))
                                    _g12061217_))))
                           (_g12041394_ _tgt892_)))
                       _tl9021189_
                       _hd9011186_)))
                  (_g8951175_ _g8971179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g8941398_ _hd890_)))))
                                  (_recur887_
                                   _hd882_
                                   _tgt487_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender883_
                                               (cons _body884_
                                                     (cons _E885_ '()))))))))
                             (_generate-clauses495_
                              (lambda (_clauses618_)
                                (let _lp621_ ((_rest624_ _clauses618_)
                                              (_E626_ (gx#genident 'E))
                                              (_r627_ '()))
                                  (let* ((_g630642_
                                          (lambda (_g631638_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g631638_)))
                                         (_g629690_
                                          (lambda (_g631646_)
                                            ((lambda ()
                                               (let* ((_g653661_
                                                       (lambda (_g654657_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g654657_)))
                                                      (_g652686_
                                                       (lambda (_g654665_)
                                                         ((lambda (_L668_)
                                                            (let ()
                                                              (cons (cons _E626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'raise-syntax-error)
                         (cons '#f (cons '"Bad syntax" (cons _L668_ '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _stx332_))
                                        '()))
                            _r627_)))
                  _g654665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g652686_ _tgt487_))))))
                                         (_g628876_
                                          (lambda (_g631694_)
                                            (if (gx#stx-pair? _g631694_)
                                                (let ((_e634697_
                                                       (gx#syntax-e
                                                        _g631694_)))
                                                  (let ((_hd635701_
                                                         (##car _e634697_))
                                                        (_tl636704_
                                                         (##cdr _e634697_)))
                                                    ((lambda (_L707_ _L709_)
                                                       (let* ((_g721732_
                                                               (lambda (_g722728_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error '#f '"Bad syntax" _g722728_)))
                      (_g720844_
                       (lambda (_g722736_)
                         ((lambda ()
                            (let* ((_g743751_
                                    (lambda (_g744747_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g744747_)))
                                   (_g742840_
                                    (lambda (_g744755_)
                                      ((lambda (_L758_)
                                         (let ()
                                           (let* ((_g774782_
                                                   (lambda (_g775778_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g775778_)))
                                                  (_g773836_
                                                   (lambda (_g775786_)
                                                     ((lambda (_L789_)
                                                        (let ()
                                                          (let* ((_g802810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g803806_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g803806_)))
                         (_g801832_
                          (lambda (_g803814_)
                            ((lambda (_L817_)
                               (let ()
                                 (let ()
                                   (_lp621_ _L707_
                                            _L758_
                                            (cons (cons _E626_
                                                        (cons _L817_ '()))
                                                  _r627_)))))
                             _g803814_))))
                    (_g801832_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons '() (cons _L789_ '())))
                      (gx#stx-source _L709_))))))
              _g775786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g773836_
                                              (_generate-clause492_
                                               _L709_
                                               (cons _L758_ '()))))))
                                       _g744755_))))
                              (_g742840_ (gx#genident 'E)))))))
                      (_g719872_
                       (lambda (_g722848_)
                         (if (gx#stx-pair? _g722848_)
                             (let ((_e724851_ (gx#syntax-e _g722848_)))
                               (let ((_hd725855_ (##car _e724851_))
                                     (_tl726858_ (##cdr _e724851_)))
                                 (if (gx#identifier? _hd725855_)
                                     (if (gx#free-identifier=?
                                          |gx[1]#_g2844_|
                                          _hd725855_)
                                         ((lambda (_L861_)
                                            (if (gx#stx-null? _L707_)
                                                (if (if (gx#stx-list? _L861_)
                                                        (not (gx#stx-null?
                                                              _L861_))
                                                        '#f)
                                                    (cons (cons _E626_
                                                                (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       _L861_)
                                                 '())))
                               (gx#stx-source _L709_))
                              '()))
                  _r627_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _stx332_
                                                     _L709_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx332_
                                                 _L709_)))
                                          _tl726858_)
                                         (_g720844_ _g722848_))
                                     (_g720844_ _g722848_))))
                             (_g720844_ _g722848_)))))
                 (_g719872_ _L709_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl636704_
                                                     _hd635701_)))
                                                (_g629690_ _g631694_)))))
                                    (_g628876_ _rest624_))))))
                      (let* ((_bind497_ (_generate-clauses495_ _clauses490_))
                             (_g500517_
                              (lambda (_g501513_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g501513_)))
                             (_g499614_
                              (lambda (_g501521_)
                                (if (gx#stx-pair/null? _g501521_)
                                    (if (fx>= (gx#stx-length _g501521_) '0)
                                        (let ((_g2845_ (gx#syntax-split-splice
                                                        _g501521_
                                                        '0)))
                                          (begin
                                            (let ((_g2846_ (values-count
                                                            _g2845_)))
                                              (if (not (fx= _g2846_ 2))
                                                  (error "Context expects 2 values"
                                                         _g2846_)))
                                            (let ((_target503524_
                                                   (values-ref _g2845_ 0))
                                                  (_tl505527_
                                                   (values-ref _g2845_ 1)))
                                              (if (gx#stx-null? _tl505527_)
                                                  (letrec ((_loop506530_
                                                            (lambda (_hd504534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _bind-try510537_)
                      (if (gx#stx-pair? _hd504534_)
                          (let ((_e507540_ (gx#syntax-e _hd504534_)))
                            (let ((_lp-hd508544_ (##car _e507540_))
                                  (_lp-tl509547_ (##cdr _e507540_)))
                              (_loop506530_
                               _lp-tl509547_
                               (cons _lp-hd508544_ _bind-try510537_))))
                          (let ((_bind-try511550_ (reverse _bind-try510537_)))
                            ((lambda (_L554_)
                               (let ()
                                 (let* ((_g572580_
                                         (lambda (_g573576_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g573576_)))
                                        (_g571610_
                                         (lambda (_g573584_)
                                           ((lambda (_L587_)
                                              (let ()
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let*)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g601604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g602607_)
                                 (cons _g601604_ _g602607_))
                               '()
                               _L554_))
                      (cons (cons _L587_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g573584_))))
                                   (_g571610_ (car (last _bind497_))))))
                             _bind-try511550_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop506530_
                                                     _target503524_
                                                     '()))
                                                  (_g500517_ _g501521_)))))
                                        (_g500517_ _g501521_))
                                    (_g500517_ _g501521_)))))
                        (_g499614_ _bind497_))))))
          (let* ((_g338357_
                  (lambda (_g339353_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g339353_)))
                 (_g337483_
                  (lambda (_g339361_)
                    (if (gx#stx-pair? _g339361_)
                        (let ((_e343364_ (gx#syntax-e _g339361_)))
                          (let ((_hd344368_ (##car _e343364_))
                                (_tl345371_ (##cdr _e343364_)))
                            (if (gx#stx-pair? _tl345371_)
                                (let ((_e346374_ (gx#syntax-e _tl345371_)))
                                  (let ((_hd347378_ (##car _e346374_))
                                        (_tl348381_ (##cdr _e346374_)))
                                    (if (gx#stx-pair? _tl348381_)
                                        (let ((_e349384_
                                               (gx#syntax-e _tl348381_)))
                                          (let ((_hd350388_ (##car _e349384_))
                                                (_tl351391_ (##cdr _e349384_)))
                                            ((lambda (_L394_ _L396_ _L397_)
                                               (if (if (gx#identifier-list?
                                                        _L396_)
                                                       (gx#stx-list? _L394_)
                                                       '#f)
                                                   (let* ((_g418426_
                                                           (lambda (_g419422_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g419422_)))
                                                          (_g417479_
                                                           (lambda (_g419430_)
                                                             ((lambda (_L433_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g445453_
                                  (lambda (_g446449_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g446449_)))
                                 (_g444475_
                                  (lambda (_g446457_)
                                    ((lambda (_L460_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L397_ '()))
                     '())
               (cons _L460_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g446457_))))
                            (_g444475_
                             (_generate335_
                              _L433_
                              (gx#syntax->list _L396_)
                              _L394_)))))
                      _g419430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g417479_
                                                      (gx#genident 'e)))
                                                   (_g338357_ _g339361_)))
                                             _tl351391_
                                             _hd350388_
                                             _hd347378_)))
                                        (_g338357_ _g339361_))))
                                (_g338357_ _g339361_))))
                        (_g338357_ _g339361_)))))
            (_g337483_ _stx332_)))))))
