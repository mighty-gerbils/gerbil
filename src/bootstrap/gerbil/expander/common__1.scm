(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g40112_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g40113_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g40116_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g40112_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g40113_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx28227_)
        (let ((_generate28230_
               (lambda (_tgt28382_ _kws28384_ _clauses28385_)
                 (let ((_generate128389_
                        (lambda (_where28775_
                                 _hd28777_
                                 _fender28778_
                                 _body28779_
                                 _E28780_)
                          (letrec ((_recur28782_
                                    (lambda (_hd28785_ _tgt28787_ _K28788_)
                                      (let ((_g2879128803_
                                             (lambda (_g2879228799_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2879228799_))))
                                        (let ((_g2879029070_
                                               (lambda (_g2879228807_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd28785_)
                                                        (if (gx#underscore?
                                                             _hd28785_)
                                                            _K28788_
                                                            (if (find (lambda (_g2881328815_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=?
                                 _g2881328815_
                                 _hd28785_))
                              _kws28384_)
                        (let ((_g2881928834_
                               (lambda (_g2882028830_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2882028830_))))
                          (let ((_g2881828885_
                                 (lambda (_g2882028838_)
                                   (if (gx#stx-pair? _g2882028838_)
                                       (let ((_e2882328841_
                                              (gx#syntax-e _g2882028838_)))
                                         (let ((_hd2882428845_
                                                (##car _e2882328841_))
                                               (_tl2882528848_
                                                (##cdr _e2882328841_)))
                                           (if (gx#stx-pair? _tl2882528848_)
                                               (let ((_e2882628851_
                                                      (gx#syntax-e
                                                       _tl2882528848_)))
                                                 (let ((_hd2882728855_
                                                        (##car _e2882628851_))
                                                       (_tl2882828858_
                                                        (##cdr _e2882628851_)))
                                                   (if (gx#stx-null?
                                                        _tl2882828858_)
                                                       ((lambda (_L28861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28863_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L28863_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L28863_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L28861_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K28788_ (cons _E28780_ '()))))))
                _hd2882728855_
                _hd2882428845_)
               (_g2881928834_ _g2882028838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2881928834_ _g2882028838_))))
                                       (_g2881928834_ _g2882028838_)))))
                            (_g2881828885_ (list _tgt28787_ _hd28785_))))
                        (let ((_g2888928904_
                               (lambda (_g2889028900_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2889028900_))))
                          (let ((_g2888828948_
                                 (lambda (_g2889028908_)
                                   (if (gx#stx-pair? _g2889028908_)
                                       (let ((_e2889328911_
                                              (gx#syntax-e _g2889028908_)))
                                         (let ((_hd2889428915_
                                                (##car _e2889328911_))
                                               (_tl2889528918_
                                                (##cdr _e2889328911_)))
                                           (if (gx#stx-pair? _tl2889528918_)
                                               (let ((_e2889628921_
                                                      (gx#syntax-e
                                                       _tl2889528918_)))
                                                 (let ((_hd2889728925_
                                                        (##car _e2889628921_))
                                                       (_tl2889828928_
                                                        (##cdr _e2889628921_)))
                                                   (if (gx#stx-null?
                                                        _tl2889828928_)
                                                       ((lambda (_L28931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28933_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L28931_ (cons _L28933_ '())) '())
                                (cons _K28788_ '())))))
                _hd2889728925_
                _hd2889428915_)
               (_g2888928904_ _g2889028908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2888928904_ _g2889028908_))))
                                       (_g2888928904_ _g2889028908_)))))
                            (_g2888828948_ (list _tgt28787_ _hd28785_))))))
                (if (gx#stx-null? _hd28785_)
                    (let ((_g2895228960_
                           (lambda (_g2895328956_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2895328956_))))
                      (let ((_g2895128978_
                             (lambda (_g2895328964_)
                               ((lambda (_L28967_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L28967_ '()))
                                                (cons _K28788_
                                                      (cons _E28780_ '()))))))
                                _g2895328964_))))
                        (_g2895128978_ _tgt28787_)))
                    (if (gx#stx-datum? _hd28785_)
                        (let ((_g2898229001_
                               (lambda (_g2898328997_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2898328997_))))
                          (let ((_g2898129059_
                                 (lambda (_g2898329005_)
                                   (if (gx#stx-pair? _g2898329005_)
                                       (let ((_e2898729008_
                                              (gx#syntax-e _g2898329005_)))
                                         (let ((_hd2898829012_
                                                (##car _e2898729008_))
                                               (_tl2898929015_
                                                (##cdr _e2898729008_)))
                                           (if (gx#stx-pair? _tl2898929015_)
                                               (let ((_e2899029018_
                                                      (gx#syntax-e
                                                       _tl2898929015_)))
                                                 (let ((_hd2899129022_
                                                        (##car _e2899029018_))
                                                       (_tl2899229025_
                                                        (##cdr _e2899029018_)))
                                                   (if (gx#stx-pair?
                                                        _tl2899229025_)
                                                       (let ((_e2899329028_
                                                              (gx#syntax-e
                                                               _tl2899229025_)))
                                                         (let ((_hd2899429032_
                                                                (##car _e2899329028_))
                                                               (_tl2899529035_
                                                                (##cdr _e2899329028_)))
                                                           (if (gx#stx-null?
                                                                _tl2899529035_)
                                                               ((lambda (_L29038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L29040_
                                 _L29041_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L29038_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L29041_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L29040_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K28788_ (cons _E28780_ '()))))))
                        _hd2899429032_
                        _hd2899129022_
                        _hd2898829012_)
                       (_g2898229001_ _g2898329005_))))
               (_g2898229001_ _g2898329005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2898229001_ _g2898329005_))))
                                       (_g2898229001_ _g2898329005_)))))
                            (_g2898129059_
                             (list _tgt28787_
                                   _hd28785_
                                   (let ((_e29063_ (gx#stx-e _hd28785_)))
                                     (if (let ((_$e29066_ (keyword? _e29063_)))
                                           (if _$e29066_
                                               _$e29066_
                                               (immediate? _e29063_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e29063_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx28227_
                         _where28775_
                         _hd28785_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g2878929293_
                                                 (lambda (_g2879229074_)
                                                   (if (gx#stx-pair?
                                                        _g2879229074_)
                                                       (let ((_e2879529077_
                                                              (gx#syntax-e
                                                               _g2879229074_)))
                                                         (let ((_hd2879629081_
                                                                (##car _e2879529077_))
                                                               (_tl2879729084_
                                                                (##cdr _e2879529077_)))
                                                           ((lambda (_L29087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29089_)
                      (let ((_g2910029108_
                             (lambda (_g2910129104_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2910129104_))))
                        (let ((_g2909929289_
                               (lambda (_g2910129112_)
                                 ((lambda (_L29115_)
                                    (let ()
                                      (let ((_g2912729135_
                                             (lambda (_g2912829131_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2912829131_))))
                                        (let ((_g2912629285_
                                               (lambda (_g2912829139_)
                                                 ((lambda (_L29142_)
                                                    (let ()
                                                      (let ((_g2915529163_
                                                             (lambda (_g2915629159_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2915629159_))))
                                                        (let ((_g2915429281_
                                                               (lambda (_g2915629167_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L29170_)
                            (let ()
                              (let ((_g2918329191_
                                     (lambda (_g2918429187_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2918429187_))))
                                (let ((_g2918229277_
                                       (lambda (_g2918429195_)
                                         ((lambda (_L29198_)
                                            (let ()
                                              (let ((_g2921129219_
                                                     (lambda (_g2921229215_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2921229215_))))
                                                (let ((_g2921029273_
                                                       (lambda (_g2921229223_)
                                                         ((lambda (_L29226_)
                                                            (let ()
                                                              (let ((_g2923929247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2924029243_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2924029243_))))
                        (let ((_g2923829269_
                               (lambda (_g2924029251_)
                                 ((lambda (_L29254_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L29115_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L29142_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L29115_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L29170_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L29142_ '()))
                          '()))
              (cons (cons _L29198_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L29142_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L29226_ '())))
                                    '())))
                  (cons _L29254_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2924029251_))))
                          (_g2923829269_ _E28780_)))))
                  _g2921229223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2921029273_
                                                   (_recur28782_
                                                    _L29089_
                                                    _L29170_
                                                    (_recur28782_
                                                     _L29087_
                                                     _L29198_
                                                     _K28788_)))))))
                                          _g2918429195_))))
                                  (_g2918229277_ (gx#genident 'tl))))))
                          _g2915629167_))))
                  (_g2915429281_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2912829139_))))
                                          (_g2912629285_ (gx#genident 'e))))))
                                  _g2910129112_))))
                          (_g2909929289_ _tgt28787_))))
                    _tl2879729084_
                    _hd2879629081_)))
               (_g2879029070_ _g2879229074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2878929293_ _hd28785_)))))))
                            (_recur28782_
                             _hd28777_
                             _tgt28382_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender28778_
                                         (cons _body28779_
                                               (cons _E28780_ '())))))))))
                   (let ((_generate-clause28387_
                          (lambda (_hd29297_ _E29299_)
                            (let ((_g2930329330_
                                   (lambda (_g2930429326_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2930429326_))))
                              (let ((_g2930229341_
                                     (lambda (_g2930429334_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx28227_
                                           _hd29297_))))))
                                (let ((_g2930129399_
                                       (lambda (_g2930429345_)
                                         (if (gx#stx-pair? _g2930429345_)
                                             (let ((_e2931629348_
                                                    (gx#syntax-e
                                                     _g2930429345_)))
                                               (let ((_hd2931729352_
                                                      (##car _e2931629348_))
                                                     (_tl2931829355_
                                                      (##cdr _e2931629348_)))
                                                 (if (gx#stx-pair?
                                                      _tl2931829355_)
                                                     (let ((_e2931929358_
                                                            (gx#syntax-e
                                                             _tl2931829355_)))
                                                       (let ((_hd2932029362_
                                                              (##car _e2931929358_))
                                                             (_tl2932129365_
                                                              (##cdr _e2931929358_)))
                                                         (if (gx#stx-pair?
                                                              _tl2932129365_)
                                                             (let ((_e2932229368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2932129365_)))
                       (let ((_hd2932329372_ (##car _e2932229368_))
                             (_tl2932429375_ (##cdr _e2932229368_)))
                         (if (gx#stx-null? _tl2932429375_)
                             ((lambda (_L29378_ _L29380_ _L29381_)
                                (_generate128389_
                                 _hd29297_
                                 _L29381_
                                 _L29380_
                                 _L29378_
                                 _E29299_))
                              _hd2932329372_
                              _hd2932029362_
                              _hd2931729352_)
                             (_g2930229341_ _g2930429345_))))
                     (_g2930229341_ _g2930429345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2930229341_
                                                      _g2930429345_))))
                                             (_g2930229341_ _g2930429345_)))))
                                  (let ((_g2930029441_
                                         (lambda (_g2930429403_)
                                           (if (gx#stx-pair? _g2930429403_)
                                               (let ((_e2930729406_
                                                      (gx#syntax-e
                                                       _g2930429403_)))
                                                 (let ((_hd2930829410_
                                                        (##car _e2930729406_))
                                                       (_tl2930929413_
                                                        (##cdr _e2930729406_)))
                                                   (if (gx#stx-pair?
                                                        _tl2930929413_)
                                                       (let ((_e2931029416_
                                                              (gx#syntax-e
                                                               _tl2930929413_)))
                                                         (let ((_hd2931129420_
                                                                (##car _e2931029416_))
                                                               (_tl2931229423_
                                                                (##cdr _e2931029416_)))
                                                           (if (gx#stx-null?
                                                                _tl2931229423_)
                                                               ((lambda (_L29426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L29428_)
                          (_generate128389_
                           _hd29297_
                           _L29428_
                           '#t
                           _L29426_
                           _E29299_))
                        _hd2931129420_
                        _hd2930829410_)
                       (_g2930129399_ _g2930429403_))))
               (_g2930129399_ _g2930429403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2930129399_
                                                _g2930429403_)))))
                                    (_g2930029441_ _hd29297_))))))))
                     (let ((_generate-clauses28390_
                            (lambda (_clauses28513_)
                              ((letrec ((_lp28516_
                                         (lambda (_rest28519_
                                                  _E28521_
                                                  _r28522_)
                                           (let ((_g2852528537_
                                                  (lambda (_g2852628533_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2852628533_))))
                                             (let ((_g2852428585_
                                                    (lambda (_g2852628541_)
                                                      ((lambda ()
                                                         (let ((_g2854828556_
                                                                (lambda (_g2854928552_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2854928552_))))
                   (let ((_g2854728581_
                          (lambda (_g2854928560_)
                            ((lambda (_L28563_)
                               (let ()
                                 (cons (cons _E28521_
                                             (cons (gx#stx-wrap-source
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'raise-syntax-error)
                                    (cons '#f
                                          (cons '"Bad syntax"
                                                (cons _L28563_ '()))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source _stx28227_))
                                                   '()))
                                       _r28522_)))
                             _g2854928560_))))
                     (_g2854728581_ _tgt28382_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2852328771_
                                                      (lambda (_g2852628589_)
                                                        (if (gx#stx-pair?
                                                             _g2852628589_)
                                                            (let ((_e2852928592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2852628589_)))
                      (let ((_hd2853028596_ (##car _e2852928592_))
                            (_tl2853128599_ (##cdr _e2852928592_)))
                        ((lambda (_L28602_ _L28604_)
                           (let ((_g2861628627_
                                  (lambda (_g2861728623_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2861728623_))))
                             (let ((_g2861528739_
                                    (lambda (_g2861728631_)
                                      ((lambda ()
                                         (let ((_g2863828646_
                                                (lambda (_g2863928642_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2863928642_))))
                                           (let ((_g2863728735_
                                                  (lambda (_g2863928650_)
                                                    ((lambda (_L28653_)
                                                       (let ()
                                                         (let ((_g2866928677_
                                                                (lambda (_g2867028673_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2867028673_))))
                   (let ((_g2866828731_
                          (lambda (_g2867028681_)
                            ((lambda (_L28684_)
                               (let ()
                                 (let ((_g2869728705_
                                        (lambda (_g2869828701_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2869828701_))))
                                   (let ((_g2869628727_
                                          (lambda (_g2869828709_)
                                            ((lambda (_L28712_)
                                               (let ()
                                                 (let ()
                                                   (_lp28516_
                                                    _L28602_
                                                    _L28653_
                                                    (cons (cons _E28521_
                                                                (cons _L28712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _r28522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2869828709_))))
                                     (_g2869628727_
                                      (gx#stx-wrap-source
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L28684_ '())))
                                       (gx#stx-source _L28604_)))))))
                             _g2867028681_))))
                     (_g2866828731_
                      (_generate-clause28387_
                       _L28604_
                       (cons _L28653_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2863928650_))))
                                             (_g2863728735_
                                              (gx#genident 'E)))))))))
                               (let ((_g2861428767_
                                      (lambda (_g2861728743_)
                                        (if (gx#stx-pair? _g2861728743_)
                                            (let ((_e2861928746_
                                                   (gx#syntax-e
                                                    _g2861728743_)))
                                              (let ((_hd2862028750_
                                                     (##car _e2861928746_))
                                                    (_tl2862128753_
                                                     (##cdr _e2861928746_)))
                                                (if (gx#identifier?
                                                     _hd2862028750_)
                                                    (if (gx#free-identifier=?
                                                         |gx[1]#_g40116_|
                                                         _hd2862028750_)
                                                        ((lambda (_L28756_)
                                                           (if (gx#stx-null?
                                                                _L28602_)
                                                               (if (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L28756_)
                               (not (gx#stx-null? _L28756_))
                               '#f)
                           (cons (cons _E28521_
                                       (cons (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              _L28756_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _L28604_))
                                             '()))
                                 _r28522_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _stx28227_
                            _L28604_))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; misplaced else"
                        _stx28227_
                        _L28604_)))
                 _tl2862128753_)
                (_g2861528739_ _g2861728743_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2861528739_
                                                     _g2861728743_))))
                                            (_g2861528739_ _g2861728743_)))))
                                 (_g2861428767_ _L28604_)))))
                         _tl2853128599_
                         _hd2853028596_)))
                    (_g2852428585_ _g2852628589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2852328771_
                                                  _rest28519_)))))))
                                 _lp28516_)
                               _clauses28513_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind28392_
                              (_generate-clauses28390_ _clauses28385_)))
                         (let ((_g2839528412_
                                (lambda (_g2839628408_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2839628408_))))
                           (let ((_g2839428509_
                                  (lambda (_g2839628416_)
                                    (if (gx#stx-pair/null? _g2839628416_)
                                        (if (fx>= (gx#stx-length _g2839628416_)
                                                  '0)
                                            (let ((_g40114_
                                                   (gx#syntax-split-splice
                                                    _g2839628416_
                                                    '0)))
                                              (begin
                                                (let ((_g40115_
                                                       (values-count
                                                        _g40114_)))
                                                  (if (not (fx= _g40115_ 2))
                                                      (error "Context expects 2 values"
                                                             _g40115_)))
                                                (let ((_target2839828419_
                                                       (values-ref _g40114_ 0))
                                                      (_tl2840028422_
                                                       (values-ref
                                                        _g40114_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl2840028422_)
                                                      (letrec ((_loop2840128425_
                                                                (lambda (_hd2839928429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try2840528432_)
                          (if (gx#stx-pair? _hd2839928429_)
                              (let ((_e2840228435_
                                     (gx#syntax-e _hd2839928429_)))
                                (let ((_lp-hd2840328439_ (##car _e2840228435_))
                                      (_lp-tl2840428442_
                                       (##cdr _e2840228435_)))
                                  (_loop2840128425_
                                   _lp-tl2840428442_
                                   (cons _lp-hd2840328439_
                                         _bind-try2840528432_))))
                              (let ((_bind-try2840628445_
                                     (reverse _bind-try2840528432_)))
                                ((lambda (_L28449_)
                                   (let ()
                                     (let ((_g2846728475_
                                            (lambda (_g2846828471_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2846828471_))))
                                       (let ((_g2846628505_
                                              (lambda (_g2846828479_)
                                                ((lambda (_L28482_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g2849628499_ _g2849728502_)
                                      (cons _g2849628499_ _g2849728502_))
                                    '()
                                    _L28449_))
                           (cons (cons _L28482_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2846828479_))))
                                         (_g2846628505_
                                          (car (last _bind28392_)))))))
                                 _bind-try2840628445_))))))
                (_loop2840128425_ _target2839828419_ '()))
              (_g2839528412_ _g2839628416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2839528412_ _g2839628416_))
                                        (_g2839528412_ _g2839628416_)))))
                             (_g2839428509_ _bind28392_))))))))))
          (let ((_g2823328252_
                 (lambda (_g2823428248_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g2823428248_))))
            (let ((_g2823228378_
                   (lambda (_g2823428256_)
                     (if (gx#stx-pair? _g2823428256_)
                         (let ((_e2823828259_ (gx#syntax-e _g2823428256_)))
                           (let ((_hd2823928263_ (##car _e2823828259_))
                                 (_tl2824028266_ (##cdr _e2823828259_)))
                             (if (gx#stx-pair? _tl2824028266_)
                                 (let ((_e2824128269_
                                        (gx#syntax-e _tl2824028266_)))
                                   (let ((_hd2824228273_ (##car _e2824128269_))
                                         (_tl2824328276_
                                          (##cdr _e2824128269_)))
                                     (if (gx#stx-pair? _tl2824328276_)
                                         (let ((_e2824428279_
                                                (gx#syntax-e _tl2824328276_)))
                                           (let ((_hd2824528283_
                                                  (##car _e2824428279_))
                                                 (_tl2824628286_
                                                  (##cdr _e2824428279_)))
                                             ((lambda (_L28289_
                                                       _L28291_
                                                       _L28292_)
                                                (if (if (gx#identifier-list?
                                                         _L28291_)
                                                        (gx#stx-list? _L28289_)
                                                        '#f)
                                                    (let ((_g2831328321_
                                                           (lambda (_g2831428317_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2831428317_))))
                                                      (let ((_g2831228374_
                                                             (lambda (_g2831428325_)
                                                               ((lambda (_L28328_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2834028348_
                                   (lambda (_g2834128344_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2834128344_))))
                              (let ((_g2833928370_
                                     (lambda (_g2834128352_)
                                       ((lambda (_L28355_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L28328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L28292_ '()))
                        '())
                  (cons _L28355_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2834128352_))))
                                (_g2833928370_
                                 (_generate28230_
                                  _L28328_
                                  (gx#syntax->list _L28291_)
                                  _L28289_))))))
                        _g2831428325_))))
                (_g2831228374_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2823328252_
                                                     _g2823428256_)))
                                              _tl2824628286_
                                              _hd2824528283_
                                              _hd2824228273_)))
                                         (_g2823328252_ _g2823428256_))))
                                 (_g2823328252_ _g2823428256_))))
                         (_g2823328252_ _g2823428256_)))))
              (_g2823228378_ _stx28227_))))))))
