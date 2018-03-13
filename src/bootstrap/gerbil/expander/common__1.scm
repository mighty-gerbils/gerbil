(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g3521_|
    (gx#make-syntax-quote 'error::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g3522_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g3523_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g3521_|))
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g3522_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx389_)
        (letrec ((_generate392_
                  (lambda (_tgt543_ _kws545_ _clauses546_)
                    (letrec ((_generate-clause548_
                              (lambda (_hd1458_ _E1460_)
                                (let* ((_g14641491_
                                        (lambda (_g14651487_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g14651487_)))
                                       (_g14631502_
                                        (lambda (_g14651495_)
                                          ((lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _stx389_
                                              _hd1458_)))))
                                       (_g14621560_
                                        (lambda (_g14651506_)
                                          (if (gx#stx-pair? _g14651506_)
                                              (let ((_e14771509_
                                                     (gx#syntax-e
                                                      _g14651506_)))
                                                (let ((_hd14781513_
                                                       (##car _e14771509_))
                                                      (_tl14791516_
                                                       (##cdr _e14771509_)))
                                                  (if (gx#stx-pair?
                                                       _tl14791516_)
                                                      (let ((_e14801519_
                                                             (gx#syntax-e
                                                              _tl14791516_)))
                                                        (let ((_hd14811523_
                                                               (##car _e14801519_))
                                                              (_tl14821526_
                                                               (##cdr _e14801519_)))
                                                          (if (gx#stx-pair?
                                                               _tl14821526_)
                                                              (let ((_e14831529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl14821526_)))
                        (let ((_hd14841533_ (##car _e14831529_))
                              (_tl14851536_ (##cdr _e14831529_)))
                          (if (gx#stx-null? _tl14851536_)
                              ((lambda (_L1539_ _L1541_ _L1542_)
                                 (_generate1550_
                                  _hd1458_
                                  _L1542_
                                  _L1541_
                                  _L1539_
                                  _E1460_))
                               _hd14841533_
                               _hd14811523_
                               _hd14781513_)
                              (_g14631502_ _g14651506_))))
                      (_g14631502_ _g14651506_))))
              (_g14631502_ _g14651506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14631502_ _g14651506_))))
                                       (_g14611602_
                                        (lambda (_g14651564_)
                                          (if (gx#stx-pair? _g14651564_)
                                              (let ((_e14681567_
                                                     (gx#syntax-e
                                                      _g14651564_)))
                                                (let ((_hd14691571_
                                                       (##car _e14681567_))
                                                      (_tl14701574_
                                                       (##cdr _e14681567_)))
                                                  (if (gx#stx-pair?
                                                       _tl14701574_)
                                                      (let ((_e14711577_
                                                             (gx#syntax-e
                                                              _tl14701574_)))
                                                        (let ((_hd14721581_
                                                               (##car _e14711577_))
                                                              (_tl14731584_
                                                               (##cdr _e14711577_)))
                                                          (if (gx#stx-null?
                                                               _tl14731584_)
                                                              ((lambda (_L1587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L1589_)
                         (_generate1550_ _hd1458_ _L1589_ '#t _L1587_ _E1460_))
                       _hd14721581_
                       _hd14691571_)
                      (_g14621560_ _g14651564_))))
              (_g14621560_ _g14651564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14621560_ _g14651564_)))))
                                  (_g14611602_ _hd1458_))))
                             (_generate1550_
                              (lambda (_where936_
                                       _hd938_
                                       _fender939_
                                       _body940_
                                       _E941_)
                                (letrec ((_recur943_
                                          (lambda (_hd946_ _tgt948_ _K949_)
                                            (let* ((_g952964_
                                                    (lambda (_g953960_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g953960_)))
                                                   (_g9511231_
                                                    (lambda (_g953968_)
                                                      ((lambda ()
                                                         (if (gx#identifier?
                                                              _hd946_)
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd946_)
                         _K949_
                         (if (find (lambda (_g974976_)
                                     (gx#bound-identifier=? _g974976_ _hd946_))
                                   _kws545_)
                             (let* ((_g980995_
                                     (lambda (_g981991_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g981991_)))
                                    (_g9791046_
                                     (lambda (_g981999_)
                                       (if (gx#stx-pair? _g981999_)
                                           (let ((_e9841002_
                                                  (gx#syntax-e _g981999_)))
                                             (let ((_hd9851006_
                                                    (##car _e9841002_))
                                                   (_tl9861009_
                                                    (##cdr _e9841002_)))
                                               (if (gx#stx-pair? _tl9861009_)
                                                   (let ((_e9871012_
                                                          (gx#syntax-e
                                                           _tl9861009_)))
                                                     (let ((_hd9881016_
                                                            (##car _e9871012_))
                                                           (_tl9891019_
                                                            (##cdr _e9871012_)))
                                                       (if (gx#stx-null?
                                                            _tl9891019_)
                                                           ((lambda (_L1022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1024_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'identifier?)
                                                      (cons _L1024_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'core-identifier=?)
                                                            (cons _L1024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L1022_ '()))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _K949_ (cons _E941_ '()))))))
                    _hd9881016_
                    _hd9851006_)
                   (_g980995_ _g981999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g980995_ _g981999_))))
                                           (_g980995_ _g981999_)))))
                               (_g9791046_ (list _tgt948_ _hd946_)))
                             (let* ((_g10501065_
                                     (lambda (_g10511061_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g10511061_)))
                                    (_g10491109_
                                     (lambda (_g10511069_)
                                       (if (gx#stx-pair? _g10511069_)
                                           (let ((_e10541072_
                                                  (gx#syntax-e _g10511069_)))
                                             (let ((_hd10551076_
                                                    (##car _e10541072_))
                                                   (_tl10561079_
                                                    (##cdr _e10541072_)))
                                               (if (gx#stx-pair? _tl10561079_)
                                                   (let ((_e10571082_
                                                          (gx#syntax-e
                                                           _tl10561079_)))
                                                     (let ((_hd10581086_
                                                            (##car _e10571082_))
                                                           (_tl10591089_
                                                            (##cdr _e10571082_)))
                                                       (if (gx#stx-null?
                                                            _tl10591089_)
                                                           ((lambda (_L1092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1094_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L1092_ (cons _L1094_ '()))
                                          '())
                                    (cons _K949_ '())))))
                    _hd10581086_
                    _hd10551076_)
                   (_g10501065_ _g10511069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g10501065_ _g10511069_))))
                                           (_g10501065_ _g10511069_)))))
                               (_g10491109_ (list _tgt948_ _hd946_)))))
                     (if (gx#stx-null? _hd946_)
                         (let* ((_g11131121_
                                 (lambda (_g11141117_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g11141117_)))
                                (_g11121139_
                                 (lambda (_g11141125_)
                                   ((lambda (_L1128_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _L1128_ '()))
                                                    (cons _K949_
                                                          (cons _E941_
                                                                '()))))))
                                    _g11141125_))))
                           (_g11121139_ _tgt948_))
                         (if (gx#stx-datum? _hd946_)
                             (let* ((_g11431162_
                                     (lambda (_g11441158_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g11441158_)))
                                    (_g11421220_
                                     (lambda (_g11441166_)
                                       (if (gx#stx-pair? _g11441166_)
                                           (let ((_e11481169_
                                                  (gx#syntax-e _g11441166_)))
                                             (let ((_hd11491173_
                                                    (##car _e11481169_))
                                                   (_tl11501176_
                                                    (##cdr _e11481169_)))
                                               (if (gx#stx-pair? _tl11501176_)
                                                   (let ((_e11511179_
                                                          (gx#syntax-e
                                                           _tl11501176_)))
                                                     (let ((_hd11521183_
                                                            (##car _e11511179_))
                                                           (_tl11531186_
                                                            (##cdr _e11511179_)))
                                                       (if (gx#stx-pair?
                                                            _tl11531186_)
                                                           (let ((_e11541189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl11531186_)))
                     (let ((_hd11551193_ (##car _e11541189_))
                           (_tl11561196_ (##cdr _e11541189_)))
                       (if (gx#stx-null? _tl11561196_)
                           ((lambda (_L1199_ _L1201_ _L1202_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _L1199_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _L1202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote) (cons _L1201_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _K949_ (cons _E941_ '()))))))
                            _hd11551193_
                            _hd11521183_
                            _hd11491173_)
                           (_g11431162_ _g11441166_))))
                   (_g11431162_ _g11441166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11431162_ _g11441166_))))
                                           (_g11431162_ _g11441166_)))))
                               (_g11421220_
                                (list _tgt948_
                                      _hd946_
                                      (let ((_e1224_ (gx#stx-e _hd946_)))
                                        (if (let ((_$e1227_
                                                   (keyword? _e1224_)))
                                              (if _$e1227_
                                                  _$e1227_
                                                  (immediate? _e1224_)))
                                            (gx#datum->syntax '#f 'eq?)
                                            (if (number? _e1224_)
                                                (gx#datum->syntax '#f 'eqv?)
                                                (gx#datum->syntax
                                                 '#f
                                                 'equal?)))))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx389_
                              _where936_
                              _hd946_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9501454_
                                                    (lambda (_g9531235_)
                                                      (if (gx#stx-pair?
                                                           _g9531235_)
                                                          (let ((_e9561238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g9531235_)))
                    (let ((_hd9571242_ (##car _e9561238_))
                          (_tl9581245_ (##cdr _e9561238_)))
                      ((lambda (_L1248_ _L1250_)
                         (let* ((_g12611269_
                                 (lambda (_g12621265_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g12621265_)))
                                (_g12601450_
                                 (lambda (_g12621273_)
                                   ((lambda (_L1276_)
                                      (let ()
                                        (let* ((_g12881296_
                                                (lambda (_g12891292_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g12891292_)))
                                               (_g12871446_
                                                (lambda (_g12891300_)
                                                  ((lambda (_L1303_)
                                                     (let ()
                                                       (let* ((_g13161324_
                                                               (lambda (_g13171320_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g13171320_)))
                      (_g13151442_
                       (lambda (_g13171328_)
                         ((lambda (_L1331_)
                            (let ()
                              (let* ((_g13441352_
                                      (lambda (_g13451348_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g13451348_)))
                                     (_g13431438_
                                      (lambda (_g13451356_)
                                        ((lambda (_L1359_)
                                           (let ()
                                             (let* ((_g13721380_
                                                     (lambda (_g13731376_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13731376_)))
                                                    (_g13711434_
                                                     (lambda (_g13731384_)
                                                       ((lambda (_L1387_)
                                                          (let ()
                                                            (let* ((_g14001408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g14011404_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g14011404_)))
                           (_g13991430_
                            (lambda (_g14011412_)
                              ((lambda (_L1415_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-pair?)
                                                       (cons _L1276_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _L1303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-e)
                                                   (cons _L1276_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L1331_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L1303_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L1359_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L1303_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L1387_ '())))
                                 '())))
               (cons _L1415_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _g14011412_))))
                      (_g13991430_ _E941_))))
                _g13731384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13711434_
                                                (_recur943_
                                                 _L1250_
                                                 _L1331_
                                                 (_recur943_
                                                  _L1248_
                                                  _L1359_
                                                  _K949_))))))
                                         _g13451356_))))
                                (_g13431438_ (gx#genident 'tl)))))
                          _g13171328_))))
                 (_g13151442_ (gx#genident 'hd)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g12891300_))))
                                          (_g12871446_ (gx#genident 'e)))))
                                    _g12621273_))))
                           (_g12601450_ _tgt948_)))
                       _tl9581245_
                       _hd9571242_)))
                  (_g9511231_ _g9531235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g9501454_ _hd946_)))))
                                  (_recur943_
                                   _hd938_
                                   _tgt543_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender939_
                                               (cons _body940_
                                                     (cons _E941_ '()))))))))
                             (_generate-clauses551_
                              (lambda (_clauses674_)
                                (let _lp677_ ((_rest680_ _clauses674_)
                                              (_E682_ (gx#genident 'E))
                                              (_r683_ '()))
                                  (let* ((_g686698_
                                          (lambda (_g687694_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g687694_)))
                                         (_g685746_
                                          (lambda (_g687702_)
                                            ((lambda ()
                                               (let* ((_g709717_
                                                       (lambda (_g710713_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g710713_)))
                                                      (_g708742_
                                                       (lambda (_g710721_)
                                                         ((lambda (_L724_)
                                                            (let ()
                                                              (cons (cons _E682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'raise-syntax-error)
                         (cons '#f (cons '"Bad syntax" (cons _L724_ '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _stx389_))
                                        '()))
                            _r683_)))
                  _g710721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g708742_ _tgt543_))))))
                                         (_g684932_
                                          (lambda (_g687750_)
                                            (if (gx#stx-pair? _g687750_)
                                                (let ((_e690753_
                                                       (gx#syntax-e
                                                        _g687750_)))
                                                  (let ((_hd691757_
                                                         (##car _e690753_))
                                                        (_tl692760_
                                                         (##cdr _e690753_)))
                                                    ((lambda (_L763_ _L765_)
                                                       (let* ((_g777788_
                                                               (lambda (_g778784_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error '#f '"Bad syntax" _g778784_)))
                      (_g776900_
                       (lambda (_g778792_)
                         ((lambda ()
                            (let* ((_g799807_
                                    (lambda (_g800803_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g800803_)))
                                   (_g798896_
                                    (lambda (_g800811_)
                                      ((lambda (_L814_)
                                         (let ()
                                           (let* ((_g830838_
                                                   (lambda (_g831834_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g831834_)))
                                                  (_g829892_
                                                   (lambda (_g831842_)
                                                     ((lambda (_L845_)
                                                        (let ()
                                                          (let* ((_g858866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g859862_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g859862_)))
                         (_g857888_
                          (lambda (_g859870_)
                            ((lambda (_L873_)
                               (let ()
                                 (let ()
                                   (_lp677_ _L763_
                                            _L814_
                                            (cons (cons _E682_
                                                        (cons _L873_ '()))
                                                  _r683_)))))
                             _g859870_))))
                    (_g857888_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons '() (cons _L845_ '())))
                      (gx#stx-source _L765_))))))
              _g831842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g829892_
                                              (_generate-clause548_
                                               _L765_
                                               (cons _L814_ '()))))))
                                       _g800811_))))
                              (_g798896_ (gx#genident 'E)))))))
                      (_g775928_
                       (lambda (_g778904_)
                         (if (gx#stx-pair? _g778904_)
                             (let ((_e780907_ (gx#syntax-e _g778904_)))
                               (let ((_hd781911_ (##car _e780907_))
                                     (_tl782914_ (##cdr _e780907_)))
                                 (if (gx#identifier? _hd781911_)
                                     (if (gx#free-identifier=?
                                          |gx[1]#_g3523_|
                                          _hd781911_)
                                         ((lambda (_L917_)
                                            (if (gx#stx-null? _L763_)
                                                (if (if (gx#stx-list? _L917_)
                                                        (not (gx#stx-null?
                                                              _L917_))
                                                        '#f)
                                                    (cons (cons _E682_
                                                                (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       _L917_)
                                                 '())))
                               (gx#stx-source _L765_))
                              '()))
                  _r683_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _stx389_
                                                     _L765_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx389_
                                                 _L765_)))
                                          _tl782914_)
                                         (_g776900_ _g778904_))
                                     (_g776900_ _g778904_))))
                             (_g776900_ _g778904_)))))
                 (_g775928_ _L765_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl692760_
                                                     _hd691757_)))
                                                (_g685746_ _g687750_)))))
                                    (_g684932_ _rest680_))))))
                      (let* ((_bind553_ (_generate-clauses551_ _clauses546_))
                             (_g556573_
                              (lambda (_g557569_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g557569_)))
                             (_g555670_
                              (lambda (_g557577_)
                                (if (gx#stx-pair/null? _g557577_)
                                    (if (fx>= (gx#stx-length _g557577_) '0)
                                        (let ((_g3524_ (gx#syntax-split-splice
                                                        _g557577_
                                                        '0)))
                                          (begin
                                            (let ((_g3525_ (if (##values?
                                                                _g3524_)
                                                               (##vector-length
                                                                _g3524_)
                                                               1)))
                                              (if (not (##fx= _g3525_ 2))
                                                  (error "Context expects 2 values"
                                                         _g3525_)))
                                            (let ((_target559580_
                                                   (##vector-ref _g3524_ 0))
                                                  (_tl561583_
                                                   (##vector-ref _g3524_ 1)))
                                              (if (gx#stx-null? _tl561583_)
                                                  (letrec ((_loop562586_
                                                            (lambda (_hd560590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _bind-try566593_)
                      (if (gx#stx-pair? _hd560590_)
                          (let ((_e563596_ (gx#syntax-e _hd560590_)))
                            (let ((_lp-hd564600_ (##car _e563596_))
                                  (_lp-tl565603_ (##cdr _e563596_)))
                              (_loop562586_
                               _lp-tl565603_
                               (cons _lp-hd564600_ _bind-try566593_))))
                          (let ((_bind-try567606_ (reverse _bind-try566593_)))
                            ((lambda (_L610_)
                               (let ()
                                 (let* ((_g628636_
                                         (lambda (_g629632_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g629632_)))
                                        (_g627666_
                                         (lambda (_g629640_)
                                           ((lambda (_L643_)
                                              (let ()
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let*)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g657660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g658663_)
                                 (cons _g657660_ _g658663_))
                               '()
                               _L610_))
                      (cons (cons _L643_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g629640_))))
                                   (_g627666_ (car (last _bind553_))))))
                             _bind-try567606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop562586_
                                                     _target559580_
                                                     '()))
                                                  (_g556573_ _g557577_)))))
                                        (_g556573_ _g557577_))
                                    (_g556573_ _g557577_)))))
                        (_g555670_ _bind553_))))))
          (let* ((_g395414_
                  (lambda (_g396410_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g396410_)))
                 (_g394539_
                  (lambda (_g396418_)
                    (if (gx#stx-pair? _g396418_)
                        (let ((_e400421_ (gx#syntax-e _g396418_)))
                          (let ((_hd401425_ (##car _e400421_))
                                (_tl402428_ (##cdr _e400421_)))
                            (if (gx#stx-pair? _tl402428_)
                                (let ((_e403431_ (gx#syntax-e _tl402428_)))
                                  (let ((_hd404435_ (##car _e403431_))
                                        (_tl405438_ (##cdr _e403431_)))
                                    (if (gx#stx-pair? _tl405438_)
                                        (let ((_e406441_
                                               (gx#syntax-e _tl405438_)))
                                          (let ((_hd407445_ (##car _e406441_))
                                                (_tl408448_ (##cdr _e406441_)))
                                            ((lambda (_L451_ _L453_ _L454_)
                                               (if (if (gx#identifier-list?
                                                        _L453_)
                                                       (gx#stx-list? _L451_)
                                                       '#f)
                                                   (let* ((_g474482_
                                                           (lambda (_g475478_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g475478_)))
                                                          (_g473535_
                                                           (lambda (_g475486_)
                                                             ((lambda (_L489_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g501509_
                                  (lambda (_g502505_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g502505_)))
                                 (_g500531_
                                  (lambda (_g502513_)
                                    ((lambda (_L516_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L454_ '()))
                     '())
               (cons _L516_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g502513_))))
                            (_g500531_
                             (_generate392_
                              _L489_
                              (gx#syntax->list _L453_)
                              _L451_)))))
                      _g475486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g473535_
                                                      (gx#genident 'e)))
                                                   (_g395414_ _g396418_)))
                                             _tl408448_
                                             _hd407445_
                                             _hd404435_)))
                                        (_g395414_ _g396418_))))
                                (_g395414_ _g396418_))))
                        (_g395414_ _g396418_)))))
            (_g394539_ _stx389_)))))))
