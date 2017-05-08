(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g1391_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g1392_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g1395_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g1391_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g1392_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx172_)
        (let ((_generate175_
               (lambda (_tgt327_ _kws329_ _clauses330_)
                 (let ((_generate1334_
                        (lambda (_where720_
                                 _hd722_
                                 _fender723_
                                 _body724_
                                 _E725_)
                          (letrec ((_recur727_
                                    (lambda (_hd730_ _tgt732_ _K733_)
                                      (let ((_g736748_
                                             (lambda (_g737744_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g737744_))))
                                        (let ((_g7351015_
                                               (lambda (_g737752_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd730_)
                                                        (if (gx#underscore?
                                                             _hd730_)
                                                            _K733_
                                                            (if (find (lambda (_g758760_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g758760_ _hd730_))
                              _kws329_)
                        (let ((_g764779_
                               (lambda (_g765775_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g765775_))))
                          (let ((_g763830_
                                 (lambda (_g765783_)
                                   (if (gx#stx-pair? _g765783_)
                                       (let ((_e768786_
                                              (gx#syntax-e _g765783_)))
                                         (let ((_hd769790_ (##car _e768786_))
                                               (_tl770793_ (##cdr _e768786_)))
                                           (if (gx#stx-pair? _tl770793_)
                                               (let ((_e771796_
                                                      (gx#syntax-e
                                                       _tl770793_)))
                                                 (let ((_hd772800_
                                                        (##car _e771796_))
                                                       (_tl773803_
                                                        (##cdr _e771796_)))
                                                   (if (gx#stx-null?
                                                        _tl773803_)
                                                       ((lambda (_L806_ _L808_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L808_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L808_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L806_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K733_ (cons _E725_ '()))))))
                _hd772800_
                _hd769790_)
               (_g764779_ _g765783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g764779_ _g765783_))))
                                       (_g764779_ _g765783_)))))
                            (_g763830_ (list _tgt732_ _hd730_))))
                        (let ((_g834849_
                               (lambda (_g835845_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g835845_))))
                          (let ((_g833893_
                                 (lambda (_g835853_)
                                   (if (gx#stx-pair? _g835853_)
                                       (let ((_e838856_
                                              (gx#syntax-e _g835853_)))
                                         (let ((_hd839860_ (##car _e838856_))
                                               (_tl840863_ (##cdr _e838856_)))
                                           (if (gx#stx-pair? _tl840863_)
                                               (let ((_e841866_
                                                      (gx#syntax-e
                                                       _tl840863_)))
                                                 (let ((_hd842870_
                                                        (##car _e841866_))
                                                       (_tl843873_
                                                        (##cdr _e841866_)))
                                                   (if (gx#stx-null?
                                                        _tl843873_)
                                                       ((lambda (_L876_ _L878_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L876_ (cons _L878_ '())) '())
                                (cons _K733_ '())))))
                _hd842870_
                _hd839860_)
               (_g834849_ _g835853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g834849_ _g835853_))))
                                       (_g834849_ _g835853_)))))
                            (_g833893_ (list _tgt732_ _hd730_))))))
                (if (gx#stx-null? _hd730_)
                    (let ((_g897905_
                           (lambda (_g898901_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g898901_))))
                      (let ((_g896923_
                             (lambda (_g898909_)
                               ((lambda (_L912_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L912_ '()))
                                                (cons _K733_
                                                      (cons _E725_ '()))))))
                                _g898909_))))
                        (_g896923_ _tgt732_)))
                    (if (gx#stx-datum? _hd730_)
                        (let ((_g927946_
                               (lambda (_g928942_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g928942_))))
                          (let ((_g9261004_
                                 (lambda (_g928950_)
                                   (if (gx#stx-pair? _g928950_)
                                       (let ((_e932953_
                                              (gx#syntax-e _g928950_)))
                                         (let ((_hd933957_ (##car _e932953_))
                                               (_tl934960_ (##cdr _e932953_)))
                                           (if (gx#stx-pair? _tl934960_)
                                               (let ((_e935963_
                                                      (gx#syntax-e
                                                       _tl934960_)))
                                                 (let ((_hd936967_
                                                        (##car _e935963_))
                                                       (_tl937970_
                                                        (##cdr _e935963_)))
                                                   (if (gx#stx-pair?
                                                        _tl937970_)
                                                       (let ((_e938973_
                                                              (gx#syntax-e
                                                               _tl937970_)))
                                                         (let ((_hd939977_
                                                                (##car _e938973_))
                                                               (_tl940980_
                                                                (##cdr _e938973_)))
                                                           (if (gx#stx-null?
                                                                _tl940980_)
                                                               ((lambda (_L983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L985_
                                 _L986_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L983_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L986_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L985_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K733_ (cons _E725_ '()))))))
                        _hd939977_
                        _hd936967_
                        _hd933957_)
                       (_g927946_ _g928950_))))
               (_g927946_ _g928950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g927946_ _g928950_))))
                                       (_g927946_ _g928950_)))))
                            (_g9261004_
                             (list _tgt732_
                                   _hd730_
                                   (let ((_e1008_ (gx#stx-e _hd730_)))
                                     (if (let ((_$e1011_ (keyword? _e1008_)))
                                           (if _$e1011_
                                               _$e1011_
                                               (immediate? _e1008_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e1008_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx172_
                         _where720_
                         _hd730_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g7341238_
                                                 (lambda (_g7371019_)
                                                   (if (gx#stx-pair?
                                                        _g7371019_)
                                                       (let ((_e7401022_
                                                              (gx#syntax-e
                                                               _g7371019_)))
                                                         (let ((_hd7411026_
                                                                (##car _e7401022_))
                                                               (_tl7421029_
                                                                (##cdr _e7401022_)))
                                                           ((lambda (_L1032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1034_)
                      (let ((_g10451053_
                             (lambda (_g10461049_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g10461049_))))
                        (let ((_g10441234_
                               (lambda (_g10461057_)
                                 ((lambda (_L1060_)
                                    (let ()
                                      (let ((_g10721080_
                                             (lambda (_g10731076_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g10731076_))))
                                        (let ((_g10711230_
                                               (lambda (_g10731084_)
                                                 ((lambda (_L1087_)
                                                    (let ()
                                                      (let ((_g11001108_
                                                             (lambda (_g11011104_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g11011104_))))
                                                        (let ((_g10991226_
                                                               (lambda (_g11011112_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1115_)
                            (let ()
                              (let ((_g11281136_
                                     (lambda (_g11291132_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g11291132_))))
                                (let ((_g11271222_
                                       (lambda (_g11291140_)
                                         ((lambda (_L1143_)
                                            (let ()
                                              (let ((_g11561164_
                                                     (lambda (_g11571160_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g11571160_))))
                                                (let ((_g11551218_
                                                       (lambda (_g11571168_)
                                                         ((lambda (_L1171_)
                                                            (let ()
                                                              (let ((_g11841192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g11851188_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g11851188_))))
                        (let ((_g11831214_
                               (lambda (_g11851196_)
                                 ((lambda (_L1199_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1060_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1087_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1060_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1115_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1087_ '()))
                          '()))
              (cons (cons _L1143_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1087_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1171_ '())))
                                    '())))
                  (cons _L1199_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g11851196_))))
                          (_g11831214_ _E725_)))))
                  _g11571168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g11551218_
                                                   (_recur727_
                                                    _L1034_
                                                    _L1115_
                                                    (_recur727_
                                                     _L1032_
                                                     _L1143_
                                                     _K733_)))))))
                                          _g11291140_))))
                                  (_g11271222_ (gx#genident 'tl))))))
                          _g11011112_))))
                  (_g10991226_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g10731084_))))
                                          (_g10711230_ (gx#genident 'e))))))
                                  _g10461057_))))
                          (_g10441234_ _tgt732_))))
                    _tl7421029_
                    _hd7411026_)))
               (_g7351015_ _g7371019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g7341238_ _hd730_)))))))
                            (_recur727_
                             _hd722_
                             _tgt327_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender723_
                                         (cons _body724_
                                               (cons _E725_ '())))))))))
                   (let ((_generate-clause332_
                          (lambda (_hd1242_ _E1244_)
                            (let ((_g12481275_
                                   (lambda (_g12491271_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g12491271_))))
                              (let ((_g12471286_
                                     (lambda (_g12491279_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx172_
                                           _hd1242_))))))
                                (let ((_g12461344_
                                       (lambda (_g12491290_)
                                         (if (gx#stx-pair? _g12491290_)
                                             (let ((_e12611293_
                                                    (gx#syntax-e _g12491290_)))
                                               (let ((_hd12621297_
                                                      (##car _e12611293_))
                                                     (_tl12631300_
                                                      (##cdr _e12611293_)))
                                                 (if (gx#stx-pair?
                                                      _tl12631300_)
                                                     (let ((_e12641303_
                                                            (gx#syntax-e
                                                             _tl12631300_)))
                                                       (let ((_hd12651307_
                                                              (##car _e12641303_))
                                                             (_tl12661310_
                                                              (##cdr _e12641303_)))
                                                         (if (gx#stx-pair?
                                                              _tl12661310_)
                                                             (let ((_e12671313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl12661310_)))
                       (let ((_hd12681317_ (##car _e12671313_))
                             (_tl12691320_ (##cdr _e12671313_)))
                         (if (gx#stx-null? _tl12691320_)
                             ((lambda (_L1323_ _L1325_ _L1326_)
                                (_generate1334_
                                 _hd1242_
                                 _L1326_
                                 _L1325_
                                 _L1323_
                                 _E1244_))
                              _hd12681317_
                              _hd12651307_
                              _hd12621297_)
                             (_g12471286_ _g12491290_))))
                     (_g12471286_ _g12491290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g12471286_
                                                      _g12491290_))))
                                             (_g12471286_ _g12491290_)))))
                                  (let ((_g12451386_
                                         (lambda (_g12491348_)
                                           (if (gx#stx-pair? _g12491348_)
                                               (let ((_e12521351_
                                                      (gx#syntax-e
                                                       _g12491348_)))
                                                 (let ((_hd12531355_
                                                        (##car _e12521351_))
                                                       (_tl12541358_
                                                        (##cdr _e12521351_)))
                                                   (if (gx#stx-pair?
                                                        _tl12541358_)
                                                       (let ((_e12551361_
                                                              (gx#syntax-e
                                                               _tl12541358_)))
                                                         (let ((_hd12561365_
                                                                (##car _e12551361_))
                                                               (_tl12571368_
                                                                (##cdr _e12551361_)))
                                                           (if (gx#stx-null?
                                                                _tl12571368_)
                                                               ((lambda (_L1371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1373_)
                          (_generate1334_
                           _hd1242_
                           _L1373_
                           '#t
                           _L1371_
                           _E1244_))
                        _hd12561365_
                        _hd12531355_)
                       (_g12461344_ _g12491348_))))
               (_g12461344_ _g12491348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g12461344_ _g12491348_)))))
                                    (_g12451386_ _hd1242_))))))))
                     (let ((_generate-clauses335_
                            (lambda (_clauses458_)
                              ((letrec ((_lp461_ (lambda (_rest464_
                                                          _E466_
                                                          _r467_)
                                                   (let ((_g470482_
                                                          (lambda (_g471478_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g471478_))))
                                                     (let ((_g469530_
                                                            (lambda (_g471486_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g493501_
                                (lambda (_g494497_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g494497_))))
                           (let ((_g492526_
                                  (lambda (_g494505_)
                                    ((lambda (_L508_)
                                       (let ()
                                         (cons (cons _E466_
                                                     (cons (gx#stx-wrap-source
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'raise-syntax-error)
                                            (cons '#f
                                                  (cons '"Bad syntax"
                                                        (cons _L508_ '()))))
                                      '())))
                    (gx#stx-source _stx172_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r467_)))
                                     _g494505_))))
                             (_g492526_ _tgt327_))))))))
               (let ((_g468716_
                      (lambda (_g471534_)
                        (if (gx#stx-pair? _g471534_)
                            (let ((_e474537_ (gx#syntax-e _g471534_)))
                              (let ((_hd475541_ (##car _e474537_))
                                    (_tl476544_ (##cdr _e474537_)))
                                ((lambda (_L547_ _L549_)
                                   (let ((_g561572_
                                          (lambda (_g562568_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g562568_))))
                                     (let ((_g560684_
                                            (lambda (_g562576_)
                                              ((lambda ()
                                                 (let ((_g583591_
                                                        (lambda (_g584587_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g584587_))))
                                                   (let ((_g582680_
                                                          (lambda (_g584595_)
                                                            ((lambda (_L598_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g614622_
                                (lambda (_g615618_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g615618_))))
                           (let ((_g613676_
                                  (lambda (_g615626_)
                                    ((lambda (_L629_)
                                       (let ()
                                         (let ((_g642650_
                                                (lambda (_g643646_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g643646_))))
                                           (let ((_g641672_
                                                  (lambda (_g643654_)
                                                    ((lambda (_L657_)
                                                       (let ()
                                                         (let ()
                                                           (_lp461_ _L547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L598_
                            (cons (cons _E466_ (cons _L657_ '())) _r467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g643654_))))
                                             (_g641672_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L629_ '())))
                                               (gx#stx-source _L549_)))))))
                                     _g615626_))))
                             (_g613676_
                              (_generate-clause332_
                               _L549_
                               (cons _L598_ '())))))))
                     _g584595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g582680_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g559712_
                                              (lambda (_g562688_)
                                                (if (gx#stx-pair? _g562688_)
                                                    (let ((_e564691_
                                                           (gx#syntax-e
                                                            _g562688_)))
                                                      (let ((_hd565695_
                                                             (##car _e564691_))
                                                            (_tl566698_
                                                             (##cdr _e564691_)))
                                                        (if (gx#identifier?
                                                             _hd565695_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g1395_|
                         _hd565695_)
                        ((lambda (_L701_)
                           (if (gx#stx-null? _L547_)
                               (if (if (gx#stx-list? _L701_)
                                       (not (gx#stx-null? _L701_))
                                       '#f)
                                   (cons (cons _E466_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L701_)
                                '())))
              (gx#stx-source _L549_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r467_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx172_
                                    _L549_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx172_
                                _L549_)))
                         _tl566698_)
                        (_g560684_ _g562688_))
                    (_g560684_ _g562688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g560684_ _g562688_)))))
                                         (_g559712_ _L549_)))))
                                 _tl476544_
                                 _hd475541_)))
                            (_g469530_ _g471534_)))))
                 (_g468716_ _rest464_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp461_)
                               _clauses458_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind337_ (_generate-clauses335_ _clauses330_)))
                         (let ((_g340357_
                                (lambda (_g341353_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g341353_))))
                           (let ((_g339454_
                                  (lambda (_g341361_)
                                    (if (gx#stx-pair/null? _g341361_)
                                        (if (fx>= (gx#stx-length _g341361_) '0)
                                            (let ((_g1393_ (gx#syntax-split-splice
                                                            _g341361_
                                                            '0)))
                                              (begin
                                                (let ((_g1394_ (values-count
                                                                _g1393_)))
                                                  (if (not (fx= _g1394_ 2))
                                                      (error "Context expects 2 values"
                                                             _g1394_)))
                                                (let ((_target343364_
                                                       (values-ref _g1393_ 0))
                                                      (_tl345367_
                                                       (values-ref _g1393_ 1)))
                                                  (if (gx#stx-null? _tl345367_)
                                                      (letrec ((_loop346370_
                                                                (lambda (_hd344374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try350377_)
                          (if (gx#stx-pair? _hd344374_)
                              (let ((_e347380_ (gx#syntax-e _hd344374_)))
                                (let ((_lp-hd348384_ (##car _e347380_))
                                      (_lp-tl349387_ (##cdr _e347380_)))
                                  (_loop346370_
                                   _lp-tl349387_
                                   (cons _lp-hd348384_ _bind-try350377_))))
                              (let ((_bind-try351390_
                                     (reverse _bind-try350377_)))
                                ((lambda (_L394_)
                                   (let ()
                                     (let ((_g412420_
                                            (lambda (_g413416_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g413416_))))
                                       (let ((_g411450_
                                              (lambda (_g413424_)
                                                ((lambda (_L427_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g441444_ _g442447_)
                                      (cons _g441444_ _g442447_))
                                    '()
                                    _L394_))
                           (cons (cons _L427_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g413424_))))
                                         (_g411450_ (car (last _bind337_)))))))
                                 _bind-try351390_))))))
                (_loop346370_ _target343364_ '()))
              (_g340357_ _g341361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g340357_ _g341361_))
                                        (_g340357_ _g341361_)))))
                             (_g339454_ _bind337_))))))))))
          (let ((_g178197_
                 (lambda (_g179193_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g179193_))))
            (let ((_g177323_
                   (lambda (_g179201_)
                     (if (gx#stx-pair? _g179201_)
                         (let ((_e183204_ (gx#syntax-e _g179201_)))
                           (let ((_hd184208_ (##car _e183204_))
                                 (_tl185211_ (##cdr _e183204_)))
                             (if (gx#stx-pair? _tl185211_)
                                 (let ((_e186214_ (gx#syntax-e _tl185211_)))
                                   (let ((_hd187218_ (##car _e186214_))
                                         (_tl188221_ (##cdr _e186214_)))
                                     (if (gx#stx-pair? _tl188221_)
                                         (let ((_e189224_
                                                (gx#syntax-e _tl188221_)))
                                           (let ((_hd190228_ (##car _e189224_))
                                                 (_tl191231_
                                                  (##cdr _e189224_)))
                                             ((lambda (_L234_ _L236_ _L237_)
                                                (if (if (gx#identifier-list?
                                                         _L236_)
                                                        (gx#stx-list? _L234_)
                                                        '#f)
                                                    (let ((_g258266_
                                                           (lambda (_g259262_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g259262_))))
                                                      (let ((_g257319_
                                                             (lambda (_g259270_)
                                                               ((lambda (_L273_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g285293_
                                   (lambda (_g286289_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g286289_))))
                              (let ((_g284315_
                                     (lambda (_g286297_)
                                       ((lambda (_L300_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L237_ '()))
                        '())
                  (cons _L300_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g286297_))))
                                (_g284315_
                                 (_generate175_
                                  _L273_
                                  (gx#syntax->list _L236_)
                                  _L234_))))))
                        _g259270_))))
                (_g257319_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g178197_ _g179201_)))
                                              _tl191231_
                                              _hd190228_
                                              _hd187218_)))
                                         (_g178197_ _g179201_))))
                                 (_g178197_ _g179201_))))
                         (_g178197_ _g179201_)))))
              (_g177323_ _stx172_))))))))
