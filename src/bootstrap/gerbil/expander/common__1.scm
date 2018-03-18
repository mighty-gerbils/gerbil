(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g3522_|
    (gx#make-syntax-quote 'error::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g3523_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g3524_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g3522_|))
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g3523_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx390_)
        (letrec ((_generate393_
                  (lambda (_tgt544_ _kws546_ _clauses547_)
                    (letrec ((_generate-clause549_
                              (lambda (_hd1459_ _E1461_)
                                (let* ((_g14651492_
                                        (lambda (_g14661488_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g14661488_)))
                                       (_g14641503_
                                        (lambda (_g14661496_)
                                          ((lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _stx390_
                                              _hd1459_)))))
                                       (_g14631561_
                                        (lambda (_g14661507_)
                                          (if (gx#stx-pair? _g14661507_)
                                              (let ((_e14781510_
                                                     (gx#syntax-e
                                                      _g14661507_)))
                                                (let ((_hd14791514_
                                                       (##car _e14781510_))
                                                      (_tl14801517_
                                                       (##cdr _e14781510_)))
                                                  (if (gx#stx-pair?
                                                       _tl14801517_)
                                                      (let ((_e14811520_
                                                             (gx#syntax-e
                                                              _tl14801517_)))
                                                        (let ((_hd14821524_
                                                               (##car _e14811520_))
                                                              (_tl14831527_
                                                               (##cdr _e14811520_)))
                                                          (if (gx#stx-pair?
                                                               _tl14831527_)
                                                              (let ((_e14841530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl14831527_)))
                        (let ((_hd14851534_ (##car _e14841530_))
                              (_tl14861537_ (##cdr _e14841530_)))
                          (if (gx#stx-null? _tl14861537_)
                              ((lambda (_L1540_ _L1542_ _L1543_)
                                 (_generate1551_
                                  _hd1459_
                                  _L1543_
                                  _L1542_
                                  _L1540_
                                  _E1461_))
                               _hd14851534_
                               _hd14821524_
                               _hd14791514_)
                              (_g14641503_ _g14661507_))))
                      (_g14641503_ _g14661507_))))
              (_g14641503_ _g14661507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14641503_ _g14661507_))))
                                       (_g14621603_
                                        (lambda (_g14661565_)
                                          (if (gx#stx-pair? _g14661565_)
                                              (let ((_e14691568_
                                                     (gx#syntax-e
                                                      _g14661565_)))
                                                (let ((_hd14701572_
                                                       (##car _e14691568_))
                                                      (_tl14711575_
                                                       (##cdr _e14691568_)))
                                                  (if (gx#stx-pair?
                                                       _tl14711575_)
                                                      (let ((_e14721578_
                                                             (gx#syntax-e
                                                              _tl14711575_)))
                                                        (let ((_hd14731582_
                                                               (##car _e14721578_))
                                                              (_tl14741585_
                                                               (##cdr _e14721578_)))
                                                          (if (gx#stx-null?
                                                               _tl14741585_)
                                                              ((lambda (_L1588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L1590_)
                         (_generate1551_ _hd1459_ _L1590_ '#t _L1588_ _E1461_))
                       _hd14731582_
                       _hd14701572_)
                      (_g14631561_ _g14661565_))))
              (_g14631561_ _g14661565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14631561_ _g14661565_)))))
                                  (_g14621603_ _hd1459_))))
                             (_generate1551_
                              (lambda (_where937_
                                       _hd939_
                                       _fender940_
                                       _body941_
                                       _E942_)
                                (letrec ((_recur944_
                                          (lambda (_hd947_ _tgt949_ _K950_)
                                            (let* ((_g953965_
                                                    (lambda (_g954961_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g954961_)))
                                                   (_g9521232_
                                                    (lambda (_g954969_)
                                                      ((lambda ()
                                                         (if (gx#identifier?
                                                              _hd947_)
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd947_)
                         _K950_
                         (if (find (lambda (_g975977_)
                                     (gx#bound-identifier=? _g975977_ _hd947_))
                                   _kws546_)
                             (let* ((_g981996_
                                     (lambda (_g982992_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g982992_)))
                                    (_g9801047_
                                     (lambda (_g9821000_)
                                       (if (gx#stx-pair? _g9821000_)
                                           (let ((_e9851003_
                                                  (gx#syntax-e _g9821000_)))
                                             (let ((_hd9861007_
                                                    (##car _e9851003_))
                                                   (_tl9871010_
                                                    (##cdr _e9851003_)))
                                               (if (gx#stx-pair? _tl9871010_)
                                                   (let ((_e9881013_
                                                          (gx#syntax-e
                                                           _tl9871010_)))
                                                     (let ((_hd9891017_
                                                            (##car _e9881013_))
                                                           (_tl9901020_
                                                            (##cdr _e9881013_)))
                                                       (if (gx#stx-null?
                                                            _tl9901020_)
                                                           ((lambda (_L1023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1025_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'identifier?)
                                                      (cons _L1025_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'core-identifier=?)
                                                            (cons _L1025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L1023_ '()))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _K950_ (cons _E942_ '()))))))
                    _hd9891017_
                    _hd9861007_)
                   (_g981996_ _g9821000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g981996_ _g9821000_))))
                                           (_g981996_ _g9821000_)))))
                               (_g9801047_ (list _tgt949_ _hd947_)))
                             (let* ((_g10511066_
                                     (lambda (_g10521062_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g10521062_)))
                                    (_g10501110_
                                     (lambda (_g10521070_)
                                       (if (gx#stx-pair? _g10521070_)
                                           (let ((_e10551073_
                                                  (gx#syntax-e _g10521070_)))
                                             (let ((_hd10561077_
                                                    (##car _e10551073_))
                                                   (_tl10571080_
                                                    (##cdr _e10551073_)))
                                               (if (gx#stx-pair? _tl10571080_)
                                                   (let ((_e10581083_
                                                          (gx#syntax-e
                                                           _tl10571080_)))
                                                     (let ((_hd10591087_
                                                            (##car _e10581083_))
                                                           (_tl10601090_
                                                            (##cdr _e10581083_)))
                                                       (if (gx#stx-null?
                                                            _tl10601090_)
                                                           ((lambda (_L1093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1095_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L1093_ (cons _L1095_ '()))
                                          '())
                                    (cons _K950_ '())))))
                    _hd10591087_
                    _hd10561077_)
                   (_g10511066_ _g10521070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g10511066_ _g10521070_))))
                                           (_g10511066_ _g10521070_)))))
                               (_g10501110_ (list _tgt949_ _hd947_)))))
                     (if (gx#stx-null? _hd947_)
                         (let* ((_g11141122_
                                 (lambda (_g11151118_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g11151118_)))
                                (_g11131140_
                                 (lambda (_g11151126_)
                                   ((lambda (_L1129_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _L1129_ '()))
                                                    (cons _K950_
                                                          (cons _E942_
                                                                '()))))))
                                    _g11151126_))))
                           (_g11131140_ _tgt949_))
                         (if (gx#stx-datum? _hd947_)
                             (let* ((_g11441163_
                                     (lambda (_g11451159_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g11451159_)))
                                    (_g11431221_
                                     (lambda (_g11451167_)
                                       (if (gx#stx-pair? _g11451167_)
                                           (let ((_e11491170_
                                                  (gx#syntax-e _g11451167_)))
                                             (let ((_hd11501174_
                                                    (##car _e11491170_))
                                                   (_tl11511177_
                                                    (##cdr _e11491170_)))
                                               (if (gx#stx-pair? _tl11511177_)
                                                   (let ((_e11521180_
                                                          (gx#syntax-e
                                                           _tl11511177_)))
                                                     (let ((_hd11531184_
                                                            (##car _e11521180_))
                                                           (_tl11541187_
                                                            (##cdr _e11521180_)))
                                                       (if (gx#stx-pair?
                                                            _tl11541187_)
                                                           (let ((_e11551190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl11541187_)))
                     (let ((_hd11561194_ (##car _e11551190_))
                           (_tl11571197_ (##cdr _e11551190_)))
                       (if (gx#stx-null? _tl11571197_)
                           ((lambda (_L1200_ _L1202_ _L1203_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _L1200_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _L1203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote) (cons _L1202_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _K950_ (cons _E942_ '()))))))
                            _hd11561194_
                            _hd11531184_
                            _hd11501174_)
                           (_g11441163_ _g11451167_))))
                   (_g11441163_ _g11451167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11441163_ _g11451167_))))
                                           (_g11441163_ _g11451167_)))))
                               (_g11431221_
                                (list _tgt949_
                                      _hd947_
                                      (let ((_e1225_ (gx#stx-e _hd947_)))
                                        (if (let ((_$e1228_
                                                   (keyword? _e1225_)))
                                              (if _$e1228_
                                                  _$e1228_
                                                  (immediate? _e1225_)))
                                            (gx#datum->syntax '#f 'eq?)
                                            (if (number? _e1225_)
                                                (gx#datum->syntax '#f 'eqv?)
                                                (gx#datum->syntax
                                                 '#f
                                                 'equal?)))))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx390_
                              _where937_
                              _hd947_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9511455_
                                                    (lambda (_g9541236_)
                                                      (if (gx#stx-pair?
                                                           _g9541236_)
                                                          (let ((_e9571239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g9541236_)))
                    (let ((_hd9581243_ (##car _e9571239_))
                          (_tl9591246_ (##cdr _e9571239_)))
                      ((lambda (_L1249_ _L1251_)
                         (let* ((_g12621270_
                                 (lambda (_g12631266_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g12631266_)))
                                (_g12611451_
                                 (lambda (_g12631274_)
                                   ((lambda (_L1277_)
                                      (let ()
                                        (let* ((_g12891297_
                                                (lambda (_g12901293_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g12901293_)))
                                               (_g12881447_
                                                (lambda (_g12901301_)
                                                  ((lambda (_L1304_)
                                                     (let ()
                                                       (let* ((_g13171325_
                                                               (lambda (_g13181321_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g13181321_)))
                      (_g13161443_
                       (lambda (_g13181329_)
                         ((lambda (_L1332_)
                            (let ()
                              (let* ((_g13451353_
                                      (lambda (_g13461349_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g13461349_)))
                                     (_g13441439_
                                      (lambda (_g13461357_)
                                        ((lambda (_L1360_)
                                           (let ()
                                             (let* ((_g13731381_
                                                     (lambda (_g13741377_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13741377_)))
                                                    (_g13721435_
                                                     (lambda (_g13741385_)
                                                       ((lambda (_L1388_)
                                                          (let ()
                                                            (let* ((_g14011409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g14021405_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g14021405_)))
                           (_g14001431_
                            (lambda (_g14021413_)
                              ((lambda (_L1416_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-pair?)
                                                       (cons _L1277_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _L1304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-e)
                                                   (cons _L1277_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L1332_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L1304_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L1360_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L1304_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L1388_ '())))
                                 '())))
               (cons _L1416_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _g14021413_))))
                      (_g14001431_ _E942_))))
                _g13741385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13721435_
                                                (_recur944_
                                                 _L1251_
                                                 _L1332_
                                                 (_recur944_
                                                  _L1249_
                                                  _L1360_
                                                  _K950_))))))
                                         _g13461357_))))
                                (_g13441439_ (gx#genident 'tl)))))
                          _g13181329_))))
                 (_g13161443_ (gx#genident 'hd)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g12901301_))))
                                          (_g12881447_ (gx#genident 'e)))))
                                    _g12631274_))))
                           (_g12611451_ _tgt949_)))
                       _tl9591246_
                       _hd9581243_)))
                  (_g9521232_ _g9541236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g9511455_ _hd947_)))))
                                  (_recur944_
                                   _hd939_
                                   _tgt544_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender940_
                                               (cons _body941_
                                                     (cons _E942_ '()))))))))
                             (_generate-clauses552_
                              (lambda (_clauses675_)
                                (let _lp678_ ((_rest681_ _clauses675_)
                                              (_E683_ (gx#genident 'E))
                                              (_r684_ '()))
                                  (let* ((_g687699_
                                          (lambda (_g688695_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g688695_)))
                                         (_g686747_
                                          (lambda (_g688703_)
                                            ((lambda ()
                                               (let* ((_g710718_
                                                       (lambda (_g711714_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g711714_)))
                                                      (_g709743_
                                                       (lambda (_g711722_)
                                                         ((lambda (_L725_)
                                                            (let ()
                                                              (cons (cons _E683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'raise-syntax-error)
                         (cons '#f (cons '"Bad syntax" (cons _L725_ '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _stx390_))
                                        '()))
                            _r684_)))
                  _g711722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g709743_ _tgt544_))))))
                                         (_g685933_
                                          (lambda (_g688751_)
                                            (if (gx#stx-pair? _g688751_)
                                                (let ((_e691754_
                                                       (gx#syntax-e
                                                        _g688751_)))
                                                  (let ((_hd692758_
                                                         (##car _e691754_))
                                                        (_tl693761_
                                                         (##cdr _e691754_)))
                                                    ((lambda (_L764_ _L766_)
                                                       (let* ((_g778789_
                                                               (lambda (_g779785_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error '#f '"Bad syntax" _g779785_)))
                      (_g777901_
                       (lambda (_g779793_)
                         ((lambda ()
                            (let* ((_g800808_
                                    (lambda (_g801804_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g801804_)))
                                   (_g799897_
                                    (lambda (_g801812_)
                                      ((lambda (_L815_)
                                         (let ()
                                           (let* ((_g831839_
                                                   (lambda (_g832835_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g832835_)))
                                                  (_g830893_
                                                   (lambda (_g832843_)
                                                     ((lambda (_L846_)
                                                        (let ()
                                                          (let* ((_g859867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g860863_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g860863_)))
                         (_g858889_
                          (lambda (_g860871_)
                            ((lambda (_L874_)
                               (let ()
                                 (let ()
                                   (_lp678_ _L764_
                                            _L815_
                                            (cons (cons _E683_
                                                        (cons _L874_ '()))
                                                  _r684_)))))
                             _g860871_))))
                    (_g858889_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons '() (cons _L846_ '())))
                      (gx#stx-source _L766_))))))
              _g832843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g830893_
                                              (_generate-clause549_
                                               _L766_
                                               (cons _L815_ '()))))))
                                       _g801812_))))
                              (_g799897_ (gx#genident 'E)))))))
                      (_g776929_
                       (lambda (_g779905_)
                         (if (gx#stx-pair? _g779905_)
                             (let ((_e781908_ (gx#syntax-e _g779905_)))
                               (let ((_hd782912_ (##car _e781908_))
                                     (_tl783915_ (##cdr _e781908_)))
                                 (if (gx#identifier? _hd782912_)
                                     (if (gx#free-identifier=?
                                          |gx[1]#_g3524_|
                                          _hd782912_)
                                         ((lambda (_L918_)
                                            (if (gx#stx-null? _L764_)
                                                (if (if (gx#stx-list? _L918_)
                                                        (not (gx#stx-null?
                                                              _L918_))
                                                        '#f)
                                                    (cons (cons _E683_
                                                                (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       _L918_)
                                                 '())))
                               (gx#stx-source _L766_))
                              '()))
                  _r684_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _stx390_
                                                     _L766_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx390_
                                                 _L766_)))
                                          _tl783915_)
                                         (_g777901_ _g779905_))
                                     (_g777901_ _g779905_))))
                             (_g777901_ _g779905_)))))
                 (_g776929_ _L766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl693761_
                                                     _hd692758_)))
                                                (_g686747_ _g688751_)))))
                                    (_g685933_ _rest681_))))))
                      (let* ((_bind554_ (_generate-clauses552_ _clauses547_))
                             (_g557574_
                              (lambda (_g558570_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g558570_)))
                             (_g556671_
                              (lambda (_g558578_)
                                (if (gx#stx-pair/null? _g558578_)
                                    (if (fx>= (gx#stx-length _g558578_) '0)
                                        (let ((_g3525_ (gx#syntax-split-splice
                                                        _g558578_
                                                        '0)))
                                          (begin
                                            (let ((_g3526_ (if (##values?
                                                                _g3525_)
                                                               (##vector-length
                                                                _g3525_)
                                                               1)))
                                              (if (not (##fx= _g3526_ 2))
                                                  (error "Context expects 2 values"
                                                         _g3526_)))
                                            (let ((_target560581_
                                                   (##vector-ref _g3525_ 0))
                                                  (_tl562584_
                                                   (##vector-ref _g3525_ 1)))
                                              (if (gx#stx-null? _tl562584_)
                                                  (letrec ((_loop563587_
                                                            (lambda (_hd561591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _bind-try567594_)
                      (if (gx#stx-pair? _hd561591_)
                          (let ((_e564597_ (gx#syntax-e _hd561591_)))
                            (let ((_lp-hd565601_ (##car _e564597_))
                                  (_lp-tl566604_ (##cdr _e564597_)))
                              (_loop563587_
                               _lp-tl566604_
                               (cons _lp-hd565601_ _bind-try567594_))))
                          (let ((_bind-try568607_ (reverse _bind-try567594_)))
                            ((lambda (_L611_)
                               (let ()
                                 (let* ((_g629637_
                                         (lambda (_g630633_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g630633_)))
                                        (_g628667_
                                         (lambda (_g630641_)
                                           ((lambda (_L644_)
                                              (let ()
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let*)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g658661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g659664_)
                                 (cons _g658661_ _g659664_))
                               '()
                               _L611_))
                      (cons (cons _L644_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g630641_))))
                                   (_g628667_ (car (last _bind554_))))))
                             _bind-try568607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop563587_
                                                     _target560581_
                                                     '()))
                                                  (_g557574_ _g558578_)))))
                                        (_g557574_ _g558578_))
                                    (_g557574_ _g558578_)))))
                        (_g556671_ _bind554_))))))
          (let* ((_g396415_
                  (lambda (_g397411_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g397411_)))
                 (_g395540_
                  (lambda (_g397419_)
                    (if (gx#stx-pair? _g397419_)
                        (let ((_e401422_ (gx#syntax-e _g397419_)))
                          (let ((_hd402426_ (##car _e401422_))
                                (_tl403429_ (##cdr _e401422_)))
                            (if (gx#stx-pair? _tl403429_)
                                (let ((_e404432_ (gx#syntax-e _tl403429_)))
                                  (let ((_hd405436_ (##car _e404432_))
                                        (_tl406439_ (##cdr _e404432_)))
                                    (if (gx#stx-pair? _tl406439_)
                                        (let ((_e407442_
                                               (gx#syntax-e _tl406439_)))
                                          (let ((_hd408446_ (##car _e407442_))
                                                (_tl409449_ (##cdr _e407442_)))
                                            ((lambda (_L452_ _L454_ _L455_)
                                               (if (if (gx#identifier-list?
                                                        _L454_)
                                                       (gx#stx-list? _L452_)
                                                       '#f)
                                                   (let* ((_g475483_
                                                           (lambda (_g476479_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g476479_)))
                                                          (_g474536_
                                                           (lambda (_g476487_)
                                                             ((lambda (_L490_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g502510_
                                  (lambda (_g503506_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g503506_)))
                                 (_g501532_
                                  (lambda (_g503514_)
                                    ((lambda (_L517_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L455_ '()))
                     '())
               (cons _L517_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g503514_))))
                            (_g501532_
                             (_generate393_
                              _L490_
                              (gx#syntax->list _L454_)
                              _L452_)))))
                      _g476487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g474536_
                                                      (gx#genident 'e)))
                                                   (_g396415_ _g397419_)))
                                             _tl409449_
                                             _hd408446_
                                             _hd405436_)))
                                        (_g396415_ _g397419_))))
                                (_g396415_ _g397419_))))
                        (_g396415_ _g397419_)))))
            (_g395540_ _stx390_)))))))
