(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g5042_|
    (##structure
     gx#syntax-quote::t
     'error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5043_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g5044_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g5042_|))
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g5043_|))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx388_)
        (let* ((_g392406_
                (lambda (_g393402_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g393402_)))
               (_g391449_
                (lambda (_g393410_)
                  (if (gx#stx-pair? _g393410_)
                      (let ((_e395413_ (gx#syntax-e _g393410_)))
                        (let ((_hd396417_ (##car _e395413_))
                              (_tl397420_ (##cdr _e395413_)))
                          (if (gx#stx-pair? _tl397420_)
                              (let ((_e398423_ (gx#syntax-e _tl397420_)))
                                (let ((_hd399427_ (##car _e398423_))
                                      (_tl400430_ (##cdr _e398423_)))
                                  (if (gx#stx-null? _tl400430_)
                                      ((lambda (_L433_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _L433_ '()))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"Bad argument; expected procedure"
                               (cons _L433_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd399427_)
                                      (_g392406_ _g393410_))))
                              (_g392406_ _g393410_))))
                      (_g392406_ _g393410_)))))
          (_g391449_ _$stx388_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx453_)
        (letrec ((_generate456_
                  (lambda (_tgt605_ _kws607_ _clauses608_)
                    (letrec ((_generate-clause610_
                              (lambda (_hd1520_ _E1522_)
                                (let* ((___stx49454946_ _hd1520_)
                                       (_g15261553_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx49454946_))))
                                  (let ((___kont49484949_
                                         (lambda (_L1649_ _L1651_)
                                           (_generate1612_
                                            _hd1520_
                                            _L1651_
                                            '#t
                                            _L1649_
                                            _E1522_)))
                                        (___kont49504951_
                                         (lambda (_L1601_ _L1603_ _L1604_)
                                           (_generate1612_
                                            _hd1520_
                                            _L1604_
                                            _L1603_
                                            _L1601_
                                            _E1522_)))
                                        (___kont49524953_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _stx453_
                                            _hd1520_))))
                                    (if (gx#stx-pair? ___stx49454946_)
                                        (let ((_e15301629_
                                               (gx#syntax-e ___stx49454946_)))
                                          (let ((_tl15321636_
                                                 (##cdr _e15301629_))
                                                (_hd15311633_
                                                 (##car _e15301629_)))
                                            (if (gx#stx-pair? _tl15321636_)
                                                (let ((_e15331639_
                                                       (gx#syntax-e
                                                        _tl15321636_)))
                                                  (let ((_tl15351646_
                                                         (##cdr _e15331639_))
                                                        (_hd15341643_
                                                         (##car _e15331639_)))
                                                    (if (gx#stx-null?
                                                         _tl15351646_)
                                                        (___kont49484949_
                                                         _hd15341643_
                                                         _hd15311633_)
                                                        (if (gx#stx-pair?
                                                             _tl15351646_)
                                                            (let ((_e15451591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl15351646_)))
                      (let ((_tl15471598_ (##cdr _e15451591_))
                            (_hd15461595_ (##car _e15451591_)))
                        (if (gx#stx-null? _tl15471598_)
                            (___kont49504951_
                             _hd15461595_
                             _hd15341643_
                             _hd15311633_)
                            (___kont49524953_))))
                    (___kont49524953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont49524953_))))
                                        (___kont49524953_))))))
                             (_generate1612_
                              (lambda (_where998_
                                       _hd1000_
                                       _fender1001_
                                       _body1002_
                                       _E1003_)
                                (letrec ((_recur1005_
                                          (lambda (_hd1008_ _tgt1010_ _K1011_)
                                            (let* ((___stx49914992_ _hd1008_)
                                                   (_g10141026_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx49914992_))))
                                              (let ((___kont49944995_
                                                     (lambda (_L1310_ _L1312_)
                                                       (let* ((_g13231331_
                                                               (lambda (_g13241327_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g13241327_)))
                      (_g13221512_
                       (lambda (_g13241335_)
                         ((lambda (_L1338_)
                            (let ()
                              (let* ((_g13501358_
                                      (lambda (_g13511354_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g13511354_)))
                                     (_g13491508_
                                      (lambda (_g13511362_)
                                        ((lambda (_L1365_)
                                           (let ()
                                             (let* ((_g13781386_
                                                     (lambda (_g13791382_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13791382_)))
                                                    (_g13771504_
                                                     (lambda (_g13791390_)
                                                       ((lambda (_L1393_)
                                                          (let ()
                                                            (let* ((_g14061414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g14071410_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g14071410_)))
                           (_g14051500_
                            (lambda (_g14071418_)
                              ((lambda (_L1421_)
                                 (let ()
                                   (let* ((_g14341442_
                                           (lambda (_g14351438_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g14351438_)))
                                          (_g14331496_
                                           (lambda (_g14351446_)
                                             ((lambda (_L1449_)
                                                (let ()
                                                  (let* ((_g14621470_
                                                          (lambda (_g14631466_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g14631466_)))
                                                         (_g14611492_
                                                          (lambda (_g14631474_)
                                                            ((lambda (_L1477_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                             (cons _L1338_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L1365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                         (cons _L1338_ '()))
                                   '()))
                       '())
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L1393_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _L1365_ '()))
                                                     '()))
                                         (cons (cons _L1421_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _L1365_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons _L1449_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L1477_ '())))))))
                     _g14631474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g14611492_ _E1003_))))
                                              _g14351446_))))
                                     (_g14331496_
                                      (_recur1005_
                                       _L1312_
                                       _L1393_
                                       (_recur1005_
                                        _L1310_
                                        _L1421_
                                        _K1011_))))))
                               _g14071418_))))
                      (_g14051500_ (gx#genident 'tl)))))
                _g13791390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13771504_
                                                (gx#genident 'hd)))))
                                         _g13511362_))))
                                (_g13491508_ (gx#genident 'e)))))
                          _g13241335_))))
                 (_g13221512_ _tgt1010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont49964997_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd1008_)
                                                           (if (gx#underscore?
                                                                _hd1008_)
                                                               _K1011_
                                                               (if (find (lambda (_g10361038_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (gx#bound-identifier=?
                                    _g10361038_
                                    _hd1008_))
                                 _kws607_)
                           (let* ((_g10421057_
                                   (lambda (_g10431053_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g10431053_)))
                                  (_g10411108_
                                   (lambda (_g10431061_)
                                     (if (gx#stx-pair? _g10431061_)
                                         (let ((_e10461064_
                                                (gx#syntax-e _g10431061_)))
                                           (let ((_hd10471068_
                                                  (##car _e10461064_))
                                                 (_tl10481071_
                                                  (##cdr _e10461064_)))
                                             (if (gx#stx-pair? _tl10481071_)
                                                 (let ((_e10491074_
                                                        (gx#syntax-e
                                                         _tl10481071_)))
                                                   (let ((_hd10501078_
                                                          (##car _e10491074_))
                                                         (_tl10511081_
                                                          (##cdr _e10491074_)))
                                                     (if (gx#stx-null?
                                                          _tl10511081_)
                                                         ((lambda (_L1084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L1086_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'identifier?)
                                                    (cons _L1086_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-identifier=?)
                                                          (cons _L1086_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote)
                                    (cons _L1084_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K1011_ (cons _E1003_ '()))))))
                  _hd10501078_
                  _hd10471068_)
                 (_g10421057_ _g10431061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g10421057_ _g10431061_))))
                                         (_g10421057_ _g10431061_)))))
                             (_g10411108_ (list _tgt1010_ _hd1008_)))
                           (let* ((_g11121127_
                                   (lambda (_g11131123_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g11131123_)))
                                  (_g11111171_
                                   (lambda (_g11131131_)
                                     (if (gx#stx-pair? _g11131131_)
                                         (let ((_e11161134_
                                                (gx#syntax-e _g11131131_)))
                                           (let ((_hd11171138_
                                                  (##car _e11161134_))
                                                 (_tl11181141_
                                                  (##cdr _e11161134_)))
                                             (if (gx#stx-pair? _tl11181141_)
                                                 (let ((_e11191144_
                                                        (gx#syntax-e
                                                         _tl11181141_)))
                                                   (let ((_hd11201148_
                                                          (##car _e11191144_))
                                                         (_tl11211151_
                                                          (##cdr _e11191144_)))
                                                     (if (gx#stx-null?
                                                          _tl11211151_)
                                                         ((lambda (_L1154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L1156_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L1154_ (cons _L1156_ '())) '())
                                  (cons _K1011_ '())))))
                  _hd11201148_
                  _hd11171138_)
                 (_g11121127_ _g11131131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11121127_ _g11131131_))))
                                         (_g11121127_ _g11131131_)))))
                             (_g11111171_ (list _tgt1010_ _hd1008_)))))
                   (if (gx#stx-null? _hd1008_)
                       (let* ((_g11751183_
                               (lambda (_g11761179_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g11761179_)))
                              (_g11741201_
                               (lambda (_g11761187_)
                                 ((lambda (_L1190_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'stx-null?)
                                                        (cons _L1190_ '()))
                                                  (cons _K1011_
                                                        (cons _E1003_ '()))))))
                                  _g11761187_))))
                         (_g11741201_ _tgt1010_))
                       (if (gx#stx-datum? _hd1008_)
                           (let* ((_g12051224_
                                   (lambda (_g12061220_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g12061220_)))
                                  (_g12041282_
                                   (lambda (_g12061228_)
                                     (if (gx#stx-pair? _g12061228_)
                                         (let ((_e12101231_
                                                (gx#syntax-e _g12061228_)))
                                           (let ((_hd12111235_
                                                  (##car _e12101231_))
                                                 (_tl12121238_
                                                  (##cdr _e12101231_)))
                                             (if (gx#stx-pair? _tl12121238_)
                                                 (let ((_e12131241_
                                                        (gx#syntax-e
                                                         _tl12121238_)))
                                                   (let ((_hd12141245_
                                                          (##car _e12131241_))
                                                         (_tl12151248_
                                                          (##cdr _e12131241_)))
                                                     (if (gx#stx-pair?
                                                          _tl12151248_)
                                                         (let ((_e12161251_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl12151248_)))
                   (let ((_hd12171255_ (##car _e12161251_))
                         (_tl12181258_ (##cdr _e12161251_)))
                     (if (gx#stx-null? _tl12181258_)
                         ((lambda (_L1261_ _L1263_ _L1264_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons _L1261_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-e)
                                                            (cons _L1264_ '()))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L1263_ '()))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _K1011_ (cons _E1003_ '()))))))
                          _hd12171255_
                          _hd12141245_
                          _hd12111235_)
                         (_g12051224_ _g12061228_))))
                 (_g12051224_ _g12061228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g12051224_ _g12061228_))))
                                         (_g12051224_ _g12061228_)))))
                             (_g12041282_
                              (list _tgt1010_
                                    _hd1008_
                                    (let ((_e1286_ (gx#stx-e _hd1008_)))
                                      (if (or (keyword? _e1286_)
                                              (immediate? _e1286_))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _e1286_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _stx453_
                            _where998_
                            _hd1008_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx49914992_)
                                                    (let ((_e10181300_
                                                           (gx#syntax-e
                                                            ___stx49914992_)))
                                                      (let ((_tl10201307_
                                                             (##cdr _e10181300_))
                                                            (_hd10191304_
                                                             (##car _e10181300_)))
                                                        (___kont49944995_
                                                         _tl10201307_
                                                         _hd10191304_)))
                                                    (___kont49964997_)))))))
                                  (_recur1005_
                                   _hd1000_
                                   _tgt605_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender1001_
                                               (cons _body1002_
                                                     (cons _E1003_ '()))))))))
                             (_generate-clauses613_
                              (lambda (_clauses736_)
                                (let _lp739_ ((_rest742_ _clauses736_)
                                              (_E744_ (gx#genident 'E))
                                              (_r745_ '()))
                                  (let* ((___stx50275028_ _rest742_)
                                         (_g748760_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx50275028_))))
                                    (let ((___kont50305031_
                                           (lambda (_L825_ _L827_)
                                             (let* ((___stx50075008_ _L827_)
                                                    (_g839850_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx50075008_))))
                                               (let ((___kont50105011_
                                                      (lambda (_L979_)
                                                        (if (gx#stx-null?
                                                             _L825_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L979_)
                             (not (gx#stx-null? _L979_)))
                        (cons (cons _E744_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _L979_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _L827_))
                                          '()))
                              _r745_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx453_
                         _L827_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx453_
                     _L827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont50125013_
                                                      (lambda ()
                                                        (let* ((_g861869_
                                                                (lambda (_g862865_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error '#f '"Bad syntax" _g862865_)))
                       (_g860958_
                        (lambda (_g862873_)
                          ((lambda (_L876_)
                             (let ()
                               (let* ((_g892900_
                                       (lambda (_g893896_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g893896_)))
                                      (_g891954_
                                       (lambda (_g893904_)
                                         ((lambda (_L907_)
                                            (let ()
                                              (let* ((_g920928_
                                                      (lambda (_g921924_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g921924_)))
                                                     (_g919950_
                                                      (lambda (_g921932_)
                                                        ((lambda (_L935_)
                                                           (let ()
                                                             (let ()
                                                               (_lp739_ _L825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L876_
                                (cons (cons _E744_ (cons _L935_ '()))
                                      _r745_)))))
                 _g921932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g919950_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _L907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _L827_))))))
                                          _g893904_))))
                                 (_g891954_
                                  (_generate-clause610_
                                   _L827_
                                   (cons _L876_ '()))))))
                           _g862873_))))
                  (_g860958_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx50075008_)
                                                     (let ((_e842969_
                                                            (gx#syntax-e
                                                             ___stx50075008_)))
                                                       (let ((_tl844976_
                                                              (##cdr _e842969_))
                                                             (_hd843973_
                                                              (##car _e842969_)))
                                                         (if (gx#identifier?
                                                              _hd843973_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gx[1]#_g5044_|
                          _hd843973_)
                         (___kont50105011_ _tl844976_)
                         (___kont50125013_))
                     (___kont50125013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont50125013_))))))
                                          (___kont50325033_
                                           (lambda ()
                                             (let* ((_g771779_
                                                     (lambda (_g772775_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g772775_)))
                                                    (_g770804_
                                                     (lambda (_g772783_)
                                                       ((lambda (_L786_)
                                                          (let ()
                                                            (cons (cons _E744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (gx#stx-wrap-source
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '()
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'raise-syntax-error)
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '"Bad syntax" (cons _L786_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _stx453_))
                                      '()))
                          _r745_)))
                _g772783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g770804_ _tgt605_)))))
                                      (if (gx#stx-pair? ___stx50275028_)
                                          (let ((_e752815_
                                                 (gx#syntax-e
                                                  ___stx50275028_)))
                                            (let ((_tl754822_
                                                   (##cdr _e752815_))
                                                  (_hd753819_
                                                   (##car _e752815_)))
                                              (___kont50305031_
                                               _tl754822_
                                               _hd753819_)))
                                          (___kont50325033_))))))))
                      (let* ((_bind615_ (_generate-clauses613_ _clauses608_))
                             (_g618635_
                              (lambda (_g619631_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g619631_)))
                             (_g617732_
                              (lambda (_g619639_)
                                (if (gx#stx-pair/null? _g619639_)
                                    (let ((_g5045_ (gx#syntax-split-splice
                                                    _g619639_
                                                    '0)))
                                      (begin
                                        (let ((_g5046_ (if (##values? _g5045_)
                                                           (##vector-length
                                                            _g5045_)
                                                           1)))
                                          (if (not (##fx= _g5046_ 2))
                                              (error "Context expects 2 values"
                                                     _g5046_)))
                                        (let ((_target621642_
                                               (##vector-ref _g5045_ 0))
                                              (_tl623645_
                                               (##vector-ref _g5045_ 1)))
                                          (if (gx#stx-null? _tl623645_)
                                              (letrec ((_loop624648_
                                                        (lambda (_hd622652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try628655_)
                  (if (gx#stx-pair? _hd622652_)
                      (let ((_e625658_ (gx#syntax-e _hd622652_)))
                        (let ((_lp-hd626662_ (##car _e625658_))
                              (_lp-tl627665_ (##cdr _e625658_)))
                          (_loop624648_
                           _lp-tl627665_
                           (cons _lp-hd626662_ _bind-try628655_))))
                      (let ((_bind-try629668_ (reverse _bind-try628655_)))
                        ((lambda (_L672_)
                           (let ()
                             (let* ((_g690698_
                                     (lambda (_g691694_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g691694_)))
                                    (_g689728_
                                     (lambda (_g691702_)
                                       ((lambda (_L705_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let*)
                                                    (cons (foldr1 (lambda (_g719722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g720725_)
                            (cons _g719722_ _g720725_))
                          '()
                          _L672_)
                  (cons (cons _L705_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g691702_))))
                               (_g689728_ (car (last _bind615_))))))
                         _bind-try629668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop624648_
                                                 _target621642_
                                                 '()))
                                              (_g618635_ _g619639_)))))
                                    (_g618635_ _g619639_)))))
                        (_g617732_ _bind615_))))))
          (let* ((_g459478_
                  (lambda (_g460474_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g460474_)))
                 (_g458601_
                  (lambda (_g460482_)
                    (if (gx#stx-pair? _g460482_)
                        (let ((_e464485_ (gx#syntax-e _g460482_)))
                          (let ((_hd465489_ (##car _e464485_))
                                (_tl466492_ (##cdr _e464485_)))
                            (if (gx#stx-pair? _tl466492_)
                                (let ((_e467495_ (gx#syntax-e _tl466492_)))
                                  (let ((_hd468499_ (##car _e467495_))
                                        (_tl469502_ (##cdr _e467495_)))
                                    (if (gx#stx-pair? _tl469502_)
                                        (let ((_e470505_
                                               (gx#syntax-e _tl469502_)))
                                          (let ((_hd471509_ (##car _e470505_))
                                                (_tl472512_ (##cdr _e470505_)))
                                            ((lambda (_L515_ _L517_ _L518_)
                                               (if (and (gx#identifier-list?
                                                         _L517_)
                                                        (gx#stx-list? _L515_))
                                                   (let* ((_g536544_
                                                           (lambda (_g537540_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g537540_)))
                                                          (_g535597_
                                                           (lambda (_g537548_)
                                                             ((lambda (_L551_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g563571_
                                  (lambda (_g564567_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g564567_)))
                                 (_g562593_
                                  (lambda (_g564575_)
                                    ((lambda (_L578_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L518_ '()))
                     '())
               (cons _L578_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g564575_))))
                            (_g562593_
                             (_generate456_
                              _L551_
                              (gx#syntax->list _L517_)
                              _L515_)))))
                      _g537548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g535597_
                                                      (gx#genident 'e)))
                                                   (_g459478_ _g460482_)))
                                             _tl472512_
                                             _hd471509_
                                             _hd468499_)))
                                        (_g459478_ _g460482_))))
                                (_g459478_ _g460482_))))
                        (_g459478_ _g460482_)))))
            (_g458601_ _stx453_)))))))
