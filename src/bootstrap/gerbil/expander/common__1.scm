(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g3287_|
    (gx#make-syntax-quote 'error::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g3288_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g3289_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g3287_|))
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g3288_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx356_)
        (letrec ((_generate359_
                  (lambda (_tgt510_ _kws512_ _clauses513_)
                    (letrec ((_generate-clause515_
                              (lambda (_hd1425_ _E1427_)
                                (let* ((_g14311458_
                                        (lambda (_g14321454_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g14321454_)))
                                       (_g14301469_
                                        (lambda (_g14321462_)
                                          ((lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _stx356_
                                              _hd1425_)))))
                                       (_g14291527_
                                        (lambda (_g14321473_)
                                          (if (gx#stx-pair? _g14321473_)
                                              (let ((_e14441476_
                                                     (gx#syntax-e
                                                      _g14321473_)))
                                                (let ((_hd14451480_
                                                       (##car _e14441476_))
                                                      (_tl14461483_
                                                       (##cdr _e14441476_)))
                                                  (if (gx#stx-pair?
                                                       _tl14461483_)
                                                      (let ((_e14471486_
                                                             (gx#syntax-e
                                                              _tl14461483_)))
                                                        (let ((_hd14481490_
                                                               (##car _e14471486_))
                                                              (_tl14491493_
                                                               (##cdr _e14471486_)))
                                                          (if (gx#stx-pair?
                                                               _tl14491493_)
                                                              (let ((_e14501496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl14491493_)))
                        (let ((_hd14511500_ (##car _e14501496_))
                              (_tl14521503_ (##cdr _e14501496_)))
                          (if (gx#stx-null? _tl14521503_)
                              ((lambda (_L1506_ _L1508_ _L1509_)
                                 (_generate1517_
                                  _hd1425_
                                  _L1509_
                                  _L1508_
                                  _L1506_
                                  _E1427_))
                               _hd14511500_
                               _hd14481490_
                               _hd14451480_)
                              (_g14301469_ _g14321473_))))
                      (_g14301469_ _g14321473_))))
              (_g14301469_ _g14321473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14301469_ _g14321473_))))
                                       (_g14281569_
                                        (lambda (_g14321531_)
                                          (if (gx#stx-pair? _g14321531_)
                                              (let ((_e14351534_
                                                     (gx#syntax-e
                                                      _g14321531_)))
                                                (let ((_hd14361538_
                                                       (##car _e14351534_))
                                                      (_tl14371541_
                                                       (##cdr _e14351534_)))
                                                  (if (gx#stx-pair?
                                                       _tl14371541_)
                                                      (let ((_e14381544_
                                                             (gx#syntax-e
                                                              _tl14371541_)))
                                                        (let ((_hd14391548_
                                                               (##car _e14381544_))
                                                              (_tl14401551_
                                                               (##cdr _e14381544_)))
                                                          (if (gx#stx-null?
                                                               _tl14401551_)
                                                              ((lambda (_L1554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L1556_)
                         (_generate1517_ _hd1425_ _L1556_ '#t _L1554_ _E1427_))
                       _hd14391548_
                       _hd14361538_)
                      (_g14291527_ _g14321531_))))
              (_g14291527_ _g14321531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14291527_ _g14321531_)))))
                                  (_g14281569_ _hd1425_))))
                             (_generate1517_
                              (lambda (_where903_
                                       _hd905_
                                       _fender906_
                                       _body907_
                                       _E908_)
                                (letrec ((_recur910_
                                          (lambda (_hd913_ _tgt915_ _K916_)
                                            (let* ((_g919931_
                                                    (lambda (_g920927_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g920927_)))
                                                   (_g9181198_
                                                    (lambda (_g920935_)
                                                      ((lambda ()
                                                         (if (gx#identifier?
                                                              _hd913_)
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd913_)
                         _K916_
                         (if (find (lambda (_g941943_)
                                     (gx#bound-identifier=? _g941943_ _hd913_))
                                   _kws512_)
                             (let* ((_g947962_
                                     (lambda (_g948958_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g948958_)))
                                    (_g9461013_
                                     (lambda (_g948966_)
                                       (if (gx#stx-pair? _g948966_)
                                           (let ((_e951969_
                                                  (gx#syntax-e _g948966_)))
                                             (let ((_hd952973_
                                                    (##car _e951969_))
                                                   (_tl953976_
                                                    (##cdr _e951969_)))
                                               (if (gx#stx-pair? _tl953976_)
                                                   (let ((_e954979_
                                                          (gx#syntax-e
                                                           _tl953976_)))
                                                     (let ((_hd955983_
                                                            (##car _e954979_))
                                                           (_tl956986_
                                                            (##cdr _e954979_)))
                                                       (if (gx#stx-null?
                                                            _tl956986_)
                                                           ((lambda (_L989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L991_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'identifier?)
                                                      (cons _L991_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'core-identifier=?)
                                                            (cons _L991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L989_ '()))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _K916_ (cons _E908_ '()))))))
                    _hd955983_
                    _hd952973_)
                   (_g947962_ _g948966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g947962_ _g948966_))))
                                           (_g947962_ _g948966_)))))
                               (_g9461013_ (list _tgt915_ _hd913_)))
                             (let* ((_g10171032_
                                     (lambda (_g10181028_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g10181028_)))
                                    (_g10161076_
                                     (lambda (_g10181036_)
                                       (if (gx#stx-pair? _g10181036_)
                                           (let ((_e10211039_
                                                  (gx#syntax-e _g10181036_)))
                                             (let ((_hd10221043_
                                                    (##car _e10211039_))
                                                   (_tl10231046_
                                                    (##cdr _e10211039_)))
                                               (if (gx#stx-pair? _tl10231046_)
                                                   (let ((_e10241049_
                                                          (gx#syntax-e
                                                           _tl10231046_)))
                                                     (let ((_hd10251053_
                                                            (##car _e10241049_))
                                                           (_tl10261056_
                                                            (##cdr _e10241049_)))
                                                       (if (gx#stx-null?
                                                            _tl10261056_)
                                                           ((lambda (_L1059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1061_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L1059_ (cons _L1061_ '()))
                                          '())
                                    (cons _K916_ '())))))
                    _hd10251053_
                    _hd10221043_)
                   (_g10171032_ _g10181036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g10171032_ _g10181036_))))
                                           (_g10171032_ _g10181036_)))))
                               (_g10161076_ (list _tgt915_ _hd913_)))))
                     (if (gx#stx-null? _hd913_)
                         (let* ((_g10801088_
                                 (lambda (_g10811084_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g10811084_)))
                                (_g10791106_
                                 (lambda (_g10811092_)
                                   ((lambda (_L1095_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _L1095_ '()))
                                                    (cons _K916_
                                                          (cons _E908_
                                                                '()))))))
                                    _g10811092_))))
                           (_g10791106_ _tgt915_))
                         (if (gx#stx-datum? _hd913_)
                             (let* ((_g11101129_
                                     (lambda (_g11111125_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g11111125_)))
                                    (_g11091187_
                                     (lambda (_g11111133_)
                                       (if (gx#stx-pair? _g11111133_)
                                           (let ((_e11151136_
                                                  (gx#syntax-e _g11111133_)))
                                             (let ((_hd11161140_
                                                    (##car _e11151136_))
                                                   (_tl11171143_
                                                    (##cdr _e11151136_)))
                                               (if (gx#stx-pair? _tl11171143_)
                                                   (let ((_e11181146_
                                                          (gx#syntax-e
                                                           _tl11171143_)))
                                                     (let ((_hd11191150_
                                                            (##car _e11181146_))
                                                           (_tl11201153_
                                                            (##cdr _e11181146_)))
                                                       (if (gx#stx-pair?
                                                            _tl11201153_)
                                                           (let ((_e11211156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl11201153_)))
                     (let ((_hd11221160_ (##car _e11211156_))
                           (_tl11231163_ (##cdr _e11211156_)))
                       (if (gx#stx-null? _tl11231163_)
                           ((lambda (_L1166_ _L1168_ _L1169_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _L1166_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _L1169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote) (cons _L1168_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _K916_ (cons _E908_ '()))))))
                            _hd11221160_
                            _hd11191150_
                            _hd11161140_)
                           (_g11101129_ _g11111133_))))
                   (_g11101129_ _g11111133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11101129_ _g11111133_))))
                                           (_g11101129_ _g11111133_)))))
                               (_g11091187_
                                (list _tgt915_
                                      _hd913_
                                      (let ((_e1191_ (gx#stx-e _hd913_)))
                                        (if (let ((_$e1194_
                                                   (keyword? _e1191_)))
                                              (if _$e1194_
                                                  _$e1194_
                                                  (immediate? _e1191_)))
                                            (gx#datum->syntax '#f 'eq?)
                                            (if (number? _e1191_)
                                                (gx#datum->syntax '#f 'eqv?)
                                                (gx#datum->syntax
                                                 '#f
                                                 'equal?)))))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx356_
                              _where903_
                              _hd913_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9171421_
                                                    (lambda (_g9201202_)
                                                      (if (gx#stx-pair?
                                                           _g9201202_)
                                                          (let ((_e9231205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g9201202_)))
                    (let ((_hd9241209_ (##car _e9231205_))
                          (_tl9251212_ (##cdr _e9231205_)))
                      ((lambda (_L1215_ _L1217_)
                         (let* ((_g12281236_
                                 (lambda (_g12291232_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g12291232_)))
                                (_g12271417_
                                 (lambda (_g12291240_)
                                   ((lambda (_L1243_)
                                      (let ()
                                        (let* ((_g12551263_
                                                (lambda (_g12561259_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g12561259_)))
                                               (_g12541413_
                                                (lambda (_g12561267_)
                                                  ((lambda (_L1270_)
                                                     (let ()
                                                       (let* ((_g12831291_
                                                               (lambda (_g12841287_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g12841287_)))
                      (_g12821409_
                       (lambda (_g12841295_)
                         ((lambda (_L1298_)
                            (let ()
                              (let* ((_g13111319_
                                      (lambda (_g13121315_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g13121315_)))
                                     (_g13101405_
                                      (lambda (_g13121323_)
                                        ((lambda (_L1326_)
                                           (let ()
                                             (let* ((_g13391347_
                                                     (lambda (_g13401343_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13401343_)))
                                                    (_g13381401_
                                                     (lambda (_g13401351_)
                                                       ((lambda (_L1354_)
                                                          (let ()
                                                            (let* ((_g13671375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g13681371_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g13681371_)))
                           (_g13661397_
                            (lambda (_g13681379_)
                              ((lambda (_L1382_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-pair?)
                                                       (cons _L1243_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _L1270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-e)
                                                   (cons _L1243_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L1298_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L1270_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L1326_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L1270_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L1354_ '())))
                                 '())))
               (cons _L1382_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _g13681379_))))
                      (_g13661397_ _E908_))))
                _g13401351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13381401_
                                                (_recur910_
                                                 _L1217_
                                                 _L1298_
                                                 (_recur910_
                                                  _L1215_
                                                  _L1326_
                                                  _K916_))))))
                                         _g13121323_))))
                                (_g13101405_ (gx#genident 'tl)))))
                          _g12841295_))))
                 (_g12821409_ (gx#genident 'hd)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g12561267_))))
                                          (_g12541413_ (gx#genident 'e)))))
                                    _g12291240_))))
                           (_g12271417_ _tgt915_)))
                       _tl9251212_
                       _hd9241209_)))
                  (_g9181198_ _g9201202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g9171421_ _hd913_)))))
                                  (_recur910_
                                   _hd905_
                                   _tgt510_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender906_
                                               (cons _body907_
                                                     (cons _E908_ '()))))))))
                             (_generate-clauses518_
                              (lambda (_clauses641_)
                                (let _lp644_ ((_rest647_ _clauses641_)
                                              (_E649_ (gx#genident 'E))
                                              (_r650_ '()))
                                  (let* ((_g653665_
                                          (lambda (_g654661_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g654661_)))
                                         (_g652713_
                                          (lambda (_g654669_)
                                            ((lambda ()
                                               (let* ((_g676684_
                                                       (lambda (_g677680_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g677680_)))
                                                      (_g675709_
                                                       (lambda (_g677688_)
                                                         ((lambda (_L691_)
                                                            (let ()
                                                              (cons (cons _E649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'raise-syntax-error)
                         (cons '#f (cons '"Bad syntax" (cons _L691_ '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _stx356_))
                                        '()))
                            _r650_)))
                  _g677688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g675709_ _tgt510_))))))
                                         (_g651899_
                                          (lambda (_g654717_)
                                            (if (gx#stx-pair? _g654717_)
                                                (let ((_e657720_
                                                       (gx#syntax-e
                                                        _g654717_)))
                                                  (let ((_hd658724_
                                                         (##car _e657720_))
                                                        (_tl659727_
                                                         (##cdr _e657720_)))
                                                    ((lambda (_L730_ _L732_)
                                                       (let* ((_g744755_
                                                               (lambda (_g745751_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error '#f '"Bad syntax" _g745751_)))
                      (_g743867_
                       (lambda (_g745759_)
                         ((lambda ()
                            (let* ((_g766774_
                                    (lambda (_g767770_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g767770_)))
                                   (_g765863_
                                    (lambda (_g767778_)
                                      ((lambda (_L781_)
                                         (let ()
                                           (let* ((_g797805_
                                                   (lambda (_g798801_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g798801_)))
                                                  (_g796859_
                                                   (lambda (_g798809_)
                                                     ((lambda (_L812_)
                                                        (let ()
                                                          (let* ((_g825833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g826829_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g826829_)))
                         (_g824855_
                          (lambda (_g826837_)
                            ((lambda (_L840_)
                               (let ()
                                 (let ()
                                   (_lp644_ _L730_
                                            _L781_
                                            (cons (cons _E649_
                                                        (cons _L840_ '()))
                                                  _r650_)))))
                             _g826837_))))
                    (_g824855_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons '() (cons _L812_ '())))
                      (gx#stx-source _L732_))))))
              _g798809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g796859_
                                              (_generate-clause515_
                                               _L732_
                                               (cons _L781_ '()))))))
                                       _g767778_))))
                              (_g765863_ (gx#genident 'E)))))))
                      (_g742895_
                       (lambda (_g745871_)
                         (if (gx#stx-pair? _g745871_)
                             (let ((_e747874_ (gx#syntax-e _g745871_)))
                               (let ((_hd748878_ (##car _e747874_))
                                     (_tl749881_ (##cdr _e747874_)))
                                 (if (gx#identifier? _hd748878_)
                                     (if (gx#free-identifier=?
                                          |gx[1]#_g3289_|
                                          _hd748878_)
                                         ((lambda (_L884_)
                                            (if (gx#stx-null? _L730_)
                                                (if (if (gx#stx-list? _L884_)
                                                        (not (gx#stx-null?
                                                              _L884_))
                                                        '#f)
                                                    (cons (cons _E649_
                                                                (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       _L884_)
                                                 '())))
                               (gx#stx-source _L732_))
                              '()))
                  _r650_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _stx356_
                                                     _L732_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx356_
                                                 _L732_)))
                                          _tl749881_)
                                         (_g743867_ _g745871_))
                                     (_g743867_ _g745871_))))
                             (_g743867_ _g745871_)))))
                 (_g742895_ _L732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl659727_
                                                     _hd658724_)))
                                                (_g652713_ _g654717_)))))
                                    (_g651899_ _rest647_))))))
                      (let* ((_bind520_ (_generate-clauses518_ _clauses513_))
                             (_g523540_
                              (lambda (_g524536_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g524536_)))
                             (_g522637_
                              (lambda (_g524544_)
                                (if (gx#stx-pair/null? _g524544_)
                                    (if (fx>= (gx#stx-length _g524544_) '0)
                                        (let ((_g3290_ (gx#syntax-split-splice
                                                        _g524544_
                                                        '0)))
                                          (begin
                                            (let ((_g3291_ (values-count
                                                            _g3290_)))
                                              (if (not (fx= _g3291_ 2))
                                                  (error "Context expects 2 values"
                                                         _g3291_)))
                                            (let ((_target526547_
                                                   (values-ref _g3290_ 0))
                                                  (_tl528550_
                                                   (values-ref _g3290_ 1)))
                                              (if (gx#stx-null? _tl528550_)
                                                  (letrec ((_loop529553_
                                                            (lambda (_hd527557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _bind-try533560_)
                      (if (gx#stx-pair? _hd527557_)
                          (let ((_e530563_ (gx#syntax-e _hd527557_)))
                            (let ((_lp-hd531567_ (##car _e530563_))
                                  (_lp-tl532570_ (##cdr _e530563_)))
                              (_loop529553_
                               _lp-tl532570_
                               (cons _lp-hd531567_ _bind-try533560_))))
                          (let ((_bind-try534573_ (reverse _bind-try533560_)))
                            ((lambda (_L577_)
                               (let ()
                                 (let* ((_g595603_
                                         (lambda (_g596599_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g596599_)))
                                        (_g594633_
                                         (lambda (_g596607_)
                                           ((lambda (_L610_)
                                              (let ()
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let*)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g624627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g625630_)
                                 (cons _g624627_ _g625630_))
                               '()
                               _L577_))
                      (cons (cons _L610_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g596607_))))
                                   (_g594633_ (car (last _bind520_))))))
                             _bind-try534573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop529553_
                                                     _target526547_
                                                     '()))
                                                  (_g523540_ _g524544_)))))
                                        (_g523540_ _g524544_))
                                    (_g523540_ _g524544_)))))
                        (_g522637_ _bind520_))))))
          (let* ((_g362381_
                  (lambda (_g363377_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g363377_)))
                 (_g361506_
                  (lambda (_g363385_)
                    (if (gx#stx-pair? _g363385_)
                        (let ((_e367388_ (gx#syntax-e _g363385_)))
                          (let ((_hd368392_ (##car _e367388_))
                                (_tl369395_ (##cdr _e367388_)))
                            (if (gx#stx-pair? _tl369395_)
                                (let ((_e370398_ (gx#syntax-e _tl369395_)))
                                  (let ((_hd371402_ (##car _e370398_))
                                        (_tl372405_ (##cdr _e370398_)))
                                    (if (gx#stx-pair? _tl372405_)
                                        (let ((_e373408_
                                               (gx#syntax-e _tl372405_)))
                                          (let ((_hd374412_ (##car _e373408_))
                                                (_tl375415_ (##cdr _e373408_)))
                                            ((lambda (_L418_ _L420_ _L421_)
                                               (if (if (gx#identifier-list?
                                                        _L420_)
                                                       (gx#stx-list? _L418_)
                                                       '#f)
                                                   (let* ((_g441449_
                                                           (lambda (_g442445_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g442445_)))
                                                          (_g440502_
                                                           (lambda (_g442453_)
                                                             ((lambda (_L456_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g468476_
                                  (lambda (_g469472_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g469472_)))
                                 (_g467498_
                                  (lambda (_g469480_)
                                    ((lambda (_L483_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L421_ '()))
                     '())
               (cons _L483_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g469480_))))
                            (_g467498_
                             (_generate359_
                              _L456_
                              (gx#syntax->list _L420_)
                              _L418_)))))
                      _g442453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g440502_
                                                      (gx#genident 'e)))
                                                   (_g362381_ _g363385_)))
                                             _tl375415_
                                             _hd374412_
                                             _hd371402_)))
                                        (_g362381_ _g363385_))))
                                (_g362381_ _g363385_))))
                        (_g362381_ _g363385_)))))
            (_g361506_ _stx356_)))))))
